<?php

namespace Botble\Base\Supports;

use BaseHelper;
use Botble\Base\Events\UpdatedEvent;
use Botble\Base\Events\UpdatingEvent;
use Botble\Base\Supports\PclZip as Zip;
use Botble\Theme\Services\ThemeService;
use Exception;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\GuzzleException;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\File;
use Menu;
use Theme;
use ZipArchive;

class Core
{
    /**
     * @var string
     */
    protected $productId;

    /**
     * @var string
     */
    protected $apiUrl;

    /**
     * @var string
     */
    protected $apiKey;

    /**
     * @var string
     */
    protected $verifyType;

    /**
     * @var int
     */
    protected $verificationPeriod;

    /**
     * @var string
     */
    protected $currentVersion;

    /**
     * @var string
     */
    protected $rootPath;

    /**
     * @var string
     */
    protected $licenseFile;

    /**
     * @var bool
     */
    protected $showUpdateProcess = true;

    /**
     * @var string
     */
    protected $sessionKey = '44622179e10cab6';

    /**
     * Core constructor.
     */
    public function __construct()
    {
        
    }

    /**
     * @return string
     */
    public function getCurrentVersion10New(): string
    {
        return $this->currentVersion;
    }

    protected function clearCache(): bool
    {
        Helper::clearCache();
        Menu::clearCacheMenuItems();

        foreach (File::glob(config('view.compiled') . '/*') as $view) {
            File::delete($view);
        }

        File::delete(app()->getCachedConfigPath());
        File::delete(app()->getCachedRoutesPath());
        File::delete(base_path('bootstrap/cache/packages.php'));
        File::delete(base_path('bootstrap/cache/services.php'));
        File::deleteDirectory(storage_path('app/purifier'));

        return true;
    }

    /**
     * @return string
     */
    protected function getSiteURL(): string
    {
        $thisServerName = request()->server('SERVER_NAME') ?: request()->server('HTTP_HOST');

        $thisHttpOrHttps = request()->server('HTTPS') == 'on' || request()->server('HTTP_X_FORWARDED_PROTO') == 'https'
            ? 'https://' : 'http://';

        return $thisHttpOrHttps . $thisServerName . request()->server('REQUEST_URI');
    }

    /**
     * @return string
     */
    protected function getSiteIP(): string
    {
        return request()->server('SERVER_ADDR') ?: Helper::getIpFromThirdParty() ?: gethostbyname(gethostname());
    }

    /**
     * @param string $url
     * @return string
     */
    protected function getRemoteFileSize(string $url)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_HEADER, true);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_NOBODY, true);

        curl_setopt(
            $curl,
            CURLOPT_HTTPHEADER,
            [
                'LB-API-KEY: ' . $this->apiKey,
                'LB-URL: ' . $this->getSiteURL(),
                'LB-IP: ' . $this->getSiteIP(),
                'LB-LANG: ' . 'english',
            ]
        );
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_CONNECTTIMEOUT, 30);
        curl_exec($curl);

        $filesize = curl_getinfo($curl, CURLINFO_CONTENT_LENGTH_DOWNLOAD);

        if ($filesize) {
            return BaseHelper::humanFilesize($filesize);
        }

        return -1;
    }

    protected function progress($resource, $downloadSize, $downloaded)
    {
        static $prev = 0;
        if ($downloadSize == 0) {
            $progress = 0;
        } else {
            $progress = round($downloaded * 100 / $downloadSize);
        }

        if (($progress != $prev) && ($progress == 25)) {
            $prev = $progress;
            echo '<script>document.getElementById(\'prog\').value = 22.5;</script>';
            ob_flush();
        }

        if (($progress != $prev) && ($progress == 50)) {
            $prev = $progress;
            echo '<script>document.getElementById(\'prog\').value = 35;</script>';
            ob_flush();
        }

        if (($progress != $prev) && ($progress == 75)) {
            $prev = $progress;
            echo '<script>document.getElementById(\'prog\').value = 47.5;</script>';
            ob_flush();
        }

        if (($progress != $prev) && ($progress == 100)) {
            $prev = $progress;
            echo '<script>document.getElementById(\'prog\').value = 60;</script>';
            ob_flush();
        }
    }
}

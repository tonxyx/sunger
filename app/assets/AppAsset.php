<?php

namespace app\assets;

class AppAsset extends \yii\web\AssetBundle {

  public $sourcePath = '@app/media';
  public $css = [
    'css/bootstrap.css',
    'css/custom.css',
  ];
  public $js = [
    'js/tether.js',
    'js/bootstrap.js',
  ];
  public $depends = [
    'yii\web\JqueryAsset',
    // 'yii\bootstrap\BootstrapAsset',
  ];
}

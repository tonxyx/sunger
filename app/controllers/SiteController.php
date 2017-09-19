<?php

namespace app\controllers;

use yii\web\Controller;
use yii\easyii\modules\carousel\api\Carousel;
use yii\easyii\modules\news\api\News;

class SiteController extends Controller {

  public function actions() {
    return [
      'error' => [
        'class' => 'yii\web\ErrorAction',
      ],
    ];
  }

  public function actionIndex() {
    return $this->render('index', [
      'carouselItems' => Carousel::items(),
      'newsItems' => News::last(3),
    ]);
  }
}

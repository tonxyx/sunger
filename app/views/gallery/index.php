<?php
use yii\easyii\helpers\Image;
use yii\easyii\modules\gallery\api\Gallery;
use yii\easyii\modules\page\api\Page;
use yii\helpers\Html;
use yii\helpers\Url;

// $page = Page::get('page-gallery');
//
// $this->title = $page->seo('title', $page->model->title);
// $this->params['breadcrumbs'][] = $page->model->title; ?>

<h1>Galerija</h1>

<div class="row">
  <?php foreach(Gallery::cats() as $album) { ?>
    <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
      <a href="<?= Url::to(['gallery/view', 'slug' => $album->slug]) ?>">
        <?= Html::img(Image::thumb($album->image, 365, 365), ['class' => 'img-responsive']) ?>
        <h6 class="text-muted"><?= $album->title ?></h6>
      </a>
    </div>
  <?php } ?>
</div>

<?php
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = $cat->seo('title', $cat->model->title);
$this->params['breadcrumbs'][] = ['label' => 'Articles', 'url' => ['articles/index']];
$this->params['breadcrumbs'][] = $cat->model->title;
?>
<h1><?= $cat->seo('h1', $cat->title) ?></h1>
<br/>

<div class="row">
    <?php if(count($items)) { ?>
      <div class="card-deck">
        <?php foreach($items as $article) { ?>
          <a href="<?php echo Url::toRoute(['articles/view', 'slug' => $article->slug]); ?>">
            <div class="card" style="width: 300px; height: 400px;">
              <?php echo Html::img($article->thumb(300, 250), ['class' => "card-img-top"]); ?>
              <div class="card-body">
                <h5 class="card-title"><?php echo $article->title; ?></h5>
                <p class="card-text" style="color: black"><?php echo $article->short; ?></p>
              </div>
            </div>
          </a>
        <?php } ?>
      </div>
    <?php } else { ?>
      <p>Category is empty</p>
    <?php } ?>

    <?= $cat->pages() ?>
</div>

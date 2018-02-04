<?php
use yii\easyii\modules\news\api\News;

$this->title = $news->seo('title', $news->model->title);
?>

<div class="row mt-3">
  <div class="container">
    <div class="media">
      <img class="d-flex mr-3" width="400px" src="<?php echo $news->image; ?>" alt="">

      <div class="media-body">
        <h1 class="mt-0"><?php echo $news->seo('h1', $news->title); ?></h1>
        <?php echo $news->text; ?>
      </div>
    </div>

    <div class="mt-3">
      <?php if(count($news->photos)) { ?>
          <?php foreach($news->photos as $photo) {
            echo $photo->box(100, 100);
          }

          News::plugin(); ?>
        <br/>
      <?php } ?>
      <small>Pregledano: <?php echo $news->views; ?></small><br>
    </div>
  </div>
</div>

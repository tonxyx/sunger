<style>
.easyii-box {
  margin-right: 5px;
}
</style>

<?php
use yii\easyii\modules\gallery\api\Gallery;

$this->title = $album->seo('title', $album->model->title);
$this->params['breadcrumbs'][] = ['label' => 'Gallery', 'url' => ['gallery/index']];
$this->params['breadcrumbs'][] = $album->model->title;
?>

<h1><?php echo $album->seo('h1', $album->title); ?></h1>

<?php if (count($photos)) { ?>
    <div>
      <?php foreach($photos as $photo) {
        echo $photo->box(200, 200);
      }

      Gallery::plugin(); ?>
    </div>
    <br/>
<?php } else { ?>
    <p>Galerija je prazna.</p>
<?php }

echo $album->pages(); ?>

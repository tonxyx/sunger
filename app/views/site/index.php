<?php

use yii\easyii\modules\text\api\Text;

use yii\helpers\Url;
use yii\helpers\Html;

$this->title = 'Naslovna - Sunger.hr';
?>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <?php $carousels = ''; foreach ($carouselItems as $key => $carousel) { $activeClass = $key == 0 ? 'active' : ''; ?>
      <li data-target="#myCarousel" data-slide-to="<?php echo $key; ?>" class="<?php echo $activeClass; ?>"></li>
      <?php $link = $carousel->link != '' ? '<p><a class="btn btn-lg btn-primary" href="' . $carousel->link . '" role="button">Idi</a></p>' : '';
        $carousels .= '<div class="carousel-item ' . $activeClass . '">
          <img class="d-block img-fluid" src="' . $carousel->image . '" alt="' . $carousel->title . '">
          <div class="container">
            <div class="carousel-caption d-none d-md-block text-left">
              <h1>' . $carousel->title . '</h1>
              <p>' . $carousel->text . '</p>
              ' . $link . '
            </div>
          </div>
        </div>';
    } ?>
  </ol>

  <div class="carousel-inner" role="listbox">
    <?php echo $carousels; ?>
  </div>

  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Natrag</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Naprijed</span>
  </a>
</div>

<div class="container marketing">

  <div class="row">
    <h4 class="text-muted text-center"><?= Text::get('index-welcome') ?></h4>
  </div>

  <hr class="featurette-divider">

  <?php foreach ($newsItems as $news) { ?>
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading"><?php echo Html::a($news->title, ['news/view', 'slug' => $news->slug]) ?></h2>
        <p class="lead"><?php echo $news->short ?></p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500"
          style="width: 400px; height: 400px;" src="<?php echo $news->image; ?>" data-holder-rendered="true">
      </div>
    </div>
  <?php } ?>
</div>

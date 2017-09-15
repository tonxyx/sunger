<?php
use yii\helpers\Url;

$this->title = 'Naslovna - Sunger.hr';
?>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <?php $carousels = ''; foreach ($carouselItems as $key => $carousel) { $activeClass = $key == 0 ? 'active' : ''; ?>
      <li data-target="#myCarousel" data-slide-to="<?php echo $key; ?>" class="<?php echo $activeClass; ?>"></li>
      <?php $carousels .= '<div class="carousel-item ' . $activeClass . '">
          <img src="' . $carousel->image . '" alt="' . $carousel->title . '">
          <div class="container">
            <div class="carousel-caption d-none d-md-block text-left">
              <h1>' . $carousel->title . '</h1>
              <p>' . $carousel->text . '</p>
              <p><a class="btn btn-lg btn-primary" href="' . $carousel->link . '" role="button">Idi</a></p>
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

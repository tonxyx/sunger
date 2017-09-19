<?php
use yii\helpers\Html;

$asset = \app\assets\AppAsset::register($this);

$this->beginPage(); ?>
    <!DOCTYPE html>
    <html lang="<?php echo Yii::$app->language; ?>">
    <head>
        <meta charset="<?php echo Yii::$app->charset; ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags(); ?>
        <title><?= Html::encode($this->title); ?></title>
        <link rel="shortcut icon" href="<?php echo $asset->baseUrl; ?>/favicon.ico" type="image/x-icon">
        <link rel="icon" href="<?php echo $asset->baseUrl; ?>/favicon.ico" type="image/x-icon">
        <?php $this->head(); ?>
    </head>
    <body>
    <?php $this->beginBody(); ?>

      <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
        <div class="container">
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand text-muted" href="#">Sunger</a>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="#">Naslovna <span class="sr-only">(current)</span></a>
              </li>
            </ul>
            <!-- <form class="form-inline mt-2 mt-md-0">
              <input class="form-control mr-sm-2" type="text" placeholder="Search">
              <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form> -->
          </div>
        </div>
      </nav>

      <div class="container">
        <?php echo $content; ?>
      </div>

      <footer class="footer">
        <div class="container">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d44878.3131213214!2d14.762028546086722!3d45.33075139935724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47648414e6b6fd93%3A0xcef8653ea7661a2e!2sSunger%2C+Hrvatska!5e0!3m2!1shr!2sno!4v1505813137268" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
          <p>© Sunger.hr 2017 - made by <a href="http://tonxyx.com">Tonxyx</a></p>
        </div>
      </footer>

    <?php $this->endBody(); ?>
    </body>
    </html>
<?php $this->endPage(); ?>

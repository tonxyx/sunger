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

      <nav class="navbar navbar-toggleable-md">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">Sunger</a>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">Disabled</a>
            </li>
          </ul>
          <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>

      <?php echo $content; ?>

      <hr />

      <footer>
        <p>© Sunger.hr 2017 - made by <a href="http://tonxyx.com">Tonxyx</a></p>
      </footer>

    <?php $this->endBody(); ?>
    </body>
    </html>
<?php $this->endPage(); ?>

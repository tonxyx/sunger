<?php
use yii\easyii\modules\news\api\News;
use yii\helpers\Url;

$this->title = $news->seo('title', $news->model->title);
?>

<div class="row">
   <div class="col-md-12">
       <div class="row hidden-md hidden-lg"><h1 class="text-center" ><?php echo $news->seo('h1', $news->title); ?></h1></div>

       <div class="pull-left col-md-4 col-xs-12 thumb-contenido">
         <img class="img-fluid" src='<?php echo $news->image; ?>' />
       </div>
       <div class="">
         <hr />
         <p class="text-justify"><?php echo $news->text; ?></p>
         <hr />
         <?php if(count($news->photos)) { ?>
           <div>
             <h4>Photos</h4>
             <?php foreach($news->photos as $photo) {
                 echo $photo->box(100, 100);
             }

             News::plugin(); ?>
           </div>
           <br/>
         <?php } ?>
         <p>
           <?php foreach($news->tags as $tag) { ?>
               <a href="<?php echo Url::to(['/news', 'tag' => $tag]); ?>" class="label label-info"><?php echo $tag; ?></a>
           <?php } ?>
         </p>
          <small>Views: <?php echo $news->views; ?></small><br>
       </div>
   </div>
</div>

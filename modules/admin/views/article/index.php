<?php

use yii\helpers\Html;
use yii\helpers\Url;


/* @var $this yii\web\View */
/* @var $searchModel app\models\ArticleSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Articles';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="article-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Article', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    
    <div class="row">
    <?php foreach ($article as $post) {?>    
    <div class="col-sm-6 col-md-4">
      <div class="thumbnail">
        <img src="<?= $post->image?>" alt="<?= $post->title?>">
        <div class="caption">
          <h3><?= $post->title?></h3>
          <p><?= $post->content?></p>
          <p><a href="/admin/article/view?id=<?= $post->id?>" class="btn btn-primary" role="button">Button</a></p>
            <?php if($post->ennable_comm) {?> 
                
            <h2>comment</h2>
            
               
            <?php } ?>  
        </div>
      </div>
        
    </div>             
    <?php } ?>    
  </div>
</div>
<?= \yii\widgets\LinkPager::widget(['pagination' => $pages]) ?>



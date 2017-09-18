<?php

namespace app\models;

use Yii;
use yii\web\UploadedFile;
/**
 * This is the model class for table "article".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $image
 * @property string $date
 * @property integer $author_id
 * @property integer $ennable_comm
 *
 * @property Comment[] $comments
 */
class Article extends \yii\db\ActiveRecord
{
    
    public $img;
    public $filename;
    public $string;


    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'article';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title'], 'required'],
            [['content'], 'required'],
            [['author_id', 'ennable_comm'], 'integer'],
            [['title'], 'string', 'max' => 255],
            [['image'], 'file', 'extensions' => 'jpg,png'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'image' => 'Image',
            'date' => 'Date',
            'author_id' => 'Author ID',
            'ennable_comm' => 'Ennable Comm',
        ];
    }
    
    public function beforeSave($insert) {
        if($this->isNewRecord){
            $this->string = substr(uniqid('image'), 0, 12);
            $this->img = UploadedFile::getInstance($this, 'image');
            $this->filename = 'static/images/' . $this->string . '.' . $this->img->extension;
            $this->img->saveAs($this->filename);
            $this->image = '/' . $this->filename;
        } else {
            $this->image = UploadedFile::getInstance($this, 'images');
            if($this->image) {
                $this->image->saveAs(substr($this->image, 1));
            }
        }
        return parent::beforeSave($insert);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComments()
    {
        return $this->hasMany(Comment::className(), ['article_id' => 'id']);
    }
}

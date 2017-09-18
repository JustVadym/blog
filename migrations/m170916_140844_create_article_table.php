<?php

use yii\db\Migration;

/**
 * Handles the creation of table `article`.
 */
class m170916_140844_create_article_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('article', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
            'content' => $this->text(),
            'image' => $this->string(),
            'date' => $this->dateTime(),
            'author_id' => $this->integer(),
            'ennable_comm' => $this->integer(),
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('article');
    }
}

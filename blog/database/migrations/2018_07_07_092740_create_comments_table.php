<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('parent')->nullable();
            $table->timestamp('created');
            $table->timestamp('modified');
            $table->string('file_url')->nullable();
            $table->mediumText('content')->nullable();
            $table->json('pings')->nullable();
            $table->string('creator');
            $table->string('fullname');
            $table->string('profile_picture_url')->nullable();
            $table->boolean('created_by_admin')->default(false);
            $table->boolean('created_by_current_user')->default(true);
            $table->integer('upvote_count')->nullable();
            $table->boolean('user_has_upvoted')->default(false);
            $table->boolean('is_new')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comments');
    }
}

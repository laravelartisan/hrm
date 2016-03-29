<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveApplicationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_application_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('leave_application_id')->unsigned();
            $table->foreign('leave_application_id')
                ->references('id')
                ->on('leave_applications');
            $table->string('subject')->nullable();
            $table->text('explanation')->nullable();
            $table->string('locale')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('leave_application_translations');
    }
}

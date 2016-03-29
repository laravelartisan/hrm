<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePunchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('punches', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned()->nullalble();
            $table->time('punch_in')->nullable();
            $table->time('punch_out')->nullable();
            $table->date('punch_date')->nullable();
            $table->dateTime('punch_date_time')->nullable();
            $table->integer('punch_year')->nullable();
            $table->integer('punch_month')->nullable();
            $table->integer('punch_day')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('punches');
    }
}

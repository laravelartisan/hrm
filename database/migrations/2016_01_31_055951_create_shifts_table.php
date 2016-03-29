<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateShiftsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shifts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->time('sat_in')->nullable();
            $table->time('sat_out')->nullable();
            $table->time('sun_in')->nullable();
            $table->time('sun_out')->nullable();
            $table->time('mon_in')->nullable();
            $table->time('mon_out')->nullable();
            $table->time('tues_in')->nullable();
            $table->time('tues_out')->nullable();
            $table->time('wed_in')->nullable();
            $table->time('wed_out')->nullable();
            $table->time('thurs_in')->nullable();
            $table->time('thurs_out')->nullable();
            $table->time('fri_in')->nullable();
            $table->time('fri_out')->nullable();
            $table->string('status')->nullalble();
            $table->integer('position')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('shifts');
    }
}

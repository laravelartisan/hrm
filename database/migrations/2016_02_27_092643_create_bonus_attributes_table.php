<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBonusAttributesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bonus_attributes', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('month')->nullable();
            $table->longText('salary_types')->nullable();
            $table->double('amount')->nullable();
            $table->integer('amount_type')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('bonus_attributes');
    }
}

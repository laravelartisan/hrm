<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalaryCutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salary_cuts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->longText('salary_types')->nullable();
            $table->double('amount')->nullable();
            $table->string('amount_type')->nullable();
            $table->integer('status_id')->nullable();
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
        Schema::drop('salary_cuts');
    }
}

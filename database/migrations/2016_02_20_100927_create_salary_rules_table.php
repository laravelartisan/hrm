<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalaryRulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salary_rules', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->longText('rules_content')->nullable();
            $table->integer('status_id')->nullable();
            $table->integer('position')->nullable();
            $table->float('basic')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('salary_rules');
    }
}

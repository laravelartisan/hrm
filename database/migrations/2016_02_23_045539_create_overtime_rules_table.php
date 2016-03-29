<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOvertimeRulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('overtime_rules', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->longText('salary_types')->nullable();
            $table->double('amount')->nullable();
            $table->string('amount_type')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('overtime_rules');
    }
}

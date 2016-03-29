<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeHolidayForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('holydays', function (Blueprint $table) {
            $table->integer('type_id')->unsigned()->change();
            $table->foreign('type_id')
                ->references('id')
                ->on('holy_day_types');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('holydays', function (Blueprint $table) {
            $table->dropColumn('type_id');
        });
    }
}

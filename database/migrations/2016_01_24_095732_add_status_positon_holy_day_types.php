<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddStatusPositonHolyDayTypes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('holy_day_types', function (Blueprint $table) {
            $table->integer('status_id')->unsigned()->nullable();
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
        Schema::table('holy_day_types', function (Blueprint $table) {
            $table->dropColumn('status_id');
            $table->dropColumn('position');
        });
    }
}

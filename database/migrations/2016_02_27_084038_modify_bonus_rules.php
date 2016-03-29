<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModifyBonusRules extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('bonus_rules', function (Blueprint $table) {
           $table->dropColumn('salary_types');
           $table->dropColumn('amount');
           $table->dropColumn('amount_type');
           $table->string('rules')->nullable()->after('name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('bonus_rules', function (Blueprint $table) {
            //
        });
    }
}

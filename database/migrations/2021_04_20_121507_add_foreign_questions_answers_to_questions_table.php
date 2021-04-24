<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignQuestionsAnswersToQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('finder_questions', function (Blueprint $table) {
            $table->bigInteger('answers_id')->unsigned()->nullable();

            $table->foreign('answers_id')->references('id')->on('finder_answers')->onDelete('cascade')->onUpdate('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('finder_questions', function (Blueprint $table) {
            $table->dropColumn('answers_id');
        });
    }
}

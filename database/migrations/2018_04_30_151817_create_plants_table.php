<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('plants', function (Blueprint $t) {
            $t->foreign('product-id')->references('product-id')->on('Product');
            $t->primary('plant-id');
            $t->string('plant-name');
            $t->string('Type');
            $t->string('Height');
            $t->string('Width');
            $t->string('Light');
            $t->string('Water');
            $t->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plants');
    }
}

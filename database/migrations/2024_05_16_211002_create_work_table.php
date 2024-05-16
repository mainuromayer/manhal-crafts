<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('work', function (Blueprint $table) {
            $table->id();
            $table->string('video_url')->nullable();
            $table->string('image_url')->nullable();
            $table->string('short_desc');
            $table->string('modal_title');
            $table->string('modal_url')->nullable();
            $table->string('modal_content');
            $table->string('facebook_icon')->nullable();
            $table->string('facebook_url')->nullable();
            $table->string('twitter_icon')->nullable();
            $table->string('twitter_url')->nullable();
            $table->string('instagram_icon')->nullable();
            $table->string('instagram_url')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('work');
    }
};

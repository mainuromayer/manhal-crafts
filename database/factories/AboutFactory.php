<?php

namespace Database\Factories;

use App\Models\About;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\About>
 */
class AboutFactory extends Factory
{
    protected $model = About::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'about_title' => $this->faker->sentence(),
            'about_content' => $this->faker->paragraph(),
            'img_url' => $this->faker->url(),
            'video_url' => $this->faker->url()
        ];
    }
}

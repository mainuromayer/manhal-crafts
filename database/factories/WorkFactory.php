<?php

namespace Database\Factories;

use App\Models\Work;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Work>
 */
class WorkFactory extends Factory
{
    protected $model = Work::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'video_url' => $this->faker->randomElement([null, $this->faker->url()]),
            'image_url' => $this->faker->imageUrl(),
            'short_desc' => $this->faker->sentence(4),
            'modal_title' => $this->faker->sentence(4),
            'modal_url' => $this->faker->imageUrl(),
            'modal_content' => $this->faker->paragraph(3),
            'facebook_icon' => $this->faker->word(5),
            'facebook_url' => $this->faker->url(),
            'twitter_icon' => $this->faker->sentence(),
            'twitter_url' => $this->faker->url(),
            'instagram_icon' => $this->faker->sentence(),
            'instagram_url' => $this->faker->url()
        ];
    }
}

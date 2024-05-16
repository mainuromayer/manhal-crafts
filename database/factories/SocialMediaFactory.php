<?php

namespace Database\Factories;

use App\Models\SocialMedia;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SocialMedia>
 */
class SocialMediaFactory extends Factory
{
    protected $model = SocialMedia::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'tag' => $this->faker->word(),
            'url' => $this->faker->url(),
            'platform' => $this->faker->sentence(),
            'icon' => $this->faker->sentence()
        ];
    }
}

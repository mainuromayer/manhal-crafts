<?php

namespace Database\Factories;

use App\Models\Header;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Header>
 */
class HeaderFactory extends Factory
{

    protected $model = Header::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'background_url' => $this->faker->imageUrl(),
            'title' => $this->faker->sentence()
        ];
    }
}

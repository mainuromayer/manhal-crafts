<?php

namespace Database\Factories;

use App\Models\Commitment;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Commitment>
 */
class CommitmentFactory extends Factory
{
    protected $model = Commitment::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'section_header' => $this->faker->sentence(3),
            'content' => $this->faker->paragraph(4),
            'image_url' => $this->faker->imageUrl(),
            'video_url' => $this->faker->randomElement([null, $this->faker->url()])
        ];
    }
}

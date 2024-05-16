<?php

namespace Database\Seeders;

use App\Models\Commitment;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CommitmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Commitment::factory()->count(5)->create();
    }
}

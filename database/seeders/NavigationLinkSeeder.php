<?php

namespace Database\Seeders;

use App\Models\NavigationLink;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class NavigationLinkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        NavigationLink::factory()->count(5)->create();
    }
}

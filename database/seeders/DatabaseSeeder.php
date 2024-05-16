<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            NavigationSeeder::class,
            SocialMediaSeeder::class,
            HeaderSeeder::class,
            AboutSeeder::class,
            CommitmentSeeder::class,
            WorkSeeder::class,
            MembershipSeeder::class,
            ContactSeeder::class,
            SubscriptionSeeder::class
        ]);
    }
}

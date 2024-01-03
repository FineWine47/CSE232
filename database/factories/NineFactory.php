<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Model>
 */
class NineFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
            return [
                'name' => fake()->name(),
                'firstname'=>fake()->name(),
                'email' => fake()->unique()->safeEmail(),
                'password'=> Hash::make('password'),        
            ];        
    
    }
}

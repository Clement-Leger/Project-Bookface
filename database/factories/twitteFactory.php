<?php

namespace Database\Factories;

use App\Models\twitte;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\twitte>
 */
class twitteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = twitte::class;

    public function definition()
    {
        return [
            'twitte'=> $this->fake()->text()
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\Task;
use Illuminate\Database\Eloquent\Factories\Factory;

class TaskFactory extends Factory
{
    protected $model = Task::class;

    public function definition()
    {
        $faker = \Faker\Factory::create('tr_TR'); // Türkçe dilini kullanmak için

        return [
            'title' => $this->faker->sentence,
            'description' => $this->faker->paragraph,
            'name' => $this->faker->firstName,
            'surname' => $this->faker->lastName,
            'age' => $this->faker->numberBetween(18, 60),
            'gender' => $this->faker->randomElement(['male', 'female']),
        ];
    }
}

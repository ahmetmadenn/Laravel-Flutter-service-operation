<?php

namespace App\Services;
use App\Models\Task;


class TaskService
{


    public function getAllTasks()
    {
        return Task::all();
    }

    public function getTaskById($taskId)
    {

        return Task::find($taskId);

    }

        // Diğer işlemler buraya eklenir.



}

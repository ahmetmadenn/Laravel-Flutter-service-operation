<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;
use App\Services\TaskService;


class TaskController extends Controller
{
    protected $taskService;

    public function __construct(TaskService $taskService)
    {
        $this->taskService = $taskService;
    }

    public function index()
    {
        $tasks = $this->taskService->getAllTasks();
        $data = [

            'veriler' => $tasks,
        ];

        return response()->json($data);
    }

    public function store(Request $request)
    {
    // Formdan gelen verileri doğrulayabilirsiniz.
    $validatedData = $request->validate([
        'title' => 'required|max:255',
        'description' => 'required',
    ]);

    // Yeni görev oluşturun
    $task = new Task;
    $task->title = $validatedData['title'];
    $task->description = $validatedData['description'];
    $task->save();

    return redirect('/tasks')->with('success', 'Görev başarıyla eklendi.');
    }

    // Diğer CRUD metodları buraya eklenir.
}

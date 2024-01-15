<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Task List</title>
</head>
<body>
    <h1>Task List</h1>
    <ul>
        @foreach ($tasks as $task)
            <li>{{ $task['title'] }} - {{ $task['description'] }}</li>
        @endforeach
    </ul>
</body>
</html>

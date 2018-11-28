<?php
require_once('functions.php');
require_once('data.php');

function getCountTasks($tasks, $project) {
    $count = 0;
    foreach ($tasks as $task => $task_val) {
        if ($task_val['category'] === $project) {
            $count++;
        }
    }
    return $count;
};

$page_content = include_template('index.php', ['tasks' => $tasks, 'show_complete_tasks' => $show_complete_tasks]);
$layout_content = include_template('layout.php', [
    'content' => $page_content,
    'projects' => $projects,
    'tasks' => $tasks,
    'title' => 'Дела в порядке'
]);

print($layout_content);

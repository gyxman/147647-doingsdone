<?php
require_once 'init.php';

if (!$link) {
    $error = mysqli_connect_error();
    $content = include_template('error.php', ['error' => $error]);
}
else {
    $sql_user = 'SELECT `name` FROM users';
    $result_user = mysqli_query($link, $sql_user);
    $user = mysqli_fetch_assoc($result_user);

    $sql_projects = 'SELECT DISTINCT a.`name`, COUNT(a.`name`) as count FROM projects a LEFT JOIN tasks b ON a.id = b.project_id GROUP BY a.`name`';
    $result_projects = mysqli_query($link, $sql_projects);

    $sql_tasks = 'SELECT * FROM tasks';
    $result_tasks = mysqli_query($link, $sql_tasks);

    if ($result_projects && $result_tasks) {
        $projects = mysqli_fetch_all($result_projects, MYSQLI_ASSOC);
        $tasks = mysqli_fetch_all($result_tasks, MYSQLI_ASSOC);
        $page_content = include_template('index.php', ['tasks' => $tasks, 'show_complete_tasks' => $show_complete_tasks]);
        $sidebar = include_template('sidebar.php', ['title' => 'Проекты', 'projects' => $projects]);
        $layout_content = include_template('layout.php', [
            'content' => $page_content,
            'sidebar' => $sidebar,
            'tasks' => $tasks,
            'user_name' => $user,
            'title' => 'Дела в порядке'
        ]);
    }
    else {
        $error = mysqli_error($link);
        $page_content = include_template('error.php', ['error' => $error]);
        $layout_content = include_template('layout.php', [
            'content' => $page_content,
            'user_name' => $user,
            'title' => 'Произошла ошибка'
        ]);
    }
}

print($layout_content);

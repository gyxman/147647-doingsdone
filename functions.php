<?php
function include_template($name, $data) {
    $name = 'templates/' . $name;
    $result = '';

    if (!file_exists($name)) {
        return $result;
    }

    ob_start();
    extract($data);
    require $name;

    $result = ob_get_clean();

    return $result;
}

function checkDateTask($date) {
    if ($date === "Нет") {
        return false;
    }

    $hours_count_important = 24;
    $sec_in_hour = 3600;

    date_default_timezone_set("Europe/Moscow");
    $task_date = strtotime($date);
    $date_now = time();
    $date_diff = $task_date - $date_now;
    $hours = $date_diff / $sec_in_hour;

    if ($hours <= $hours_count_important) {
        return $hours;
    }

    return false;
}

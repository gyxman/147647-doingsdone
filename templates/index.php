<h2 class="content__main-heading">Список задач</h2>

<form class="search-form" action="index.php" method="post">
    <input class="search-form__input" type="text" name="" value="" placeholder="Поиск по задачам">

    <input class="search-form__submit" type="submit" name="" value="Искать">
</form>

<div class="tasks-controls">
    <nav class="tasks-switch">
        <a href="/" class="tasks-switch__item tasks-switch__item--active">Все задачи</a>
        <a href="/" class="tasks-switch__item">Повестка дня</a>
        <a href="/" class="tasks-switch__item">Завтра</a>
        <a href="/" class="tasks-switch__item">Просроченные</a>
    </nav>

    <label class="checkbox">
        <input class="checkbox__input visually-hidden show_completed" type="checkbox" <?= $show_complete_tasks ? 'checked' : ''?>>
        <span class="checkbox__text">Показывать выполненные</span>
    </label>
</div>

<table class="tasks">
    <?php foreach ($tasks as $task => $task_val): ?>
        <?php if ($show_complete_tasks || $task_val['is_completed'] === '0') : ?>
            <tr class="tasks__item task<?php if ($task_val['is_completed'] === '1'): ?> task--completed<?php endif; ?><?php if (checkDateTask($task_val['date_target'])): ?> task--important<?php endif; ?>">
                <td class="task__select">
                    <label class="checkbox task__checkbox">
                        <input class="checkbox__input visually-hidden task__checkbox" type="checkbox" value="1">
                        <span class="checkbox__text"><?= htmlspecialchars($task_val['name']); ?></span>
                    </label>
                </td>

                <!-- оставил на будущее
                <td class="task__file">
                    <a class="download-link" href="#">Home.psd</a>
                </td>
                -->

                <td class="task__date">
                    <?php $date = date_create($task_val['date_target']); echo date_format($date, 'd.m.Y'); ?>
                </td>
            </tr>
        <?php endif; ?>
    <?php endforeach; ?>
</table>

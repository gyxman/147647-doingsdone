// наполним проекты
INSERT INTO projects SET name = 'Входящие', author_id = '1';
INSERT INTO projects SET name = 'Учеба', author_id = '1';
INSERT INTO projects SET name = 'Работа', author_id = '1';
INSERT INTO projects SET name = 'Домашние дела', author_id = '1';
INSERT INTO projects SET name = 'Авто', author_id = '1';

// создадим пользователей
INSERT INTO users SET email = 'gyxman@yandex.ru', name = 'Роман', password = '123456';
INSERT INTO users SET email = 'aleksytin@gmail.com', name = 'Павел', password = '123456';

// список задач
INSERT INTO tasks SET name = 'Собеседование в IT компании', date_target = '01.12.2018', project_id = '3', is_completed = '0';
INSERT INTO tasks SET name = 'Выполнить тестовое задание', date_target = '25.12.2018', project_id = '3', is_completed = '0';
INSERT INTO tasks SET name = 'Сделать задание первого раздела', date_target = '21.12.2018', project_id = '2', is_completed = '1';
INSERT INTO tasks SET name = 'Встреча с другом', date_target = '22.12.2018', project_id = '1', is_completed = '0';
INSERT INTO tasks SET name = 'Купить корм для кота', date_target = NULL, project_id = '4', is_completed = '0';
INSERT INTO tasks SET name = 'Заказать пиццу', date_target = NULL, project_id = '4', is_completed = '0';


// получить список из всех проектов для одного пользователя
SELECT name FROM projects WHERE author_id = '1';

// получить список из всех задач для одного проекта
SELECT name FROM tasks WHERE project_id = '3';

// пометить задачу как выполненную
UPDATE tasks SET is_completed = '1' WHERE name = 'Собеседование в IT компании';

// получить все задачи для завтрашнего дня
SELECT name FROM tasks WHERE date_target = '06.12.2018';

// обновить название задачи по её идентификатору
UPDATE tasks SET name = 'Выполнить тестовое задание - new' WHERE id = '2';

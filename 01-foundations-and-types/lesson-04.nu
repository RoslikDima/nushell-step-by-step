# Модуль 1. Урок 4: Таблицы (table) и проекция колонок (select, reject, rename)
# Задача: Оставить в таблице директории только файлы (type == file),
# выбрать колонки name и size, переименовать их в file_name и file_size
# и отсортировать по file_size по убыванию.

ls
| where type == file
| select name size
| rename -c { name: file_name, size: file_size }
| sort-by -r file_size

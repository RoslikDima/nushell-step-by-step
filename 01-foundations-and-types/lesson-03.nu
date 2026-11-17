# Модуль 1. Урок 3: Записи (record) и доступ к вложенным полям (Cell Paths)
# Задача: В записи { pipeline: "sales_etl", status: "draft", rows: 0 }
# обновить поле status на "active", добавить поле duration со значением 15sec
# и извлечь из итоговой записи значение поля status.

{ pipeline: "sales_etl", status: "draft", rows: 0 }
| update status "active"
| insert duration 15sec
| get status

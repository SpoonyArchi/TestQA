﻿#language: ru

@tree

Функционал: проверка возможности заполнения поля Количество в табличной части Товары документа Заказ.

Как Менеджем по продажам я хочу
создать документ Заказ
чтобы проверить возможность заполнения поля Количество

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий:
И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
Тогда открылось окно 'Заказ (создание)'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000036' | 'Услуги'       |
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" я выбираю текущую строку



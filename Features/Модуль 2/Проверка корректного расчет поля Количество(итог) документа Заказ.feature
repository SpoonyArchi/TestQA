﻿#language: ru

@tree

Функционал: Проверка расчета поля Количество(итог) документа Заказ.

Как Менеджер по продажам я хочу
загрузить данные, создать, заполнить и записать документ Заказ 
чтобы проверить корректность расчет поля Количество(итог).

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка корректности расчета поля Количество(итог)

* Загрузка данных для документа Заказ.
	И загрузка данных для документа "Заказ"	

* Создание и заполнение шапки документа Заказ.
	И заполнение шапки и создание документа "Заказ"

* Заполнение табличной части
	Когда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" я завершаю редактирование строки

* Проверка Количество (итог)
	Если элемент формы "Количество (итог)" стал равен "5" в течение 10 секунд Тогда
		* Перезаполнение табличной части
			Когда открылось окно 'Заказ (создание) *'
			И в таблице "Товары" я завершаю редактирование строки
			И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
			И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
			Тогда открылось окно 'Товары'
			И в таблице "Список" я выбираю текущую строку
			И в таблице "Список" я перехожу к строке:
				| 'Код'       | 'Наименование' |
				| '000000024' | 'Кроссовки'    |
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Заказ (создание) *'
			И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
			И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
			И в таблице "Товары" я завершаю редактирование строки

* Проверка Количество (итог)
	Тогда элемент формы "Количество (итог)" стал равен "10"

* Перезаполнение шапки документа
	И перезаполнение шапки документа "Заказ"

* Перезаполнение табличной части
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'     | 'Цена'     |
		| '5'          | '9 000,00' | 'Босоножки' | '1 800,00' |
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'     | 'Товар'     | 'Цена'     |
		| '5'          | '17 500,00' | 'Кроссовки' | '3 500,00' |
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка Количество (итог)
	Если элемент формы "Количество (итог)" стал равен "13" в течение 10 секунд Тогда									
		И запись документа "Заказ"
				
			

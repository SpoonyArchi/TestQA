﻿#language: ru

@tree

Функционал: Создание документа Заказ и проверка итоговой суммы документа.

Как Менеджер по продажам я хочу
создать документ Заказ 
чтобы проверить правильный расчет итоговой суммы документа.

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание документа Заказ и проверка итоговой суммы.
* Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа.
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* Заполнение табличной части документа.
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Veko67NE'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Колбаса'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'     | 'Товар'    | 'Цена'      |
		| '1'          | '10 000,00' | 'Veko67NE' | '10 000,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'  | 'Товар'   | 'Цена'   |
		| '1'          | '300,00' | 'Колбаса' | '300,00' |
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И в таблице "Товары" я завершаю редактирование строки
	
	
* Проверка.
	И у элемента формы с именем "ТоварыИтогСумма" текст редактирования стал равен "20 900,00"
* Изменения количества и суммы.
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'     | 'Товар'    | 'Цена'      |
		| '2'          | '20 000,00' | 'Veko67NE' | '10 000,00' |
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '15 000,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'   | 'Цена'   |
		| '3'          | '900,00' | 'Колбаса' | '300,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '500,00'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка
	И у элемента формы с именем "ТоварыИтогСумма" текст редактирования стал равен "76 500,00"
*Запись документа.
	И я нажимаю на кнопку "Записать"
	
	
				
	


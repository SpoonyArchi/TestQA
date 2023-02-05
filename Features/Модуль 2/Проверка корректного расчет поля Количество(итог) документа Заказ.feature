﻿#language: ru

@tree

Функционал: Проверка расчета поля Количество(итог) документа Заказ.

Как Менеджер по продажам я хочу
загрузить данные, создать, заполнить и записать документ Заказ 
чтобы проверить корректность расчет поля Количество(итог).

Сценарий: Проверка корректности расчета поля Количество(итог)

* Загрузка данных для документа Заказ.
	И загрузка данных для документа "Заказ"				
* Создание и заполнение шапки документа Заказ.
	И заполнение шапки и создание документа "Заказ"	
* Заполнение табличной части
		

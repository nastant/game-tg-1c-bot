
#Область ПрограммныйИнтерфейс

// Обработчик для добавления алгоритмов обработки входящих сообщений
// 
// Параметры:
//  ЭлементОчередиОбъект - СправочникОбъект.ОчередьОбработкиСообщений - Элемент очереди объект
//  ДанныеЭлемента - Структура - Десериализованные данные элемента
Процедура ПриОбработкеЭлементаОчереди(ЭлементОчередиОбъект, ДанныеЭлемента) Экспорт
	
	РежимРаботы = Константы.РежимРаботыБота.Получить();
	
	Если РежимРаботы = Перечисления.РежимРаботыБота.Эхо Тогда
		ТелеграмЭхо.ПриОбработкеЭлементаОчереди(ДанныеЭлемента);
	ИначеЕсли РежимРаботы = Перечисления.РежимРаботыБота.ПростаяВикторина Тогда
		ТелеграмПростаяВикторина.ПриОбработкеЭлементаОчереди(ДанныеЭлемента);
	ИначеЕсли РежимРаботы = Перечисления.РежимРаботыБота.ТестСРасшифровкой Тогда
		ТелеграмТестСРасшифровкой.ПриОбработкеЭлементаОчереди(ДанныеЭлемента, ЭлементОчередиОбъект.Отправитель);
	Иначе
		ВызватьИсключение "Не указан режим работы бота";
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

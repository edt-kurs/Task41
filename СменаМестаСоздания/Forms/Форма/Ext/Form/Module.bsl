﻿
&НаКлиенте
Процедура Сменить(Команда)
	СменитьНаСервере();
КонецПроцедуры

&НаСервере
Процедура СменитьНаСервере()
	Попытка 
		НОбъект = ОбъектСмены.ПолучитьОбъект();
		НОбъект.МестоСоздания = Справочники.Организации.НайтиПоКоду("Ц00000046");
		НОбъект.ОбменДанными.Загрузка = Ложь;
		НОбъект.Записать();
	Исключение
		Сообщить(ОписаниеОшибки());
	КонецПопытки;
КонецПроцедуры

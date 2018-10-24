unit модТаймер;
{
   Предоставляет системный таймер для тактирования всей системы.
}
uses Timers;

type
   тТаймер = class(Timer)
   private 
      ///Интервал работы таймера в миллисекундах
      _интервал: integer;
      
      ///Процедура для вызова при срабатывании таймера
      _проц: procedure;
   
   public 
      ///Конструктор таймера:
      ///   пМС -- интервал в мс
      ///   пПроц -- процедура для вызова
      constructor Create(пМС: integer; пПроц: procedure);
      begin
         inherited Create(пМС, пПроц);
         self._интервал := пМС;
         self._проц := пПроц;
      end;
      
      ///Возвращает интервал срабатывания таймера, мс
      property интервал: integer read self._интервал;
      
      procedure Старт;
      begin
         self.Start;
      end;
      
      procedure Стоп;
      begin
         self.Stop;
      end;
   
   end;
end.
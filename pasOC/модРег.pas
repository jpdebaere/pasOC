unit модРег;
{
Предоставляет тип для основы регистра
}

type
   ///Основа для всех типов регистров
   тРег = class
   private 
      _знач: int64 := 0;
      ///Приватный метод для установки значения регистра
      ///Здесь нижний уровень проверок по значению регистра
      procedure значУст(пЗнач: int64);
      begin
         if пЗнач > integer.MaxValue then
            raise new Exception('тРег._Знач_Уст: слишком большое значение пЗнач ' + пЗнач.ToString);
         if пЗнач < integer.MinValue then
            raise new Exception('тРег._Знач_Уст: слишком малькое значение пЗнач ' + пЗнач.ToString);
         self._знач := пЗнач;
      end;
   
   public 
      constructor Create;
      begin
         Writeln('тРег.Create')
      end;
      
      property знач: int64 read self._знач write значУст;
   
   end;
end.
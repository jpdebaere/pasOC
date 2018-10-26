unit модРон;
{
   Модуль обеспечивает регистром общего назначения процессор
}
interface

uses модРег;

type
   тРон = class(модРег.тРег)
   private 
      _ноль: boolean;
      _отриц: boolean;
      _перенос: boolean;
      
      ///Проверяет флаги значения, после операций
      ///(по необходимости)
      procedure _Флаги;
      begin
         if self.знач = 0 then
            self._ноль := true
         else
            self._ноль := false;
         
         if self.знач < 0 then
            self._отриц := true
         else
            self._отриц := false;
      end;
      
      ///Проверяет число и значение на перебор вверх
      procedure _Макс(пЗнач: integer);
      begin
         if self.знач + пЗнач > integer.MaxValue then
         begin
            self._перенос := true;   
            self.знач := integer.MinValue;
         end
         else
            self.знач += пЗнач;
         self._Флаги; 
      end;
      
      ///Проверяет число и значение на перебор вниз
      procedure _Мин(пЗнач: integer);
      begin
         if self.знач - пЗнач < integer.MinValue then
         begin
            self._перенос := true;   
            self.знач := integer.MaxValue;
         end
         else
            self.знач -= пЗнач;
         self._Флаги; 
      end;
   
   public 
      constructor Create;
      begin
         inherited Create;
         self.знач := 0;
         self._ноль := true;
         self._отриц := false;
         self._перенос := false;
      end;
      
      ///Увеличение значения регистра на 1
      procedure Доб;
      begin
         self._Макс(1); 
      end;
      
      ///Уменьшение значения регистра на 1
      procedure Уменьш;
      begin
         self._Макс(-1);
      end;
      
      ///Сложение значения регистра на 1
      procedure Слож(пЗнач: integer);
      begin
         self._Макс(пЗнач);
      end;
   end;

implementation

end.
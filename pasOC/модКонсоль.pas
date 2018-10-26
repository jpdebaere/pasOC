unit модКонсоль;
{
Предоставляет возможность выводить вконсоль централизованно.
}

uses GraphWPF;

type
   ///Тип консоли, обеспечивает вывод различного рода информации в консоль.
   ///Объект-одиночка.
   тКонс = class
   private 
      procedure _Строка(пСтрока: string);
      begin
         System.Console.Write('           ');
         System.Console.BackgroundColor := System.ConsoleColor(9);
         System.Console.ForegroundColor := System.ConsoleColor(15);
         System.Console.WriteLine(пСтрока);
         System.Console.ResetColor;
      end;
   
   public 
      constructor Create;
      begin
      end;
      ///Выводит шапку виртуальной машины в консоль
      procedure Шапка;
      begin
         self._Строка('');
         self._Строка('+-------------------------------+');
         self._Строка('|           OberonVM            |');
         self._Строка('| KBK Technics ltd.    BSD-2    |');
         self._Строка('| 2018-10-26 15:23   Build 0038 |');
         self._Строка('+-------------------------------+');
         self._Строка('');
      end;
   end;

var
   конс: тКонс;

begin
   конс := тКонс.Create();
end.


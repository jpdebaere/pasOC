unit модЦП;
{
   Модуль предоставляет тип центрального процессора для OberonVM.
}

uses модРон;

type
   ///Тип эмулирующий центральный процессор ПК
   тЦП = class
      ///Регистр "А" в ЦП
      РегА: модРон.тРон;
      constructor Create;
      begin
         Writeln('тЦП.Create');
         self.РегА := модРон.тРон.Create();
      end;
   end;
end.
unit модЦП;
{
   Модуль предоставляет тип центрального процессора для OberonVM.
}

uses модРег;

type
   ///Тип эмулирующий центральный процессор ПК
   тЦП = class
      ///Регистр "А" в ЦП
      РегА: модРег.тРег;
      constructor Create;
      begin
         Writeln('тЦП.Create');
         self.РегА := модРег.тРег.Create();
      end;
   end;
end.
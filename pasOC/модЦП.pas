unit модЦП;
{
   Модуль предоставляет тип центрального процессора для OberonVM.
}

type
   ///Тип эмулирующий центральный процессор ПК
   тЦП = class
      constructor Create;
      begin
         Writeln('тЦП.Create');
      end;
   end;
end.
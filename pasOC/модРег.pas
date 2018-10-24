unit модРег;
{
Предоставляет тип для основы регистра
}

type
   ///Основа для всех типов регистров
   тРег = class
      constructor Create;
      begin
         Writeln('тРег.Create')
      end;
   end;
end.
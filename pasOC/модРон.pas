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
   public 
      constructor Create;
      begin
         inherited Create;
         self.знач := 0;
         self._ноль:=true;
         self._отриц:=false;
         self._перенос:=false;
      end;
   end;

implementation

end.
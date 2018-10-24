unit модЭкран;
{
   Модуль предлагает тип экрана для отображения информации.
}

uses GraphWPF;

begin
   var окно := Window;
   окно.Title := 'OberonVM';
   var шир := окно.Width;
   var выс := окно.Height;
   FillRectangle(0, 0, шир, выс, Color.FromRgb(0, 0, 0));
end.
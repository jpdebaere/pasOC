uses модКонсоль, модПК;
{$product 'OberonVM'}
{$version '2018-10-26 15:22 0038'}
{$company 'KBK Technicks ltd.'}
{$copyright 'KBK Technicks ltd.'}
{$trademark 'BSD-2 Clause'}
begin
   var пк := модПК.тПК.Create();
   конс.Шапка;
   пк.Старт;
end.
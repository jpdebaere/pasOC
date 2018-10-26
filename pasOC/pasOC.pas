uses модКонсоль, модПК;
{$product 'OberonVM'}
{$version '2018-10-24 0022'}
{$company 'KBK Technicks ltd.'}
{$copyright 'KBK Technicks ltd.'}
{$trademark 'BSD-2 Clause'}
begin
   var пк := модПК.тПК.Create();
   конс.Шапка;
   пк.Старт;
end.
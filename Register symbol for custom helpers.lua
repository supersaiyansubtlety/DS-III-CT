 [ENABLE]
{$lua}
if not syntaxcheck then
  local bulletsReg = {
    {12470000,0,"","WarmthBullet"},
    {11200000,0,"","DartBullet"},
  }
  paramUtils:paramIterator("Bullet",bulletsReg)
end

{$asm}
[DISABLE]
{$lua}
if not syntaxcheck then
  paramUtils:paramDepatcher("Bullet",bulletsReg)
  unregisterSymbol("WarmthBullet")
  unregisterSymbol("DartBullet")
end
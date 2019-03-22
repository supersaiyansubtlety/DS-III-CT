{
    flip
}
[ENABLE]
{$lua}
if not syntaxcheck then
  local good = EquipParamGoods:new("flip", 0x1C4)
  good:refId(12403300)
  good:goodsUseAnim(5)
  good:refCategory(1)
  good:isConsume(0)
end


[DISABLE]
{$lua}
if not syntaxcheck then
  paramUtils:restore("flip")
end
{
    Leeches everywhere
}
[ENABLE]
{$lua}
if not syntaxcheck then
  local good = EquipParamGoods:new("Leechfruit", 0x1C4)
  good:refId(5105)
  good:goodsUseAnim(5)
  good:isConsume(0)
end


[DISABLE]
{$lua}
if not syntaxcheck then
  paramUtils:restore("Leechfruit")
end
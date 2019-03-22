{
    Author: Seriouz
    Description: Red eye orb
}
[ENABLE]
{$lua}
if syntaxcheck then return end
local RedS = 11

local effect = SpEffectParam:new("Behelit", 40)
effect:cycleOccurrenceSpEffectId(RedS)


[DISABLE]
{$lua}
if not syntaxcheck then
  paramUtils:restore("Behelit")
end
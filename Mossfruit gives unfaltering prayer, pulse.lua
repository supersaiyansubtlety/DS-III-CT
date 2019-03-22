{
    Author: Seriouz
    Description: this script makes mossfruit apply a buff, which cycles unfaltering prayers
            in other words: it makes you glow af
}
[ENABLE]
{$lua}
if syntaxcheck then return end
local gloweffect = 120840

local good = EquipParamGoods:new("YellowPulseF", 0x1C4)
good:refId(9160) -- stam, mp, resistances buff

local effect = SpEffectParam:new("YellowPulse", 9160)
effect:cycleOccurrenceSpEffectId(gloweffect)
effect:motionInterval(0.1)

local effectG = SpEffectParam:new("YellowPulse", gloweffect)
effectG:effectEndurance(0.003)

[DISABLE]
{$lua}
if not syntaxcheck then
  paramUtils:restore("YellowPulse")
  paramUtils:restore("YellowPulseF")
end
// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list event = [];
//           ^^^^^ invalid.illegal.lsl

        llRegionSayTo(llDetectedKey(num_detected), PUBLIC_CHANNEL, "test");
    }
}

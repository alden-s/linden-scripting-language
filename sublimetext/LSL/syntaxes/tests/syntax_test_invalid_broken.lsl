// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_invalid_broken = [
            LAND_LARGE_BRUSH,
//          ^^^^^^^^^^^^^^^^ invalid.broken.lsl
            LAND_MEDIUM_BRUSH,
//          ^^^^^^^^^^^^^^^^^ invalid.broken.lsl
            LAND_SMALL_BRUSH
//          ^^^^^^^^^^^^^^^^ invalid.broken.lsl
        ];

        llRegionSayTo(llDetectedKey(num_detected), PUBLIC_CHANNEL, (string)llGetListLength(lsl_invalid_broken));
    }
}

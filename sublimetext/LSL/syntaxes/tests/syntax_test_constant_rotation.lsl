// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
{
    state_entry()
    {
        list lsl_rotations = [
            ZERO_ROTATION
//          ^^^^^^^^^^^^^ constant.language.rotation.lsl
        ];
    }
}

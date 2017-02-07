// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
{
    state_entry()
    {
        list lsl_vectors = [
            TOUCH_INVALID_TEXCOORD,
//          ^^^^^^^^^^^^^^^^^^^^^^ constant.language.vector.lsl
            TOUCH_INVALID_VECTOR,
//          ^^^^^^^^^^^^^^^^^^^^ constant.language.vector.lsl
            ZERO_VECTOR
//          ^^^^^^^^^^^ constant.language.vector.lsl
        ];
    }
}

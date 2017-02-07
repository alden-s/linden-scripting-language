// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
{
    state_entry()
    {
        list lsl_integer_booleans = [
            TRUE,
//          ^^^^ constant.language.integer.boolean.lsl
            FALSE
//          ^^^^^ constant.language.integer.boolean.lsl
        ];
    }
}

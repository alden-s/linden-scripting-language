// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

// comment line example
// <- punctuation.definition.comment.line.double-slash.lsl
//^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.lsl

/* // */
// <- punctuation.definition.comment.block.begin.lsl
//^^^^ comment.block.lsl
//    ^^ punctuation.definition.comment.block.end.lsl

// /* ... */
// <- punctuation.definition.comment.line.double-slash.lsl
//^^^^^^^^^^ comment.line.double-slash.lsl

default
// ^ entity.name.class.state.lsl
{
// <- punctuation.section.class.state.begin.lsl

// <- meta.class.state.body.lsl
    state_entry()
//  ^^^^^^^^^^^ support.function.event.lsl
//             ^ punctuation.section.event.parameters.begin.lsl
//              ^ punctuation.section.event.parameters.end.lsl
    {
//  ^ punctuation.section.event.body.begin.lsl
        llSay(PUBLIC_CHANNEL, "Hello, Avatar!");
    }
//  ^ punctuation.section.event.body.end.lsl

    touch_end(integer num_detected)
    {
        llSay(PUBLIC_CHANNEL, "Touched.");
    }
}

// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

// comment line example
// <- punctuation.definition.comment.line.double-slash.lsl
 // <- punctuation.definition.comment.line.double-slash.lsl
//^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.lsl

// /* ... */
// <- punctuation.definition.comment.line.double-slash.lsl
 // <- punctuation.definition.comment.line.double-slash.lsl
//^^^^^^^^^^ comment.line.double-slash.lsl
// ^^^^^^^^^ -comment.block.lsl

/* // */
// <- punctuation.definition.comment.block.begin.lsl
 // <- punctuation.definition.comment.block.begin.lsl
//^^^^ comment.block.lsl
//    ^^ punctuation.definition.comment.block.end.lsl
// ^^ - punctuation.definition.comment.line.double-slash.lsl
//   ^^^ - comment.line.double-slash.lsl

default
{
    touch_end(integer num_detected)
    {
        llRegionSayTo(llDetectedKey(num_detected), PUBLIC_CHANNEL, "You touched me!");
    }
}

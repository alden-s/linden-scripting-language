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

        list lsl_floats = [
            DEG_TO_RAD,
//          ^^^^^^^^^^ constant.language.float.lsl
            PI,
//          ^^ constant.language.float.lsl
            PI_BY_TWO,
//          ^^^^^^^^^ constant.language.float.lsl
            RAD_TO_DEG,
//          ^^^^^^^^^^ constant.language.float.lsl
            SQRT2,
//          ^^^^^ constant.language.float.lsl
            TWO_PI
//          ^^^^^^ constant.language.float.lsl
        ];

        list lsl_rotations = [
            ZERO_ROTATION
//          ^^^^^^^^^^^^^ constant.language.rotation.lsl
        ];

        list lsl_strings = [
            EOF,
//          ^^^ constant.language.string.lsl
            JSON_ARRAY,
//          ^^^^^^^^^^ constant.language.string.lsl
            JSON_DELETE,
//          ^^^^^^^^^^^ constant.language.string.lsl
            JSON_FALSE,
//          ^^^^^^^^^^ constant.language.string.lsl
            JSON_INVALID,
//          ^^^^^^^^^^^^ constant.language.string.lsl
            JSON_NULL,
//          ^^^^^^^^^ constant.language.string.lsl
            JSON_NUMBER,
//          ^^^^^^^^^^^ constant.language.string.lsl
            JSON_OBJECT,
//          ^^^^^^^^^^^ constant.language.string.lsl
            JSON_STRING,
//          ^^^^^^^^^^^ constant.language.string.lsl
            JSON_TRUE,
//          ^^^^^^^^^ constant.language.string.lsl
            NULL_KEY,
//          ^^^^^^^^ constant.language.string.lsl
            TEXTURE_BLANK,
//          ^^^^^^^^^^^^^ constant.language.string.lsl
            TEXTURE_DEFAULT,
//          ^^^^^^^^^^^^^^^ constant.language.string.lsl
            TEXTURE_MEDIA,
//          ^^^^^^^^^^^^^ constant.language.string.lsl
            TEXTURE_PLYWOOD,
//          ^^^^^^^^^^^^^^^ constant.language.string.lsl
            TEXTURE_TRANSPARENT,
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string.lsl
            URL_REQUEST_DENIED,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string.lsl
            URL_REQUEST_GRANTED
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string.lsl
        ];

        list lsl_vectors = [
            TOUCH_INVALID_TEXCOORD,
//          ^^^^^^^^^^^^^^^^^^^^^^ constant.language.vector.lsl
            TOUCH_INVALID_VECTOR,
//          ^^^^^^^^^^^^^^^^^^^^ constant.language.vector.lsl
            ZERO_VECTOR
//          ^^^^^^^^^^^ constant.language.vector.lsl
        ];

        llSay(PUBLIC_CHANNEL, "Hello, Avatar!");
    }
//  ^ punctuation.section.event.body.end.lsl

    touch_end(integer num_detected)
//  ^^^^^^^^^ support.function.event.lsl
//           ^ punctuation.section.event.parameters.begin.lsl
//            ^^^^^^^ storage.type.lsl
//                   ^ source.lsl
//                    ^^^^^^^^^^^^ entity.name.variable.lsl
//                                ^ punctuation.section.event.parameters.end.lsl
    {
        llSay(PUBLIC_CHANNEL, "Touched.");
    }
}

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

        print("Hello, Linden Lab!");
//      ^^^^^ reserved.log.lsl

        state other;
    }
}

state other
//    ^^^^^ entity.name.class.state.lsl
{
    at_rot_target(integer handle, rotation targetrot, rotation ourrot) { ; }
//  ^^^^^^^^^^^^^ support.function.event.lsl
    at_target(integer tnum, vector targetpos, vector ourpos) { ; }
//  ^^^^^^^^^ support.function.event.lsl
    attach(key id) { ; }
//  ^^^^^^ support.function.event.lsl
    changed(integer change) { ; }
//  ^^^^^^^ support.function.event.lsl
    collision(integer num_detected) { ; }
//  ^^^^^^^^^ support.function.event.lsl
    collision_end(integer num_detected) { ; }
//  ^^^^^^^^^^^^^ support.function.event.lsl
    collision_start(integer num_detected) { ; }
//  ^^^^^^^^^^^^^^^ support.function.event.lsl
    control(key id, integer level, integer edge) { ; }
//  ^^^^^^^ support.function.event.lsl
    dataserver(key query_id, string data) { ; }
//  ^^^^^^^^^^ support.function.event.lsl
    email(string time, string address, string subject, string message, integer num_left) { ; }
//  ^^^^^ support.function.event.lsl
    experience_permissions(key agent_id) { ; }
//  ^^^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    experience_permissions_denied(key agent_id, integer reason) { ; }
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    http_request(key request_id, string method, string body) { ; }
//  ^^^^^^^^^^^^ support.function.event.lsl
    http_response(key request_id, integer status, list metadata, string body) { ; }
//  ^^^^^^^^^^^^^ support.function.event.lsl
    land_collision(vector pos) { ; }
//  ^^^^^^^^^^^^^^ support.function.event.lsl
    land_collision_end(vector pos) { ; }
//  ^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    land_collision_start(vector pos) { ; }
//  ^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    link_message(integer sender_num, integer num, string str, key id) { ; }
//  ^^^^^^^^^^^^ support.function.event.lsl
    listen(integer channel, string name, key id, string message) { ; }
//  ^^^^^^ support.function.event.lsl
    money(key id, integer amount) { ; }
//  ^^^^^ support.function.event.lsl
    moving_end() { ; }
//  ^^^^^^^^^^ support.function.event.lsl
    moving_start() { ; }
//  ^^^^^^^^^^^^ support.function.event.lsl
    no_sensor() { ; }
//  ^^^^^^^^^ support.function.event.lsl
    not_at_rot_target() { ; }
//  ^^^^^^^^^^^^^^^^^ support.function.event.lsl
    not_at_target() { ; }
//  ^^^^^^^^^^^^^ support.function.event.lsl
    object_rez(key id) { ; }
//  ^^^^^^^^^^ support.function.event.lsl
    on_rez(integer start_param) { ; }
//  ^^^^^^ support.function.event.lsl
    path_update(integer type, list reserved) { ; }
//  ^^^^^^^^^^^ support.function.event.lsl
    remote_data(integer event_type, key channel, key message_id, string sender, integer idata, string sdata) { ; }
//  ^^^^^^^^^^^ support.function.event.lsl
    run_time_permissions(integer perm) { ; }
//  ^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    sensor(integer num_detected) { ; }
//  ^^^^^^ support.function.event.lsl
    state_entry() { ; }
//  ^^^^^^^^^^^ support.function.event.lsl
    state_exit() { ; }
//  ^^^^^^^^^^ support.function.event.lsl
    timer() { ; }
//  ^^^^^ support.function.event.lsl
    touch(integer num_detected) { ; }
//  ^^^^^ support.function.event.lsl

    touch_end(integer num_detected)
//  ^^^^^^^^^ support.function.event.lsl
    {
        state default;
    }

    touch_start(integer num_detected) { ; }
//  ^^^^^^^^^^^ support.function.event.lsl
    transaction_result(key id, integer success, string data) { ; }
//  ^^^^^^^^^^^^^^^^^^ support.function.event.lsl
}

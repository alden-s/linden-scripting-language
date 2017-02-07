// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
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
    touch_end(integer num_detected) { ; }
//  ^^^^^^^^^ support.function.event.lsl
    touch_start(integer num_detected) { ; }
//  ^^^^^^^^^^^ support.function.event.lsl
    transaction_result(key id, integer success, string data) { ; }
//  ^^^^^^^^^^^^^^^^^^ support.function.event.lsl
}

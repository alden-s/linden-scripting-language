// SYNTAX TEST "Packages/LSL/syntaxes/LSL.sublime-syntax"

default
{
    at_rot_target(integer handle, rotation targetrot, rotation ourrot)
//  ^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)handle);
        llSay(PUBLIC_CHANNEL, (string)targetrot);
        llSay(PUBLIC_CHANNEL, (string)ourrot);
    }

    at_target(integer tnum, vector targetpos, vector ourpos)
//  ^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)tnum);
        llSay(PUBLIC_CHANNEL, (string)targetpos);
        llSay(PUBLIC_CHANNEL, (string)ourpos);
    }

    attach(key id)
//  ^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)id);
    }

    changed(integer change)
//  ^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)change);
    }

    collision(integer num_detected)
//  ^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    collision_end(integer num_detected)
//  ^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    collision_start(integer num_detected)
//  ^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    control(key id, integer level, integer edge)
//  ^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)id);
        llSay(PUBLIC_CHANNEL, (string)level);
        llSay(PUBLIC_CHANNEL, (string)edge);
    }

    dataserver(key query_id, string data)
//  ^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)query_id);
        llSay(PUBLIC_CHANNEL, data);
    }

    email(string time, string address, string subject, string message, integer num_left)
//  ^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, time);
        llSay(PUBLIC_CHANNEL, address);
        llSay(PUBLIC_CHANNEL, subject);
        llSay(PUBLIC_CHANNEL, message);
        llSay(PUBLIC_CHANNEL, (string)num_left);
    }

    experience_permissions(key agent_id)
//  ^^^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)agent_id);
    }

    experience_permissions_denied(key agent_id, integer reason)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)agent_id);
        llSay(PUBLIC_CHANNEL, (string)reason);
    }

    http_request(key request_id, string method, string body)
//  ^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)request_id);
        llSay(PUBLIC_CHANNEL, method);
        llSay(PUBLIC_CHANNEL, body);
    }

    http_response(key request_id, integer status, list metadata, string body)
//  ^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)request_id);
        llSay(PUBLIC_CHANNEL, (string)status);
        llSay(PUBLIC_CHANNEL, (string)metadata);
        llSay(PUBLIC_CHANNEL, (string)body);
    }

    land_collision(vector pos)
//  ^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)pos);
    }

    land_collision_end(vector pos)
//  ^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)pos);
    }

    land_collision_start(vector pos)
//  ^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)pos);
    }

    link_message(integer sender_num, integer num, string str, key id)
//  ^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)sender_num);
        llSay(PUBLIC_CHANNEL, (string)num);
        llSay(PUBLIC_CHANNEL, str);
        llSay(PUBLIC_CHANNEL, id);
    }

    listen(integer channel, string name, key id, string message)
//  ^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)channel);
        llSay(PUBLIC_CHANNEL, name);
        llSay(PUBLIC_CHANNEL, (string)id);
        llSay(PUBLIC_CHANNEL, (string)message);
    }

    money(key id, integer amount)
//  ^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)id);
        llSay(PUBLIC_CHANNEL, (string)amount);
    }

    moving_end()
//  ^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    moving_start()
//  ^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    no_sensor()
//  ^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    not_at_rot_target()
//  ^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    not_at_target()
//  ^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    object_rez(key id)
//  ^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)id);
    }

    on_rez(integer start_param)
//  ^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)start_param);
    }

    path_update(integer type, list reserved)
//  ^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)type);
        llSay(PUBLIC_CHANNEL, (string)reserved);
    }

    remote_data(integer event_type, key channel, key message_id, string sender, integer idata, string sdata)
//  ^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)event_type);
        llSay(PUBLIC_CHANNEL, (string)channel);
        llSay(PUBLIC_CHANNEL, (string)message_id);
        llSay(PUBLIC_CHANNEL, sender);
        llSay(PUBLIC_CHANNEL, (string)idata);
        llSay(PUBLIC_CHANNEL, sdata);
    }

    run_time_permissions(integer perm)
//  ^^^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)perm);
    }

    sensor(integer num_detected)
//  ^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    state_entry()
//  ^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    state_exit()
//  ^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    timer()
//  ^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, "test");
    }

    touch(integer num_detected)
//  ^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    touch_end(integer num_detected)
//  ^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    touch_start(integer num_detected)
//  ^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }

    transaction_result(key id, integer success, string data)
//  ^^^^^^^^^^^^^^^^^^ support.function.event.lsl
    {
        llSay(PUBLIC_CHANNEL, (string)id);
        llSay(PUBLIC_CHANNEL, (string)success);
        llSay(PUBLIC_CHANNEL, data);
    }
}

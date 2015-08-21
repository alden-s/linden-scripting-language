/// <reference path="../declares.d.ts" />

'use strict';
define(["require", "exports"], function (require, exports) {
    exports.snippets = [
        {
            type: 'snippet',
            label: 'at_rot_target',
            codeSnippet: [
                'at_rot_target(integer ${handle}, rotation ${targetrot}, rotation ${ourrot})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'at_rot_target (event)'
        },
        {
            type: 'snippet',
            label: 'at_target',
            codeSnippet: [
                'at_target(integer ${tnum}, vector ${targetpos}, vector ${ourpos})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'at_target (event)'
        },
        {
            type: 'snippet',
            label: 'attach',
            codeSnippet: [
                'attach(key ${id})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'attach (event)'
        },
        {
            type: 'snippet',
            label: 'changed',
            codeSnippet: [
                'changed(integer ${change})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'changed (event)'
        },
        {
            type: 'snippet',
            label: 'collision',
            codeSnippet: [
                'collision(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'collision (event)'
        },
        {
            type: 'snippet',
            label: 'collision_end',
            codeSnippet: [
                'collision_end(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'collision_end (event)'
        },
        {
            type: 'snippet',
            label: 'collision_start',
            codeSnippet: [
                'collision_start(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'collision_start (event)'
        },
        {
            type: 'snippet',
            label: 'control',
            codeSnippet: [
                'control(key ${id}, integer ${level}, integer ${edge})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'control (event)'
        },
        {
            type: 'snippet',
            label: 'dataserver',
            codeSnippet: [
                'dataserver(key ${query_id}, string ${data})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'dataserver (event)'
        },
        {
            type: 'snippet',
            label: 'email',
            codeSnippet: [
                'email(string ${time}, string ${address}, string ${subject}, string ${4:message}, integer ${5:num_left})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'email (event)'
        },
        {
            type: 'snippet',
            label: 'experience_permissions',
            codeSnippet: [
                'experience_permissions(key ${agent_id})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'experience_permissions (event)'
        },
        {
            type: 'snippet',
            label: 'experience_permissions_denied',
            codeSnippet: [
                'experience_permissions_denied(key ${agent_id}, integer ${reason})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'experience_permissions_denied (event)'
        },
        {
            type: 'snippet',
            label: 'http_request',
            codeSnippet: [
                'http_request(key ${request_id}, string ${method}, string ${body})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'http_request (event)'
        },
        {
            type: 'snippet',
            label: 'http_response',
            codeSnippet: [
                'http_response(key ${request_id}, integer ${status}, list ${metadata}, string ${4:body})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'http_response (event)'
        },
        {
            type: 'snippet',
            label: 'land_collision',
            codeSnippet: [
                'land_collision(vector ${pos})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'land_collision (event)'
        },
        {
            type: 'snippet',
            label: 'land_collision_end',
            codeSnippet: [
                'land_collision_end(vector ${pos})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'land_collision_end (event)'
        },
        {
            type: 'snippet',
            label: 'land_collision_start',
            codeSnippet: [
                'land_collision_start(vector ${pos})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'land_collision_start (event)'
        },
        {
            type: 'snippet',
            label: 'link_message',
            codeSnippet: [
                'link_message(integer ${sender_num}, integer ${num}, string ${str}, key ${4:id})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'link_message (event)'
        },
        {
            type: 'snippet',
            label: 'listen',
            codeSnippet: [
                'listen(integer ${channel}, string ${name}, key ${id}, string ${4:message})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'listen (event)'
        },
        {
            type: 'snippet',
            label: 'money',
            codeSnippet: [
                'money(key ${id}, integer ${amount})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'money (event)'
        },
        {
            type: 'snippet',
            label: 'moving_end',
            codeSnippet: [
                'moving_end()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'moving_end (event)'
        },
        {
            type: 'snippet',
            label: 'moving_start',
            codeSnippet: [
                'moving_start()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'moving_start (event)'
        },
        {
            type: 'snippet',
            label: 'no_sensor',
            codeSnippet: [
                'no_sensor()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'no_sensor (event)'
        },
        {
            type: 'snippet',
            label: 'not_at_rot_target',
            codeSnippet: [
                'not_at_rot_target()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'not_at_rot_target (event)'
        },
        {
            type: 'snippet',
            label: 'not_at_target',
            codeSnippet: [
                'not_at_target()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'not_at_target (event)'
        },
        {
            type: 'snippet',
            label: 'object_rez',
            codeSnippet: [
                'object_rez(key ${id})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'object_rez (event)'
        },
        {
            type: 'snippet',
            label: 'on_rez',
            codeSnippet: [
                'on_rez(integer ${start_param})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'on_rez (event)'
        },
        {
            type: 'snippet',
            label: 'path_update',
            codeSnippet: [
                'path_update(integer ${type}, list ${reserved})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'path_update (event)'
        },
        {
            type: 'snippet',
            label: 'remote_data',
            codeSnippet: [
                'remote_data(integer ${event_type}, key ${channel}, key ${message_id}, string ${4:sender}, integer ${5:idata}, string ${6:sdata})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'remote_data (event)'
        },
        {
            type: 'snippet',
            label: 'run_time_permissions',
            codeSnippet: [
                'run_time_permissions(integer ${perm})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'run_time_permissions (event)'
        },
        {
            type: 'snippet',
            label: 'sensor',
            codeSnippet: [
                'sensor(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'sensor (event)'
        },
        {
            type: 'snippet',
            label: 'state_entry',
            codeSnippet: [
                'state_entry()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'state_entry (event)'
        },
        {
            type: 'snippet',
            label: 'state_exit',
            codeSnippet: [
                'state_exit()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'state_exit (event)'
        },
        {
            type: 'snippet',
            label: 'timer',
            codeSnippet: [
                'timer()',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'timer (event)'
        },
        {
            type: 'snippet',
            label: 'touch',
            codeSnippet: [
                'touch(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'touch (event)'
        },
        {
            type: 'snippet',
            label: 'touch_end',
            codeSnippet: [
                'touch_end(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'touch_end (event)'
        },
        {
            type: 'snippet',
            label: 'touch_start',
            codeSnippet: [
                'touch_start(integer ${num_detected})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'touch_start (event)'
        },
        {
            type: 'snippet',
            label: 'transaction_result',
            codeSnippet: [
                'transaction_result(key ${id}, integer ${success}, string ${data})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'transaction_result (event)'
        },
        {
            type: 'snippet',
            label: 'default',
            codeSnippet: [
                'default',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'state default'
        },
        {
            type: 'snippet',
            label: 'state other',
            codeSnippet: [
                'state ${other}',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'state other'
        },
        {
            type: 'snippet',
            label: 'else',
            codeSnippet: [
                'else',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'else (flow control)'
        },
        {
            type: 'snippet',
            label: 'do',
            codeSnippet: [
                'do',
                '{',
                '    $0',
                '}',
                'while (${condition});'
            ],
            documentationLabel: 'do (flow control)'
        },
        {
            type: 'snippet',
            label: 'if',
            codeSnippet: [
                'if (${condition})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'if (flow control)'
        },
        {
            type: 'snippet',
            label: 'for',
            codeSnippet: [
                'for (${start}; ${condition}; ${step})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'for (flow control)'
        },
        {
            type: 'snippet',
            label: 'jump',
            codeSnippet: 'jump ${target};',
            documentationLabel: 'jump (flow control)'
        },
        {
            type: 'snippet',
            label: 'return',
            codeSnippet: 'return ${value};',
            documentationLabel: 'return (flow control)'
        },
        {
            type: 'snippet',
            label: 'while',
            codeSnippet: [
                'while (${condition})',
                '{',
                '    $0',
                '}'
            ],
            documentationLabel: 'while (flow control)'
        }
    ];
});

/// <reference path="../declares.d.ts" />

'use strict';
define(["require", "exports", './lslDef', 'monaco', './features/suggestSupport'], function (require, exports, lslDef, monaco, SuggestSupport) {
    function activate(_ctx) {
        var ctx = {
            modelService: _ctx.modelService,
            markerService: _ctx.markerService,
            configurationService: _ctx.configurationService
        }
        monaco.Modes.registerMonarchDefinition('lsl', lslDef.language);
        monaco.Modes.SuggestSupport.register('lsl', new SuggestSupport(ctx));
        monaco.Modes.loadInBackgroundWorker(require.toUrl('./lslWorker.js')).then(function (workerPiece) {
            // worker piece loaded OK
        }, function (err) {
            console.error(err);
        });
        return null;
    }
    exports.activate = activate;
});

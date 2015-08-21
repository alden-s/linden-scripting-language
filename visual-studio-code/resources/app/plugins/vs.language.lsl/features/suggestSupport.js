/// <reference path="../declares.d.ts" />

'use strict';
define(["require", "exports",  'monaco', './snippets'], function (require, exports, monaco, lslSnippets) {
    var SuggestSupport = (function (_super) {
        function SuggestSupport(ctx) {
            this.modelService = ctx.modelService;
        }
        SuggestSupport.prototype.suggest = function (resource, position) {
            var model = this.modelService.getModel(resource);
            var versionId = model.getVersionId();
            if (versionId !== model.getVersionId()) {
                return [ret];
            }
            var word = model.getWordAtPosition(position, false);
            var ret = {
                currentWord: word ? word.word.substring(0, position.column - word.startColumn) : '',
                suggestions: []
            };
            ret.suggestions = lslSnippets.snippets;
            return [ret];
        };
        return SuggestSupport;
    })();
    return SuggestSupport;
});

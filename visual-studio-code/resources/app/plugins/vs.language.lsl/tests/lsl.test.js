'use strict';
define(["require", "exports", '../lslDef', 'monaco-testing'], function (require, exports, languageDef, T) {
    var tokenizationSupport = T.createTokenizationSupport(languageDef.language);
    var tokenize = T.createTokenizeFromSupport(tokenizationSupport);
    var assertTokens = T.assertTokens;
    var assertWords = T.assertWords;
    function assertTokensOne(textToTokenize, tokenType) {
        var tokens = tokenize(textToTokenize).tokens;
        assertTokens(tokens, [{ startIndex: 0, type: tokenType }]);
    };
    T.module('Syntax Highlighting - LSL');
    T.test('User functions', function () {
//      assertTokensOne('', '');
//      var tokens = tokenize('integer someuserfunction(string one, float two)').tokens;
//      assertTokens(tokens, [
//          { startIndex: 0, type: 'storage.type.lsl' },
//          { startIndex: 7, type: '' },
//          { startIndex: 8, type: 'identifier.lsl' },
//          { startIndex: 24, type: 'delimiter.parenthesis.lsl', bracket: 1 },
//          { startIndex: 25, type: 'storage.type.lsl' },
//          { startIndex: 31, type: '' },
//          { startIndex: 32, type: 'identifier.lsl' },
//          { startIndex: 35, type: 'delimiter.lsl' },
//          { startIndex: 36, type: '' },
//          { startIndex: 37, type: 'storage.type.lsl' },
//          { startIndex: 42, type: '' },
//          { startIndex: 43, type: 'identifier.lsl' },
//          { startIndex: 46, type: 'delimiter.parenthesis.lsl', bracket: -1 }
//      ]);
    });
});

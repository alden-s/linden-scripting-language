decribe "LSL grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-lsl")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.lsl")

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.lsl"

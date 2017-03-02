from SublimeLinter.lint import Linter, util


class Lslint(Linter):

    syntax = ('lsl')
    cmd = 'lslint'
    executable = None
    version_args = '-V'
    version_re = r'(?P<version>\d+\.\d+\.\d+)'
    version_requirement = '>= 0.4.2'
    regex = r'''(?xi)
        ((?P<warning> WARN)|(?P<error>ERROR))
        \:\:\s\(\s*(?P<line>\d+),\s*(?P<col>\d+)
        \)\:\s(?P<message>.*)
    '''
    multiline = True
    line_col_base = (1, 1)
    tempfile_suffix = 'lsl'
    error_stream = util.STREAM_BOTH
    selectors = {}
    word_re = None
    defaults = {}
    inline_settings = None
    inline_overrides = None
    comment_re = None

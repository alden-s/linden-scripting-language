import sublime
from SublimeLinter.lint import Linter, util
import os

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
    
    @classmethod
    def which(cls, cmd):
        if sublime.platform() == 'linux':
            return os.path.join(sublime.packages_path(), 'LSL', 'bin', 'lslint', 'linux', 'lslint')
        elif sublime.platform() == 'osx':
            return os.path.join(sublime.packages_path(), 'LSL', 'bin', 'lslint', 'osx', 'lslint')
        else:
            # add differentiation for XP, x86 and x86_x64
            return os.path.join(sublime.packages_path(), 'LSL', 'bin', 'lslint', 'windows', 'lslint.exe')

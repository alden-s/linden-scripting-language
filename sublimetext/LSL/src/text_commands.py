import sublime
import sublime_plugin

import os
import plistlib

settings = {}
SETTINGS_FILE = None
INDENT_STYLE = None
INDENT_STYLE_ALLMAN = None
INDENT_STYLE_K_AND_R = None


def plugin_loaded():

    global settings
    global SETTINGS_FILE
    global INDENT_STYLE
    global INDENT_STYLE_ALLMAN
    global INDENT_STYLE_K_AND_R

    SETTINGS_FILE = __pkg_name__ + '.sublime-settings'
    INDENT_STYLE = os.path.join(sublime.packages_path(), 'User', 'LSL_indent_style.tmPreferences')
    INDENT_STYLE_ALLMAN = sublime.load_resource('Packages/' + __pkg_name__ + '/metadata/LSL_indent_style.tmPreferences.allman')
    INDENT_STYLE_K_AND_R = sublime.load_resource('Packages/' + __pkg_name__ + '/metadata/LSL_indent_style.tmPreferences.k_and_r')

    if not os.path.exists(INDENT_STYLE):
        with open(INDENT_STYLE, mode='w', newline='\n') as file:
            file.write(INDENT_STYLE_ALLMAN)

    try:
        settings = sublime.load_settings(SETTINGS_FILE)
    except Exception as e:
        print(e)


class LslChangeSchemeCommand(sublime_plugin.TextCommand):

    _is_checked = False

    def __init__(self, view):
        self._is_checked = settings.has('color_scheme')

    def run(self):
        if self._is_checked:
            settings.erase('color_scheme')
        else:
            settings.set('color_scheme', 'Packages/' + __pkg_name__ + '/other/color_scheme/LSL.hidden-tmTheme')
        sublime.save_settings(SETTINGS_FILE)
        self._is_checked = not self._is_checked

    def is_checked(self):
        return self._is_checked


class LslChangeIndentCommand(sublime_plugin.TextCommand):

    _is_checked = False

    def __init__(self, view):
        if os.path.exists(INDENT_STYLE):
            pl = plistlib.readPlist(INDENT_STYLE)
            self._is_checked = (pl['name'] == 'Indent Style - K & R')

    def run(self):
        if self._is_checked:
            with open(INDENT_STYLE, mode='w', newline='\n') as file:
                file.write(INDENT_STYLE_ALLMAN)
        else:
            with open(INDENT_STYLE, mode='w', newline='\n') as file:
                file.write(INDENT_STYLE_K_AND_R)
        self._is_checked = not self._is_checked

    def is_checked(self):
        return self._is_checked

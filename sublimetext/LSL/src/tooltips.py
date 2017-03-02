import sublime
import sublime_plugin

import json
import mdpopups
import os
import webbrowser

from . import __pkg_name__


TOOLTIP_DATA = None
SL_WIKI = None


def plugin_loaded():

    global SL_WIKI
    global TOOLTIP_DATA

    SL_WIKI = 'https://wiki.secondlife.com/w/index.php?title=Special:Search&go=Go&search='

    try:
        TOOLTIP_DATA = json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/constant_float.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/constant_integer.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/constant_integer_boolean.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/constant_rotation.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/constant_string.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/constant_vector.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/control_conditional.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/control_flow.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/control_loop.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/event.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/function.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/keyword.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/state.json'))
        TOOLTIP_DATA += json.loads(sublime.load_resource('Packages/' + __pkg_name__ + '/other/tooltips/storage_type.json'))
    except Exception as e:
        print(e)

#   TODO: add to "mdpopups.sublime_user_lang_map", not replace it
#
#   pref = sublime.load_settings('Preferences.sublime-settings')
#   pref.set('mdpopups.use_sublime_highlighter', True)
#   pref.set('mdpopups.sublime_user_lang_map', { 'lsl': [['lsl'], ['LSL/syntaxes/LSL']] } )
#   sublime.save_settings(pref)

class Lsl(sublime_plugin.EventListener):

    def on_navigate(self, link):
        webbrowser.open_new_tab(link)

    def on_hide(self, view):
        mdpopups.hide_popup(view)

    def on_hover(self, view, point, hover_zone):

        if view.settings().get('is_widget'):
            return

        if not view.settings().get('show_definitions'):
            return

        if hover_zone != sublime.HOVER_TEXT:
            return

        if not view.score_selector(point, 'source.lsl'):
            return

        word = view.substr(view.word(point))

        if not word:
            return

        if TOOLTIP_DATA is None:
            return

        try:
            tooltipRows = []
            for result in TOOLTIP_DATA:
                if result.get('name', None) == word:
                    if 'type' in result or result['name'].startswith('ll'):
                        tooltipRows.append('### (%s) <a href="%s%s">%s</a>' % (result.get('type', 'void'), SL_WIKI, result['name'], result['name']))
                    else:
                        tooltipRows.append('### <a href="%s%s">%s</a>' % (SL_WIKI, result['name'], result['name']))
                    if 'value' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('**Value**: %s' % str(result['value']))
                    if 'version' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('**SL server version**: %s' % result['version'])
                    if 'status' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('<body class="danger">**Status**: %s</body>' % result['status'])
                    if 'delay' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('**Delay**: %s' % str(result['delay']))
                    if 'energy' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('**Energy**: %s' % str(result['energy']))
                    if 'param' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('#### Parameters')
                        if type(result['param']) is dict:
                            tooltipRows.append('* (%s) **%s**' % (result['param']['type'], result['param']['name']))
                        elif type(result['param']) is list:
                            for param in result['param']:
                                tooltipRows.append('* (%s) **%s**' % (param['type'], param['name']))
                    if 'description' in result:
                        tooltipRows.append(' ')
                        tooltipRows.append('#### Description')
                        tooltipRows.append(' ')
                        tooltipRows.append('%s' % result['description']['en_US'])
                    if 'snippets' in result:
                        for snippet in result['snippets']:
                            tooltipRows.append(' ')
                            tooltipRows.append('---')
                            tooltipRows.append(' ')
                            tooltipRows.append('```lsl')
                            tooltipRows.append('%s' % snippet)
                            tooltipRows.append('```')
            if 0 < len(tooltipRows):
                mdpopups.show_popup(view, '\n'.join(tooltipRows),
                                    flags=(sublime.COOPERATE_WITH_AUTO_COMPLETE | sublime.HIDE_ON_MOUSE_MOVE_AWAY),
                                    location=point,
                                    wrapper_class='lsl',
                                    max_width=1280,
                                    max_height=960,
                                    on_navigate=self.on_navigate,
                                    on_hide=self.on_hide(view)
                )
                return
        except Exception as e:
            print(e)

        mdpopups.hide_popup(view)

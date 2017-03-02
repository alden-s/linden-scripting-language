from . import __pkg_name__


def status_msg(msg):
    import sublime
    sublime.status_message( __pkg_name__ + ': ' + msg)


def plugin_loaded():
    try:
        from package_control import events
        if events.install( __pkg_name__):
            status_msg('Installed %s' % events.install( __pkg_name__))
        elif events.post_upgrade( __pkg_name__):
            status_msg('Upgraded to %s' % events.post_upgrade( __pkg_name__))
    except Exception as e:
        print(e)


def plugin_unloaded():
    try:
        from package_control import events
        if events.pre_upgrade( __pkg_name__):
            status_msg('Upgrading from %s' % events.pre_upgrade( __pkg_name__))
        elif events.remove( __pkg_name__):
            status_msg('Removing %s' % events.remove( __pkg_name__))
    except Exception as e:
        print(e)

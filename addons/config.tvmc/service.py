addon_id = 'config.tvmc';
to_id = 'config.tvmc';
AddonTitle = 'Config TVMC';
import sys
import xbmc
import xbmcaddon

try:
    from addon.common.addon import Addon
except:
    try:
        from t0mm0.common.addon import Addon
    except:
        from t0mm0_common_addon import Addon
try:
    addon = Addon(addon_id, sys.argv);
except:
    addon = Addon(addon_id, 0);
settings = xbmcaddon.Addon(id=addon_id);
AddonPath = settings.getAddonInfo('path')


def EBRA(tt): xbmc.executebuiltin('RunAddon(%s)' % tt)


def settg(t, d=''):
    try:
        return settings.getSetting(t)
    except:
        return d

# try:
if settg('status') == '' or settg('status') == 'error':
    EBRA('%s,"1","?name=SentFromService&service=yes&mode=service"' % to_id)
# except: EBRA(to_id)

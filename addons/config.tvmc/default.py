# Config Wizard By: Blazetamer 2013-2014
# Thanks to Blazetamer, TheHighway, and the rest of the crew at TVADDONS.ag (XBMCHUB.com).
import urllib
import re
import xbmcplugin
import xbmcgui
import xbmc
import os
import sys
import downloader
import extract
import wizardmain as main

AddonTitle = main.AddonTitle;
wizardUrl = 'http://tribeca.tvaddons.ag/tools/tvmc/';
SiteDomain = 'TVADDONS.AG';
TeamName = 'TVMC';
addon = main.addon;
net = main.net;
settings = main.settings;
SkinBackGroundImg = os.path.join('special://', 'home', 'media', 'SKINDEFAULT.jpg')
RequiredHostsPath = xbmc.translatePath(os.path.join(main.AddonPath, 'requiredhosts.py'))
RequiredHostsUrl = wizardUrl + 'requiredhosts.txt'
RequiredHostsUrl = 'https://offshoregit.com/xbmchub/config-wizard-development/raw/master/requiredhosts.py'
LinksUrl = wizardUrl + 'updates.txt'
# LinksUrl='https://offshoregit.com/xbmchub/config-wizard-development/raw/master/links.txt'
LocalLinks = xbmc.translatePath(os.path.join(main.AddonPath, 'links.txt'))
# ==========================Help WIZARD=====================================================================================================
def HELPCATEGORIES():
    if main.isFile(LocalLinks) == True:
        link = main.nolines(main.FileOpen(LocalLinks)).strip()
    else:
        link = main.OPEN_URL(LinksUrl).replace('\n', '').replace('\r', '').replace('\a', '').strip()
    print {'link': link}
    # xbmcplugin.endOfDirectory(int(sys.argv[1]))
    if '://' in link:
        # HELPWIZARD('TVMC.Android.Package',link,"Wizard Package for Android",'main')
        main.addHELPDir2('Click Here to Finalize TVMC Installation', 'TVMC.Android.Package', link,
                         'helpwizard', '', '', "Wizard Package for Android", "main")
    main.doSetView('50')
    xbmcplugin.endOfDirectory(int(sys.argv[1]))
    ## ### ##


def xEBb(t): main.xEB('Skin.SetBool(%s)' % t)


def xEBS(t, n): main.xEB('Skin.SetString(%s,%s)' % (t, n))


def HELPWIZARD(name, url, description, filetype):
    path = xbmc.translatePath(os.path.join('special://home', 'addons', 'packages'));
    confirm = xbmcgui.Dialog();
    filetype = filetype.lower();
    if confirm.yesno(TeamName, "You're almost done!", "Just click Continue to finalize ",
                     "the installation of TVMC.", "Exit", "Continue"):
        try:
            main.setts('status', 'working')
            dp = xbmcgui.DialogProgress();
            dp.create(AddonTitle, " ", 'Downloading ', 'Please Wait')
            lib = os.path.join(path, name + '.zip')
            try:
                os.remove(lib)
            except:
                pass
            ### ## ... ## 
            if main.isFile(RequiredHostsPath) == False: dialog = xbmcgui.Dialog(); dialog.ok(
                "Error!", 'import not found.'); return
            try:
                import requiredhosts as RequiredHosts
            except:
                print "error attempting to import requiredhosts as RequiredHosts"; dialog = xbmcgui.Dialog(); dialog.ok(
                    "Error!", "import failed."); return
            # print {'url':url}
            url = RequiredHosts.CheckForHosts(url);  # print {'url':url}
            ### ## ... ## 
            if str(url).endswith('[error]'): print url; dialog = xbmcgui.Dialog(); dialog.ok(
                "Error!", url); return
            if '[error]' in url: print url; dialog = xbmcgui.Dialog(); dialog.ok("Error!",
                                                                                 url); return
            if not str(url).lower().startswith(
                'http://'): print url; dialog = xbmcgui.Dialog(); dialog.ok("Error!", url); return
            print {'url': url}
            downloader.download(url, lib, dp)
            ### ## ... ## 
            # return ## For Testing 2 Black Overwrite of stuff. ##
            ### ## ... ## 
            if filetype == 'main':
                addonfolder = xbmc.translatePath('special://home')
            elif filetype == 'addon':
                addonfolder = xbmc.translatePath(os.path.join('special://home', 'addons'))
            else:
                print {'filetype': filetype}; dialog = xbmcgui.Dialog(); dialog.ok("Error!",
                                                                                   'filetype: "%s"' % str(
                                                                                       filetype)); return
            # time.sleep(2)
            xbmc.sleep(4000)
            dp.update(0, "", "Extracting Zip")
            print '=======================================';
            print addonfolder;
            print '======================================='
            extract.all(lib, addonfolder, dp)
            proname = xbmc.getInfoLabel("System.ProfileName")

            try:
                os.remove(lib)
            except:
                pass
            if filetype == 'main':
                link = main.OPEN_URL(wizardUrl + 'shortcuts.txt')
                shorts = re.compile('shortcut="(.+?)"').findall(link)
                for shortname in shorts: main.xEB('Skin.SetString(%s)' % shortname)

            main.setts('status', 'done');
            main.FixTheXML();
            xbmc.sleep(4000);
            dialog = xbmcgui.Dialog();  # db.close();
            main.XBMC_UpdateLocalAddons()
            if mode == "service":
                dialog.ok(TeamName, "TVMC has now been successfully installed.", " ",
                          "Please visit www.tvaddons.ag for future support.")
            else:
                dialog.ok(TeamName, "TVMC has now been successfully installed.", " ",
                          "Please visit www.tvaddons.ag for future support.")
            try:
                # xbmc.executebuiltin('UnloadSkin()');
                xbmc.executebuiltin('ReloadSkin()');
                xbmc.executebuiltin("LoadProfile(%s)" % proname)
                # main.DoStopScript(main.addon_id)
                # xbmc.sleep(1000);
                # DoA('Back');
            except:
                pass
            ##
        except:
            main.setts('status', 'failed'); dialog = xbmcgui.Dialog(); dialog.ok(TeamName,
                                                                                 "Problem!  Installation has failed,",
                                                                                 "please Restart TVMC to try again.",
                                                                                 "")


# ==========
def DoA(a): xbmc.executebuiltin("Action(%s)" % a)  # DoA('Back'); # to move to previous screen.


def eod(): addon.end_of_directory()

# ==========END HELP WIZARD==================================================================================================
params = main.get_params();
url = None;
name = None;
mode = None;
year = None;
imdb_id = None


def ParsUQP(s, Default=None):
    try:
        return urllib.unquote_plus(params[s])
    except:
        return Default


fanart = ParsUQP("fanart", "");
description = ParsUQP("description", "");
filetype = ParsUQP("filetype", "");
url = ParsUQP("url", "");
name = ParsUQP("name", "");
mode = ParsUQP("mode");
year = ParsUQP("year");
print "Mode: " + str(mode);
print "URL: " + str(url);
print "Name: " + str(name);
print "Year: " + str(year)
if mode == None or url == None or len(url) < 1:
    HELPCATEGORIES()
elif len(mode) < 1:
    HELPCATEGORIES()
elif mode == "service":
    # if name=='SentFromService':
    if main.settg('status') == 'working':
        pass
    elif main.settg('status') == 'done':
        pass;  # main.DoStopScript(main.addon_id)
    else:
        HELPCATEGORIES()
# else: HELPCATEGORIES()
elif mode == "wizardstatus":
    print"" + url; items = main.WIZARDSTATUS(url)
elif mode == 'helpwizard':
    HELPWIZARD(name, url, description, filetype)
# xbmcplugin.endOfDirectory(int(sys.argv[1]))

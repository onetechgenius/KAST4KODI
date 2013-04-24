#!/usr/bin/env bash

BUILD_DIR=$1
cd $BUILD_DIR

#######
# Download addons for inclusion in XAF release
#######

#######
# Dependencies
#######
# script.module.urlresolver
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.urlresolver/script.module.urlresolver-2.0.9.zip
unzip script.module.urlresolver-2.0.9.zip
rm script.module.urlresolver-2.0.9.zip
cd ..

# script.module.t0mm0.common
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.t0mm0.common/script.module.t0mm0.common-1.1.0.zip
unzip script.module.t0mm0.common-1.1.0.zip
rm script.module.t0mm0.common-1.1.0.zip
cd ..

# script.module.metahandler
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.metahandler/script.module.metahandler-2.0.2.zip
unzip script.module.metahandler-2.0.2.zip
rm script.module.metahandler-2.0.2.zip
cd ..

# script.module.myconnpy
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.myconnpy/script.module.myconnpy-0.3.2.zip
unzip script.module.myconnpy-0.3.2.zip
rm script.module.myconnpy-0.3.2.zip
cd ..

# script.module.simplejson
#cd addons/
#wget http://mirrors.xbmc.org/addons/frodo/script.module.simplejson/script.module.simplejson-2.0.10.zip
#unzip script.module.simplejson-2.0.10.zip
#rm script.module.simplejson-2.0.10.zip
#cd ..

# script.module.elementtree
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.elementtree/script.module.elementtree-1.2.7.zip
unzip script.module.elementtree-1.2.7.zip
rm script.module.elementtree-1.2.7.zip
cd ..

# script.module.beautifulsoup
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.beautifulsoup/script.module.beautifulsoup-3.2.0.zip
unzip script.module.beautifulsoup-3.2.0.zip
rm script.module.beautifulsoup-3.2.0.zip
cd ..

# script.common.plugin.cache
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.common.plugin.cache/script.common.plugin.cache-2.5.1.zip
unzip script.common.plugin.cache-2.5.1.zip
rm script.common.plugin.cache-2.5.1.zip
cd ..

# script.module.parsedom
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.parsedom/script.module.parsedom-2.5.1.zip
unzip script.module.parsedom-2.5.1.zip
rm script.module.parsedom-2.5.1.zip
cd ..

# script.module.simple.downloader
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.module.simple.downloader/script.module.simple.downloader-1.9.4.zip
unzip script.module.simple.downloader-1.9.4.zip
rm script.module.simple.downloader-1.9.4.zip
cd ..


#######
# Add-ons
#######

# 1Channel - bstrdsmkr Repo
cd addons/
wget http://repo.gosub.dk/bstrdsmkr/repo/plugin.video.1channel/plugin.video.1channel-1.0.1.zip
unzip plugin.video.1channel-1.0.1.zip
rm plugin.video.1channel-1.0.1.zip
cd ..

# Project Free TV - Eldorado Repo
cd addons/
wget https://github.com/Eldorados/eldorado-xbmc-addons/raw/master/repo/plugin.video.projectfreetv/plugin.video.projectfreetv-1.0.2.zip
unzip plugin.video.projectfreetv-1.0.2.zip
rm plugin.video.projectfreetv-1.0.2.zip
cd ..

# IceFilms - anarchintosh Repo
cd addons/
wget http://anarchintosh-projects.googlecode.com/svn/addons/plugin.video.icefilms/plugin.video.icefilms-1.1.28.zip
unzip plugin.video.icefilms-1.1.28.zip
rm plugin.video.icefilms-1.1.28.zip
cd ..

# Mash Up -- All Addons - Mash Up Repo
cd addons/
wget https://github.com/mash2k3/mash2k3-repository/raw/master/zips/plugin.video.watchfreeseries/plugin.video.watchfreeseries-1.0.6.zip
wget https://github.com/mash2k3/mash2k3-repository/raw/master/zips/plugin.video.ravens/plugin.video.ravens-1.0.1.zip
wget https://github.com/mash2k3/mash2k3-repository/raw/master/zips/plugin.video.movie25/plugin.video.movie25-1.2.9.zip
wget https://github.com/mash2k3/mash2k3-repository/raw/master/zips/plugin.video.discovery/plugin.video.discovery-1.0.0.zip
unzip plugin.video.watchfreeseries-1.0.6.zip
unzip plugin.video.ravens-1.0.1.zip
unzip plugin.video.movie25-1.2.9.zip
unzip plugin.video.discovery-1.0.0.zip
rm plugin.video.watchfreeseries-1.0.6.zip
rm plugin.video.ravens-1.0.1.zip
rm plugin.video.movie25-1.2.9.zip
rm plugin.video.discovery-1.0.0.zip
cd ..

# TV-Release - jas0npc Repo
cd addons/
wget -r --no-parent --reject "index.html*" -nd -P plugin.video.tv-release http://jas0npc-xbmc-repository.googlecode.com/svn/trunk/plugin.video.tv-release/
cd ..

# AwesomeDL - jas0npc Repo
cd addons/
wget -r --no-parent --reject "index.html*" -nd -P plugin.video.AwsomeDL http://jas0npc-xbmc-repository.googlecode.com/svn/trunk/plugin.video.AwsomeDL/
cd ..

# YouTube - XBMC.org Repo
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/plugin.video.youtube/plugin.video.youtube-4.4.4.zip
unzip plugin.video.youtube-4.4.4.zip
rm plugin.video.youtube-4.4.4.zip
cd ..

# XBMCHub Maintenance - XBMCHub Repo
cd addons/
wget http://xbmc-hub-repo.googlecode.com/svn/addons/plugin.video.hubmaintenance/plugin.video.hubmaintenance-5.1.zip
unzip plugin.video.hubmaintenance-5.1.zip
rm plugin.video.hubmaintenance-5.1.zip
cd ..

# Nusku Android Settings - Nusku Repo
cd addons/
wget https://github.com/nuskunetworks/nnxbmcrepo/raw/master/repo/plugin.program.nnandroidsettings/plugin.program.nnandroidsettings-2.1.zip
unzip plugin.program.nnandroidsettings-2.1.zip
rm plugin.program.nnandroidsettings-2.1.zip
cd ..

# Nusku Android Apps - Nusku Repo
cd addons/
wget https://github.com/nuskunetworks/nnxbmcrepo/raw/master/repo/plugin.program.nnandroidapps/plugin.program.nnandroidapps-1.1.zip
unzip plugin.program.nnandroidapps-1.1.zip
rm plugin.program.nnandroidapps-1.1.zip
cd ..

# XBMC Log Uploader - XBMC.org Repo
cd addons/
wget http://mirrors.xbmc.org/addons/frodo/script.xbmc.debug.log/script.xbmc.debug.log-12.0.0.zip
unzip script.xbmc.debug.log-12.0.0.zip
rm script.xbmc.debug.log-12.0.0.zip
cd ..


#!/usr/bin/env bash

########
# Prep current set of repo's for inclusion in XBMC builds
########

# Delete previous downloads -- just in case
rm -rf addons/repository.Jas0npc/
rm -rf addons/repository.bstrdsmkr/
rm -rf addons/repository.eldorado/
rm -rf addons/repository.googlecode.anarchintosh-projects/
rm -rf addons/repository.mash2k3/
rm -rf addons/repository.nuskunetworks/
rm -rf addons/repository.xbmchub/

# Nusku Networks add-ons (custom android app launchers)
git clone git@github.com:nuskunetworks/nnxbmcrepo.git
mv nnxbmcrepo/repository.nuskunetworks addons/
rm -rf nnxbmcrepo

# XBMC Hub repo
cd addons/
wget http://fusion.xbmchub.com/video/repositories/repository.xbmchub-1.0.1.zip
unzip repository.xbmchub-1.0.1.zip
rm repository.xbmchub-1.0.1.zip
cd ..

# jas0npc repo
cd addons/
wget http://fusion.xbmchub.com/video/repositories/tv_release-repository.Jas0npc-1.2.zip
unzip tv_release-repository.Jas0npc-1.2.zip
rm tv_release-repository.Jas0npc-1.2.zip
cd ..

# mash2k3 repo
cd addons/
wget http://fusion.xbmchub.com/video/repositories/mashup-repository.mash2k3-1.4.zip
unzip mashup-repository.mash2k3-1.4.zip
rm mashup-repository.mash2k3-1.4.zip
cd ..

# Eldorado repo
git clone git://github.com/Eldorados/eldorado-xbmc-addons.git
mv eldorado-xbmc-addons/repository.eldorado addons/
rm -rf eldorado-xbmc-addons

# anarchintosh repo
cd addons/
wget http://fusion.xbmchub.com/video/repositories/icefilms-repository.googlecode.anarchintosh-projects.1.0.1.zip
unzip icefilms-repository.googlecode.anarchintosh-projects.1.0.1.zip
rm icefilms-repository.googlecode.anarchintosh-projects.1.0.1.zip
cd ..

# bstrdsmkr
cd addons/
wget http://fusion.xbmchub.com/video/repositories/1channel-repository.bstrdsmkr-0.0.3.zip
unzip 1channel-repository.bstrdsmkr-0.0.3.zip
rm 1channel-repository.bstrdsmkr-0.0.3.zip
cd ..


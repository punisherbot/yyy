do

function run(msg, matches)
return [[ 
help For all Plugins of INfernalTG :
1./AddBot [Invitelink] : and you can do it with replay
======================================================
2./bot + [botuserID] : allow a bot to join
3./bot - [botID] : dissallow bot for joining
4./bot + : enable anti bot in group
5./bot - : disable in group
=====================================================
6.Auto_Leave : this is not one command , the bot will leave if they add him
=====================================================
7./block user [USERID] : block a user !
=============================================
8.whitelist + : enable white list in group
9.whitelist - : disable whitelist in group
10.whitelist + [ID] : whitelist user from bot
11.whitelist - [ID] : unwhitelist user from bot
12.whitelist group : white list all members of group
13.whitelist - member {ID} : unwhitelist user when whitelist is enabled
14.whitelist - group : unwhitelist a group
15.ban + [@USERNAME] : ban a user when he is in group
16.ban + [ID] : ban user when he is not in group
17. ban - [ID] : unban user 
18.globalban + {ID} :globall ban user from bot [adminonly]
18.globalban - [ID] :unglobalban user from bot[admin only]
19.kick [@USERNAME] : kick a user from group
19.kick [ID] : kick user from group
dont user "!" and "/"for this plug
======================================================
20./calc [numb] +or*or/[numb] :Calculator plugin
==============================================
21./Echo [whatever] : return a text
========================================
22./Feedback [TEXT] : send maseage to @ARASHINFERNAL
=================================================
23./gps (city)\(ZONE) : find a zone in map
==============================================
24./addgroup : add gp to moderation.jsson 
25./add realm : add group to realm
26./remgroup : rem gp from moderation.jsson
27./rem realm : remove gp from realm
28./rules : shows group rules 
29./about : shows group description
30./setname [WHATEVER] : set groups name
40./setphoto : set group photo
41./promote [@USERNAME] : Promote a user
42./promote : promote with reply
43./clean [modlist][about][member][rules]: clean
44./kill [chat][realm] remove group and kickall
45./demote : demote with reply
46./demote [@USERNAME] : demote user 
47./set [NAME] [TEXT] : set somthing and get it
48./lock [member][name][photo][arabic][leave][bots][flood]
49./unlock [memb][name][photo][arabic][leave][bots][flood]
50./setowner {ID} : setowner a user
51./setowner : setowner with replay
52./res [@USERNAME] ; get user id
52./owner : shows group owner
53./setgpowner [gpID] [ID] : for admins only
54./setflood [value] : setgroup flood 
55./settings : shows group setting
56./modlist :shows group moderators
57./clink : create a link 
58./link : get group link
59./kickinactive :kick group inactivs
60./kickinactive [ID] ;kick inactive
===========================================
61./map ... : get map and location
==========================================
62./maseage [ID] [TEXT] : send maseage to user[adminonly]
====================================================
63./globalban @USERNAME : global ban user
64./globalban : globalban with reply
65./banlist : get group banslist
66./ban @USERNAME : ban user 
67./kick : kick with reply 
68./ban :BAN with reply
69./globalunban [ID] : globalunban user
70./id : get group id , you can do it with replay to
71./kickme : kick ourself from group
72./glbanlist : get glbans list
============================================
73./S2A [TXT] : send maseage to all
74./bcgp [ID] [TEXT] : send maseage to gp
====================================
75./sudoers : return bot sudos
=====================================
76./time [city] : get city time
====================================
77./version : return bot version
===========================================
78./all : return all thins about gp
=========================================
79./cgroup [id] : close group
=======================================
80./dic [word] : return word in persian
===========================================
81./plug : return all plugins list
82./plug + [NAME] : enable a plugin
83./plug - [NAME] : disable a plugin
84./plug - [NAME] gp : disable a plugin in gp
85./plug + [NAME] gp :enable a plugin in group
==========================================
86./stats : send group stats in file.txt
87./stats InfernalTG : stats bot
89./infernal : bot about
90./stats group [ID] : get gp stats
=================================
91./tagall [txt] : will tagall users
===============================
92./kickall [ID] : kickall members from gp
=========================================
93./toengsupport : return support link
94./topersupport : return persian support link
================================================== 
95./txt2img [TXT] : text to image 
===========================================
more helps soon
you can use both "!" and "/"
our channell : @INFERNALTEAMCH
Master admin : @ArashInfernal
]]
end

return {
description = "Shows help for all Plugins Of infernalTG", 
patterns = {
"^[!/]help (all)$",
"^help (all)$"
}, 
run = run 
}

end

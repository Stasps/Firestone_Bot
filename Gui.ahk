#NoEnv
#SingleInstance, Force
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

global SettingsMap := {}

SettingsMap["Token"] := ["CommonOptions", 0]
SettingsMap["SellEx"] := ["CommonOptions", 0]
SettingsMap["SellScrolls"] := ["CommonOptions", 0]
SettingsMap["SellNoGold"] := ["CommonOptions", 0]
SettingsMap["SellAll"] := ["CommonOptions", 0]
SettingsMap["SellNone"] := ["CommonOptions", 1]
SettingsMap["ExoticUpgrades"] := ["CommonOptions", 0]
SettingsMap["BuyEx"] := ["CommonOptions", 0]
SettingsMap["Chests"] := ["CommonOptions", 0]
SettingsMap["GearChestExclude"] := ["CommonOptions", "Exclude All"]
SettingsMap["JewelChestExclude"] := ["CommonOptions", "Exclude All"]
SettingsMap["Bless"] := ["CommonOptions", 0]
SettingsMap["Delay"] := ["CommonOptions", 0]
SettingsMap["Quests"] := ["CommonOptions", 0]
SettingsMap["Events"] := ["CommonOptions", 0]
SettingsMap["Mail"] := ["CommonOptions", 0]
SettingsMap["Awaken"] := ["CommonOptions", 0]
SettingsMap["Crystal"] := ["CommonOptions", 0]
SettingsMap["Chaos"] := ["CommonOptions", 0]
SettingsMap["PTree"] := ["CommonOptions", 0]
SettingsMap["GuardianTrain"] := ["CommonOptions", "Vermilion"]
SettingsMap["UpgradeSpecial"] := ["HeroOptions", 1]
SettingsMap["UpgradeGuardian"] := ["HeroOptions", 1]
SettingsMap["UpgradeH1"] := ["HeroOptions", 1]
SettingsMap["UpgradeH2"] := ["HeroOptions", 1]
SettingsMap["UpgradeH3"] := ["HeroOptions", 1]
SettingsMap["UpgradeH4"] := ["HeroOptions", 1]
SettingsMap["UpgradeH5"] := ["HeroOptions", 1]

SettingsMap["Priority1"] := ["MissionPriority", "2 Squad"]
SettingsMap["Priority2"] := ["MissionPriority", "War"]
SettingsMap["Priority3"] := ["MissionPriority", "Medium"]
SettingsMap["Priority4"] := ["MissionPriority", "Short"]
SettingsMap["Priority5"] := ["MissionPriority", "Leftover"]
SettingsMap["SearchMissoin"] := ["MissionPriority", 1]
SettingsMap["MapReset"] := ["MissionPriority", 0]

SettingsMap["Beer"] := ["QoL/RareOptions", 1]
SettingsMap["Scarab"] := ["QoL/RareOptions", 1]
SettingsMap["NoGuild"] := ["QoL/RareOptions", 0]
SettingsMap["NoEng"] := ["QoL/RareOptions", 0]
SettingsMap["Pickaxes"] := ["QoL/RareOptions", 1]
SettingsMap["GNotif"] := ["QoL/RareOptions", 0]
SettingsMap["Alch"] := ["QoL/RareOptions", 0]
SettingsMap["Research"] := ["QoL/RareOptions", 0]
SettingsMap["SkipOracle"] := ["QoL/RareOptions", 0]
SettingsMap["NoHero"] := ["QoL/RareOptions", 0]
SettingsMap["NextMilestone"] := ["QoL/RareOptions", 0]
SettingsMap["DisableWarning"] := ["QoL/RareOptions", 1]

SettingsMap["Shop"] := ["OtherOptions", 0]
SettingsMap["DailyOracle"] := ["OtherOptions", 0]
SettingsMap["PVP"] := ["OtherOptions", 0]
SettingsMap["Liberation"] := ["OtherOptions", 0]
SettingsMap["UpgradeWM"] := ["OtherOptions", "Don't Upgrade WM's"]
SettingsMap["WMOptions"] := ["OtherOptions", "Blueprints Only"]
SettingsMap["Blueprints"] := ["OtherOptions", "Damage Only"]
SettingsMap["Talents450"] := ["OtherOptions", "Don't Upgrade Talents (0-450 Talent Points)"]
SettingsMap["Talents800"] := ["OtherOptions", "Don't Upgrade Talents (500+ Talent Points)"]

SettingsMap["DungeonQuest"] := ["SettingsNoGui", 0]

global ResXnew
global ResYnew
global BorTop
global BorBot
global VarX
global SearchMissoin
global VarY
SettingsMap["ResXnew"] := ["Resolution"]
SettingsMap["ResYnew"] := ["Resolution"]
SettingsMap["BorTop"] := ["Resolution"]
SettingsMap["BorBot"] := ["Resolution"]
SettingsMap["VarX"] := ["Variable", 0]
SettingsMap["VarY"] := ["Variable", 0]
SettingsMap["UILanguage"] := ["UI", "ru"]

AppVersion := "0.4.1"
SettingsMap["Ratio"] := ["Debug"]

SettingsMap["AttDmg"] := ["PersonalTree", 0]
SettingsMap["AttHp"] := ["PersonalTree", 0]
SettingsMap["AttArm"] := ["PersonalTree", 0]
SettingsMap["Energy"] := ["PersonalTree", 0]
SettingsMap["Mana"] := ["PersonalTree", 0]
SettingsMap["Rage"] := ["PersonalTree", 0]
SettingsMap["Miner"] := ["PersonalTree", 0]
SettingsMap["Battle"] := ["PersonalTree", 0]
SettingsMap["MainAtt"] := ["PersonalTree", 0]
SettingsMap["Prest"] := ["PersonalTree", 0]
SettingsMap["Fire"] := ["PersonalTree", 0]
SettingsMap["Gold"] := ["PersonalTree", 0]
SettingsMap["Level"] := ["PersonalTree", 0]
SettingsMap["Guard"] := ["PersonalTree", 0]
SettingsMap["Fist"] := ["PersonalTree", 0]
SettingsMap["Prec"] := ["PersonalTree", 0]
SettingsMap["Magic"] := ["PersonalTree", 0]
SettingsMap["Tank"] := ["PersonalTree", 0]
SettingsMap["Damage"] := ["PersonalTree", 0]
SettingsMap["Heal"] := ["PersonalTree", 0]

LoadSettings()
RecalculateDerivedSettings()
BuildGui()
return

BuildGui() {
    global AppVersion
    global GuardianTrain, Delay, GearChestExclude, JewelChestExclude
    global Priority1, Priority2, Priority3, Priority4, Priority5
    global UpgradeWM, WMOptions, Blueprints, Talents450, Talents800
    global SellEx, ExoticUpgrades, BuyEx, SellScrolls, SellNoGold, SellAll, SellNone
    global NoEng, Research, DisableWarning, Bless, DailyOracle, SkipOracle
    global Chests, Alch, NoHero, NextMilestone
    global UpgradeSpecial, UpgradeGuardian, UpgradeH1, UpgradeH2, UpgradeH3, UpgradeH4, UpgradeH5
    global Mail, Quests, Events, Chaos, Shop, Token, Beer, Scarab, SearchMissoin, MapReset
    global NoGuild, Pickaxes, Crystal, Awaken, GNotif, PTree
    global AttDmg, AttHp, AttArm, Energy, Mana, Rage, MainAtt
    global Miner, Battle, Prest, Fire, Gold, Level, Guard
    global Fist, Prec, Magic, Tank, Damage, Heal
    global PVP, Liberation, DungeonQuest
    global ResXnew, ResYnew, BorTop, BorBot, VarX, VarY, Ratio, RatioStand
    global UILanguage

    Gui, Destroy
    Gui, +OwnDialogs
    Gui, Font, s9, Segoe UI
    Gui, Color, White

    tabLabels := T("tabHome") "|" T("tabGeneral") "|" T("tabGuild") "|" T("tabWar") "|" T("tabScreen") "|" T("tabVersion")
    Gui, Add, Tab3, x0 y0 w960 h620, %tabLabels%

    Gui, Tab
    Gui, Add, Text, x735 y12 w70 Right, % T("languageLabel")
    Gui, Add, DropDownList, x810 y9 w120 vUILanguageChoice gChangeLanguage AltSubmit, Русский|English
    GuiControl, Choose, UILanguageChoice, % (UILanguage = "en" ? 2 : 1)

    Gui, Tab, 1
    Gui, Font, s14 Bold
    Gui, Add, Text, x20 y25 w920 Center, % T("homeTitlePrefix") " " AppVersion
    Gui, Font, s10 Norm
    Gui, Add, GroupBox, x40 y50 w880 h470, % T("homeRequirements")
    Gui, Font, Bold
    Gui, Add, Text, xp+20 yp+25 w840, % T("homeSystemTitle")
    Gui, Font, Norm
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem1")
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem2")
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem3")
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem4")
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem5")
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem6")
    Gui, Add, Text, x60 y+1 w820, % T("homeSystem7")
    Gui, Font, Bold
    Gui, Add, Text, x60 y+10 w820, % T("homeSetupTitle")
    Gui, Font, Norm
    Gui, Add, Text, x60 y+1 w820, % T("homeSetup1")
    Gui, Add, Text, x60 y+1 w820, % T("homeSetup2")
    Gui, Add, Text, x60 y+1 w820, % T("homeSetup3")
    Gui, Add, Text, x60 y+1 w820, % T("homeSetup4")
    Gui, Font, Bold
    Gui, Add, Text, x60 y+10 w820, % T("homeKnownTitle")
    Gui, Font, Norm
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown1")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown2")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown3")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown4")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown5")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown6")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown7")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown8")
    Gui, Add, Text, x60 y+1 w820, % T("homeKnown9")
    Gui, Font, Bold
    Gui, Add, Text, x60 y+5 w820, % T("homeWarning")
    Gui, Font, Norm
    Gui, Add, Button, x240 y530 w200 h45 gSaveSettings, % T("saveButton")
    Gui, Add, Button, x520 y530 w200 h45 gButtonStart, % T("startBotButton")

    Gui, Tab, 2
    Gui, Font, Bold
    Gui, Add, Text, x20 y40 w900 h30 Center, % T("generalHeader")
    Gui, Font, s9 Norm
    Gui, Add, GroupBox, x20 y70 w300 h190, % T("sellingGroup")
    Gui, Add, Checkbox, x35 y90 w250 vSellEx Checked%SellEx%, % T("sellEx")
    Gui, Add, Checkbox, x35 y110 w250 vExoticUpgrades Checked%ExoticUpgrades%, % T("exoticUpgrades")
    Gui, Add, Checkbox, x35 y130 w250 vBuyEx Checked%BuyEx%, % T("buyEx")
    Gui, Add, Text, x35 y155 w250, % T("sellingStrategy")
    Gui, Add, Radio, x35 y175 w250 vSellScrolls Checked%SellScrolls%, % T("sellScrolls")
    Gui, Add, Radio, x35 y195 w250 vSellNoGold Checked%SellNoGold%, % T("sellNoGold")
    Gui, Add, Radio, x35 y215 w250 vSellAll Checked%SellAll%, % T("sellAll")
    Gui, Add, Radio, x35 y235 w250 vSellNone Checked%SellNone%, % T("sellNone")
    Gui, Add, GroupBox, x20 y265 w300 h130, % T("automationGroup")
    Gui, Add, Checkbox, x35 y285 w250 vNoEng Checked%NoEng%, % T("skipEngineer")
    Gui, Add, Checkbox, x35 y310 w250 vResearch Checked%Research%, % T("skipResearch")
    Gui, Add, Checkbox, x35 y335 w250 vDisableWarning Checked%DisableWarning%, % T("disableSteamWarning")
    Gui, Add, Text, x35 y363 w150, % T("guardianTrain")
    Gui, Add, DropDownList, x155 y360 w130 vGuardianTrain, Vermilion|Grace|Ankaa|Azhar
    if (GuardianTrain != "")
        GuiControl, ChooseString, GuardianTrain, %GuardianTrain%
    Gui, Add, GroupBox, x20 y400 w300 h100, % T("oracleGroup")
    Gui, Add, Checkbox, x35 y425 w280 vBless Checked%Bless%, % T("blessings")
    Gui, Add, Checkbox, x35 y450 w280 vDailyOracle Checked%DailyOracle%, % T("dailyOracle")
    Gui, Add, Checkbox, x35 y475 w280 vSkipOracle Checked%SkipOracle%, % T("skipOracle")
    Gui, Add, GroupBox, x20 y515 w300 h60, % T("delayGroup")
    Gui, Add, Text, x35 y540 w150, % T("delayLabel")
    Gui, Add, DropDownList, x155 y537 w130 vDelay, 0|30|60||90|120
    if (Delay != "")
        GuiControl, ChooseString, Delay, %Delay%

    Gui, Add, GroupBox, x335 y70 w300 h160, % T("chestsGroup")
    Gui, Add, Checkbox, x350 y90 w250 vChests Checked%Chests%, % T("openChests")
    Gui, Add, Text, x350 y115 w250, % T("excludeGear")
    Gui, Add, DropDownList, x350 y135 w250 vGearChestExclude, Exclude All|Don't Exclude Any|Epic and Higher|Legendary and Higher|Mythic||
    if (GearChestExclude != "")
        GuiControl, ChooseString, GearChestExclude, %GearChestExclude%
    Gui, Add, Text, x350 y170 w250, % T("excludeJewel")
    Gui, Add, DropDownList, x350 y190 w250 vJewelChestExclude, Exclude All|Don't Exclude Any|Diamond and Higher||Opal and Higher|Emerald
    if (JewelChestExclude != "")
        GuiControl, ChooseString, JewelChestExclude, %JewelChestExclude%
    Gui, Add, GroupBox, x335 y240 w300 h80, % T("alchemyGroup")
    Gui, Add, Checkbox, x350 y265 w250 vAlch Checked%Alch%, % T("skipAlchemy")
    Gui, Font, Italic
    Gui, Add, Text, x350 y285 w280 cGray, % T("alchemyHint")
    Gui, Font, Norm
    Gui, Add, GroupBox, x335 y330 w300 h260, % T("heroGroup")
    Gui, Add, Checkbox, x350 y350 w270 vNoHero Checked%NoHero%, % T("skipHeroes")
    Gui, Add, Checkbox, x350 y375 w270 vNextMilestone Checked%NextMilestone%, % T("nextMilestone")
    Gui, Font, Italic
    Gui, Add, Text, x350 y390 w270 cGray, % T("heroHint")
    Gui, Font, Norm
    Gui, Add, Text, x350 y460 w250, % T("chooseHeroes")
    Gui, Add, Checkbox, x350 y480 w135 vUpgradeSpecial Checked%UpgradeSpecial%, % T("upgradeSpecial")
    Gui, Add, Checkbox, x490 y480 w135 vUpgradeGuardian Checked%UpgradeGuardian%, % T("upgradeGuardians")
    Gui, Add, Checkbox, x350 y505 w135 vUpgradeH1 Checked%UpgradeH1%, % T("upgradeH1")
    Gui, Add, Checkbox, x490 y505 w135 vUpgradeH2 Checked%UpgradeH2%, % T("upgradeH2")
    Gui, Add, Checkbox, x350 y530 w135 vUpgradeH3 Checked%UpgradeH3%, % T("upgradeH3")
    Gui, Add, Checkbox, x490 y530 w135 vUpgradeH4 Checked%UpgradeH4%, % T("upgradeH4")
    Gui, Add, Checkbox, x350 y555 w135 vUpgradeH5 Checked%UpgradeH5%, % T("upgradeH5")

    Gui, Add, GroupBox, x650 y70 w290 h150, % T("dailyGroup")
    Gui, Add, Checkbox, x665 y90 w250 vMail Checked%Mail%, % T("mail")
    Gui, Add, Checkbox, x665 y115 w250 vQuests Checked%Quests%, % T("quests")
    Gui, Add, Checkbox, x665 y140 w250 vEvents Checked%Events%, % T("events")
    Gui, Add, Checkbox, x665 y165 w250 vChaos Checked%Chaos%, % T("chaos")
    Gui, Add, Checkbox, x665 y190 w250 vShop Checked%Shop%, % T("shopRewards")
    Gui, Add, GroupBox, x650 y225 w290 h100, % T("tavernGroup")
    Gui, Add, Checkbox, x665 y250 w250 vToken Checked%Token%, % T("tavernToken")
    Gui, Add, Checkbox, x665 y275 w250 vBeer Checked%Beer%, % T("skipBeer")
    Gui, Add, Checkbox, x665 y300 w250 vScarab Checked%Scarab%, % T("skipScarab")
    Gui, Add, GroupBox, x650 y335 w290 h240, % T("missionGroup")
    Gui, Add, Checkbox, x665 y360 w250 vSearchMissoin Checked%SearchMissoin%, % T("searchMission")
    PriorityList := "2 Squad|War|Medium|Short|Leftover"
    Gui, Add, Text, x665 y385 w60, 1st:
    Gui, Add, DropDownList, x730 y385 w180 vPriority1, %PriorityList%
    if (Priority1 != "")
        GuiControl, ChooseString, Priority1, %Priority1%
    Gui, Add, Text, x665 y415 w60, 2nd:
    Gui, Add, DropDownList, x730 y415 w180 vPriority2, %PriorityList%
    if (Priority2 != "")
        GuiControl, ChooseString, Priority2, %Priority2%
    Gui, Add, Text, x665 y445 w60, 3rd:
    Gui, Add, DropDownList, x730 y445 w180 vPriority3, %PriorityList%
    if (Priority3 != "")
        GuiControl, ChooseString, Priority3, %Priority3%
    Gui, Add, Text, x665 y475 w60, 4th:
    Gui, Add, DropDownList, x730 y475 w180 vPriority4, %PriorityList%
    if (Priority4 != "")
        GuiControl, ChooseString, Priority4, %Priority4%
    Gui, Add, Text, x665 y505 w60, 5th:
    Gui, Add, DropDownList, x730 y505 w180 vPriority5, %PriorityList%
    if (Priority5 != "")
        GuiControl, ChooseString, Priority5, %Priority5%
    Gui, Add, Checkbox, x665 y540 w250 vMapReset Checked%MapReset%, % T("mapReset")

    Gui, Tab, 3
    Gui, Font, Bold
    Gui, Add, Text, x20 y40 w900 h20 Center, % T("guildHeader")
    Gui, Font, Norm
    Gui, Add, GroupBox, x20 y60 w920 h100, % T("guildSettings")
    Gui, Add, Checkbox, x40 y90 w250 vNoGuild Checked%NoGuild%, % T("skipGuild")
    Gui, Add, Checkbox, x370 y90 w200 vPickaxes Checked%Pickaxes%, % T("pickaxes")
    Gui, Add, Checkbox, x670 y90 w200 vCrystal Checked%Crystal%, % T("crystal")
    Gui, Add, Checkbox, x370 y120 w200 vAwaken Checked%Awaken%, % T("awaken")
    Gui, Add, Checkbox, x670 y120 w200 vGNotif Checked%GNotif%, % T("guildNotif")
    Gui, Font, Italic s8, Segoe UI
    Gui, Add, Text, x60 y105 w250 cGray, % T("guildHint")
    Gui, Font, Norm s9, Segoe UI
    Gui, Font, Bold
    Gui, Add, Text, x20 y180 w900 h20 Center, % T("treeHeader")
    Gui, Font, Norm
    Gui, Add, Checkbox, x40 y200 vPTree Checked%PTree%, % T("enableTree")
    Gui, Add, GroupBox, x40 y230 w280 h270, % T("treeAttrGroup")
    Gui, Add, Checkbox, xp+15 yp+25 vAttDmg Checked%AttDmg%, % T("treeAttDmg")
    Gui, Add, Checkbox, y+8 vAttHp Checked%AttHp%, % T("treeAttHp")
    Gui, Add, Checkbox, y+8 vAttArm Checked%AttArm%, % T("treeAttArm")
    Gui, Add, Checkbox, y+8 vEnergy Checked%Energy%, % T("treeEnergy")
    Gui, Add, Checkbox, y+8 vMana Checked%Mana%, % T("treeMana")
    Gui, Add, Checkbox, y+8 vRage Checked%Rage%, % T("treeRage")
    Gui, Add, Checkbox, y+8 vMainAtt Checked%MainAtt%, % T("treeMainAtt")
    Gui, Add, GroupBox, x340 y230 w280 h270, % T("treeGeneralGroup")
    Gui, Add, Checkbox, xp+15 yp+25 vMiner Checked%Miner%, % T("treeMiner")
    Gui, Add, Checkbox, y+8 vBattle Checked%Battle%, % T("treeBattle")
    Gui, Add, Checkbox, y+8 vPrest Checked%Prest%, % T("treePrest")
    Gui, Add, Checkbox, y+8 vFire Checked%Fire%, % T("treeFire")
    Gui, Add, Checkbox, y+8 vGold Checked%Gold%, % T("treeGold")
    Gui, Add, Checkbox, y+8 vLevel Checked%Level%, % T("treeLevel")
    Gui, Add, Checkbox, y+8 vGuard Checked%Guard%, % T("treeGuard")
    Gui, Add, GroupBox, x640 y230 w280 h270, % T("treeSpecGroup")
    Gui, Add, Checkbox, xp+15 yp+25 vFist Checked%Fist%, % T("treeFist")
    Gui, Add, Checkbox, y+8 vPrec Checked%Prec%, % T("treePrec")
    Gui, Add, Checkbox, y+8 vMagic Checked%Magic%, % T("treeMagic")
    Gui, Add, Checkbox, y+8 vTank Checked%Tank%, % T("treeTank")
    Gui, Add, Checkbox, y+8 vDamage Checked%Damage%, % T("treeDamage")
    Gui, Add, Checkbox, y+8 vHeal Checked%Heal%, % T("treeHeal")

    Gui, Tab, 4
    Gui, Add, GroupBox, x40 y50 w880 h120, % T("battleGroup")
    Gui, Add, Checkbox, x55 y80 w240 vPVP Checked%PVP%, % T("pvp")
    Gui, Add, Checkbox, x305 y80 w240 vLiberation Checked%Liberation%, % T("liberation")
    Gui, Add, Checkbox, x555 y80 w240 vDungeonQuest Checked%DungeonQuest%, % T("dungeonQuest")
    Gui, Font, Italic s8, Segoe UI
    Gui, Add, Text, x570 y105 w240 cGray, % T("dungeonHint")
    Gui, Font, Norm s9, Segoe UI
    Gui, Add, GroupBox, x40 y170 w880 h350, % T("warMachinesGroup")
    Gui, Add, Text, xp+15 yp+30, % T("upgradeWmLabel")
    Gui, Add, DropDownList, w350 vUpgradeWM, Don't Upgrade WM's||Upgrade Aegis|Upgrade Cloudfist|Upgrade Curator|Upgrade Earthshatterer|Upgrade FireCracker|Upgrade Fortress|Upgrade Goliath|Upgrade Harvester|Upgrade Hunter|Upgrade Judgement|Upgrade Sentinel|Upgrade Talos|Upgrade Thunderclap
    if (UpgradeWM != "")
        GuiControl, ChooseString, UpgradeWM, %UpgradeWM%
    Gui, Add, Text, y+20, % T("upgradeModeLabel")
    Gui, Add, DropDownList, w350 vWMOptions, Blueprints Only||Level Only|Level and Blueprints|
    if (WMOptions != "")
        GuiControl, ChooseString, WMOptions, %WMOptions%
    Gui, Add, Text, y+20, % T("blueprintPriorityLabel")
    Gui, Add, DropDownList, w350 vBlueprints, Upgrade All||Damage Only|Health Only|Armor Only|Damage and Health|Damage and Armor|Health and Armor
    if (Blueprints != "")
        GuiControl, ChooseString, Blueprints, %Blueprints%
    Gui, Add, Text, x500 y200, % T("talentOptions")
    Gui, Add, DropDownList, x500 y225 w350 vTalents450, Don't Upgrade Talents (0-450 Talent Points)||
    if (Talents450 != "")
        GuiControl, ChooseString, Talents450, %Talents450%
    Gui, Add, DropDownList, x500 y280 w350 vTalents800, Don't Upgrade Talents (500+ Talent Points)||
    if (Talents800 != "")
        GuiControl, ChooseString, Talents800, %Talents800%

    Gui, Tab, 5
    Gui, Font, s10 Bold
    Gui, Add, Text, x20 y40 w900 h30 Center, % T("screenHeader")
    Gui, Font, Norm
    Gui, Add, GroupBox, x40 y80 w550 h380, % T("screenGroup")
    Gui, Add, Text, x60 yp+30 w160, % T("resX")
    Gui, Add, Edit, x+10 w150 vResXnew, %ResXnew%
    Gui, Add, Text, x+10 w80, 1920 / 1360
    Gui, Add, Text, x60 y+25 w160, % T("resY")
    Gui, Add, Edit, x+10 w150 vResYnew, %ResYnew%
    Gui, Add, Text, x+10 w80, 1080 / 768
    Gui, Add, Text, x60 y+25 w160, % T("borTop")
    Gui, Add, Edit, x+10 w150 vBorTop, %BorTop%
    Gui, Add, Text, x+10 w170, Steam=22, Yandex=111/135
    Gui, Add, Text, x60 y+25 w160, % T("borBot")
    Gui, Add, Edit, x+10 w150 vBorBot, %BorBot%
    Gui, Add, Text, x+10 w170, Win11=48, Win10=40
    Gui, Font, Italic
    Gui, Add, Text, x60 y+25 w500, % T("screenHint")
    Gui, Font, Norm s9
    Gui, Add, Text, x60 y+25 w500, % BuildDebugText()
    Gui, Add, Button, x150 y500 w150 h45 gSaveSettings, % T("saveButton")
    Gui, Add, Button, x330 y500 w150 h45 gButtonStart, % T("startButton")

    Gui, Tab, 6
    Gui, Font, s10 Bold
    Gui, Add, Text, x40 y40 w880 Center, % T("versionTitlePrefix") " " AppVersion ":"
    Gui, Font, Norm
    Gui, Add, Text, x40 y+15, % T("versionCan")
    Gui, Add, Text, x40 y+5, % T("versionCan1")
    Gui, Add, Text, x40 y+5, % T("versionCan2")
    Gui, Add, Text, x40 y+5, % T("versionCan3")
    Gui, Add, Text, x40 y+5, % T("versionCan4")
    Gui, Add, Text, x40 y+5, % T("versionCan5")
    Gui, Add, Text, x40 y+5, % T("versionCan6")
    Gui, Add, Text, x40 y+5, % T("versionCan7")
    Gui, Add, Text, x40 y+5, % T("versionCan8")
    Gui, Add, Text, x40 y+5, % T("versionCan9")
    Gui, Add, Text, x40 y+5, % T("versionCan10")
    Gui, Add, Text, x40 y+5, % T("versionCan11")
    Gui, Add, Text, x40 y+5, % T("versionCan12")
    Gui, Add, Text, x40 y+5, % T("versionCan13")
    Gui, Add, Text, x40 y+5, % T("versionCan14")
    Gui, Add, Text, x40 y+5, % T("versionCan15")
    Gui, Font, Bold
    Gui, Add, Text, x40 y+15, % T("versionUntested")
    Gui, Font, Norm
    Gui, Add, Text, x40 y+5, % T("versionUntested1")
    Gui, Font, Bold
    Gui, Add, Text, x40 y+15, % T("versionCannot")
    Gui, Font, Norm
    Gui, Add, Text, x40 y+5, % T("versionCannot1")
    Gui, Add, Text, x40 y+5, % T("versionCannot2")

    Gui, Show, w960 h620, % T("windowTitle")
}

BuildDebugText() {
    global VarX, VarY, Ratio, RatioStand
    return T("debugTitle") . "`n"
        . T("debugScaleX") . " = " . VarX . ", " . T("debugScaleY") . " = " . VarY . " " . T("debugNonZero") . "`n"
        . T("debugRatio") . " = " . Ratio . " (" . T("debugIdeal") . " = " . RatioStand . ")`n"
        . T("debugRefresh")
}

RecalculateDerivedSettings() {
    global ResXnew, ResYnew, BorTop, BorBot, VarX, VarY, Ratio, RatioStand
    if (ResXnew = "")
        ResXnew := 1920
    if (ResYnew = "")
        ResYnew := 1080
    if (BorTop = "")
        BorTop := 22
    if (BorBot = "")
        BorBot := 48
    VarX := (ResXnew / 1920)
    VarY := ((ResYnew - BorTop - BorBot) / (1080 - 22 - 48))
    Ratio := ResXnew / (ResYnew - BorBot - BorTop)
    RatioStand := 1980 / (1080 - 22 - 48)
}

T(key) {
    global UILanguage
    static strings := ""
    if !IsObject(strings) {
        strings := {}
        strings["tabHome"] := {ru: "Главная", en: "Home"}
        strings["tabGeneral"] := {ru: "Общие настройки", en: "General Options"}
        strings["tabGuild"] := {ru: "Гильдия и личное древо", en: "Guild & Personal Tree"}
        strings["tabWar"] := {ru: "Боевые машины", en: "War Machines"}
        strings["tabScreen"] := {ru: "Настройки экрана", en: "Screen Settings"}
        strings["tabVersion"] := {ru: "Версия", en: "Version"}
        strings["languageLabel"] := {ru: "Язык:", en: "Language:"}
        strings["windowTitle"] := {ru: "Бот от Стаса на основе бота от Deaeth85 V6.1.0", en: "Stas Bot based on Deaeth85 Bot V6.1.0"}
        strings["homeTitlePrefix"] := {ru: "Я твой BOT version", en: "Firestone Bot version"}
        strings["homeRequirements"] := {ru: "Важные требования и инструкции", en: "Important Requirements and Instructions"}
        strings["homeSystemTitle"] := {ru: "Система и настройка игры:", en: "System and Game Setup:"}
        strings["homeSystem1"] := {ru: "• В браузерной версии окно браузера должно начинаться с заголовка Firestone", en: "• In the browser version, the browser window title must start with Firestone"}
        strings["homeSystem2"] := {ru: "• Тип интерфейса: мобильная или ПК версия (новый стиль не поддерживается)", en: "• Interface type: Mobile or PC version (the new style is not supported)"}
        strings["homeSystem3"] := {ru: "• Язык в игре: English (русский интерфейс не тестировался, но должен работать исправно)", en: "• In-game language: English (the Russian game interface was not tested, but it should work)"}
        strings["homeSystem4"] := {ru: "• Раскладка клавиатуры: обязательно английская (в будущем уберём эту привязку)", en: "• Keyboard layout: must be English (this dependency may be removed later)"}
        strings["homeSystem5"] := {ru: "• Режим окна: оконный, панель ПУСК не скрыта (полноэкранный режим нестабилен)", en: "• Window mode: windowed, taskbar visible (fullscreen mode is unstable)"}
        strings["homeSystem6"] := {ru: "• Включи «подтверждение использования самоцветов» (на всякий случай)", en: "• Enable gem-use confirmation, just to be safe"}
        strings["homeSystem7"] := {ru: "• (Редкое) Масштаб экрана: 100% (в параметрах дисплея Windows)", en: "• (Rare) Display scaling: 100% in Windows display settings"}
        strings["homeSetupTitle"] := {ru: "Настройка и использование бота:", en: "Bot Setup and Usage:"}
        strings["homeSetup1"] := {ru: "• На вкладке «Настройки экрана» укажи параметры экрана и верхнюю/нижнюю границы игрового поля", en: "• On the Screen Settings tab, enter your screen size and the top/bottom borders of the game area"}
        strings["homeSetup2"] := {ru: "• ESC — остановка бота", en: "• Press ESC to stop the bot"}
        strings["homeSetup3"] := {ru: "• Если текст переведён, функция активна. Если нет — лучше отключить", en: "• If the text is translated, the feature is active. If not, it is safer to disable it"}
        strings["homeSetup4"] := {ru: "• Не перемещай карту миссий и не используй зум. Если случайно сдвинул — перезайди в игру", en: "• Do not move the mission map or use zoom. If you did, reopen the game"}
        strings["homeKnownTitle"] := {ru: "Известные ошибки:", en: "Known Issues:"}
        strings["homeKnown1"] := {ru: "• Если соотношение сторон игрового поля сильно отличается от идеала (~1.96), бот может промахиваться по кнопкам.", en: "• If the game-area aspect ratio is far from the ideal (~1.96), the bot may miss buttons."}
        strings["homeKnown2"] := {ru: "  Текущее соотношение видно на вкладке «Настройки экрана». Выше 2.1 могут быть проблемы", en: "  You can see the current ratio on the Screen Settings tab. Ratios above 2.1 may cause issues"}
        strings["homeKnown3"] := {ru: "• При поиске миссий для двух отрядов (2 Squad) может задеть кнопки покупки славы/отряда", en: "• When searching for 2 Squad missions, it may hit glory/squad purchase buttons"}
        strings["homeKnown4"] := {ru: "  Рекомендуется при первом запуске проследить первые 10-15 кликов на карте", en: "  It is recommended to watch the first 10-15 clicks on the map during the first run"}
        strings["homeKnown5"] := {ru: "• Опция «Улучшать до макс уровня» работает неправильно", en: "• The 'Upgrade to max level' option does not work correctly"}
        strings["homeKnown6"] := {ru: "  Перед запуском бота в окне усиления героев поставь «усилить макс»", en: "  Before starting the bot, set hero upgrades to 'upgrade max' in the game"}
        strings["homeKnown7"] := {ru: "• Бот может кликать не в окне игры, а в другом", en: "• The bot may click in another window instead of the game window"}
        strings["homeKnown8"] := {ru: "  Это связано с тем, что бот ищет активное окно с заголовком, начинающимся с Firestone", en: "  This happens because the bot looks for an active window with a title starting with Firestone"}
        strings["homeKnown9"] := {ru: "  Если игра свернута или есть другое похожее окно, бот может не найти игру", en: "  If the game is minimized or another similar window exists, the bot may fail to find the game"}
        strings["homeWarning"] := {ru: "(ВАЖНО) Первый запуск лучше контролировать вручную: посмотри пару циклов, всё ли бот делает правильно", en: "(IMPORTANT) Watch the first run manually for a couple of cycles to confirm everything works correctly"}
        strings["saveButton"] := {ru: "СОХРАНИТЬ", en: "SAVE"}
        strings["startBotButton"] := {ru: "ЗАПУСТИТЬ БОТА", en: "START BOT"}
        strings["startButton"] := {ru: "ЗАПУСТИТЬ", en: "START"}
        strings["generalHeader"] := {ru: "ОБЩИЕ НАСТРОЙКИ", en: "GENERAL OPTIONS"}
        strings["sellingGroup"] := {ru: "Продажа и экзотический торговец", en: "Selling & Exotic Merchant"}
        strings["sellEx"] := {ru: "Открывать экзотического торговца (Master)", en: "Open Exotic Merchant (Master)"}
        strings["exoticUpgrades"] := {ru: "Покупать экзотические улучшения", en: "Buy Exotic Upgrades"}
        strings["buyEx"] := {ru: "Покупать экзотические сундуки", en: "Buy Exotic Chests"}
        strings["sellingStrategy"] := {ru: "Стратегия продажи:", en: "Selling Strategy:"}
        strings["sellScrolls"] := {ru: "1. Продавать только Exotic Scrolls", en: "1. Sell ONLY Exotic Scrolls"}
        strings["sellNoGold"] := {ru: "2. Продавать всё, кроме Gold Items", en: "2. Sell All But Gold Items"}
        strings["sellAll"] := {ru: "3. Продавать все Exotic Items", en: "3. Sell All Exotic Items"}
        strings["sellNone"] := {ru: "4. Ничего не продавать", en: "4. Sell Nothing"}
        strings["automationGroup"] := {ru: "Прочие автоматизации", en: "Other Automation"}
        strings["skipEngineer"] := {ru: "Пропустить механика", en: "Skip Engineer"}
        strings["skipResearch"] := {ru: "Пропустить исследования", en: "Skip Research"}
        strings["disableSteamWarning"] := {ru: "Отключить Steam warning", en: "Disable Steam Warning"}
        strings["guardianTrain"] := {ru: "Тренировать стража:", en: "Train Guardian:"}
        strings["oracleGroup"] := {ru: "Оракул", en: "Oracle"}
        strings["blessings"] := {ru: "(не работает) Улучшать благословения", en: "(does not work) Upgrade Blessings"}
        strings["dailyOracle"] := {ru: "Забирать ежедневные награды оракула", en: "Claim Daily Oracle Rewards"}
        strings["skipOracle"] := {ru: "(общее) пропустить оракула", en: "(global) Skip Oracle"}
        strings["delayGroup"] := {ru: "Пауза между циклами бота", en: "Delay Between Bot Cycles"}
        strings["delayLabel"] := {ru: "Перерыв (секунд):", en: "Break (seconds):"}
        strings["chestsGroup"] := {ru: "Сундуки и награды", en: "Chests & Rewards"}
        strings["openChests"] := {ru: "Открывать сундуки (общее)", en: "Open Chests (General)"}
        strings["excludeGear"] := {ru: "Исключить сундуки с экипировкой:", en: "Exclude Gear Chests:"}
        strings["excludeJewel"] := {ru: "Исключить сундуки с самоцветами:", en: "Exclude Jewel Chests:"}
        strings["alchemyGroup"] := {ru: "Алхимия", en: "Alchemy"}
        strings["skipAlchemy"] := {ru: "Пропустить алхимию", en: "Skip Alchemy"}
        strings["alchemyHint"] := {ru: "запускает алхимию только за кровь дракона", en: "runs alchemy only with Dragon Blood"}
        strings["heroGroup"] := {ru: "Улучшение героев на этапах", en: "Hero Upgrades on Stages"}
        strings["skipHeroes"] := {ru: "(общее) не улучшать героев", en: "(global) Do Not Upgrade Heroes"}
        strings["nextMilestone"] := {ru: "(НЕ РАБОТАЕТ) Улучшать до макс уровня", en: "(DOES NOT WORK) Upgrade to Max Level"}
        strings["heroHint"] := {ru: "Если выключено, бот улучшает каждого героя/стража по одному разу за круг. Перед стартом лучше выставить «усилить макс».", en: "If disabled, the bot upgrades each hero/guardian once per cycle. It is better to set the game to 'upgrade max' before starting."}
        strings["chooseHeroes"] := {ru: "Выберите героев для улучшения:", en: "Choose heroes to upgrade:"}
        strings["upgradeSpecial"] := {ru: "Общие", en: "General"}
        strings["upgradeGuardians"] := {ru: "Стражи", en: "Guardians"}
        strings["upgradeH1"] := {ru: "Герой на позиции 1", en: "Hero in slot 1"}
        strings["upgradeH2"] := {ru: "Герой на позиции 2", en: "Hero in slot 2"}
        strings["upgradeH3"] := {ru: "Герой на позиции 3", en: "Hero in slot 3"}
        strings["upgradeH4"] := {ru: "Герой на позиции 4", en: "Hero in slot 4"}
        strings["upgradeH5"] := {ru: "Герой на позиции 5", en: "Hero in slot 5"}
        strings["dailyGroup"] := {ru: "Ежедневные награды", en: "Daily Rewards"}
        strings["mail"] := {ru: "Проверять/чистить почту", en: "Check and Clear Mail"}
        strings["quests"] := {ru: "Забирать награды в квестах (дня/недели)", en: "Claim Quest Rewards (daily/weekly)"}
        strings["events"] := {ru: "Забирать награды в событиях", en: "Claim Event Rewards"}
        strings["chaos"] := {ru: "Участвовать в разломе хаоса", en: "Join Chaos Rift"}
        strings["shopRewards"] := {ru: "Подарки магазина и награды за вход", en: "Shop Gifts and Login Rewards"}
        strings["tavernGroup"] := {ru: "Таверна / Игра скарабея", en: "Tavern / Scarab Game"}
        strings["tavernToken"] := {ru: "Использовать tavern tokens / artifacts", en: "Use Tavern Tokens / Artifacts"}
        strings["skipBeer"] := {ru: "Пропустить получение пива", en: "Skip Claiming Beer"}
        strings["skipScarab"] := {ru: "Пропустить использование scarab token", en: "Skip Using Scarab Token"}
        strings["missionGroup"] := {ru: "Приоритет поиска миссий", en: "Mission Search Priority"}
        strings["searchMission"] := {ru: "Искать и запускать миссии на карте", en: "Search and start missions on the map"}
        strings["mapReset"] := {ru: "Сбрасывать откат карты за самоцветы", en: "Reset map cooldown with gems"}
        strings["guildHeader"] := {ru: "ГИЛЬДИЯ И УПРАВЛЕНИЕ ГЕРОЯМИ", en: "GUILD AND HERO MANAGEMENT"}
        strings["guildSettings"] := {ru: "Настройки гильдии", en: "Guild Settings"}
        strings["skipGuild"] := {ru: "(общее) пропустить активности гильдии", en: "(global) Skip Guild Activities"}
        strings["pickaxes"] := {ru: "НЕ получать бесплатные кирки", en: "Do NOT claim free pickaxes"}
        strings["crystal"] := {ru: "Разбивать кристалл", en: "Break Crystal"}
        strings["awaken"] := {ru: "Пробуждать героев", en: "Awaken Heroes"}
        strings["guildNotif"] := {ru: "Очистить оповещения", en: "Clear Notifications"}
        strings["guildHint"] := {ru: "в том числе и запуск экспедиций", en: "includes starting expeditions"}
        strings["treeHeader"] := {ru: "ПЕРСОНАЛЬНОЕ ДРЕВО (приоритет: сверху вниз)", en: "PERSONAL TREE (priority: top to bottom)"}
        strings["enableTree"] := {ru: "ВКЛЮЧИТЬ УЛУЧШЕНИЕ ДРЕВА", en: "ENABLE TREE UPGRADING"}
        strings["treeAttrGroup"] := {ru: "Атрибуты героев", en: "Hero Attributes"}
        strings["treeAttDmg"] := {ru: "Параметры урона", en: "Damage Attributes"}
        strings["treeAttHp"] := {ru: "Параметры здоровья", en: "Health Attributes"}
        strings["treeAttArm"] := {ru: "Параметры брони", en: "Armor Attributes"}
        strings["treeEnergy"] := {ru: "Герои с энергией", en: "Energy Heroes"}
        strings["treeMana"] := {ru: "Герои с маной", en: "Mana Heroes"}
        strings["treeRage"] := {ru: "Герои с яростью", en: "Rage Heroes"}
        strings["treeMainAtt"] := {ru: "Все основные атрибуты", en: "All Main Attributes"}
        strings["treeGeneralGroup"] := {ru: "Общие параметры", en: "General Parameters"}
        strings["treeMiner"] := {ru: "Шахтёр (урон по кристаллу)", en: "Miner (crystal damage)"}
        strings["treeBattle"] := {ru: "Боевой клич", en: "Battle Cry"}
        strings["treePrest"] := {ru: "Искатели Firestone", en: "Firestone Seekers"}
        strings["treeFire"] := {ru: "Эффект Firestone", en: "Firestone Effect"}
        strings["treeGold"] := {ru: "Дождь из золота", en: "Gold Rain"}
        strings["treeLevel"] := {ru: "Цена повышения уровня героя", en: "Hero Level Up Cost"}
        strings["treeGuard"] := {ru: "Сила стража", en: "Guardian Power"}
        strings["treeSpecGroup"] := {ru: "Боевой стиль / Специализации", en: "Combat Style / Specializations"}
        strings["treeFist"] := {ru: "Кулачный бой", en: "Fist Fighting"}
        strings["treePrec"] := {ru: "Точность", en: "Precision"}
        strings["treeMagic"] := {ru: "Заклинания", en: "Spells"}
        strings["treeTank"] := {ru: "Специализация Танка", en: "Tank Specialization"}
        strings["treeDamage"] := {ru: "Специализация Бойца", en: "Fighter Specialization"}
        strings["treeHeal"] := {ru: "Специализация Целителя", en: "Healer Specialization"}
        strings["battleGroup"] := {ru: "Сражения и прочее", en: "Battle & Miscellaneous"}
        strings["pvp"] := {ru: "Сражаться на арене королей (PvP)", en: "Fight in Kings Arena (PvP)"}
        strings["liberation"] := {ru: "Выполнять освободительные миссии", en: "Run Liberation Missions"}
        strings["dungeonQuest"] := {ru: "Выполнять миссии в подземелье", en: "Run Dungeon Missions"}
        strings["dungeonHint"] := {ru: "должны быть включены освободительные миссии", en: "Liberation Missions must also be enabled"}
        strings["warMachinesGroup"] := {ru: "Боевые машины и таланты", en: "War Machines & Talents"}
        strings["upgradeWmLabel"] := {ru: "Боeвая машина для улучшения:", en: "War Machine to Upgrade:"}
        strings["upgradeModeLabel"] := {ru: "Режим улучшения:", en: "Upgrade Mode:"}
        strings["blueprintPriorityLabel"] := {ru: "Приоритет чертежей:", en: "Blueprint Priority:"}
        strings["talentOptions"] := {ru: "Опции талантов (legacy/specific):", en: "Talent Options (Legacy/Specific):"}
        strings["screenHeader"] := {ru: "Разрешение экрана и границы", en: "Screen Resolution and Borders"}
        strings["screenGroup"] := {ru: "Настройки границ окна", en: "Window Border Settings"}
        strings["resX"] := {ru: "Разрешение экрана по X:", en: "Screen resolution X:"}
        strings["resY"] := {ru: "Разрешение экрана по Y:", en: "Screen resolution Y:"}
        strings["borTop"] := {ru: "Верхняя граница:", en: "Top border:"}
        strings["borBot"] := {ru: "Панель ПУСК:", en: "Taskbar:"}
        strings["screenHint"] := {ru: "* Yandex Browser: 135 (с панелью закладок), 111 (без)", en: "* Yandex Browser: 135 (with bookmarks bar), 111 (without)"}
        strings["debugTitle"] := {ru: "Проверка для отладки:", en: "Debug check:"}
        strings["debugScaleX"] := {ru: "Изменение по X", en: "Scale X"}
        strings["debugScaleY"] := {ru: "Изменение по Y", en: "Scale Y"}
        strings["debugNonZero"] := {ru: "(не должны быть 0)", en: "(should not be 0)"}
        strings["debugRatio"] := {ru: "Соотношение сторон игрового поля", en: "Game area aspect ratio"}
        strings["debugIdeal"] := {ru: "идеал", en: "ideal"}
        strings["debugRefresh"] := {ru: "Данные обновляются после перезапуска программы", en: "Values refresh after restarting the program"}
        strings["versionTitlePrefix"] := {ru: "Версия", en: "Version"}
        strings["versionCan"] := {ru: "Бот умеет:", en: "The bot can:"}
        strings["versionCan1"] := {ru: "- забирать ежедневные подарки оракула", en: "- claim daily oracle gifts"}
        strings["versionCan2"] := {ru: "- забирать ежедневные подарки магазина и награду за вход", en: "- claim daily shop gifts and login rewards"}
        strings["versionCan3"] := {ru: "- тренировать выбранного стража", en: "- train the selected guardian"}
        strings["versionCan4"] := {ru: "- собирать запчасти у механика", en: "- collect engineer parts"}
        strings["versionCan5"] := {ru: "- запускать алхимика (использует только кровь дракона)", en: "- run alchemy (uses only Dragon Blood)"}
        strings["versionCan6"] := {ru: "- запускать ритуалы оракула", en: "- start oracle rituals"}
        strings["versionCan7"] := {ru: "- начинать/завершать экспедиции гильдии", en: "- start/finish guild expeditions"}
        strings["versionCan8"] := {ru: "- собирать кирки", en: "- collect pickaxes"}
        strings["versionCan9"] := {ru: "- собирать чертежи с карты", en: "- collect blueprints from the map"}
        strings["versionCan10"] := {ru: "- исследовать в библиотеке", en: "- run research in the library"}
        strings["versionCan11"] := {ru: "- завершать миссии на карте", en: "- finish map missions"}
        strings["versionCan12"] := {ru: "- искать и запускать новые миссии на карте", en: "- search for and start new map missions"}
        strings["versionCan13"] := {ru: "- повышать уровень героев/стражей/спец улучшений на этапах (нужно доделать)", en: "- upgrade heroes/guardians/special upgrades on stages (still incomplete)"}
        strings["versionCan14"] := {ru: "- сражаться на арене и выполнять освободительные/подземельные миссии (0.3.2)", en: "- fight in the arena and run liberation/dungeon missions (0.3.2)"}
        strings["versionCan15"] := {ru: "- пробуждать героев, участвовать в разломе хаоса, качать дерево, забирать квесты/почту/ивенты", en: "- awaken heroes, join chaos rift, upgrade the tree, and claim quests/mail/events"}
        strings["versionUntested"] := {ru: "По идее работает, но не тестировал (в Яндекс играх):", en: "Should work, but not tested (Yandex Games):"}
        strings["versionUntested1"] := {ru: "- всё, что добавлено в версии 0.3.2 и выше", en: "- everything added in version 0.3.2 and later"}
        strings["versionCannot"] := {ru: "Не умеет:", en: "Cannot do yet:"}
        strings["versionCannot1"] := {ru: "- открывать сундуки", en: "- open chests"}
        strings["versionCannot2"] := {ru: "- улучшать благословения оракула, потому что сначала нужно научить открывать сундуки", en: "- upgrade oracle blessings, because chest opening must work first"}
        strings["savedTitle"] := {ru: "Сохранено", en: "Saved"}
        strings["savedBody"] := {ru: "Настройки успешно сохранены!", en: "Settings have been saved successfully!"}
        strings["startErrorTitle"] := {ru: "Ошибка", en: "Error"}
        strings["startErrorBody"] := {ru: "Функция 'MainScript' не найдена.`nУбедись, что запущен 'bot.ahk', а не 'Gui.ahk'.", en: "The function 'MainScript' was not found.`nPlease make sure you are running 'bot.ahk' and not 'Gui.ahk'."}
        strings["runtimeErrorTitle"] := {ru: "Ошибка", en: "Error"}
        strings["runtimeActivateError"] := {ru: "Не удалось активировать окно Firestone.", en: "Failed to activate the Firestone window."}
        strings["runtimeCheckTitle"] := {ru: "Проверка настроек", en: "Settings Check"}
        strings["runtimeCheckIntro"] := {ru: "Если рамки указаны верно, бот прокликает по углам игры и откроет-закроет меню.`nНажми ESC, чтобы остановить бота.", en: "If the borders are configured correctly, the bot will click the corners of the game and open-close the menu.`nPress ESC to stop the bot."}
        strings["runtimeMainMenuTitle"] := {ru: "Проверка главного меню", en: "Main Menu Check"}
        strings["runtimeMainMenuStart"] := {ru: "Проверяем: находимся ли мы на главном экране в начале цикла.", en: "Checking whether we are on the main screen at the start of the cycle."}
        strings["runtimeMainMenuAfterQuests"] := {ru: "Проверяем: находимся ли мы на главном экране после получения заданий.", en: "Checking whether we are on the main screen after claiming quests."}
        strings["runtimeBlessTitle"] := {ru: "OpenBlessChests.ahk не работает!", en: "OpenBlessChests.ahk does not work!"}
        strings["runtimeBlessBody"] := {ru: "ОТКЛЮЧИ в настройках 'Улучшать благословения'.", en: "Disable 'Upgrade Blessings' in the settings."}
    }
    lang := (UILanguage = "en") ? "en" : "ru"
    if (strings.HasKey(key))
        return strings[key][lang]
    return key
}

ChangeLanguage:
    Gui, Submit, NoHide
    UILanguage := (UILanguageChoice = 2 ? "en" : "ru")
    SaveSettings()
    Reload
return

SaveSettings:
    Gui, Submit, NoHide
    RecalculateDerivedSettings()
    SaveSettings()
    MsgBox, 64, % T("savedTitle"), % T("savedBody")
return

ButtonStart:
    Gui, Submit, NoHide
    RecalculateDerivedSettings()
    if IsFunc("MainScript") {
        SetTimer, MainScript, -100
    } else {
        MsgBox, 16, % T("startErrorTitle"), % T("startErrorBody")
    }
return

LoadSettings() {
    global
    for VarName, Info in SettingsMap {
        Section := Info[1]
        Default := Info[2]
        IniRead, Val, settings.ini, %Section%, %VarName%, %Default%
        if (Val = "ERROR")
            Val := Default
        %VarName% := Val
    }
}

SaveSettings() {
    global
    for VarName, Info in SettingsMap {
        Section := Info[1]
        CurrentVal := %VarName%
        IniWrite, %CurrentVal%, settings.ini, %Section%, %VarName%
    }
}

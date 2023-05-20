/*
MySQL Data Transfer
Source Host: 192.168.0.240
Source Database: 333a_world
Target Host: 192.168.0.240
Target Database: 333a_world
Date: 25/08/2010 10:59:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for IRC_AutoAnnounce
-- ----------------------------
CREATE TABLE `IRC_AutoAnnounce` (
  `id` int(11) NOT NULL auto_increment,
  `message` longtext NOT NULL,
  `addedby` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='IRC Module System';

-- ----------------------------
-- Table structure for IRC_Commands
-- ----------------------------
CREATE TABLE `IRC_Commands` (
  `Command` varchar(10) NOT NULL default '',
  `Description` varchar(350) default NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Command`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='IRC Module System';

-- ----------------------------
-- Table structure for IRC_Inchan
-- ----------------------------
CREATE TABLE `IRC_Inchan` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `name` varchar(12) NOT NULL default '',
  `channel` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`guid`,`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='IRC Module System';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `IRC_AutoAnnounce` VALUES ('1', 'Please report any bug on the forums http://forum.mgawow.co.uk , please search before you post', 'Biglad');
INSERT INTO `IRC_AutoAnnounce` VALUES ('2', 'Dont forget to vote and be rewarded..', 'Biglad');
INSERT INTO `IRC_AutoAnnounce` VALUES ('3', 'Powered by MGA - http://www.mgagames.co.uk', 'biglad');
INSERT INTO `IRC_AutoAnnounce` VALUES ('4', 'More Free Games @ http://www.mgagames.co.uk', 'biglad');
INSERT INTO `IRC_Commands` VALUES ('acct', '[acct <Player> <(un)lock/mail/pass/rename/gmlevel>] : Perform Action To <Player> Account.', '2');
INSERT INTO `IRC_Commands` VALUES ('ban', '[ban <Player/IP> <ip/acct/unban/reason>] : Ban/Unban <Player>', '2');
INSERT INTO `IRC_Commands` VALUES ('chan', '[chan <op/deop/voice/devoice> <*IRC Nick*>] : Set Mode On Yourself, If <IRC Nick> Is Specified Then Set mode On Nick.', '2');
INSERT INTO `IRC_Commands` VALUES ('char', '[char <Player> <mailcheat/taxicheat/maxskill/setskill/combatstop/quest/mod>] : Perform Action To Character.', '2');
INSERT INTO `IRC_Commands` VALUES ('fun', '[fun <Player> <Sound/Say>] : Do Selected Fun Action To <Player>.', '3');
INSERT INTO `IRC_Commands` VALUES ('help', '[help Command] : Use No Paramaters For List Of Available Commands.', '0');
INSERT INTO `IRC_Commands` VALUES ('inchan', '[inchan <Channel>] : Display Users In Selected In Game <Channel>', '0');
INSERT INTO `IRC_Commands` VALUES ('info', '[info] : Display Server Info. (Number Of Players Online/Max Since Last Restart/Uptime)', '0');
INSERT INTO `IRC_Commands` VALUES ('item', '[item <Player> <add> <ItemID/[ItemName]> <Amount>] : Additem To <Player>, Use <ItemID> Or <[Exact Item Name]>.', '2');
INSERT INTO `IRC_Commands` VALUES ('jail', '[jail <Player> <release/Reason>] : Jail Selected <Player> For <Reason>. Using release As <Reason> Releases Player.', '1');
INSERT INTO `IRC_Commands` VALUES ('kick', '[kick <Player> <Reason>] : Kick <Player> For <Reason>.', '1');
INSERT INTO `IRC_Commands` VALUES ('kill', '[kill <Player> <Reason>] : Kill <Player> For <Reason>.', '2');
INSERT INTO `IRC_Commands` VALUES ('level', '[level <Player> <NewLevel>] : Level <Player> To <NewLevel>. *Can Be Done Offline*', '2');
INSERT INTO `IRC_Commands` VALUES ('lookup', '[lookup <acct/char/creature/faction/go/item/quest/skill/spell/tele> <ID/Name>] : ', '2');
INSERT INTO `IRC_Commands` VALUES ('login', '[login <UserName> <Password>] : Login To TriniChat Admin Mode.  (Must Be Done In A PM)', '0');
INSERT INTO `IRC_Commands` VALUES ('logout', '[logout] : Logout Of TriniChat Admin Mode.', '0');
INSERT INTO `IRC_Commands` VALUES ('money', '[money <Player> <(-)Money>] : Give Money To <Player>, Use - To Take Money. *Can Be Done Offline*', '2');
INSERT INTO `IRC_Commands` VALUES ('mute', '[mute <Player> <release/TimeInMins> <Reason>] : Mute Player For Reason, For <TimeInMins>. Using release As Time Releases Player. *Can Be Done Offline*', '1');
INSERT INTO `IRC_Commands` VALUES ('online', '[online] : Display All Users Logged In Game.', '0');
INSERT INTO `IRC_Commands` VALUES ('pm', '[pm <Player> <Message>] : Whisper <Player> In WoW <Message>.', '2');
INSERT INTO `IRC_Commands` VALUES ('reload', '[reload] : Reload TriniChat Config Options And Security Level From DataBase.', '3');
INSERT INTO `IRC_Commands` VALUES ('restart', '[restart] : Restart TriniChat, NOT Trinity Core World Server Itself. Forces Reconnection To IRC Server.', '3');
INSERT INTO `IRC_Commands` VALUES ('revive', '[revive <Player>] : Revive <Player>.', '2');
INSERT INTO `IRC_Commands` VALUES ('saveall', '[saveall] : Forces Trinity Core To Save All Players.', '2');
INSERT INTO `IRC_Commands` VALUES ('server', '[server setmotd [<motd>]/flusharenapoints]', '3');
INSERT INTO `IRC_Commands` VALUES ('shutdown', '[shutdown <TimeInSeconds>] : Shuts The Server Down In <TimeInSeconds>, Use 0 For Immediate Shut Down', '3');
INSERT INTO `IRC_Commands` VALUES ('spell', '[spell <Player> <Cast/Learn/UnLearn> <SpellID>] : Make <Player> <Learn> Or <UnLearn> A Spell, Or <Cast> A Spell On A <Player>.', '3');
INSERT INTO `IRC_Commands` VALUES ('sysmsg', '[sysmsg <a/n/e/add/del/list> <Message>] : Broadcasts A System Message. (a-Broadcast System Message)(n-Broadcast Notify Message)(e-Event Message)', '1');
INSERT INTO `IRC_Commands` VALUES ('tele', '[tele <Player> <l/c/r/to/cr/go/homebind> <Loc.Name/MAPID X Y Z/Recall/Player/Creature GUID/Gameobject GUID>] : Teleport Player To Location, Coords, Recall Location, Another Player, Creature or Gameobject. (l-Location)(c-Coords)', '2');
INSERT INTO `IRC_Commands` VALUES ('top', '[top <accttime/chartime/money> <limit>] : Display top stats for given option. Only GM Higher Than Config Option Can Use Limit.', '3');
INSERT INTO `IRC_Commands` VALUES ('who', '[who] : Displays Users Currently Logged In To TriniChat.', '1');
INSERT INTO `IRC_Commands` VALUES ('', null, '0');



INSERT INTO trinity_string
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`)
VALUES
   (5530, '|cffff0000[Automatic]: %s|r', '', '', '', '', '', '', '', '');
   
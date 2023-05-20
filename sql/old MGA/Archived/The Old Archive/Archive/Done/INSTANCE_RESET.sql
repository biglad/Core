UPDATE `instance_reset` SET `resettime`='1263096000';

-- set raid reset timmer to somethign more real
-- GMT: Sun, 10 Jan 2010 04:00:00 GMT
-- Your timezone: 10 January 2010 04:00:00


/*
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` int(11) unsigned NOT NULL default '0',
  `difficulty` tinyint(1) unsigned NOT NULL default '0',
  `resettime` bigint(40) NOT NULL default '0',
  PRIMARY KEY  (`mapid`,`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(11) unsigned NOT NULL default '0',
  `map` int(11) unsigned NOT NULL default '0',
  `resettime` bigint(40) NOT NULL default '0',
  `difficulty` tinyint(1) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/
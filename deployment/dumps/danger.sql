CREATE TABLE IF NOT EXISTS `Posts` (
  `Hash` varchar(32) NOT NULL,
  `Author` varchar(32) NOT NULL,
  `Content` longtext NOT NULL,
  `Time` int(10) NOT NULL,
  PRIMARY KEY  (`Hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

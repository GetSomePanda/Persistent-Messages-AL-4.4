USE `altislife`;
--
-- Table structure for table `cellphone`
-- Only run this if you already have a database made on your server.
-- Made by GetSomePanda / Panda
--

CREATE TABLE IF NOT EXISTS `cellphone` (
  `pid` varchar(64) NOT NULL,
  `playerName` varchar(32) NOT NULL,
  `messages` text NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `interceptions` (
  `liid` int(11) NOT NULL COMMENT 'The LI ID for this interception.',
  `number` varchar(64) NOT NULL COMMENT 'The number to intercept.',
  `x2_host` varchar(255) NOT NULL COMMENT 'The IP address of the X2 interface.',
  `x2_password` varchar(100) DEFAULT NULL COMMENT 'The password for authenticating on the X2 interface.',
  `x2_port` int(11) NOT NULL COMMENT 'The port of the X2 interface.',
  `x2_user` varchar(255) NOT NULL COMMENT 'The username for authenticating on the X2 interface.',
  `x3_host` varchar(255) DEFAULT NULL COMMENT 'The IP address of the X3 interface.',
  `x3_port` int(11) DEFAULT NULL COMMENT 'The port of the X3 interface.',
  `x3_required` tinyint(1) DEFAULT '0' COMMENT 'Whether to also intercept call content via X3 interface (false by default).'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `legalintercept` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(64) NOT NULL DEFAULT '',
  `key_type` int(11) NOT NULL DEFAULT '0',
  `value_type` int(11) NOT NULL DEFAULT '0',
  `key_value` varchar(128) NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `lidata` (
  `id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(64) NOT NULL DEFAULT '',
  `key_type` int(11) NOT NULL DEFAULT '0',
  `value_type` int(11) NOT NULL DEFAULT '0',
  `key_value` varchar(128) NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `interceptions`
  ADD PRIMARY KEY (`liid`),
  ADD UNIQUE KEY `number` (`number`),
  ADD UNIQUE KEY `liid` (`liid`);

ALTER TABLE `legalintercept`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `lidata`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `legalintercept`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
ALTER TABLE `lidata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

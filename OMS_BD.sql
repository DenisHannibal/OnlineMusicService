SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Kamikaze', 1, 4, 'assets/images/artwork/kamikaze.png'), 
(2, 'Revival', 1, 4, 'assets/images/artwork/revival.jpg'),
(3, 'Meteora ', 5, 1, 'assets/images/artwork/meteora.jpg'),
(4, 'One More Light', 5, 1, 'assets/images/artwork/onemorelight.jpg'),
(5, 'All the Right Reasons', 9, 1, 'assets/images/artwork/alltherightreasons.jpg'),
(6, 'Dark Horse', 9, 1, 'assets/images/artwork/darkhorse.jpg'),
(7, 'America', 4, 1, 'assets/images/artwork/america.jpg'),
(8, 'This Is War', 4, 1, 'assets/images/artwork/thisiswar.jpg'),
(9, 'Nevermind', 10, 1, 'assets/images/artwork/nevermind.jpg'),
(10, 'In Utero', 10, 1, 'assets/images/artwork/inutero.jpg');

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Eminem'),
(2, 'Selena Gomez'),
(3, 'Tokio Hotel'),
(4, '30 Seconds To Mars'),
(5, 'Linkin Park'),
(6, 'Beyonce'),
(7, 'Green Day'),
(8, 'Shakira'),
(9, 'Nickelback'),
(10, 'Nirvana');

CREATE TABLE IF NOT EXISTS `genres` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Rap'),
(4, 'Hip-hop'),
(5, 'Country'),
(6, 'R & B'),
(7, 'Classical'),
(8, 'Techno'),
(9, 'Jazz'),
(10, 'Folk');

CREATE TABLE IF NOT EXISTS `playlists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `playlistSongs` (
`id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `Songs` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '01. the ringer', 1, 1, 4, '5:38', 'assets/music/1.mp3', 1, 0),
(2, '02. greatest', 1, 1, 4, '3:47', 'assets/music/2.mp3', 1, 0),
(3, '03. lucky you', 1, 1, 4, '4:05', 'assets/music/3.mp3', 1, 0),
(4, '04. paul (skit)', 1, 1, 4, '0:35', 'assets/music/4.mp3', 1, 0),
(5, '05. normal', 1, 2, 4, '3:42', 'assets/music/5.mp3', 2, 0),
(6, '06. em calls paul (skit)', 5, 3, 1, '0:49', 'assets/music/6.mp3', 7, 0),
(7, '07. stepping stone', 5, 4, 1, '5:10', 'assets/music/7.mp3', 1, 0),
(8, '08. not alike', 9, 5, 1, '4:48', 'assets/music/8.mp3', 4, 0),
(9, '09. kamikaze', 9, 6, 1, '3:36', 'assets/music/9.mp3', 3, 0),
(10, '10. fall', 4, 7, 1, '4:22', 'assets/music/10.mp3', 4, 0), 
(11, '11. nice guy', 4, 8, 1, '2:31', 'assets/music/11.mp3', 3, 0),
(12, '12. good guy', 10, 9, 1, '2:22', 'assets/music/12.mp3', 2, 0),
(13, '13. venom (iz filma venom)', 10, 10, 1, '4:30', 'assets/music/13.mp3', 1, 0);

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'test1', 'test1', 'test1', 'test1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-10-22 00:00:00', 'assets/images/profile-pics/if_profle.png');

ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `genres`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `playlists`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `playlistSongs`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `Songs`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;

ALTER TABLE `artists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

ALTER TABLE `genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;

ALTER TABLE `playlists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `playlistSongs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Songs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;

ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;

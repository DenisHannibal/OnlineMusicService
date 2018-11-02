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
(10, 'In Utero', 10, 1, 'assets/images/artwork/inutero.jpg'),
(11, 'Mutter', 11, 1, 'assets/images/artwork/mutter.jpg'),
(12, 'Reise Reise', 11, 1, 'assets/images/artwork/reise.jpg'); 

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
(10, 'Nirvana'),
(11, 'Rammstein');

CREATE TABLE IF NOT EXISTS `genres` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `playlistSongs` (
`id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '01. the ringer', 1, 1, 4, '5:38', 'assets/music/eminem/kamikaze/1.mp3', 1, 0),
(2, '02. greatest', 1, 1, 4, '3:47', 'assets/music/eminem/kamikaze/2.mp3', 1, 0),
(3, '03. lucky you', 1, 1, 4, '4:05', 'assets/music/eminem/kamikaze/3.mp3', 1, 0),
(4, '04. normal', 1, 1, 4, '3:42', 'assets/music/eminem/kamikaze/4.mp3', 2, 0),
(5, '05. stepping stone', 1, 1, 1, '5:10', 'assets/music/eminem/kamikaze/5.mp3', 1, 0),
(6, '06. not alike', 1, 1, 1, '4:48', 'assets/music/eminem/kamikaze/6.mp3', 4, 0),
(7, '07. kamikaze', 1, 1, 1, '3:36', 'assets/music/eminem/kamikaze/7.mp3', 3, 0),
(8, '08. fall', 1, 1, 1, '4:22', 'assets/music/eminem/kamikaze/8.mp3', 4, 0), 
(9, '09. nice guy', 1, 1, 1, '2:31', 'assets/music/eminem/kamikaze/9.mp3', 3, 0),
(10, '10. good guy', 1, 1, 1, '2:22', 'assets/music/eminem/kamikaze/10.mp3', 2, 0),
(11, '11. venom (iz filma venom)', 1, 1, 1, '4:30', 'assets/music/eminem/kamikaze/11.mp3', 1, 0),

(12, '01. arose', 1, 2, 4, '4:34', 'assets/music/eminem/revival/1.mp3', 1, 0),
(13, '02. believe', 1, 2, 4, '5:15', 'assets/music/eminem/revival/2.mp3', 1, 0),
(14, '03. castle', 1, 2, 4, '4:14', 'assets/music/eminem/revival/3.mp3', 1, 0),
(15, '04. chloraseptic', 1, 2, 4, '5:01', 'assets/music/eminem/revival/4.mp3', 2, 0),
(16, '05. framed', 1, 2, 1, '4:13', 'assets/music/eminem/revival/5.mp3', 1, 0),
(17, '06. heat', 1, 2, 1, '4:10', 'assets/music/eminem/revival/6.mp3', 4, 0),
(18, '07. bad husband', 1, 2, 1, '4:48', 'assets/music/eminem/revival/7.mp3', 3, 0),
(19, '08. like home', 1, 2, 1, '4:05', 'assets/music/eminem/revival/8.mp3', 4, 0), 
(20, '09. need me', 1, 2, 1, '4:25', 'assets/music/eminem/revival/9.mp3', 3, 0),
(21, '10. nowhere fast', 1, 2, 1, '4:24', 'assets/music/eminem/revival/10.mp3', 2, 0),
(22, '11. offended', 1, 2, 1, '5:21', 'assets/music/eminem/revival/11.mp3', 1, 0),
(23, '12. remind me', 1, 2, 1, '3:45', 'assets/music/eminem/revival/12.mp3', 1, 0),
(24, '13. river', 1, 2, 1, '3:41', 'assets/music/eminem/revival/13.mp3', 3, 0),
(25, '14. tragic', 1, 2, 1, '4:12', 'assets/music/eminem/revival/14.mp3', 4, 0), 
(26, '15. untouchable', 1, 2, 1, '6:10', 'assets/music/eminem/revival/15.mp3', 3, 0),
(27, '16. walk on water', 1, 2, 1, '5:03', 'assets/music/eminem/revival/16.mp3', 2, 0),
(28, '17. in your head', 1, 2, 1, '3:02', 'assets/music/eminem/revival/17.mp3', 1, 0),

(29, '01. breaking the habit', 5, 3, 4, '3:36', 'assets/music/linkin_Park/meteora/1.mp3', 1, 0),
(30, '02. don not stay', 5, 3, 4, '3:08', 'assets/music/linkin_Park/meteora/2.mp3', 1, 0),
(31, '03. easier to run', 5, 3, 4, '3:24', 'assets/music/linkin_Park/meteora/3.mp3', 1, 0),
(32, '04. faint', 5, 3, 4, '2:42', 'assets/music/linkin_Park/meteora/4.mp3', 2, 0),
(33, '05. figure', 5, 3, 1, '3:17', 'assets/music/linkin_Park/meteora/5.mp3', 1, 0),
(34, '06. hit the floor', 5, 3, 1, '2:44', 'assets/music/linkin_Park/meteora/6.mp3', 4, 0),
(35, '07. from the inside', 5, 3, 1, '2:55', 'assets/music/linkin_Park/meteora/7.mp3', 4, 0), 
(36, '08. nobody is listening', 5, 3, 1, '2:58', 'assets/music/linkin_Park/meteora/8.mp3', 3, 0),
(37, '09. lying from you', 5, 3, 1, '2:55', 'assets/music/linkin_Park/meteora/9.mp3', 2, 0),
(38, '10. numb', 5, 3, 1, '3:07', 'assets/music/linkin_Park/meteora/10.mp3', 1, 0),
(39, '11. session', 5, 3, 1, '2:24', 'assets/music/linkin_Park/meteora/11.mp3', 2, 0),
(40, '12. somewhere i belong', 5, 3, 1, '3:34', 'assets/music/linkin_Park/meteora/12.mp3', 1, 0),
 
(41, '01. good goodbye', 5, 4, 4, '3:31', 'assets/music/linkin_Park/one_more_light/1.mp3', 1, 0),
(42, '02. halfway right', 5, 4, 4, '3:37', 'assets/music/linkin_Park/one_more_light/2.mp3', 1, 0),
(43, '03. heavy', 5, 4, 4, '2:49', 'assets/music/linkin_Park/one_more_light/3.mp3', 1, 0),
(44, '04. invisible', 5, 4, 4, '3:34', 'assets/music/linkin_Park/one_more_light/4.mp3', 2, 0),
(45, '05. talking to myself', 5, 4, 1, '3:51', 'assets/music/linkin_Park/one_more_light/5.mp3', 1, 0),
(46, '06. nobody can save me', 5, 4, 1, '3:45', 'assets/music/linkin_Park/one_more_light/6.mp3', 4, 0),
(47, '07. one more light', 5, 4, 1, '4:15', 'assets/music/linkin_Park/one_more_light/7.mp3', 4, 0), 
(48, '08. sharp edges', 5, 4, 1, '2:58', 'assets/music/linkin_Park/one_more_light/8.mp3', 3, 0),
(49, '09. sorry for now', 5, 4, 1, '3:23', 'assets/music/linkin_Park/one_more_light/9.mp3', 2, 0),
(50, '10. battle symphony', 5, 4, 1, '3:36', 'assets/music/linkin_Park/one_more_light/10.mp3', 1, 0),

(51, '01. animals', 9, 5, 4, '3:06', 'assets/music/nickelback/all_the_right_reasons/1.mp3', 1, 0),
(52, '02. far away', 9, 5, 4, '3:58', 'assets/music/nickelback/all_the_right_reasons/2.mp3', 1, 0),
(53, '03. fight', 9, 5, 4, '3:34', 'assets/music/nickelback/all_the_right_reasons/3.mp3', 1, 0),
(54, '04. follow', 9, 5, 4, '3:38', 'assets/music/nickelback/all_the_right_reasons/4.mp3', 2, 0),
(55, '05. if everyone', 9, 5, 1, '3:44', 'assets/music/nickelback/all_the_right_reasons/5.mp3', 1, 0),
(56, '06. next', 9, 5, 1, '4:20', 'assets/music/nickelback/all_the_right_reasons/6.mp3', 4, 0),
(57, '07. photograph', 9, 5, 1, '4:21', 'assets/music/nickelback/all_the_right_reasons/7.mp3', 4, 0), 
(58, '08. rockstar', 9, 5, 1, '4:12', 'assets/music/nickelback/all_the_right_reasons/8.mp3', 3, 0),
(59, '09. savin', 9, 5, 1, '3:39', 'assets/music/nickelback/all_the_right_reasons/9.mp3', 2, 0),
(60, '10. side', 9, 5, 1, '3:00', 'assets/music/nickelback/all_the_right_reasons/10.mp3', 1, 0),
(61, '11. someone', 9, 5, 1, '4:01', 'assets/music/nickelback/all_the_right_reasons/11.mp3', 1, 0),

(62, '01. if today', 9, 6, 4, '4:08', 'assets/music/nickelback/dark_horse/1.mp3', 1, 0),
(63, '02. s.e.x.', 9, 6, 4, '3:55', 'assets/music/nickelback/dark_horse/2.mp3', 1, 0),
(64, '03. burn it to', 9, 6, 4, '3:31', 'assets/music/nickelback/dark_horse/3.mp3', 1, 0),
(65, '04. something', 9, 6, 4, '3:38', 'assets/music/nickelback/dark_horse/4.mp3', 2, 0),
(66, '05. just to get', 9, 6, 1, '4:02', 'assets/music/nickelback/dark_horse/5.mp3', 1, 0),
(67, '06. id come for', 9, 6, 1, '4:22', 'assets/music/nickelback/dark_horse/6.mp3', 4, 0),
(68, '07. never gonna', 9, 6, 1, '3:47', 'assets/music/nickelback/dark_horse/7.mp3', 4, 0), 
(69, '08. gotta', 9, 6, 1, '4:13', 'assets/music/nickelback/dark_horse/8.mp3', 3, 0),
(70, '09. next go', 9, 6, 1, '3:45', 'assets/music/nickelback/dark_horse/9.mp3', 2, 0),

(71, '01. dangerous', 4, 7, 4, '3:19', 'assets/music/30_seconds_to_mars/america/1.mp3', 1, 0),
(72, '02. like like', 4, 7, 4, '4:06', 'assets/music/30_seconds_to_mars/america/2.mp3', 1, 0),
(73, '03. great', 4, 7, 4, '4:49', 'assets/music/30_seconds_to_mars/america/3.mp3', 1, 0),
(74, '04. hail to', 4, 7, 4, '3:22', 'assets/music/30_seconds_to_mars/america/4.mp3', 2, 0),
(75, '05. love is', 4, 7, 1, '3:54', 'assets/music/30_seconds_to_mars/america/5.mp3', 1, 0),
(76, '06. one track mind', 4, 7, 1, '4:20', 'assets/music/30_seconds_to_mars/america/6.mp3', 4, 0),
(77, '07. monolith', 4, 7, 1, '1:38', 'assets/music/30_seconds_to_mars/america/7.mp3', 4, 0), 
(78, '08. remedy', 4, 7, 1, '3:17', 'assets/music/30_seconds_to_mars/america/8.mp3', 3, 0),
(79, '09. rescue me', 4, 7, 1, '3:38', 'assets/music/30_seconds_to_mars/america/9.mp3', 2, 0),
(80, '10. rider', 4, 7, 1, '2:58', 'assets/music/30_seconds_to_mars/america/10.mp3', 3, 0),
(81, '11. dawn will', 4, 7, 1, '3:57', 'assets/music/30_seconds_to_mars/america/11.mp3', 2, 0),
(82, '12. walk on water', 4, 7, 1, '3:05', 'assets/music/30_seconds_to_mars/america/12.mp3', 2, 0),

(83, '01. alibi', 4, 8, 4, '5:58', 'assets/music/30_seconds_to_mars/this_is_war/1.mp3', 1, 0),
(84, '02. suns', 4, 8, 4, '6:25', 'assets/music/30_seconds_to_mars/this_is_war/2.mp3', 1, 0),
(85, '03. bad', 4, 8, 4, '3:40', 'assets/music/30_seconds_to_mars/this_is_war/3.mp3', 1, 0),
(86, '04. closer', 4, 8, 4, '5:47', 'assets/music/30_seconds_to_mars/this_is_war/4.mp3', 2, 0),
(87, '05. escape', 4, 8, 1, '6:14', 'assets/music/30_seconds_to_mars/this_is_war/5.mp3', 1, 0),
(88, '06. hurricane', 4, 8, 1, '2:07', 'assets/music/30_seconds_to_mars/this_is_war/6.mp3', 4, 0),
(89, '07. kings', 4, 8, 1, '3:03', 'assets/music/30_seconds_to_mars/this_is_war/7.mp3', 4, 0), 
(90, '08. l490', 4, 8, 1, '4:42', 'assets/music/30_seconds_to_mars/this_is_war/8.mp3', 3, 0),
(91, '09. search', 4, 8, 1, '5:37', 'assets/music/30_seconds_to_mars/this_is_war/9.mp3', 2, 0),
(92, '10. stranger', 4, 8, 1, '6:53', 'assets/music/30_seconds_to_mars/this_is_war/10.mp3', 3, 0),
(93, '11. vox populi', 4, 8, 1, '6:01', 'assets/music/30_seconds_to_mars/this_is_war/11.mp3', 2, 0),
(94, '12. stronger', 4, 8, 1, '1:58', 'assets/music/30_seconds_to_mars/this_is_war/12.mp3', 2, 0),

(95, '01. stay away', 10, 9, 4, '5:58', 'assets/music/nirvana/nevermind/1.mp3', 1, 0),
(96, '02. in bloom', 10, 9, 4, '6:25', 'assets/music/nirvana/nevermind/2.mp3', 1, 0),
(97, '03. breed', 10, 9, 4, '3:40', 'assets/music/nirvana/nevermind/3.mp3', 1, 0),
(98, '04. come as you', 10, 9, 4, '5:47', 'assets/music/nirvana/nevermind/4.mp3', 2, 0),
(99, '05. drain you', 10, 9, 1, '6:14', 'assets/music/nirvana/nevermind/5.mp3', 1, 0),
(100, '06. endless', 10, 9, 1, '2:07', 'assets/music/nirvana/nevermind/6.mp3', 4, 0),
(101, '07. lithium', 10, 9, 1, '3:03', 'assets/music/nirvana/nevermind/7.mp3', 4, 0), 
(102, '08. lounge act', 10, 9, 1, '4:42', 'assets/music/nirvana/nevermind/8.mp3', 3, 0),
(103, '09. on a plain', 10, 9, 1, '5:37', 'assets/music/nirvana/nevermind/9.mp3', 2, 0),
(104, '10. polly', 10, 9, 1, '6:53', 'assets/music/nirvana/nevermind/10.mp3', 3, 0),
(105, '11. something', 10, 9, 1, '6:01', 'assets/music/nirvana/nevermind/11.mp3', 2, 0),
(106, '12. smells', 10, 9, 1, '1:58', 'assets/music/nirvana/nevermind/12.mp3', 2, 0),
(107, '13. territorial', 10, 9, 1, '1:58', 'assets/music/nirvana/nevermind/13.mp3', 2, 0),

(108, '01. all apologies', 10, 10, 4, '3:12', 'assets/music/nirvana/in_utero/1.mp3', 1, 0),
(109, '02. dumb', 10, 10, 4, '3:51', 'assets/music/nirvana/in_utero/2.mp3', 1, 0),
(110, '03. frances', 10, 10, 4, '3:47', 'assets/music/nirvana/in_utero/3.mp3', 1, 0),
(111, '04. heart', 10, 10, 4, '2:32', 'assets/music/nirvana/in_utero/4.mp3', 2, 0),
(112, '06. pennyroyal', 10, 10, 1, '4:41', 'assets/music/nirvana/in_utero/6.mp3', 4, 0),
(113, '07. friendly', 10, 10, 1, '3:52', 'assets/music/nirvana/in_utero/7.mp3', 4, 0), 
(114, '08. scentless', 10, 10, 1, '3:36', 'assets/music/nirvana/in_utero/8.mp3', 3, 0),
(115, '09. serve', 10, 10, 1, '4:48', 'assets/music/nirvana/in_utero/9.mp3', 2, 0),
(116, '10. very ape', 10, 10, 1, '3:36', 'assets/music/nirvana/in_utero/10.mp3', 3, 0),
(117, '11. waif me', 10, 10, 1, '1:55', 'assets/music/nirvana/in_utero/11.mp3', 2, 0),
(118, '12. milk it', 10, 10, 1, '2:49', 'assets/music/nirvana/in_utero/12.mp3', 2, 0),

(119, '01. mein herz', 11, 11, 4, '4:39', 'assets/music/rammstein/mutter/1.mp3', 1, 0),
(120, '02. links', 11, 11, 4, '3:36', 'assets/music/rammstein/mutter/2.mp3', 1, 0),
(121, '03. sonne', 11, 11, 4, '4:33', 'assets/music/rammstein/mutter/3.mp3', 1, 0),
(122, '04. ich will', 11, 11, 4, '3:37', 'assets/music/rammstein/mutter/4.mp3', 2, 0),
(123, '05. feuer frei', 11, 11, 1, '3:31', 'assets/music/rammstein/mutter/5.mp3', 4, 0),
(124, '06. mutter', 11, 11, 1, '4:32', 'assets/music/rammstein/mutter/6.mp3', 4, 0), 
(125, '07. zwitter', 11, 11, 1, '4:47', 'assets/music/rammstein/mutter/8.mp3', 3, 0),
(126, '08. rein raus', 11, 11, 1, '3:10', 'assets/music/rammstein/mutter/9.mp3', 2, 0),
(127, '09. adios', 11, 11, 1, '3:50', 'assets/music/rammstein/mutter/10.mp3', 3, 0),
(128, '10. nebel', 11, 11, 1, '4:54', 'assets/music/rammstein/mutter/11.mp3', 2, 0),
(129, '11. spieluhr', 11, 11, 1, '4:46', 'assets/music/rammstein/mutter/7.mp3', 2, 0),

(130, '01. reise reise', 11, 12, 4, '4:11', 'assets/music/rammstein/reise_reise/1.mp3', 1, 0),
(131, '02. mein teil', 11, 12, 4, '4:32', 'assets/music/rammstein/reise_reise/2.mp3', 1, 0),
(132, '03. dalai lama', 11, 12, 4, '5:38', 'assets/music/rammstein/reise_reise/3.mp3', 1, 0),
(133, '04. keine lust', 11, 12, 4, '3:43', 'assets/music/rammstein/reise_reise/4.mp3', 2, 0),
(134, '05. los', 11, 12, 1, '4:25', 'assets/music/rammstein/reise_reise/5.mp3', 4, 0),
(135, '06. amerika', 11, 12, 1, '3:46', 'assets/music/rammstein/reise_reise/6.mp3', 4, 0), 
(136, '07. moskau', 11, 12, 1, '4:16', 'assets/music/rammstein/reise_reise/7.mp3', 3, 0),
(137, '08. morgenstern', 11, 12, 1, '3:59', 'assets/music/rammstein/reise_reise/8.mp3', 2, 0),
(138, '09. stein um', 11, 12, 1, '3:56', 'assets/music/rammstein/reise_reise/9.mp3', 3, 0),
(139, '10. ohne dich', 11, 12, 1, '4:32', 'assets/music/rammstein/reise_reise/10.mp3', 2, 0),
(140, '11. amour', 11, 12, 1, '4:54', 'assets/music/rammstein/reise_reise/11.mp3', 2, 0),
 
(10000, '13. venom (iz filma venom)', 1, 1, 1, '4:30', 'assets/music/13.mp3', 1, 0);

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL, 
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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

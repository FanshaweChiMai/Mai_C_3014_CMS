-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2018 at 12:34 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rvMovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science-Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport'),
(17, 'Thriller'),
(18, 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` int(10) UNSIGNED NOT NULL,
  `movies_img` varchar(150) NOT NULL,
  `movies_title` varchar(150) NOT NULL,
  `movies_year` int(11) NOT NULL,
  `movies_length` varchar(40) NOT NULL,
  `movies_plot` varchar(600) NOT NULL,
  `movies_trailer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_img`, `movies_title`, `movies_year`, `movies_length`, `movies_plot`, `movies_trailer`) VALUES
(1, 'ataleofmari.jpg', 'A Tale of Mari and Three Puppies', 2007, '2h 4m', 'A tale of Mari and three puppies is based on a true story. It tells about the situation Mari and her puppies have gone through after a massive destruction brought by an earthquake that striked Japan in October 23, 2004. Aya subsequently names the dog Mari, and it becomes a part of the family.', 'ataleofmari.mp4'),
(2, 'badgenius.jpg', 'Bad Genius', 2017, '2h 10m', 'Lynn, a genius high school student who makes money by cheating tests, receives a new task that leads her to set foot on Sydney, Australia. In order to complete the millions-Baht task, Lynn and her classmates have to finish the international STIC(SAT) exam and deliver the answers back to her friends in Thailand before the exam takes place once again in her home country.', 'badgenius.mp4'),
(3, 'bladerunner.jpg', 'Blade Runner 2049', 2017, '2h 44m', 'Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years.', 'bladerunner.mp4'),
(4, 'cobasaigon.jpg', 'Co Ba Sai Gon', 2017, '1h 40m', 'The re-enactment of a long dress era in the 1960s is thought to be the heyday of traditional Vietnamese costumes. Interwoven into that transformation in the style and style of the ao dai in modern times are told through the story of the character of Ba. ', 'cobasaigon.mp4'),
(5, 'coco.jpg', 'Coco', 2017, '1h 45m', 'Despite his family\'s baffling generations-old ban on music, Miguel dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events.', 'coco.mp4'),
(6, 'dunkirk.jpg', 'Dunkirk', 2017, '1h 46m', 'Evacuation of Allied soldiers from the British Empire, and France, who were cut off and surrounded by the German army from the beaches and harbor of Dunkirk, France, between May 26- June 04, 1940, during Battle of France in World War II.', 'dunkirk.mp4'),
(7, 'kimseondal.jpg', 'Seondal : The Man Who Sells the River', 2016, '2h ', 'In-hong is drafted into the army by force to fight in China during the Qing Dynasty. During the struggle to survive in the battlefield, he meets Bo-won and Gyeon. Three men return to Korea to find no means to make living, and decide to form a con ring. Their cons range from selling a chicken as phoenix and disguising an ordinary sword as one that belonged to the great Admiral Yi Shun-shin. ', 'kimseondal.mp4'),
(8, 'kokuhaku.jpg', 'Kokuhaku', 2010, '1h 46m', 'A psychological thriller of a grieving mother turned cold-blooded avenger with a twisty master plan to pay back those who were responsible for her daughter\'s death.', 'kokuhaku.mp4'),
(9, 'kubo.jpg', 'Kubo and the Two Strings', 2016, '1h 41m', 'Kubo lives a quiet, normal life in a small shoreside village until a spirit from the past turns his life upside down by re-igniting an age-old vendetta. This causes all sorts of havoc as gods and monsters chase Kubo who, in order to survive, must locate a magical suit of armor once worn by his late father, a legendary Samurai warrior.', 'kubo.mp4'),
(10, 'missgranny.jpg', 'Miss Granny ', 2014, '2h 4m', 'A 74-year-old widow realizes she is becoming a burden on her family. She mysteriously regains her physical appearance from the age of 20.', 'missgranny.mp4'),
(11, 'moana.jpg', 'Moana', 2016, '1h 47m', 'Moana Waialiki is a sea voyaging enthusiast and the only daughter of a chief in a long line of navigators. When her island\'s fishermen can\'t catch any fish and the crops fail, she learns that the demigod Maui caused the blight by stealing the heart of the goddess, Te Fiti. The only way to heal the island is to persuade Maui to return Te Fiti\'s heart, so Moana sets off on an epic journey across the Pacific. The film is based on stories from Polynesian mythology.', 'moana.mp4'),
(12, 'parasyte.jpg', 'Parasyte: Part 1 ', 2014, '1h 49m', 'The humanity is suffering from murders all over the globe, called \"Mincemeat murders\". High school student, Izumi Shinichi has a parasite living off him, having replaced his right hand, and he might be the discoverer of truth.', 'parasyte.mp4'),
(13, 'standbyme.jpg', 'Stand By Me, Doraemon', 2014, '1h 35m', 'In the suburbs of Tokyo some time ago, there lived a clumsy boy about 10 years old. There appeared in front of him named Sewashi, Nobita\'s descendant of four generations later from the 22nd century, and Doraemon, a 22nd century cat-type caretaker robot who helps people with its secret gadgets. ', 'standbyme.mp4'),
(14, 'starwarsthelastjedi.jpg', 'Star Wars : The Last Jedi', 2017, '2h 32m', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.', 'starwarsthelastjedi.mp4'),
(15, 'teiichibattleofsupremehigh.jpg', 'Teiichi : Battle of Supreme High', 2017, '1h 58m', 'Teiichi dreams of one day being the ruler of his own empire, but to get there he needs to make sure that his candidate for class president at his elite high school wins the election. This is a high school election fought with all the fervor or a nasty, national campaign. Lies, bribery, sabotage and scandal all come into play as the boys fight it out to determine who will be the next class president.', 'teiichibattleofsupremehigh.mp4'),
(16, 'thechase.jpg', 'The Chase ', 2017, '1h 50m', 'Sim Deok-soo is a grumpy landlord running a run-down apartment complex. Suddenly his tenants begin disappearing under suspicious circumstances. A retired ex-detective shows up, claiming a serial murderer from 30 years back has returned.', 'thechase.mp4'),
(17, 'thegreatestshowman.jpg', 'The Greatest Showman', 2017, '1h 45m', 'Orphaned, penniless but ambitious and with a mind crammed with imagination and fresh ideas, the American Phineas Taylor Barnum will always be remembered as the man with the gift to effortlessly blur the line between reality and fiction. ', 'thegreatestshowman.mp4'),
(18, 'timetripapp.jpg', 'Time Trip App', 2014, '1h 48m', 'In 1868, a battle between new government forces and shogunate forces are about to take place in Edo. Katsu Kaishu (Hiroshi Tamaki) wants to avoid useless bloodshed and sends a peace envoy to Takamori Saigo, but Katsu Kaishu is unable to get a response from Takamori Saigo. One day, Katsu Kaishu meets high school teacher Mikako (Satomi Ishihara) and her student Masaya who is captivated by the shogunate. ', 'timetripapp.mp4'),
(19, 'totoro.jpg', 'My Neighbour Totoro', 1988, '1h 26m', 'Two young girls, Satsuki and her younger sister Mei, move into a house in the country with their father to be closer to their hospitalized mother. Satsuki and Mei discover that the nearby forest is inhabited by magical creatures called Totoros (pronounced toe-toe-ro). They soon befriend these Totoros, and have several magical adventures.', 'totoro.mp4'),
(20, 'walle.jpg', 'Wall-E', 2008, '1h 38m', 'In a distant, but not so unrealistic, future where mankind has abandoned earth because it has become covered with trash from products sold by the powerful multi-national Buy N Large corporation, WALL-E, a garbage collecting robot has been left to clean up the mess. ', 'walle.mp4'),
(21, 'blackpanther.jpg', 'Black Panther ', 2018, '2h 14m', 'After the events of Captain America: Civil War, King T\'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country\'s new leader. However, T\'Challa soon finds that he is challenged for the throne from factions within his own country. ', 'blackpanther.mp4'),
(22, 'sunny.jpg', 'Sunny', 2011, '2h 4m', 'New high-school transfer student Na-Mi comes from a small town in Jeolla Province to her new school in the capital city of Seoul. When she is nervous, her small town dialect comes out & she starts to shake. On her first day at her new school she is bullied by others. Coming to her help is a group of girls.', 'sunny.mp4'),
(23, 'honeyandclover.jpg', 'Honey and Clover ', 2006, '1h 57m', 'Shy architect Takemoto, pensive ceramics student Ayumi, hardworking senior Mayama, and super-senior artistic madman Morita are four students at an art college in Japan, each taught by Professor Hanamoto. When artistic prodigy Hagumi, the daughter of Hanamoto\'s cousin, arrives at the school, Takemoto falls for her immediately.', 'honeyandclover.mp4'),
(24, 'hentaikamen.jpg', 'Hentai Kamen ', 2013, '1h 30m', 'High school student Kyosuke Shikijo (Ryohei Suzuki) is the most talented member of the school\'s martial arts of the fist club. His late father was detective and Kyosuke share his father\'s strong sense of justice. Kyosuke also has a secret. Kyosuke likes to wear female underwear and transforms himself into the alter ego \"Pervert Mask,\" wearing female underwear and gaining superhuman powers. ', 'hentaikamen.mp4'),
(25, 'okja.jpg', 'Okja', 2017, '2h', 'For 10 idyllic years, young Mija (An Seo Hyun) has been caretaker and constant companion to Okja-a massive animal and an even bigger friend-at her home in the mountains of South Korea. But that changes when a family-owned multinational conglomerate Mirando Corporation takes Okja for themselves and transports her to New York, where image obsessed and self-promoting CEO Lucy Mirando (Tilda Swinton) has big plans for Mija\'s dearest friend. ', 'okja.mp4'),
(26, 'wonderwoman.jpg', 'Wonder Woman', 2017, '2h 21m', 'Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, when a pilot crashes on their shores and tells of a massive conflict raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting alongside man in a war to end all wars, Diana will discover her full powers and her true destiny.', 'wonderwoman.mp4'),
(27, 'invisibleguest.jpg', 'Contratiempo', 2016, '1h 46m', 'Adrián Doria, a wealthy businessman named Man of the Year due to his high-tech company and his trade agreements with the Asian market, meets Virginia Goodman, a veteran lawyer expert in witness preparation and judicial declaration, recommended by Adrián\'s lawyer Felix Leiva in order to create a credible defense.', 'invisibleguest.mp4'),
(28, 'logan.jpg', 'Logan', 2017, '2h 17m', 'In 2029 the mutant population has shrunken significantly due to genetically modified plants designed to reduce mutant powers and the X-Men have disbanded. Logan, whose power to self-heal is dwindling, has surrendered himself to alcohol and now earns a living as a chauffeur. He takes care of the ailing old Professor X whom he keeps hidden away. One day, a female stranger asks Logan to drive a girl named Laura to the Canadian border.', 'logan.mp4'),
(29, 'it.jpg', 'IT', 2017, '2h 15m', 'In the Town of Derry, the local kids are disappearing one by one, leaving behind bloody remains. In a place known as \'The Barrens\', a group of seven kids are united by their horrifying and strange encounters with an evil clown and their determination to kill It.', 'it.mp4'),
(30, 'zootopia.jpg', 'Zootopia', 2016, '1h 48m', 'From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law. Determined to prove herself, Judy jumps at the opportunity to solve a mysterious case. Unfortunately, that means working with Nick Wilde, a wily fox who makes her job even harder. ', 'zootopia.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` int(10) UNSIGNED NOT NULL,
  `movies_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 2, 4),
(4, 2, 5),
(5, 2, 17),
(6, 3, 5),
(7, 3, 9),
(8, 3, 17),
(9, 3, 18),
(10, 4, 5),
(11, 5, 2),
(12, 5, 3),
(13, 5, 8),
(14, 5, 12),
(15, 5, 13),
(16, 5, 14),
(17, 5, 18),
(18, 6, 1),
(19, 6, 5),
(20, 6, 6),
(21, 6, 10),
(22, 6, 17),
(23, 7, 2),
(24, 7, 3),
(25, 7, 6),
(26, 8, 5),
(27, 8, 17),
(28, 9, 1),
(29, 9, 2),
(30, 9, 12),
(31, 9, 13),
(32, 9, 14),
(33, 10, 3),
(34, 10, 8),
(35, 10, 14),
(36, 11, 2),
(37, 11, 3),
(38, 11, 8),
(39, 11, 12),
(40, 11, 13),
(41, 11, 14),
(42, 12, 1),
(43, 12, 5),
(44, 12, 7),
(45, 12, 9),
(46, 13, 3),
(47, 13, 5),
(48, 13, 9),
(49, 13, 12),
(50, 13, 13),
(51, 14, 1),
(52, 14, 2),
(53, 14, 9),
(54, 14, 14),
(55, 15, 5),
(56, 16, 5),
(57, 16, 17),
(58, 17, 5),
(59, 17, 8),
(60, 17, 15),
(61, 18, 1),
(62, 18, 3),
(63, 18, 6),
(64, 18, 15),
(65, 19, 12),
(66, 19, 13),
(67, 19, 14),
(68, 20, 2),
(69, 20, 9),
(70, 20, 12),
(71, 20, 13),
(72, 21, 1),
(73, 21, 2),
(74, 21, 9),
(75, 22, 3),
(76, 22, 5),
(77, 23, 15),
(78, 24, 3),
(79, 25, 1),
(80, 25, 2),
(81, 25, 5),
(82, 25, 9),
(83, 26, 1),
(84, 26, 2),
(85, 26, 9),
(86, 26, 10),
(87, 26, 14),
(88, 27, 4),
(89, 27, 17),
(90, 27, 18),
(91, 28, 1),
(92, 28, 5),
(93, 28, 9),
(94, 28, 17),
(95, 29, 5),
(96, 29, 7),
(97, 29, 17),
(98, 30, 2),
(99, 30, 3),
(100, 30, 4),
(101, 30, 12),
(102, 30, 13),
(103, 30, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_mpaa`
--

CREATE TABLE `tbl_mov_mpaa` (
  `mov_mpaa_id` int(10) UNSIGNED NOT NULL,
  `movies_id` int(11) NOT NULL,
  `mpaa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_mpaa`
--

INSERT INTO `tbl_mov_mpaa` (`mov_mpaa_id`, `movies_id`, `mpaa_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 4),
(4, 4, 2),
(5, 5, 2),
(6, 6, 3),
(7, 7, 2),
(8, 8, 3),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 4),
(13, 13, 2),
(14, 14, 3),
(15, 15, 2),
(16, 16, 3),
(17, 17, 2),
(18, 18, 2),
(19, 19, 1),
(20, 20, 1),
(21, 21, 3),
(22, 22, 2),
(23, 23, 2),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3),
(27, 27, 3),
(28, 28, 4),
(29, 29, 4),
(30, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mpaa`
--

CREATE TABLE `tbl_mpaa` (
  `mpaa_id` int(10) UNSIGNED NOT NULL,
  `mpaa_name` varchar(20) NOT NULL,
  `mpaa_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mpaa`
--

INSERT INTO `tbl_mpaa` (`mpaa_id`, `mpaa_name`, `mpaa_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children.'),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give \"parental guidance\". May contain some material parents might not like for their young children.'),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them.'),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_mov_mpaa`
--
ALTER TABLE `tbl_mov_mpaa`
  ADD PRIMARY KEY (`mov_mpaa_id`);

--
-- Indexes for table `tbl_mpaa`
--
ALTER TABLE `tbl_mpaa`
  ADD PRIMARY KEY (`mpaa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tbl_mov_mpaa`
--
ALTER TABLE `tbl_mov_mpaa`
  MODIFY `mov_mpaa_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_mpaa`
--
ALTER TABLE `tbl_mpaa`
  MODIFY `mpaa_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

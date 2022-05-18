-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2022 a las 00:42:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrator`
--

CREATE TABLE `administrator` (
  `adminID` int(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrator`
--

INSERT INTO `administrator` (`adminID`, `firstname`, `surname`, `username`, `password`) VALUES
(1, 'Webflix', 'Edinburgh', 'WFE', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `abstract` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`name`, `description`, `abstract`) VALUES
('Action', 'One of the earliest film genres in existence, the action genre has close ties to classic strife and struggle narratives that you find across all manner of art and literature. With some of the earliest examples dating back to everything from historical war epics to some basic portrayals of dastardly train robberies, action films have been popular with cinema audiences since the very beginning. It’s also one of our best examples of the evolution of our cinematic hero’s journey and the classic hero vs. villain narratives, which you’ll find across cinema and genres.\n\nSome of the main sub-genres include:\n\nWar and Military Action\nSpy and Espionage Action\nMartial Arts Action\nWestern Shoot ‘Em Up Action\nAction Hybrid Genres', 'One of the earliest film genres in existence, the'),
('Comedy', 'A favorite genre of film audiences young and old, from the very beginning of cinema, the comedy genre has been a fun-loving, quite sophisticated, and innovative genre that’s delighted viewers for decades. Some of the biggest names in the history of filmmaking include comedy genre pioneers — like Buster Keaton, Charlie Chaplin, and Lucille Ball — who made successful careers out of finding new and unique ways to make audiences laugh. The comedy genre has also been one of the most flexible, as its roots have made their way into the very fabric of cinema and the many other genres contained within. The art of warming a heart and bringing a smile to a viewer’s face will never be lost, nor should it be considered anything but truly powerful.\n\nSome of the main sub-genres include:\n\nSlapstick Comedy\nScrewball Comedy\nParody Comedy\nBlack Comedy', 'A favorite genre of film audiences young and old,'),
('Horror', 'While perhaps considered one of the more recent film genres to come into existence, elements of horror have long been a bedrock of classic cinema, dating back to some of the earliest — and eeriest — days of filmmaking. Examples like 1898’s Shinin No Sosei (Resurrection of a Corpse) come to mind, as well as several early horror iterations across the globe that captured the imagination of an audience hungry for creepy, occult fun. Taking cues from classic horror literature, big name horror franchises (of sorts) like Dracula and Frankenstein have existed within cinema for decades. However, it’s in the rise of newer horror genres featuring zombies, slashers, found footage, and haunted dolls that horror has really found its hold, from the 1970s into modern times.\n\nSome of the main sub-genres include:\n\nZombie Horror\nFolk Horror\nBody Horror\nFound Footage Horror', 'While perhaps considered one of the more recent f'),
('Romance', 'Ah, what would the great cinema tradition be if it weren’t for the countless stories of love and courtship. Since the advent of the movie theater experience, cinema has long been a favored pastime for couples looking to escape into a world of romance.\n\nSimilar to the action and comedy genres, the romance genre has become a central force in pretty much every other film genre under the sun. (Try to think of the last mainstream blockbuster you went to that didn’t have a love story at its core.) Still, even as early cinema was filled with classic romance examples and many hybridizations like the “rom-com,” the genre has certainly shifted over the years. Nonetheless, it remains a hugely significant genre for filmmakers and film fans, alike.\n\nSome of the main sub-genres include:\n\nHistorical Romance\nRomantic Drama\nRomantic Comedy\nChick Flick\nParanormal Romance', 'Ah, what would the great cinema tradition be if i'),
('Sci-Fi', 'A Guide to the Basic Film Genres (and How to Use Them)\nA Guide to the Basic Film Genres (and How to Use Them)\nJourdan Aldredge	\nBY JOURDAN ALDREDGE\nJUNE 10, 2020\nFilmmakingInspiration\nLet’s look at genre theory, what it entails, and how to start utilizing genres with a bit more practicality and creativity in your own projects.\nOne of the few rare things that one can actually learn in film school is the simple trick of taking a step back to view something you already know — through a new, academic lens. As filmmakers and film fans, we already know about film genres. It wasn’t until one of the first film theory classes I took that I actually learned how to view, deconstruct, and understand something as seemingly innate as genre.\n\nUnderstanding “genre theory” is both very simple and very complex. In general, we all know the basics. The Hobbit is a fantasy book. Star Trek is a sci-fi television show. When Harry Met Sally is a rom-com. So, what do all those genre names actually mean? And, what exactly are the writers, filmmakers, and storytellers really doing to work within and against these modes?\n\nHere’s a brief introduction into how filmmakers can understand and use “genre theory.”\n\nWhat Are Film Genres?\nA Guide to the Basic Film Genres (and How to Use Them) — Forbidden Planet Poster\nA hybrid genre, Forbidden Planet is considered a drama/fantasy. Image via MGM.\nTaking the word at its definition, genre is the “term for any category of literature or other forms of art or entertainment, e.g. music, whether written or spoken, audio or visual, based on some set of stylistic criteria.”\n\nThe term dates back to ancient Greek literature. But, for writers, artists, and filmmakers, it’s usually the simplest, most practical way to categorize different styles of stories and content. We see genres while browsing through video stores or scrolling through Netflix, giving us a rough idea of what the stories are like or similar to.\n\nIt’s important to understand, though, that what we consider film genres today are, more often than not, hardly pure film genres, as they were in the early days of film. The majority of content produced in the last several decades are often genre hybrids, using the rules of genre theory to produce new, unique, and different stories.\n\nThe Basic Film Genres\nA Guide to the Basic Film Genres (and How to Use Them) — Clark Gable and Vivien Leigh in Gone with the Wind\nGone with the Wind – considered a drama/romance – is a perfect example of a hybrid genre. Image via MGM.\nIn the early days of cinema, genres were much more uniform and defined. Just as they were in literature and other forms of art and entertainment, people would go to the theater to watch a war film, a musical, or a comedy. The basic genres were well defined and included some of the following:\n\nAction\nComedy\nDrama\nFantasy\nHorror\nMystery\nRomance\nThriller\nWestern\nFrom there, you could dive a bit deeper. Sub-genres were developed to give names and expectations to certain types of films within each genre. The “thriller” genre, for example, had the following sub-genres:\n\nCrime Thriller\nDisaster Thriller\nPsychological Thriller\nTechno Thriller\nHowever, before we get too much into how to use film genres and begin mixing and matching them, let’s go over some of the biggest and most notable.\n\nThe Action Film Genre\nA Guide to the Basic Film Genres (and How to Use Them) — Keanu Reeves in John Wick\nThe action genre has been a staple in epic filmmaking from the beginning of cinema. Image via Lionsgate.\nOne of the earliest film genres in existence, the action genre has close ties to classic strife and struggle narratives that you find across all manner of art and literature. With some of the earliest examples dating back to everything from historical war epics to some basic portrayals of dastardly train robberies, action films have been popular with cinema audiences since the very beginning. It’s also one of our best examples of the evolution of our cinematic hero’s journey and the classic hero vs. villain narratives, which you’ll find across cinema and genres.\n\nSome of the main sub-genres include:\n\nWar and Military Action\nSpy and Espionage Action\nMartial Arts Action\nWestern Shoot ‘Em Up Action\nAction Hybrid Genres\nYou can read a good deal more about the evolution of the action genre, its many sub-genres and examples, and some tips for creating modern action films today in our full action genre breakdown.\n\nThe Comedy Film Genre\nA Guide to the Basic Film Genres (and How to Use Them) — The Three Stooges\nHistorically, the comedy genre has been a favorite attraction for audiences of all ages. Image via American Movie Classics.\nA favorite genre of film audiences young and old, from the very beginning of cinema, the comedy genre has been a fun-loving, quite sophisticated, and innovative genre that’s delighted viewers for decades. Some of the biggest names in the history of filmmaking include comedy genre pioneers — like Buster Keaton, Charlie Chaplin, and Lucille Ball — who made successful careers out of finding new and unique ways to make audiences laugh. The comedy genre has also been one of the most flexible, as its roots have made their way into the very fabric of cinema and the many other genres contained within. The art of warming a heart and bringing a smile to a viewer’s face will never be lost, nor should it be considered anything but truly powerful.\n\nSome of the main sub-genres include:\n\nSlapstick Comedy\nScrewball Comedy\nParody Comedy\nBlack Comedy\nYou can check out a more in-depth dive into the comedy film genre, including its vast history and many famous examples, in our full comedy genre breakdown.\n\nThe Horror Film Genre\nA Guide to the Basic Film Genres (and How to Use Them) — Halloween\nThe horror genre dates back to the early days of cinema, and continues to be a treasured pastime. Image via Warner Bros.\nWhile perhaps considered one of the more recent film genres to come into existence, elements of horror have long been a bedrock of classic cinema, dating back to some of the earliest — and eeriest — days of filmmaking. Examples like 1898’s Shinin No Sosei (Resurrection of a Corpse) come to mind, as well as several early horror iterations across the globe that captured the imagination of an audience hungry for creepy, occult fun. Taking cues from classic horror literature, big name horror franchises (of sorts) like Dracula and Frankenstein have existed within cinema for decades. However, it’s in the rise of newer horror genres featuring zombies, slashers, found footage, and haunted dolls that horror has really found its hold, from the 1970s into modern times.\n\nSome of the main sub-genres include:\n\nZombie Horror\nFolk Horror\nBody Horror\nFound Footage Horror\nIf you’d like to explore a great deal more about the origins and modern portrayals of the horror film genre, check out our full horror genre breakdown.\n\nThe Sci-Fi Film Genre\nA Guide to the Basic Film Genres (and How to Use Them) — A Trip to the Moon\nMan’s place in the universe has always been a point of interest, often investigated through the sci-fi genre. Image via Star Film Company.\nOne of the most experimental and thought-provoking of the classic genres, the science-fiction (popularized as “sci-fi”) film genre goes all the way back to the silent film era. Some of the earliest films ever created focused on man’s fascination with outer space and the scientific unknown,  like the Georges Méliès film A Trip to the Moon (1902). The sci-fi genre has stayed strong throughout cinematic history, as film has remained one of the most popular mediums for showcasing mankind’s technical advancements, as well as a means to wrestle with higher concepts like alien life forms, artificial intelligence, and humanity’s place in the universe.\n\nSome of the main sub-genres include:\n\nSpace Travel\nTime Travel\nCerebral Science\nRobot and Monster Films\nDisaster and Alien Invasion', 'A Guide to the Basic Film Genres (and How to Use '),
('Thriller', 'Once a stylized niche genre, the thriller film has gone so mainstream that it might be time to change the genre’s name to Summer Blockbuster Event. The thriller’s rise coincides with the rise of the spy and detective pulp novels of the 1960s and 1970s. It’s been one of the best cinematic vehicles for exploring the sometimes upsetting and underrepresented truths about our governments and society at large. Owing some of its biggest successes to famous filmmakers like Alfred Hitchcock, and including some of our favorite characters like James Bond, the thriller has become a popular and important part of the cinema tradition.\n\nSome of the main sub-genres include:\n\nConspiracy Thriller\nCrime Thriller\nLegal Thriller\nSpy Thriller\nSupernatural Thriller', 'Once a stylized niche genre, the thriller film ha'),
('Western', 'The western could technically be considered a sub-genre of the action film genre, in large part due to its huge popularity and its own exploits. Really, the various sub-genres within the western have essentially become classic film genres themselves.\n\nIn many ways, the western genre is very much the narrative of classic Hollywood, which pulled itself up by its own bootstraps to turn a recently settled California town into a pioneer of the modern movie industry. Westerns stampeded towards box office success throughout the early days of cinema, and well into the late 1960s and 1970s, before eventually transforming into some of our favorite modern blockbuster franchises.\n\nSome of the main sub-genres include:\n\nClassic Western\nThe Revisionist and Anti-Western\nContemporary and Neo-Western\nFantasy and Space Western\nModern Western', 'The western could technically be considered a sub');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie`
--

CREATE TABLE `movie` (
  `movieId` int(6) NOT NULL,
  `title` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `cover` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sinopsis` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `released` date NOT NULL,
  `language` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `mov_duration` int(4) DEFAULT NULL,
  `mov_link` varchar(300) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `movie`
--

INSERT INTO `movie` (`movieId`, `title`, `category`, `cover`, `sinopsis`, `released`, `language`, `mov_duration`, `mov_link`, `added`) VALUES
(2, 'Spider-Man: No Way Home', 'Action', 'images/movies/Spiderman_No_way_home.jpg', 'Peter Parker\'s secret identity is revealed to the entire world. Desperate for help, Peter turns to Doctor Strange to make the world forget that he is Spider-Man. The spell goes horribly wrong and shatters the multiverse, bringing in monstrous villains that could destroy the world.', '2021-12-15', 'English', 148, 'https://www.youtube.com/embed/rt-2cxAiPJk', '2022-05-01 20:00:39'),
(3, 'Vacation Friends', 'Comedy', 'images/movies/Vacation_Friends.jpg', 'In this raw and raunchy comedy, straight-laced Marcus and Emily (Lil Rel Howery, Yvonne Orji) are befriended by wild, thrill-seeking partiers Ron and Kyla (John Cena, Meredith Hagner) at a resort in Mexico. Living in the moment, the usually level-headed couple lets loose to enjoy a week of uninhibited fun and debauchery with their new \"vacation friends.\" Months after their walk on the wild side, Marcus and Emily are horrified when Ron and Kyla show up uninvited at their wedding, creating chaos and proving that what happens on vacation, doesn\'t necessarily stay on vacation.', '2021-08-27', 'English', 103, 'https://www.youtube.com/embed/rUqwLtFUx7w', '2022-05-01 20:34:53'),
(4, 'Lamb', 'Horror', 'images/movies/Lamb.jpg', 'Haunted by the indelible mark of loss and silent grief, sad-eyed María and her taciturn husband, Ingvar, seek solace in back-breaking work and the demanding schedule at their sheep farm in the remote, harsh, wind-swept landscapes of mountainous Iceland. Then, with their relationship hanging on by a thread, something unexplainable happens, and just like that, happiness blesses the couple\'s grim household once more. Now, as a painful ending gives birth to a new beginning, Ingvar\'s troubled brother, Pétur, arrives at the farmhouse, threatening María and Ingvar\'s delicate, newfound bliss. But, nature\'s gifts demand sacrifice. How far are ecstatic María and Ingvar willing to go in the name of love?', '2022-05-26', 'Icelandic', 106, 'https://www.youtube.com/embed/hnEwJKVWjFM', '2022-05-01 20:47:53'),
(5, 'The Lost City', 'Romance', 'images/movies/The_Lost_City.jpg', 'A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.', '2022-04-15', 'Englsih', 112, 'https://www.youtube.com/embed/nfKO9rYDmE8', '2022-05-01 20:53:08'),
(6, 'Dune', 'Sci-Fi', 'images/movies/Dune.jpg', 'A mythic and emotionally charged hero\'s journey, \"Dune\" tells the story of Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, who must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet\'s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity\'s greatest potential-only those who can conquer their fear will survive.', '2022-10-21', 'English', 155, 'https://www.youtube.com/embed/8g18jFHCLXk', '2022-05-01 20:57:27'),
(7, 'The Northman', 'Thriller', 'images/movies/The_Northman.jpg', 'From visionary director Robert Eggers comes The Northman, an action-filled epic that follows a young Viking prince on his quest to avenge his father\'s murder.', '2022-04-15', 'English', 137, 'https://www.youtube.com/embed/oMSdFM12hOw', '2022-05-01 21:01:03'),
(8, 'Dances with Wolves', 'Western', 'images/movies/Dance_with_Wolves.jpg', 'Lt. John Dunbar is dubbed a hero after he accidentally leads Union troops to a victory during the Civil War. He requests a position on the western frontier, but finds it deserted. He soon finds out he is not alone, but meets a wolf he dubs \"Two-socks\" and a curious Indian tribe. Dunbar quickly makes friends with the tribe, and discovers a white woman who was raised by the Indians. He gradually earns the respect of these native people, and sheds his white-man\'s ways.', '1991-02-08', 'English', 181, 'https://www.youtube.com/embed/uc8NMbrW7mI', '2022-05-01 21:04:29'),
(10, 'Sonic the Hedgehog 2 ', 'Action', 'images/movies/Sonic_the_Hedgehog_2.jpg', 'After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.', '2022-04-01', 'Englisg', 122, 'https://www.youtube.com/embed/47r8FXYZWNU', '2022-05-10 22:57:33'),
(11, 'Doctor Strange in the Multiverse of Madness', 'Action', 'images/movies/Doctor_Strange_in_the_Multiverse_of_Madness.jpg', 'Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.', '2022-05-05', 'English', 126, 'https://www.youtube.com/embed/aWzlQ2N6qqg', '2022-05-10 23:02:15'),
(12, 'The Batman', 'Action', 'images/movies/The_Batman.jpg', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', '2022-03-03', 'English', 176, 'https://www.youtube.com/embed/mqqft2x_Aa4', '2022-05-10 23:04:54'),
(13, 'Uncharted', 'Action', 'images/movies/Uncharted.jpg', 'A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.', '2022-02-11', 'English', 116, 'https://www.youtube.com/embed/eHp3MbsCbMg', '2022-05-10 23:07:08'),
(14, 'The Bud Guys', 'Action', 'images/movies/The_Bud_Guys.jpg', 'When the infamous Bad Guys are finally caught after years of countless heists and being the world’s most-wanted villains, Mr. Wolf brokers a deal to save them all from prison.', '2022-04-01', 'English', 100, 'https://www.youtube.com/embed/m8Xt0yXaDPU', '2022-05-10 23:09:33'),
(15, 'Turning Red ', 'Comedy', 'images/movies/Turning_Red.jpg', 'Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.', '2021-11-25', 'English', 100, 'https://www.youtube.com/embed/XdKzUbAiswE', '2022-05-10 23:23:43'),
(16, 'Encanto', 'Comedy', 'images/movies/Encanto.jpg', 'The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family\'s last hope.', '2021-11-24', 'English', 102, 'https://www.youtube.com/embed/CaimKeDcudo', '2022-05-10 23:29:16'),
(17, '¡Qué despadre!', 'Comedy', 'images/movies/¡Qué_despadre!.jpg', 'Pedro is a single man in his forties who likes to party, has no children and lives at night. Everything changes when he meets Alin. She mentions to him that she is looking for her dad and that there is a high probability that it is him.', '2022-02-09', 'Spanish', 99, 'https://www.youtube.com/embed/J-3xD2ok2FQ', '2022-05-10 23:34:19'),
(18, 'Pil\'s Adventures', 'Comedy', 'images/movies/Pil\'s_Adventures.jpg', 'Pil, a little vagabond girl, lives on the streets of the medieval city of Roc-en-Brume, along with her three tame weasels. She survives of food stolen from the castle of the sinister Regent Tristain. One day, to escape his guards, Pil disguises herself as a princess. Thus she embarks upon a mad, delirious adventure, together with Crobar, a big clumsy guard who thinks she\'s a noble, and Rigolin, a young crackpot jester. Pil is going to have to save Roland, rightful heir to the throne under the curse of a spell. This adventure will turn the entire kingdom upside down, and teach Pil that nobility can be found in all of us.', '2021-08-11', 'French', 89, 'https://www.youtube.com/embed/4A0muKc83Nc', '2022-05-10 23:36:26'),
(19, 'The Adam Project', 'Comedy', 'images/movies/The_Adam_Project.jpg', 'After accidentally crash-landing in 2022, time-traveling fighter pilot Adam Reed teams up with his 12-year-old self on a mission to save the future.', '2022-03-11', 'English', 105, 'https://www.youtube.com/embed/IE8HIsIrq4o', '2022-05-10 23:38:57'),
(20, 'Virus:32', 'Horror', 'images/movies/virus_32.jpg', 'A virus is unleashed and a chilling massacre runs through the streets of Montevideo.', '2022-04-21', 'Spanish', 90, 'https://www.youtube.com/embed/qqGQzBGZ0FY', '2022-05-17 20:22:05'),
(21, 'The Exorcism of God', 'Horror', 'images/movies/The_Exorcism_of_God.jpg', 'An American priest working in Mexico is considered a saint by many local parishioners. However, due to a botched exorcism, he carries a secret that’s eating him alive until he gets an opportunity to face his demon one final time.', '2022-02-10', 'English', 98, 'https://www.youtube.com/embed/VdLI8I4jZD0', '2022-05-17 20:25:51'),
(22, 'The Grandmother', 'Horror', 'images/movies/The_Grandmother.jpg', 'A Paris model must return to Madrid where her grandmother, who raised her, has had a stroke. But spending just a few days with this relative turns into an unexpected nightmare.', '2022-01-28', 'Spanish', 100, 'https://www.youtube.com/embed/xCmqef8KjvU', '2022-05-17 20:27:59'),
(23, 'The Jack in the Box: Awakening ', 'Horror', 'images/movies/The_Jack_in_the_Box_Awakening.jpg', 'When a vintage Jack-in-the-box is opened by a dying woman, she enters into a deal with the demon within that would see her illness cured in return for helping it claim six innocent victims.', '2022-02-24', 'English', 89, 'https://www.youtube.com/embed/7InYvYQq8DU', '2022-05-17 20:30:12'),
(24, 'No Exit', 'Horror', 'images/movies/No_Exit.jpg', 'Stranded at a rest stop in the mountains during a blizzard, a recovering addict discovers a kidnapped child hidden in a car belonging to one of the people inside the building which sets her on a terrifying struggle to identify who among them is the kidnapper.', '2022-02-25', 'English', 96, 'https://www.youtube.com/embed/GFvupyiNEz0', '2022-05-17 20:32:10'),
(25, '365 Days: This Day', 'Romance', 'images/movies/365_Days_This_Day.jpg', 'Laura and Massimo are back and hotter than ever. But the reunited couple\'s new beginning is complicated by Massimo’s family ties and a mysterious man who enters Laura’s life to win her heart and trust, at any cost.', '2022-04-27', 'English', 111, 'https://www.youtube.com/embed/pyM3z73oMAk', '2022-05-17 20:36:35'),
(26, 'Along for the Ride', 'Romance', 'images/movies/Along_for_the_Ride.jpg', 'The summer before college Auden meets the mysterious Eli, a fellow insomniac. While the seaside town of Colby sleeps, the two embark on a nightly quest to help Auden experience the fun, carefree teen life she never knew she wanted.', '2022-05-06', 'English', 106, 'https://www.youtube.com/embed/A1PTIxYrTVw', '2022-05-17 20:38:19'),
(27, '¿Nos casamos? Sí, mi amor', 'Romance', 'images/movies/Nos_casamos_Sí_mi_amor.jpg', 'Guille decides it\'s time to take the next step and proposes to his girlfriend Bea, but things get complicated and nothing goes as planned.', '2022-02-03', 'Spanish', 106, 'https://www.youtube.com/embed/fLTzdSDcw', '2022-05-17 20:41:37'),
(28, 'Crush', 'Romance', 'images/movies/Crush.jpg', 'When an aspiring young artist is forced to join her high school track team, she uses it as an opportunity to pursue the girl she\'s been harboring a long-time crush on. But she soon finds herself falling for an unexpected teammate and discovers what real love feels like.', '2022-04-29', 'English', 92, 'https://www.youtube.com/embed/NHxwLymYHWA', '2022-05-17 20:45:58'),
(29, 'Redeeming Love', 'Romance', 'images/movies/Redeeming Love.jpg', 'A retelling of the biblical book of Hosea set against the backdrop of the California Gold Rush of 1850.', '2022-01-21', 'English', 134, 'https://www.youtube.com/embed/6Z-0C02cqFo', '2022-05-17 20:48:09'),
(30, 'Moonfall', 'Sci-Fi', 'images/movies/Moonfall.jpg', 'A mysterious force knocks the moon from its orbit around Earth and sends it hurtling on a collision course with life as we know it.', '2022-02-03', 'English', 130, 'https://www.youtube.com/embed/ivIwdQBlS10', '2022-05-17 20:51:06'),
(31, 'Morbius ', 'Sci-Fi', 'images/movies/Morbius.jpg', 'Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Michael Morbius attempts a desperate gamble. What at first appears to be a radical success soon reveals itself to be a remedy potentially worse than the disease.', '2022-03-31', 'English', 104, 'https://www.youtube.com/embed/SQK-QxxtE8Y', '2022-05-17 20:52:44'),
(32, 'Venom: Let There Be Carnage', 'Sci-Fi', 'images/movies/Venom_Let There Be Carnage.jpg', 'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.', '2021-10-15', 'English', 97, 'https://www.youtube.com/embed/GVwq2HlKYpE', '2022-05-17 20:54:33'),
(33, 'War of the Worlds: Annihilation', 'Sci-Fi', 'images/movies/War of the Worlds_Annihilation.jpg', 'A mother and son find themselves faced with a brutal alien invasion where survival will depend on discovering the unthinkable truth about the enemy.', '2021-12-22', 'English', 113, 'https://www.youtube.com/embed/Y19fvBcTOnw', '2022-05-17 20:56:45'),
(34, 'Eternals ', 'Sci-Fi', 'images/movies/Eternals.jpg', 'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.', '2021-11-05', 'English', 156, 'https://www.youtube.com/embed/x_me3xsvDgk', '2022-05-17 20:58:22'),
(35, 'The Contractor', 'Thriller', 'images/movies/The Contractor.jpg', 'After being involuntarily discharged from the U.S. Special Forces, James Harper decides to support his family by joining a private contracting organization alongside his best friend and under the command of a fellow veteran. Overseas on a covert mission, Harper must evade those trying to kill him while making his way back home.', '2022-04-01', 'English', 103, 'https://www.youtube.com/embed/e7glvM8Xh0w', '2022-05-17 21:01:12'),
(36, 'Ambulance', 'Thriller', 'images/movies/Ambulance.jpg', 'Decorated veteran Will Sharp, desperate for money to cover his wife\'s medical bills, asks for help from his adoptive brother Danny. A charismatic career criminal, Danny instead offers him a score: the biggest bank heist in Los Angeles history: $32 million.', '2022-03-25', 'English', 136, 'https://www.youtube.com/embed/tFWOyZNHjX8', '2022-05-17 21:02:33'),
(37, 'The Outfit ', 'Thriller', 'images/movies/The Outfit.jpg', 'Leonard is an English tailor who used to craft suits on London’s world-famous Savile Row. After a personal tragedy, he’s ended up in Chicago, operating a small tailor shop in a rough part of town where he makes beautiful clothes for the only people around who can afford them: a family of vicious gangsters.', '2022-04-08', 'English', 105, 'https://www.youtube.com/embed/3UgJL23HxyU', '2022-05-17 21:03:52'),
(38, 'All the Old Knives', 'Thriller', 'images/movies/All the Old Knives.jpg', 'When the CIA discovers one of its agents leaked information that cost more than 100 people their lives, veteran operative Henry Pelham is assigned to root out the mole with his former lover and colleague Celia Harrison.', '2022-04-08', 'English', 102, 'https://www.youtube.com/embed/6s7NziAetNs', '2022-05-17 21:05:14'),
(39, 'Blacklight', 'Thriller', 'images/movies/Blacklight.jpg', 'Travis Block is a shadowy Government agent who specializes in removing operatives whose covers have been exposed. He then has to uncover a deadly conspiracy within his own ranks that reaches the highest echelons of power.', '2022-02-10', 'English', 104, 'https://www.youtube.com/embed/d4K9Rzy2_DA', '2022-05-17 21:06:24'),
(40, 'O Assalto ao café Ponte Nova', 'Western', 'images/movies/O Assalto ao café Ponte Nova.jpg', 'In 2005, through a tunnel, thieves break into the vault of the Central Bank of Brazil located in Fortaleza, Ceará, and steal more than 160 million reais. With never-before-seen testimonials, this docuseries examines the historic heist and reveals the tragic consequences of a once-perfect million-dollar coup.', '2021-06-03', 'Portuguese', 104, 'https://www.youtube.com/embed/x0bLgnTINpY', '2022-05-17 21:11:50'),
(41, 'Gexis', 'Western', 'images/movies/Gexis.jpg', 'A chameleon who lives like a scoundrel finds himself in an identity crisis. Gexis wonders how to stand out when it\'s in his nature to camouflage. Accidentally, he ends up in a frontier town called Youtube and takes the first step towards transformation by becoming a youtuber. Although initially he only acted, a series of exciting situations and scandalous encounters compel Gexis to become a true hero.', '2021-12-02', 'Portuguese', 98, 'https://www.youtube.com/embed/eN0pK3VXjag', '2022-05-17 21:14:59'),
(42, 'Homestead', 'Western', 'images/movies/Homestead.jpg', 'Set in 1870s Oregon, an obsessive carpenter relocates his pregnant wife and young daughter to an isolated land with the promise of a better life, but instead is plagued by grief and paranoia.', '2020-07-24', 'English', 15, 'https://www.youtube.com/embed/1gwCn2tIqvs', '2022-05-17 21:18:11'),
(43, 'The Summer Field', 'Western', 'images/movies/The Summer Field.jpg', 'After being drafted to a pro track team, a midwestern young teen needs to decide between his future career and his dementia-ridden grandfather.', '2021-11-09', 'English', 6, 'https://www.youtube.com/embed/VBjomNtB70s', '2022-05-17 21:19:37'),
(44, 'Tales from Vinewood', 'Western', 'images/movies/Tales from Vinewood.jpg', 'Four stories for the price of one! Two detectives struggling with their own masculinity learn to work with each other, a French focus puller learns the true nature of his abusive director, a British influencer travels to Texas and has to fight for his life to get out, and a young man falls in love with a stranger who has yet to learn his dark secret.\n\n', '2021-07-18', 'English', 109, 'https://www.youtube.com/embed/Bfzpd5Z1gj8', '2022-05-17 21:22:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tvshow`
--

CREATE TABLE `tvshow` (
  `tvId` int(6) NOT NULL,
  `title` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `cover` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sinopsis` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `released` date NOT NULL,
  `language` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tv_seasons` int(4) NOT NULL,
  `tv_link` varchar(300) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tvshow`
--

INSERT INTO `tvshow` (`tvId`, `title`, `category`, `cover`, `sinopsis`, `released`, `language`, `tv_seasons`, `tv_link`, `added`) VALUES
(1, 'Moon Knight', 'Action', 'images/tvshows/Moon_Knight.jpg', 'The series follows Steven Grant, a mild- mannered gift-shop employee, who becomes plagued with blackouts and memories of another life. Steven discovers he has dissociative identity disorder and shares a body with mercenary Marc Spector. As Steven/Marc\'s enemies converge upon them, they must navigate their complex identities while thrust into a deadly mystery among the powerful gods of Egypt.', '2022-03-30', 'English', 1, 'https://www.youtube.com/embed/x7Krla_UxRg', '2022-05-01 22:04:44'),
(2, 'Russian Doll', 'Comedy', 'images/tvshows/Russian_Doll.jpg', 'On Nadia\'s 36th birthday she is struck by a car and killed while leaving her party. In an instant she is alive again and transported back to her birthday party earlier that night. Moments later she dies again and finds herself, once again, back at her party, Nadia begins to question her sanity as she strives to unravel the mystery of her situation.', '2019-02-01', 'English', 2, 'https://www.youtube.com/embed/QvEyUOoLehI', '2022-05-01 22:10:42'),
(3, 'Stranger Things', 'Horror', 'images/tvshows/Stranger Things.jpg', 'In a small town where everyone knows everyone, a peculiar incident starts a chain of events that leads to a child\'s disappearance, which begins to tear at the fabric of an otherwise-peaceful community. Dark government agencies and seemingly malevolent supernatural forces converge on the town, while a few of the locals begin to understand that more is going on than meets the eye.', '2016-07-15', 'English', 4, 'https://www.youtube.com/embed/yQEondeGvKo', '2022-05-01 22:14:05'),
(4, 'Bridgerton', 'Romance', 'images/tvshows/Bridgerton.jpg', 'From Shondaland and Creator Chris Van Dusen, the first season of Bridgerton follows Daphne Bridgerton (Pheobe Dynevor), the eldest daughter of the powerful Bridgerton family as she makes her debut onto Regency London\'s competitive marriage market. Hoping to follow in her parent\'s footsteps and find a match sparked by true love, Daphne\'s prospects initially seem to be unrivaled. But as her older brother (Jonathan Bailey) begins to rule out her potential suitors, the high society scandal sheet written by the mysterious Lady Whistledown (Julie Andrews) casts aspersions on Daphne. Enter the highly desirable and rebellious Duke of Hastings (Regé-Jean Page), committed bachelor and the catch of the season for the debutantes\' mamas. Despite proclaiming that they want nothing the other has to offer, their attraction is undeniable and sparks fly as they find themselves engaged in an increasing battle of wits while navigating society\'s expectations for their future.', '2020-12-25', 'English', 2, 'https://www.youtube.com/embed/gpv7ayf_tyE', '2022-05-01 22:19:04'),
(5, 'Arcane', 'Sci-Fi', 'images/tvshows/Arcane.jpg', 'The delicate balance between the rich city of Piltover and the seedy underbelly of Zaun. Tensions between these city-states boil over with the creation of hextech a way for any person to control magical energy in Piltover, and in Zaun, a new drug called shimmer transforms humans into monsters. The rivalry between the cities splits families and friends as Arcane brings life to the relationships that shape some of League of Legends\' famous champions including Vi, Jinx, Caitlyn, Jayce and Viktor.', '2021-11-07', 'English', 1, 'https://www.youtube.com/embed/fXmAurh012s', '2022-05-01 22:22:21'),
(6, 'Anatomy of a Scandal', 'Thriller', 'images/tvshows/Anatomy_Scandal.jpg', 'Infiltrates Britain\'s elite through personal and political scandal, where the truth lies between justice and privilege. James and Sophie Whitehouse live in a blissful and rarified world. A Minister in Parliament, a loving family at home, James\' trajectory appears without limits. Until a scandalous secret suddenly comes to light. Barrister Kate Woodcroft has a trajectory of her own, and her prosecution threatens to tear into Westminster, the Whitehouse marriage, and her own personal esteem.', '2022-04-15', 'English', 1, 'https://www.youtube.com/embed/M1UGGZnHyf8', '2022-05-01 22:24:51'),
(7, 'Yellowstone', 'Western', 'images/tvshows/Yellowstone.jpg', 'Yellowstone follows the Dutton family, led by John Dutton, who controls the largest contiguous ranch in the United States, under constant attack by those it borders - land developers, an Indian reservation, and America\'s first National Park. It is an intense study of a violent world far from media scrutiny - where land grabs make developers billions, and politicians are bought and sold by the world\'s largest oil and lumber corporations. Where drinking water poisoned by fracking wells and unsolved murders are not news: they are a consequence of living in the new frontier. It is the best and worst of America seen through the eyes of a family that represents both.', '2020-01-20', 'English', 4, 'https://www.youtube.com/embed/opYyuupyWmA', '2022-05-01 22:27:26'),
(8, 'Halo', 'Action', 'images/tvshows/Halo.jpg', 'Depicting an epic 26th-century conflict between humanity and an alien threat known as the Covenant, the series weaves deeply drawn personal stories with action, adventure and a richly imagined vision of the future.', '2022-03-24', 'English', 1, 'https://www.youtube.com/embed/b4doITNi2RE', '2022-05-17 21:31:13'),
(9, 'SPY x FAMILY', 'Action', 'images/tvshows/SPY x FAMILY.jpg', 'Master spy Twilight is the best at what he does when it comes to going undercover on dangerous missions in the name of a better world. But when he receives the ultimate impossible assignment—get married and have a kid—he may finally be in over his head!\n\nNot one to depend on others, Twilight has his work cut out for him procuring both a wife and a child for his mission to infiltrate an elite private school. What he doesn\'t know is that the wife he\'s chosen is an assassin and the child he\'s adopted is a telepath!', '2022-04-09', 'Japanese', 1, 'https://www.youtube.com/embed/ofXigq9aIpo', '2022-05-17 21:32:38'),
(10, 'The Walking Dead', 'Action', 'images/tvshows/The Walking Dead.jpg', 'Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.', '2010-10-31', 'English', 11, 'https://www.youtube.com/embed/BXqUmob-nfg', '2022-05-17 21:34:30'),
(11, 'All of Us Are Dead', 'Action', 'images/tvshows/All of Us Are Dead.jpg', 'A high school becomes ground zero for a zombie virus outbreak. Trapped students must fight their way out — or turn into one of the rabid infected.', '2022-01-28', 'Korean', 1, 'https://www.youtube.com/embed/y3VzeVtMZyE', '2022-05-17 21:35:56'),
(12, 'Super Dragon Ball Heroes ', 'Action', 'images/tvshows/Super Dragon Ball Heroes.jpg', 'runks returns from the future to train with Goku and Vegeta. However, it disappears without warning. Then the mysterious Fu bursts in, telling them that Trunks has been imprisoned in the Prison Planet, a mysterious complex in an unknown place in the universes. The group seeks the dragon balls to free Trunks, but an endless battle awaits them! Will Goku and the others rescue Trunks and escape the Prison Planet?', '2018-07-01', 'Japanese', 5, 'https://www.youtube.com/embed/qrOlw3Y0Ous', '2022-05-17 21:37:51'),
(13, 'The Simpsons', 'Comedy', 'images/tvshows/The Simpsons.jpg', 'Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.', '1989-04-19', 'English', 33, 'https://www.youtube.com/embed/aPzS3QYb868', '2022-05-17 21:48:46'),
(14, 'The Baby', 'Comedy', 'images/tvshows/The Baby.jpg', 'When 38 year-old Natasha is unexpectedly landed with a baby, her life of doing what she wants, when she wants, dramatically implodes. Controlling, manipulative and with violent powers, the baby twists Natasha\'s life into a horror show. Where does it come from? What does it want? And what lengths will Natasha have to go to in order to get her life back?', '2022-04-24', 'English', 1, 'https://www.youtube.com/embed/480CO5F_TXE', '2022-05-17 21:50:11'),
(15, 'Regular Show', 'Comedy', 'images/tvshows/Regular Show.jpg', 'Two bored groundskeepers, Mordecai (a six-foot-tall blue jay) and Rigby (a hyperactive raccoon) are best friends who spend their days trying to entertain themselves by any means necessary, much to the displeasure of their boss. Their everyday pursuits often lead to things spiraling out of control and into the surreal.', '2010-09-06', 'English', 8, 'https://www.youtube.com/embed/Mm-Zc1_I1_8', '2022-05-17 21:52:16'),
(16, 'Shameless', 'Comedy', 'images/tvshows/Shameless.jpg', 'Chicagoan Frank Gallagher is the proud single dad of six smart, industrious, independent kids, who without him would be... perhaps better off. When Frank\'s not at the bar spending what little money they have, he\'s passed out on the floor. But the kids have found ways to grow up in spite of him. They may not be like any family you know, but they make no apologies for being exactly who they are.', '2011-01-09', 'English', 11, 'https://www.youtube.com/embed/4GE7fFDNGMA', '2022-05-17 21:53:51'),
(17, 'Sex Education', 'Comedy', 'images/tvshows/Sex Education.jpg', 'Inexperienced Otis channels his sex therapist mom when he teams up with rebellious Maeve to set up an underground sex therapy clinic at school.', '2019-01-11', 'English', 3, 'https://www.youtube.com/embed/zmgYlYw7Uwk', '2022-05-17 21:55:18'),
(18, 'The Marked Heart', 'Horror', 'images/tvshows/The Marked Heart.jpg', 'This new Colombian telenovela is about a man who has to watch his wife die and have her heart extracted to give to another woman. He’s out for revenge in the world of organ trafficking.', '2022-04-20', 'Spanish', 1, 'https://www.youtube.com/embed/YITf1X6hNls', '2022-05-17 22:00:03'),
(19, 'WandaVision', 'Horror', 'images/tvshows/WandaVision.jpg', 'Wanda Maximoff and Vision—two super-powered beings living idealized suburban lives—begin to suspect that everything is not as it seems.', '2021-01-15', 'English', 1, 'https://www.youtube.com/embed/sj9J2ecsSpo', '2022-05-17 22:01:23'),
(20, 'Riverdale', 'Horror', 'images/tvshows/Riverdale.jpg', 'Set in the present, the series offers a bold, subversive take on Archie, Betty, Veronica and their friends, exploring the surreality of small-town life, the darkness and weirdness bubbling beneath Riverdale’s wholesome facade.', '2017-01-26', 'English', 6, 'https://www.youtube.com/embed/HxtLlByaYTc', '2022-05-17 22:02:53'),
(21, 'Elite', 'Horror', 'images/tvshows/Elite.jpg', 'When three working class kids enroll in the most exclusive school in Spain, the clash between the wealthy and the poor students leads to tragedy.', '2018-10-05', 'Spanish', 5, 'https://www.youtube.com/embed/QNwhAdrdwp0', '2022-05-17 22:04:23'),
(22, 'Supernatural', 'Horror', 'images/tvshows/Supernatural.jpg', 'When they were boys, Sam and Dean Winchester lost their mother to a mysterious and demonic supernatural force. Subsequently, their father raised them to be soldiers. He taught them about the paranormal evil that lives in the dark corners and on the back roads of America ... and he taught them how to kill it. Now, the Winchester brothers crisscross the country in their \'67 Chevy Impala, battling every kind of supernatural threat they encounter along the way.', '2005-09-13', 'English', 15, 'https://www.youtube.com/embed/yy96yJjkvjo', '2022-05-17 22:06:05'),
(23, 'Hollyoaks', 'Romance', 'images/tvshows/Hollyoaks.jpg', 'The daily soap that follows the loves, lives and misdemeanours of a group of people living in the Chester village of Hollyoaks where anything could, and frequently does, happen..', '1995-10-23', 'English', 28, 'https://www.youtube.com/embed/Ru2LwYKRRAM', '2022-05-17 22:09:26'),
(24, 'Emmerdale', 'Romance', 'images/tvshows/Emmerdale.jpg', 'The lives of several families in the Yorkshire Dales revolve around a farm and the nearby village. With murders, affairs, lies, deceit, laughter and tears, it\'s all there in the village.', '1972-10-16', 'English', 51, 'https://www.youtube.com/embed/vafofHyxErE', '2022-05-17 22:11:06'),
(25, 'The Bold and the Beautiful ', 'Romance', 'images/tvshows/The Bold and the Beautiful.jpg', 'Continuing drama combining romance and intrigue set against the glittering backdrop of Beverly Hills and the American fashion industry.', '1987-03-23', 'English', 35, 'https://www.youtube.com/embed/oAH9AZa1S3U', '2022-05-17 22:16:12'),
(26, 'Hidden Passion', 'Romance', 'images/tvshows/Hidden Passion.jpg', 'The Reyes-Elizondo\'s idyllic lives are shattered by a murder charge against Eric and León.', '2003-10-21', 'Spanish', 2, 'https://www.youtube.com/embed/ynHxZu6YcXM', '2022-05-17 22:18:22'),
(27, 'Peaky Blinders', 'Romance', 'images/tvshows/Peaky Blinders.jpg', 'A gangster family epic set in 1919 Birmingham, England and centered on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby, who means to move up in the world.', '2013-09-12', 'English', 6, 'https://www.youtube.com/embed/EM12mcTEI88', '2022-05-17 22:19:50'),
(28, 'Star Trek: Strange New Worlds ', 'Sci-Fi', 'images/tvshows/Star Trek_Strange New Worlds.jpg', 'Follow Christopher Pike, Spock and Number One in the years before Captain Kirk boarded the U.S.S. Enterprise, as they explore new worlds around the galaxy. This show is a sequel to the original series and Star Trek: Discovery.', '2022-05-05', 'English', 1, 'https://www.youtube.com/embed/XL4iCAB6MFo', '2022-05-17 22:22:41'),
(29, 'The Sound of Magic', 'Sci-Fi', 'images/tvshows/The Sound of Magic.jpg', 'An enigmatic magician living in an abandoned amusement park introduces magic into the life of a high schooler struggling with harsh realities.', '2022-05-06', 'Korean', 1, 'https://www.youtube.com/embed/GaVW093-cSw', '2022-05-17 22:24:08'),
(30, 'Lucifer', 'Sci-Fi', 'images/tvshows/Lucifer.jpg', 'Bored and unhappy as the Lord of Hell, Lucifer Morningstar abandoned his throne and retired to Los Angeles, where he has teamed up with LAPD detective Chloe Decker to take down criminals. But the longer he\'s away from the underworld, the greater the threat that the worst of humanity could escape.', '2016-01-25', 'English', 6, 'https://www.youtube.com/embed/X4bF_quwNtw', '2022-05-17 22:25:30'),
(31, 'The Flash', 'Sci-Fi', 'images/tvshows/The Flash.jpg', 'After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only \"meta-human\" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash.', '2014-10-07', 'English', 8, 'https://www.youtube.com/embed/Yj0l7iGKh8g', '2022-05-17 22:26:52'),
(32, 'Vikings: Valhalla', 'Thriller', 'images/tvshows/Vikings_Valhalla.jpg', 'In this sequel to \"Vikings,\" a hundred years have passed and a new generation of legendary heroes arises to forge its own destiny — and make history.', '2022-02-25', 'English', 1, 'https://www.youtube.com/embed/Yi4YnwFT7Gk', '2022-05-17 22:30:02'),
(33, 'Vikings', 'Thriller', 'images/tvshows/Vikings.jpg', 'The adventures of Ragnar Lothbrok, the greatest hero of his age. The series tells the sagas of Ragnar\'s band of Viking brothers and his family, as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods. Legend has it that he was a direct descendant of Odin, the god of war and warriors.', '2013-03-03', 'English', 6, 'https://www.youtube.com/embed/7rcozIVtujw', '2022-05-17 22:31:32'),
(34, 'The Last Kingdom', 'Thriller', 'images/tvshows/The Last Kingdom.jpg', 'A show of heroic deeds and epic battles with a thematic depth that embraces politics, religion, warfare, courage, love, loyalty and our universal search for identity. Combining real historical figures and events with fictional characters, it is the story of how a people combined their strength under one of the most iconic kings of history in order to reclaim their land for themselves and build a place they call home.', '2015-10-10', 'English', 5, 'https://www.youtube.com/embed/WxPApTGWwas', '2022-05-17 22:32:52'),
(35, 'SEAL Team', 'Thriller', 'images/tvshows/SEAL Team.jpg', 'The lives of the elite Navy Seals as they train, plan and execute the most dangerous, high-stakes missions our country can ask.', '2017-09-27', 'English', 5, 'https://www.youtube.com/embed/FkBkGtJzwtc', '2022-05-17 22:34:06'),
(36, 'Westworld', 'Western', 'images/tvshows/Westworld.jpg', 'A dark odyssey about the dawn of artificial consciousness and the evolution of sin. Set at the intersection of the near future and the reimagined past, it explores a world in which every human appetite, no matter how noble or depraved, can be indulged.', '2016-10-02', 'English', 4, 'https://www.youtube.com/embed/9BqKiZhEFFw', '2022-05-17 22:36:28'),
(37, 'The Rifleman', 'Western', 'images/tvshows/The Rifleman.jpg', 'The Rifleman is an American Western television program starring Chuck Connors as rancher Lucas McCain and Johnny Crawford as his son, Mark McCain. It was set in the 1880s in the town of North Fork, New Mexico Territory. The show was filmed in black-and-white, half-hour episodes. \"The Rifleman\" aired on ABC from September 30, 1958 to April 8, 1963 as a production of Four Star Television. It was one of the first prime time series to have a widowed parent raise a child.', '1958-09-30', 'English', 5, 'https://www.youtube.com/embed/lNeySEOXUcI', '2022-05-17 22:37:46'),
(38, 'Little House on the Prairie', 'Western', 'images/tvshows/Little House on the Prairie.jpg', 'Little House on the Prairie is an American Western drama television series, starring Michael Landon, Melissa Gilbert, and Karen Grassle, about a family living on a farm in Walnut Grove, Minnesota, in the 1870s and 1880s.', '1974-03-30', 'English', 9, 'https://www.youtube.com/embed/3SFkrgW2i8U', '2022-05-17 22:39:12'),
(39, 'Cheyenne', 'Western', 'images/tvshows/Cheyenne.jpg', 'Cheyenne is an American western television series of 108 black-and-white episodes broadcast on ABC from 1955 to 1963. The show was the first hour-long western, and in fact the first hour-long dramatic series of any kind, with continuing characters, to last more than one season. It was also the first series to be made by a major Hollywood film studio which did not derive from its established film properties, and the first of a long chain of Warner Brothers original series produced by William T. Orr.', '1955-09-20', 'English', 7, 'https://www.youtube.com/embed/W_-mii4aerU', '2022-05-17 22:40:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `firstname` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `surname` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(260) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `contactNo` int(11) NOT NULL,
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userID`, `firstname`, `surname`, `dob`, `email`, `pass`, `contactNo`, `joinDate`, `status`) VALUES
(1, 'Fran', 'Beja', '1981-04-27', 'fb@fb.com', '234', 123456789, '2022-04-25 20:43:49', 'Inactive'),
(5, 'Noah', 'Bejarano', '2000-10-01', 'nb@nb.com', '123', 123456789, '2022-04-26 18:46:12', 'Active'),
(6, 'Miriam', 'Ramos', '1988-07-16', 'mr@mr.com', '123', 123456789, '2022-04-26 21:28:25', 'Active');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminID`);
ALTER TABLE `administrator` ADD FULLTEXT KEY `username` (`username`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`);
ALTER TABLE `category` ADD FULLTEXT KEY `description` (`description`);

--
-- Indices de la tabla `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieId`,`title`),
  ADD KEY `category` (`category`);

--
-- Indices de la tabla `tvshow`
--
ALTER TABLE `tvshow`
  ADD PRIMARY KEY (`tvId`,`title`),
  ADD KEY `category` (`category`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrator`
--
ALTER TABLE `administrator`
  MODIFY `adminID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `movie`
--
ALTER TABLE `movie`
  MODIFY `movieId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tvshow`
--
ALTER TABLE `tvshow`
  MODIFY `tvId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

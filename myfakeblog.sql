-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Ago 11, 2021 alle 13:42
-- Versione del server: 5.7.31
-- Versione PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myfakeblog`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(97, 16, 'helloooo', 45, '2021-08-02 10:42:26', 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(45, 'Cats', '<h3>What we know about cats?</h3>\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Nesciunt&nbsp;similique&nbsp;dolorem&nbsp;alias&nbsp;sit&nbsp;esse&nbsp;consequuntur&nbsp;hic&nbsp;dolor&nbsp;dolore&nbsp;fuga&nbsp;unde&nbsp;iusto&nbsp; debitis&nbsp;nulla&nbsp;pariatur&nbsp;odio&nbsp;laboriosam,&nbsp;dicta&nbsp;harum.&nbsp;Maiores,&nbsp;sitLorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Illum&nbsp;veritatis,&nbsp;quod&nbsp; architecto&nbsp;commodi&nbsp;vel&nbsp;laboriosam&nbsp;cum&nbsp;consectetur&nbsp;officiis&nbsp;repellendus&nbsp;rerum&nbsp;qui&nbsp;a&nbsp;assumenda&nbsp;accusamus&nbsp;doloremque&nbsp;sunt,&nbsp;ratione&nbsp;pariatur&nbsp; saepe!&nbsp;AdLorem,&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Quibusdam&nbsp;voluptate&nbsp;necessitatibus&nbsp;ad,&nbsp;officiis&nbsp;blanditiis&nbsp;laborum&nbsp;provident&nbsp; ipsa&nbsp;debitis,&nbsp;velit&nbsp;quia&nbsp;exercitationem&nbsp;veritatis&nbsp;error,&nbsp;quas&nbsp;cum&nbsp;aliquam&nbsp;nihil&nbsp;beatae&nbsp;facilis&nbsp;obcaecati.</p>\r\n<p><img class=\"\" src=\"../blog-php-mvc/static/source/1066798.jpg\" alt=\"\" /><img class=\"\" src=\"../blog-php-mvc/static/source/1066798.jpg\" alt=\"\" /></p>', 'wp7722842-anime-black-cat-hd-4k-wallpapers.jpg', '2021-08-02 08:39:52'),
(46, '3D Modelling', '<h3>Basics</h3>\r\n<p>Lorem&nbsp;ipsum,&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Libero,&nbsp;fuga&nbsp;laudantium&nbsp;quam&nbsp;ut&nbsp;tempore&nbsp;id&nbsp;dolorem&nbsp;neque&nbsp;suscipit&nbsp;rerum&nbsp;voluptate,&nbsp; adipisci&nbsp;perspiciatis&nbsp;explicabo&nbsp;vitae&nbsp;quisquam&nbsp;veniam&nbsp;quaerat&nbsp;ipsa&nbsp;nulla&nbsp;praesentium!&nbsp;Lorem,&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp; Laborum&nbsp;dignissimos&nbsp;voluptatem&nbsp;optio.&nbsp;Animi&nbsp;hic&nbsp;accusamus&nbsp;consectetur&nbsp;doloribus&nbsp;suscipit&nbsp;obcaecati&nbsp;exercitationem&nbsp;repellat&nbsp;dolor&nbsp;magni,&nbsp;sed,&nbsp; doloremque&nbsp;vel&nbsp;ducimus&nbsp;ipsam&nbsp;praesentium&nbsp;ipsa!&nbsp;Lorem&nbsp;ipsum,&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Expedita&nbsp;adipisci&nbsp;repellendus&nbsp;ipsam&nbsp; consectetur&nbsp;dolorum&nbsp;doloribus&nbsp;earum&nbsp;deserunt,&nbsp;perferendis,&nbsp;rem&nbsp;cumque&nbsp;aliquid,&nbsp;repudiandae&nbsp;blanditiis&nbsp;nam?&nbsp;Commodi&nbsp;omnis&nbsp;autem&nbsp;rerum&nbsp; pariatur&nbsp;atque?&nbsp;Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Exercitationem&nbsp;incidunt&nbsp;magni&nbsp;eveniet&nbsp;officia&nbsp;sit&nbsp;mollitia&nbsp;eligendi&nbsp;et&nbsp; temporibus&nbsp;suscipit&nbsp;aperiam,&nbsp;possimus&nbsp;repellat&nbsp;cum&nbsp;atque&nbsp;adipisci&nbsp;in&nbsp;nihil&nbsp;repudiandae&nbsp;voluptate&nbsp;facilis.</p>\r\n<p>&nbsp;</p>', '46.jpg', '2021-08-02 10:03:53'),
(47, 'Texturing', '<h3>Get started</h3>\r\n<p>Lorem&nbsp;ipsum,&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Libero,&nbsp;fuga&nbsp;laudantium&nbsp;quam&nbsp;ut&nbsp;tempore&nbsp;id&nbsp;dolorem&nbsp;neque&nbsp;suscipit&nbsp;rerum&nbsp;voluptate,&nbsp; adipisci&nbsp;perspiciatis&nbsp;explicabo&nbsp;vitae&nbsp;quisquam&nbsp;veniam&nbsp;quaerat&nbsp;ipsa&nbsp;nulla&nbsp;praesentium!&nbsp;Lorem,&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp; Laborum&nbsp;dignissimos&nbsp;voluptatem&nbsp;optio.&nbsp;Animi&nbsp;hic&nbsp;accusamus&nbsp;consectetur&nbsp;doloribus&nbsp;suscipit&nbsp;obcaecati&nbsp;exercitationem&nbsp;repellat&nbsp;dolor&nbsp;magni,&nbsp;sed,&nbsp; doloremque&nbsp;vel&nbsp;ducimus&nbsp;ipsam&nbsp;praesentium&nbsp;ipsa!&nbsp;Lorem&nbsp;ipsum,&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Expedita&nbsp;adipisci&nbsp;repellendus&nbsp;ipsam&nbsp; consectetur&nbsp;dolorum&nbsp;doloribus&nbsp;earum&nbsp;deserunt,&nbsp;perferendis,&nbsp;rem&nbsp;cumque&nbsp;aliquid,&nbsp;repudiandae&nbsp;blanditiis&nbsp;nam?&nbsp;Commodi&nbsp;omnis&nbsp;autem&nbsp;rerum&nbsp; pariatur&nbsp;atque?&nbsp;Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Exercitationem&nbsp;incidunt&nbsp;magni&nbsp;eveniet&nbsp;officia&nbsp;sit&nbsp;mollitia&nbsp;eligendi&nbsp;et&nbsp; temporibus&nbsp;suscipit&nbsp;aperiam,&nbsp;possimus&nbsp;repellat&nbsp;cum&nbsp;atque&nbsp;adipisci&nbsp;in&nbsp;nihil&nbsp;repudiandae&nbsp;voluptate&nbsp;facilis.</p>', '47.jpg', '2021-08-02 10:10:29');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(16, 'anissbouainbi@hotmail.it', 'fdaf6782d30ea4f1c74742594980b7a9', 0, 'anis'),
(17, 'anis@anis.com', '1fd3c4ef39f3723f137fb9f778be8bef', NULL, 'boua');

-- --------------------------------------------------------

--
-- Struttura della tabella `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `votes`
--

INSERT INTO `votes` (`id`, `comment_id`, `user_id`, `post_id`, `vote`) VALUES
(136, 97, 'boua', 45, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

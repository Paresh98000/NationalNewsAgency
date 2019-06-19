-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 20, 2018 at 04:27 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `adre_id` int(11) NOT NULL,
  `zip_cod` varchar(35) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`adre_id`, `zip_cod`, `street`, `city`, `state`, `country`, `continent`, `datecreated`, `systdate`) VALUES
(66, '360003', 'Marwadi University Hostel A 3rd Floor Room 922, Marwadi University  Hostel C', 'Rajkot', 'Gujarat', 'India', NULL, '2018-10-18 05:47:39', '2018-10-18 09:33:35'),
(78, '233', 'Shell Service Station Opposite Sunyani Jubilee Park', 'Sunyani', 'Brong Ahafo - Sunyani', 'Ghana', NULL, '2018-10-18 17:04:56', '0000-00-00 00:00:00'),
(79, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:43:22', '0000-00-00 00:00:00'),
(80, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:46:49', '0000-00-00 00:00:00'),
(81, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:48:28', '0000-00-00 00:00:00'),
(82, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:50:48', '0000-00-00 00:00:00'),
(83, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:54:33', '0000-00-00 00:00:00'),
(84, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:54:38', '0000-00-00 00:00:00'),
(85, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 09:56:01', '0000-00-00 00:00:00'),
(86, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 10:08:12', '0000-00-00 00:00:00'),
(87, 'w234', 'Chork Madapour', 'Rajkot', 'Gujarat', 'Indian', NULL, '2018-12-07 07:21:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addresscust`
--

CREATE TABLE `tbl_addresscust` (
  `adre_id` int(11) NOT NULL,
  `buswebsite` varchar(50) NOT NULL,
  `busemail` varchar(50) NOT NULL,
  `busphone` varchar(10) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcodecust` varchar(30) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addresscust`
--

INSERT INTO `tbl_addresscust` (`adre_id`, `buswebsite`, `busemail`, `busphone`, `street`, `city`, `state`, `zipcodecust`, `country`, `continent`, `datecreated`, `systdate`) VALUES
(1, 'newsagency.com', '', '', NULL, NULL, NULL, '', NULL, NULL, '2018-12-07 04:51:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adverts`
--

CREATE TABLE `tbl_adverts` (
  `advert_id` int(11) NOT NULL,
  `clientID` int(11) DEFAULT NULL,
  `advertname` varchar(50) DEFAULT NULL,
  `tittle` varchar(100) DEFAULT NULL,
  `advertpackageID` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adverts`
--

INSERT INTO `tbl_adverts` (`advert_id`, `clientID`, `advertname`, `tittle`, `advertpackageID`, `categoryID`, `description`, `duedate`, `datecreated`, `systdate`) VALUES
(12, 5, 'bike.jpg', NULL, 1, NULL, ' 123', '2019-03-05 18:30:00', '2018-12-06 17:50:12', '0000-00-00 00:00:00'),
(13, 6, 'audi.jpg', NULL, 1, NULL, ' xcv', '2019-03-05 18:30:00', '2018-12-06 17:50:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advert_category`
--

CREATE TABLE `tbl_advert_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advert_packages`
--

CREATE TABLE `tbl_advert_packages` (
  `pack_id` int(11) NOT NULL,
  `pack_name` varchar(100) DEFAULT NULL,
  `pack_amount` float NOT NULL,
  `pack_detail` varchar(255) DEFAULT NULL,
  `pack_benefits` varchar(2000) NOT NULL,
  `pack_datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pack_systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advert_packages`
--

INSERT INTO `tbl_advert_packages` (`pack_id`, `pack_name`, `pack_amount`, `pack_detail`, `pack_benefits`, `pack_datecreated`, `pack_systdate`) VALUES
(0, '2 Years Package', 4500, 'For just 2 years', 'Random advert banner display on both National News Agency and news contents on all our news categories for 1 year period', '2018-12-07 06:23:31', '0000-00-00 00:00:00'),
(1, '90 Days Packages', 1000, 'For just 90 days', 'Random advert banner display on both National News Agency and news contents relating to your business for 90 days period', '2018-12-04 01:23:16', '0000-00-00 00:00:00'),
(2, '6 Months Package', 1950, 'For just 6 months', 'Random advert banner display on both National News Agency and news contents relating to your business with three more news categories out of your business for 6 months period', '2018-12-04 01:23:16', '0000-00-00 00:00:00'),
(5, '1 Year Package', 3500, 'For just one year', 'Random advert banner display on both National News Agency and news contents on all our news categories for 1 year period', '2018-12-04 01:27:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `clients_id` int(11) NOT NULL,
  `usrid` int(11) NOT NULL,
  `busregname` varchar(100) NOT NULL,
  `busregnumber` varchar(50) NOT NULL,
  `natofbus` varchar(50) NOT NULL,
  `bustartdate` date NOT NULL,
  `bustype` varchar(50) NOT NULL,
  `headoffice` varchar(50) NOT NULL,
  `busactivity` varchar(100) NOT NULL,
  `nofbranch` int(11) NOT NULL,
  `logopath` varchar(30) NOT NULL,
  `datejoin` datetime DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`clients_id`, `usrid`, `busregname`, `busregnumber`, `natofbus`, `bustartdate`, `bustype`, `headoffice`, `busactivity`, `nofbranch`, `logopath`, `datejoin`, `systdate`, `address_id`) VALUES
(1, 3, 'National News Agency', '', '', '0000-00-00', '', '', '', 0, 'WhatsApp Image 2018-10-15 at 7', '2018-12-06 00:14:02', '2018-12-05 18:44:02', 1),
(2, 3, 'National News Agency', '', '', '0000-00-00', '', '', '', 0, 'WhatsApp Image 2018-10-15 at 7', '2018-12-06 00:16:00', '2018-12-05 18:46:00', 1),
(3, 3, 'National News Agency', '', '', '0000-00-00', '', '', '', 0, 'WhatsApp Image 2018-10-15 at 7', '2018-12-06 00:21:59', '2018-12-05 18:51:59', 1),
(4, 3, 'National News Agency', '', '', '0000-00-00', '', '', '', 0, 'WhatsApp Image 2018-10-15 at 7', '2018-12-06 00:22:05', '2018-12-05 18:52:05', 1),
(5, 3, 'XYZ', '', '', '0000-00-00', '', '', '', 0, 'bike.jpg', '2018-12-06 23:20:12', '2018-12-06 17:50:12', 1),
(6, 3, 'yxz', '', '', '0000-00-00', '', '', '', 0, 'audi.jpg', '2018-12-06 23:20:41', '2018-12-06 17:50:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` int(3) NOT NULL,
  `comment_news_id` int(3) DEFAULT NULL,
  `comment_author` int(11) DEFAULT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_bin,
  `comment_status` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment_id`, `comment_news_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 28, 3, NULL, 'Hellow', NULL, '2018-12-02'),
(2, 28, 3, NULL, 'very serious', NULL, '2018-12-02'),
(3, 28, 3, NULL, 'mnb', NULL, '2018-12-02'),
(4, 27, 3, NULL, 'Radhey Radhey', NULL, '2018-12-02'),
(5, 27, 7, NULL, 'I like this movie very much...', NULL, '2018-12-02'),
(6, 27, 3, NULL, 'Hellow', NULL, '2018-12-03'),
(7, 27, 3, NULL, 'Kem cho', NULL, '2018-12-03'),
(8, 27, 7, NULL, 'Maja Ma....', NULL, '2018-12-03'),
(9, 27, 3, NULL, 'Hellow Threr', NULL, '2018-12-03'),
(10, 29, 3, NULL, 'Hellow Mogli...', NULL, '2018-12-03'),
(11, 29, 7, NULL, 'hellow', NULL, '2018-12-05'),
(12, 27, 3, NULL, 'asdc', NULL, '2018-12-06'),
(13, 28, 3, NULL, 'Hellow.....Our project is done now', NULL, '2018-12-06'),
(14, 27, 3, NULL, 'राधे राधे', NULL, '2018-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments_h`
--

CREATE TABLE `tbl_comments_h` (
  `comment_id` int(3) NOT NULL,
  `comment_news_id` int(3) DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_bin,
  `comment_status` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments_h`
--

INSERT INTO `tbl_comments_h` (`comment_id`, `comment_news_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(0, 1002, '9', NULL, 'चकदे इन्डीया', NULL, '2018-12-06'),
(0, 1002, '3', NULL, 'भारत का नाम रोशन करो यारो ।', NULL, '2018-12-06'),
(0, 1001, '3', NULL, 'कपील आ गया फिरसे लोगोको हसाने', NULL, '2018-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dep_id` int(11) NOT NULL,
  `deptname` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `noofemp` int(3) NOT NULL,
  `dept_head` varchar(255) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dep_id`, `deptname`, `location`, `noofemp`, `dept_head`, `detail`, `datecreated`, `systdate`) VALUES
(3, 'I.T', '10th  Floor', 1, 'Paresh Shama', 'For all IT', '2018-10-16 21:05:21', '2018-10-16 21:05:21'),
(5, 'Accounting', '2nd Floor', 0, 'Mohammed Adamu', 'Accounting related', '2018-10-18 05:23:09', '2018-10-18 05:23:09'),
(6, 'Marketing', '2nd Floor', 0, 'Mohammed Adamu', 'Marketing related', '2018-10-18 05:24:50', '2018-10-18 05:24:50'),
(7, 'Editorials', '3rd Floor', 0, 'Mohammed Adamu', 'Editorial working', '2018-10-18 05:29:25', '2018-10-18 05:29:25'),
(8, 'Writers and Reporter', '3rd Floor', 0, 'Mohammed Adamu', 'Writers and Reporting related', '2018-10-18 05:31:42', '2018-10-18 05:31:42'),
(9, 'Advertisement', '2nd Floor', 0, 'Paresh Shama', 'Advertisement related', '2018-10-18 05:33:24', '2018-10-18 05:33:24'),
(10, 'Engineers', '1st Floor', 0, 'Mohammed Adamu', 'Relating to sound, video, lightening, camera etc', '2018-10-18 05:37:17', '2018-10-18 05:37:17'),
(11, 'Transport', '1nd Floor', 0, 'Paresh Shama', 'All forms transport', '2018-10-21 05:06:17', '2018-10-21 05:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_draft_news`
--

CREATE TABLE `tbl_draft_news` (
  `draft_id` int(11) NOT NULL,
  `tittle` varchar(155) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(20000) DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL,
  `editorid` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `language` varchar(35) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `draft_status` varchar(20) NOT NULL,
  `draft_user` varchar(20) NOT NULL,
  `imge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_draft_news`
--

INSERT INTO `tbl_draft_news` (`draft_id`, `tittle`, `description`, `details`, `authorid`, `editorid`, `categoryID`, `language`, `datecreated`, `systdate`, `draft_status`, `draft_user`, `imge_id`) VALUES
(41, 'Fantastic Beasts: The Crimes of Grindelwald gets mixed reviews', 'The latest Fantastic Beasts film The Crimes of Grindelwald has earned mixed reviews from critics.', '<p>It has a number of three-star reviews with suggestions that the plot is \"overburdened\" with details and preparing for future adventures.</p><p>There is praise for the \"vibrantly drawn\" characters and Jude Law is highlighted for his performance as young Dumbledore.</p><p>Many agree JK Rowling\'s imagination is \"as awe-inspiring as ever.\"</p><p>The second of five planned Fantastic Beasts films by JK Rowling also earns praise for its special effects.</p><ul><li><a href=\"https://www.bbc.co.uk/news/newsbeat-46152707\"><strong>Ezra Miller stole the show at the Fantastic Beasts sequel\'s premiere</strong></a></li></ul><p>Caryn James in <a href=\"https://www.hollywoodreporter.com/review/fantastic-beasts-crimes-grindelwald-review-1158267?utm_source=Sailthru&amp;utm_medium=email&amp;utm_campaign=THR%20Breaking%20News_2018-11-08%2013:00:00_Jfrosch&amp;utm_term=hollywoodreporter_breakingnews\"><strong>the Hollywood Reporter </strong></a>called it a \"vibrant, engaging improvement\" on the first Fantastic Beasts film.</p><p>\"The sequel has better and at times galvanising special effects, a darker tone and a high-stakes battle between good and evil.</p><p>\"Best of all, its characters are more vibrantly drawn, and tangled in relationships that range from delightful to lethal.\"</p><p>But she said the film has some \"serious liabilities, the gravest being a misbegotten performance by Johnny Depp as the villain of the title\".</p>', 64, 64, 3, 'English', '2018-11-11 17:06:51', '2018-11-11 17:12:55', 'Published', 'adamumh@gmail.com', 4),
(42, 'US man pleads guilty to game hacking charges', 'A US man accused of knocking game servers offline in a series of attacks has pleaded guilty to charges of computer hacking.', '<p>Sony, EA Origin and Steam were all hit by Utah resident Austin Thompson\'s attacks in 2013 and 2014.</p><p>Mr Thompson also admitted to causing damage costing $95,000 (Â£73,000) as part of his plea agreement.</p><p>The maximum sentence for the crimes is 10 years in jail and fines of up to $250,000.</p><p>In the attacks, gamers were prevented from playing as Mr Thompson swamped connections to servers with huge amounts of bogus data - so-called denial of service attacks.</p><p>Imminent attacks were announced via a Twitter account called \"derptrolling\" which also featured screenshots of error messages caused by the flood of data. Many of the game servers were offline for hours at a time.</p><p>Tweets sent via the derptrolling account suggested more than one person was behind the attacks, but Mr Thompson is the only person mentioned in a Department of Justice (DoJ) statement.</p><p>\"Denial of service attacks cost businesses millions of dollars annually,\" said US attorney <a href=\"https://www.justice.gov/usao-sdca/pr/utah-man-pleads-guilty-denial-service-computer-hacking-attacks\"><strong>Adam Braverman in the DoJ statement.</strong></a> \"We are committed to finding and prosecuting those who disrupt businesses, often for nothing more than ego.\"</p><p>Mr Thompson is due to be sentenced at a hearing on 1 March, 2019.</p>', 64, 64, 5, 'English', '2018-11-11 17:16:54', '2018-11-11 17:17:05', 'Published', 'adamumh@gmail.com', 5),
(43, 'The \'painted wolves\' of Zimbabwe', 'They are stunning; there\'s no question. And the name, \"painted wolves\", seems so apt.', '<p>Their dappled tan and black fur, shot through with flashes of white, dazzles in the sunlight.</p><p>You\'re going to become very familiar with these creatures; you may even fall in love with them, because they will feature in <a href=\"https://www.bbc.co.uk/programmes/p06mvmmr\"><strong>David Attenborough\'s new blockbuster TV series, Dynasties</strong></a>.</p><p>The BBC spent months filming the endangered African wild dogs of Mana Pools National Park in Zimbabwe, and wildlife <a href=\"https://www.nicholasdyer.com/index\"><strong>photographer Nick Dyer</strong></a> says viewers will be enthralled by the result.</p><p>The former London fund manager and marketing executive now dedicates his time and his camera to promoting the animals\' conservation, walking with three packs as they roam the floodplain of the Zambezi River.</p><p>\"During the day, they\'re mostly asleep but when they wake up, they leap and dance with absolute joy,\" he tells me. \"They have this great social bonding thing we call a greeting ceremony. They\'re so full of play, especially with their pups, so they\'re always chasing and pulling each other\'s tails, which is really great fun to watch.\"</p><p>They\'re in a separate evolutionary group from these more familiar canids. <i>Lycaon pictus</i> is their scientific name, which means something like \"painted wolf-like\".</p><p>But they certainly behave much like wolves and dogs. Lots of movement and lots of noise.</p><p>\"They have several calls, but perhaps the most endearing sound they make is the hoo call,\" explains Nick.</p><p>\"If they get separated from the pack, they put their head low and make this \'hoo, hoo\' noise, which is an incredibly haunting sound, but that sound can travel up to 2km and with their big ears they can pick it up, and that reunites the pack.\"</p><p>Whisper it quietly, they\'re also just a bit smelly. Nick recalls watching one animal regurgitate a meal of impala antelope and roll in it.</p><p>&nbsp;</p>', 64, 64, 8, 'English', '2018-11-11 18:08:07', '2018-11-11 18:09:10', 'Published', 'adamumh@gmail.com', 6),
(44, 'Alibaba Singles Day sales frenzy surpasses records', 'E-commerce giant Alibaba has set new sales records on Sunday for its biggest shopping day, the annual Singles Day.', '<p>The Chinese company hit a record $1bn in sales in 85 seconds, and then just shy of $10bn in the first hour of the 24-hour spree.</p><p>Alibaba also beat its 2017 revenue total, $25.3bn, with several hours still remaining.</p><p>Online discounts have been offered on 11 November, Alibaba\'s informal holiday for singles, since 2009.</p><p>The shopping festival is projected to hit over $32bn this year, according to a report by the global app market data provider App Annie.</p><p>The event was kicked off on Saturday with a gala featuring US singer Mariah Carey, a Japanese BeyoncÃ© impersonator and a shoe-shopping-themed Cirque du Soleil performance.</p><h2>What is Singles Day?</h2><p>Alibaba invented the occasion to celebrate the unattached as an antithesis to the romantically involved on Valentine\'s Day.</p><p>It is now the world\'s biggest online sales event and last year\'s total was more than Black Friday and Cyber Monday\'s totals combined, according to Bloomberg.</p><p>Some 180,000 brands are available in the shopping blitz, including top technology companies Xaomi, Apple and Dyson.</p><p>Last year, the Chinese company expanded the event to the Western market, with downloads of its app AliExpress surging in the US and UK.</p><p><strong>Will Singles Day keep on growing?</strong></p><p>The shopping frenzy has broken world records in e-commerce sales - surpassing last year\'s record at 17:34 Hong Kong Time (10:34 GMT).</p><p>However, observers believe as the event matures, its growth rate will slow down.</p><p>Alibaba has also faced new challenges this year, such as new rivals in the market, a slowing economy and its stock dropping 16% thanks to China\'s trade war with the US.</p><p>The November sale event is expected to be founder Jack Ma\'s last at the helm of the company. The current chief executive will take over as chairman next year, Alibaba announced in September.</p>', 64, 64, 6, 'English', '2018-11-11 18:24:26', '2018-11-11 18:26:12', 'Published', 'adamumh@gmail.com', 7),
(45, 'Rappler: Philippines to charge critical news site with tax evasion', 'The Philippines says it will charge the major news site Rappler, which has been critical of President Rodrigo Duterte, with tax evasion.', '<p>Prosecutors said on Friday they also have grounds to indict founder Maria Ressa for violating tax laws after not declaring gains made in tax returns.</p><p>Rappler has denied the charges, calling the case a \"clear form of continuing intimidation and harassment\".</p><p>If found guilty Ms Ressa could be fined and jailed for up to 10 years.</p><p>The government accuses Rappler and its chief executive of failing to pay tax on 2015 bond sales which resulted in 162.5 million pesos ($3 million; Â£2.3 million) in gains.</p><ul><li><a href=\"https://www.bbc.com/news/world-asia-42713897\"><strong>Why Rappler is raising Philippine press freedom fears</strong></a></li><li><a href=\"https://www.bbc.com/news/world-36659258\"><strong>Duterte: The \'strongman\' of the Philippines</strong></a></li><li><a href=\"https://www.bbc.com/news/world-asia-15527446\"><strong>The state of Philippine media</strong></a></li></ul><p>The English-language outlet\'s lawyer told journalists the case \"has no legal leg to stand on\" because Rappler did not evade any tax obligation.</p><p>A justice department official told news agency AFP the charges would be filed in court next week.</p><p>Earlier this year, <a href=\"https://www.bbc.co.uk/news/world-asia-42692723\"><strong>the site had its licence revoked by the state</strong></a>, igniting a national debate about press freedom.</p><h2>What is Rappler?</h2><p>Founded in 2012 by Ms Ressa, a former CNN journalist, Rappler has grown a reputation for its hard-hitting, investigative journalism.</p><p>The online news site is one of the few Philippine media organisations openly critical of the country\'s leader, questioning his public statement\'s accuracy and particularly his deadly war of drugs.</p><p>The president has labelled the site\'s reports as \"twisted\" and banned its reporter from covering his official activities.</p><p>\"It is meant for maximum impact of intimidation,\" Ms Ressa told The New York Times on Friday after receiving an award from the International Center for Journalists in Washington, DC.</p><p>The Philippines has had one of the strongest records of press freedom in Asia, but observers say this has changed in Mr Duterte\'s presidency.</p><p>In 2016, <a href=\"https://www.bbc.co.uk/news/world-asia-36423329\"><strong>Mr Duterte was criticised for saying some of the many journalists killed in the country deserved to die</strong></a>.</p><p>Since 1986, 176 journalists have been killed in the country, making it one of the most dangerous in the world for reporters.</p>', 64, 64, 7, 'English', '2018-11-11 18:29:39', '2018-11-11 18:29:50', 'Published', 'adamumh@gmail.com', 8),
(46, 'Harassment victims at Google gain more power', 'Google employees will now be able to more freely speak out over issues of sexual harassment at the firm.', '<p><strong>Google employees will now be able to more freely speak out over issues of sexual harassment at the firm.</strong></p><p>&nbsp;</p><p>Responding to demands from the around 20,000 workers who protested last week, the company has said it will end the practice of \"forced arbitration\" in cases of sexual harassment.</p><p>Arbitration will now be optional, chief executive Sundar Pichai said in an all-staff email.</p><p>The company did not, however, respond employees\' demands in other major areas of concern, angering campaigners.</p><p>Most notably, it did not comment on calls for Google\'s board to have an employee representative, and for the company\'s chief diversity officer to report directly to the chief executive.</p><h2>\'Sincerely sorry\'</h2><p>In an email to staff on Thursday, Mr Pichai said: \"Over the past few weeks Google\'s leaders and I have heard your feedback and have been moved by the stories you\'ve shared.</p><p>\"We recognize that we have not always gotten everything right in the past and we are sincerely sorry for that. It\'s clear we need to make some changes.\"</p><p>The measures, Mr Pichai said, will increase transparency around instances of sexual harassment, expand mandatory training, and offer increased support for those with claims.</p><p>Most impactful will be a shift away from forced arbitration, a highly-criticised practice that meant employees were contractually-bound to deal with complaints internally, in what some legal observers have described as being a \"private justice system\".</p><p>\"We will make arbitration optional for individual sexual harassment and sexual assault claims,\" Mr Pichai wrote.</p><p>\"Google has never required confidentiality in the arbitration process and arbitration still may be the best path for a number of reasons (eg personal privacy) but, we recognize that choice should be up to you.\"</p><h2>\'Caste-like system\'</h2><p>But the Tech Workers Coalition, which backed last week\'s action, said the measures did not go nearly far enough, particularly where it related to contractors who worked with the firm.</p><p>\"Sundar ignored the demand for a worker to be represented on the board and [temps, vendors and contractors (TVCs)] continue to have no adequate protections from sexual harassment, who make up over half the Google workforce and are disproportionately women and people of colour.</p><p>\"TVCs didn\'t receive this email this morning, and have been excluded from the townhall. This deliberate sleight demonstrates the caste-like system deployed by Google, which fails to protect its workers and our colleagues.\"</p><p>The spokesperson added: \"For a company that likes to innovate, it\'s striking to see such a lack of vision for treating all of their workforce with basic dignity. We take inspiration from all who work at Google to keep fighting to build worker power.\"</p><p>Campaigners hope the promised overhaul of how Google handles issues around sexual harassment will remove a culture of secrecy that saw<a href=\"https://www.nytimes.com/2018/10/25/technology/google-sexual-harassment-andy-rubin.html\"><strong> one high-profile engineer leave the company with an $90m pay out</strong></a>, despite \"credible\" claims of inappropriate behaviour.</p><p>The company later said that over the past two years, 48 other employees - including 13 considered to be senior staff - had been fired over sexual harassment issues.</p><p>More widely, Google\'s move to end forced arbitration for sexual harassment claims may energise employees at other firms to demand the same. Uber and Microsoft had already dropped the practice.</p><p>All set</p>', 69, 2, 5, 'English', '2018-11-11 20:03:09', '2018-11-15 18:43:44', 'Pending', 'paresh9000@gmail.com', 9),
(47, 'Bostrap 4', 'Just it', '<h3><strong>Introduction</strong></h3><p>Get started with Bootstrap, the worldâ€™s most popular framework for building responsive, mobile-first sites, with BootstrapCDN and a template starter page.</p><figure class=\"image\"><img src=\"https://cdn4.buysellads.net/uu/1/21673/1538335010-Slack-white_logo.png\" alt=\"\"></figure><p><a href=\"https://srv.carbonads.net/ads/click/x/GTND42QWCV7I6K3UCWA4YKQMCE7D623ICTYIEZ3JCWBD623ECK7D65QKC6BIVKJLF6BDTK3EHJNCLSIZ?segment=placement:getbootstrapcom;\">All the tools your team needs in one place. Slack: Where work happens.</a><a href=\"http://carbonads.net/?utm_source=getbootstrapcom&amp;utm_medium=ad_via_link&amp;utm_campaign=in_unit&amp;utm_term=carbon\">ads via Carbon</a></p><p>Quick start</p><p>Looking to quickly add Bootstrap to your project? Use BootstrapCDN, provided for free by the folks at MaxCDN. Using a package manager or need to download the source files? <a href=\"https://getbootstrap.com/docs/4.0/getting-started/download/\">Head to the downloads page.</a></p><p>&nbsp;</p><p><i>Starter template</i></p><p>Be sure to have your pages set up with the latest design and development standards. That means using an HTML5 doctype and including a viewport meta tag for proper responsive behaviors. Put it all together and your pages should look like this:</p>', 2, 2, 5, 'Hindi', '2018-11-15 15:59:26', '2018-11-15 16:01:09', 'Published', 'paresh9000@gmail.com', 10),
(48, 'Indian android apps seek more of your data than global counterparts', 'Indian android apps seek more of your data than global counterparts', '<h2>Need for approval</h2><p>Some top Indian Android apps across categories seek as much as 45% higher permissions from users compared to their global counterparts. Access to SMSes, microphone and contact book were some permissions accessed by a significantly higher number of Indian apps compared to global peers.</p><h2>Leading categories</h2><p>The key privacy metrics were assessed on 100 Indian apps with each having at least a million downloads across Google Play, Apple\'s App Store and websites. About 50 global Android apps were assessed on privacy and technical parameters to draw a parallel to Indian ones and their permission settings. In some categories such as travel, shopping and wallets, homegrown apps end up taking 1.5 to 3 times higher permissions than global peers.</p><h2>Indian apps take about 8 permissions</h2><p>With rising number of smartphones and data becoming cheaper, internet companies are witnessing many unique visitors to their platforms and seeking permissions helps companies gather more information about usage behaviour, shopping patterns, bank transactions and use of a host of services. Essentially, these permissions help build user profiles which third-party vendors can then use for targeted selling. On an average, Indian apps take about 8 permissions when a user installs a certain app.</p><h2>Invasion of privacy</h2><p>When an app seeks more permissions, it collects additional information about a user that\'s seen as invasion of privacy, especially when the user has unknowingly granted access to certain apps.<br><br>Global tech firms like Facebook have come under scrutiny for mishandling customer data. Most recently, Google said it\'s bringing in new controls that allow user users the rights to share data while installing third-party apps from Google Play Store.</p><p>&nbsp;</p>', 2, 2, 5, 'English', '2018-12-07 08:03:54', '2018-12-07 08:05:50', 'Published', 'paresh9000@gmail.com', 22),
(49, 'Qualcomm announces Snapdragon 8cx chipset for Windows 10', 'Qualcomm announces Snapdragon 8cx chipset for Windows 10', '<p>At the Snapdragon Summit in Hawaii, Qualcomm has taken the wraps off its latest chipset intended for Windows 10 computers - the Snapdragon 8cx. This is the successor to the <a href=\"https://www.gsmarena.com/snapdragon_850_unveiled_windows_on_arm_gets_a_speed_and_battery_boost-news-31470.php\">Snapdragon 850</a>, but it\'s a different beast altogether.</p><p>Whereas the 850 was just a modified Snapdragon 845, which is intended for mobile devices, the 8cx is the company\'s first of a kind SoC built specifically for Windows 10 PCs from the ground up. It\'s made on a 7nm process and should be in shipping products around the third quarter of next year.</p><p>The company says it will pack twice the performance of the Snapdragon 850, which, to quote Reddit parlance, is big if true. That is because Qualcomm says the 8cx\'s performance when running native Windows ARM apps should rival that of an Intel Core i5 U-series CPU. The SD850 beat a Core i5-6300U in multi-core benchmark scores and only slightly lagged in single-core scores, so that\'s certainly believable - obviously the 8cx will need to be compared to a current generation Core i5 8th gen part.</p><p>The Snapdragon 8cx\'s Adreno 680 GPU will handle dual 4K HDR displays, and will have hardware acceleration for 4K HDR video playback at 120fps. The chipset\'s CPU cores will be Kryo 495, and it\'s also got an integrated X24 Cat.20 LTE modem with a top theoretical download speed of 2Gbps and 316Mbps uploads.</p><p>Third-gen PCI-E and second-gen USB 3.1 will be supported for \"limitless peripherals\", and for storage there\'s support for NVMe SSDs. The built-in Hexagon 685 DSP will enable enhanced voice assistant experiences for Cortana and Alexa, and Qualcomm\'s fourth-gen AI engine is on board too.</p><p>Bluetooth 5.0 is supported too, as well as Quick Charge 4+. The 8cx is without a doubt the fastest Snapdragon ever, a feat that is made possible in the laptop/2-in-1 category by the better heat dissipation than what you\'d find in any phone. Qualcomm also promises multi-day battery life for the devices that will have the 8cx at the core.</p><p>&nbsp;</p><p>Additionally, this is going to be the first Snapdragon to receive a certification for Windows 10 Enterprise, which is critical for adoption by businesses who might be interested in an always-connected PC platform.</p><p>Finally, let\'s address the odd name: the \"cx\" letters apparently stand for \"compute\" and \"extreme\", to further drive home the point about this being the most radical iteration of any SoC ever made by Qualcomm.</p>', 2, 2, 5, 'English', '2018-12-07 18:54:29', '2018-12-07 18:57:18', 'Published', 'paresh9000@gmail.com', 23),
(50, 'India vs Australia: Ravichandran Ashwin nutmegs Pat Cummins, bamboozles Rishabh Pant too- Watch', 'Ravichandran Ashwin was the pick of India bowlers claiming three wickets as India reduced Aussies to 191/7 at the end of the play on Day 2. He picked up the wickets of Shaun Marsh, Marcus Harris and Usman Khawaja to leave Australia at 87/4 at one stage.', '<h2>Ravichandran Ashwin was the pick of India bowlers claiming three wickets as India reduced Aussies to 191/7 at the end of the play on Day 2. He picked up the wickets of Shaun Marsh, Marcus Harris and Usman Khawaja to leave Australia at 87/4 at one stage.</h2><p>After an iffy start to the match in which Team India found themselves 41/4 in the very first session they have remarkably well to bounce back and have their noses slightly ahead going into Day 3.</p><p>Part of the reason why India are ahead in the first Test match of the series against Australia in Adelaide is Ravichandran Ashwin. The off-spinner fist steadied India with the bat putting on a half century run stand with Cheteshwar Pujara on day 1 and then came into his own with the ball on the second day.</p><p>Ashwin was the pick of India bowlers claiming three wickets as India reduced Aussies to 191/7 at the end of the play on Day 2. He picked up the wickets of Shaun Marsh, Marcus Harris and Usman Khawaja to leave Australia at 87/4 at one stage.</p><p>&nbsp;</p><p>Ashwin could have had more wickets and Pat Cummins was especially lucky to survive a beauty which went through his legs and bounced over the top of the stumps. Such was the delivery that India wicketkeeper Rishabh Pant was bamboozled as well and failed to collect.</p><p>Having somehow survived the guile of Ashwin, Cummins succumbed to the new ball when Jasprit Bumrah had him trapped right in front for 10.</p>', 2, 2, 4, 'English', '2018-12-07 19:23:01', '2018-12-07 19:24:46', 'Published', 'paresh9000@gmail.com', 24),
(51, 'Indian IT firm HCL Tech to acquire select IBM software products for USD 1.8 billion', 'Indian IT company HCL Technologies Friday said it will acquire select IBM software products for USD 1.8 billion (over Rs 12,700 crore) in an all-cash deal.', '<p>Indian IT company HCL Technologies Friday said it will acquire select IBM software products for USD 1.8 billion (over Rs 12,700 crore) in an all-cash deal.</p><p>The transaction, subject to “completion of applicable regulatory reviews”, is slated to close by mid-2019, HCL Technologies said in a statement.</p><p>The deal entails seven products in areas including security, marketing and collaboration solutions, and represents a total addressable market of more than USD 50 billion, HCL Tech said in a regulatory filing.</p><p>“IBM and HCL Technologies today announced a definitive agreement under which HCL will acquire select IBM software products for USD 1.8 billion,” it said.</p><p>With this acquisition, HCL Tech will get software products in areas of marketing, commerce, security and collaboration, a “highly profitable revenue stream” containing a significant annuity component, and access to over 5,000 large clients across industries and geographic markets, along with sales and marketing teams, the filing said.</p><p>HCL Tech Chief Financial Officer Prateek Aggarwal told PTI that the deal also entails</p><p>&nbsp;</p><p>transfer of IBM employees, but did not divulge any numbers. The cash deal will be funded largely through internal accruals, with USD 300 million of debt, HCL Tech said, adding that nearly half of the total amount will be paid at close of the deal.</p><p>This is the biggest acquisition for HCL Tech till date, and among the largest by an Indian tech company. The acquisition also reflects HCL’s ambitions for software products business -- considered to be the next growth frontier for IT companies.</p><p>The software products in the deal include Appscan (for secure application development), BigFix (for secure device management), Unica (for marketing automation), Commerce (for omni-channel eCommerce), Portal (for digital experience), Notes &amp; Domino (for email and low-code rapid application development), and Connections (for workstream collaboration).</p><p>HCL and IBM have an ongoing intellectual property partnership for five of these products.</p><p>“The products that we are acquiring are in large growing market areas like security, marketing and commerce which are strategic segments for HCL. Many of these</p><p>products are well regarded by clients and positioned in the top quadrant by industry analysts,” said C Vijayakumar, president &amp; CEO, HCL Technologies.</p><p>John Kelly, IBM senior vice president, Cognitive Solutions and Research, said: “We believe the time is right to divest these select collaboration, marketing and commerce software assets, which are increasingly delivered as stand-alone products. At the same time, we believe these products are a strong strategic fit for HCL, and that HCL is well positioned to drive innovation and growth for their customers.”</p>', 2, 2, 6, 'English', '2018-12-07 19:32:55', '2018-12-07 20:15:35', 'Published', 'paresh9000@gmail.com', 25),
(52, 'NASA\'s Mars InSight flexes robotic arm, captures new views', 'Spacecraft engineers had already factored extra time into their estimates for instrument deployment to account for likely delays caused by faults.', '<p><strong>Washington:</strong> After the successful touchdown of NASA\'s InSight on Mars last week, new images from the lander show its robotic arm is ready to do some lifting. With a reach of nearly 6 feet (2 metres), the arm will be used to pick up science instruments from the lander\'s deck, gently setting them on the Martian surface at Elysium Planitia, the lava plain where InSight touched down on November 26.</p><p>But first, the arm will use its Instrument Deployment Camera, located on its elbow, to take photos of the terrain in front of the lander, the space agency said in a statement on Thursday. These images will help mission team members determine where to set InSight\'s seismometer and heat flow probe -- the only instruments ever to be robotically placed on the surface of another planet, it added.</p><p>\"Today we can see the first glimpses of our workspace,\" said Bruce Banerdt, the mission\'s principal investigator at NASA\'s Jet Propulsion Laboratory (JPL) in Pasadena, California. \"By early next week, we\'ll be imaging it in finer detail and creating a full mosaic.\" Another camera, called the Instrument Context Camera, is located under the lander\'s deck. It will also offer views of the workspace, though the view won\'t be as pretty.</p><p>\"We had a protective cover on the Instrument Context Camera, but somehow dust still managed to get onto the lens,\" said JPL\'s Tom Hoffman, InSight project manager. \"While this is unfortunate, it will not affect the role of the camera, which is to take images of the area in front of the lander where our instruments will eventually be placed.\"</p><p>Over the past week and a half, mission engineers have been testing those instruments and spacecraft systems, ensuring they were in working order. More images from InSight\'s arm were scheduled to come down this past weekend. However, imaging was momentarily interrupted, resuming the following day.</p><p>Spacecraft engineers had already factored extra time into their estimates for instrument deployment to account for likely delays caused by faults. The mission\'s primary mission is scheduled for two Earth years, or one Mars year.</p>', 2, 2, 8, 'English', '2018-12-07 19:35:49', '2018-12-07 20:02:15', 'Published', 'paresh9000@gmail.com', 26),
(53, 'Hawaiian Monk Seals Keep Getting Eels Stuck Up Their Snouts, Nobody \'Nose\' Why', 'Hawaiian Monk Seals Keep Getting Eels Stuck Up Their Snouts, Nobody \'Nose\' Why\r\n\"Mondays...it might not have been a good one for you but it had to have been better than an eel in your nose.\"', '<p>A hilariously adorable picture has gone viral this week, but it has raised more questions than answers. The National Oceanic and Atmospheric Administration\'s Hawaiian Monk Seal Research Program shared a photo which shows a seal with a spotted eel stuck up its nose.</p><p>Posted on Monday, the caption began, \"Mondays...it might not have been a good one for you but it had to have been better than an eel in your nose.\"</p><p>The picture, which shows the seal looking surprisingly chill, has everyone amused. Since being posted, it has garnered over 1,000 \'shares\' and tickled a ton of netizens.</p><p>However, the strange part about the whole incident is that it is not a one-off thing. As the <a href=\"https://www.theguardian.com/us-news/2018/dec/06/hawaiian-monk-seal-eel-stuck-up-nose-why\">Guardian</a> reports, this incident is just the latest in a line of eels-in-nose incidents that have baffled scientists.</p><p>\"We\'ve been intensively monitoring monk seals for four decades and in all of that time nothing like this has happened,\" said Charles Littnan, the lead scientist at Noaa\'s Hawaiian monk seal research program, to the <a href=\"https://www.theguardian.com/us-news/2018/dec/06/hawaiian-monk-seal-eel-stuck-up-nose-why\">Guardian</a>. \"Now it\'s happened three or four times and we have no idea why.\"</p><p>\"In all cases the eel was successfully removed and the seals were fine. The eels, however, did not make it,\" Hawaiian Monk Seal Research Program revealed in its Facebook caption.</p><p><a href=\"http://www.kltv.com/2018/12/05/an-eel-somehow-got-stuck-monk-seals-nose-its-rare-it-happens/\">KTLV </a>reports that this particular viral picture was taken over the summer on the French Frigate Shoals. And while nobody knows for sure why seals keep getting eels stuck up their noses, experts do have two theories: \"Monk seals feed by sticking their noses in coral reefs and digging in sand so it is possible the eel was defending itself or trying to escape and forced itself into the nose. Or, the seal regurgitated it and it went out the wrong place. More likely the first...\"</p><p>&nbsp;</p>', 2, 2, 8, 'English', '2018-12-07 19:39:36', '2018-12-07 20:00:40', 'Published', 'paresh9000@gmail.com', 27),
(54, 'NEW \'DARK FLUID\' THEORY COULD EXPLAIN WHY 95 PERCENT OF THE UNIVERSE IS \'MISSING\'', 'NEW \'DARK FLUID\' THEORY COULD EXPLAIN WHY 95 PERCENT OF THE UNIVERSE IS \'MISSING\'', '<p>Researchers may have finally put an end to the mysteries of dark matter and dark energy, which are names given to things physicists don’t yet know or understand.</p><p>Based on some indirect observations, researchers have observed that dark matter and energy permeate through the universe, but we can’t see it.</p><p>Now, a study has suggested that these two cosmic phenomena account for nearly 95 percent of all the mass in the known universe.</p><p>According to the study, both these phenomena — dark matter and dark energy — can be explained using a third, new concept of ‘dark fluid’.</p><p>The study highlights dark fluid as a new form of matter that fills the vast fabric of the cosmos&nbsp;and has a negative mass, i.e., it (hypothetically) has the opposite mass of material we know have as having a positive mass, like feathers, pencils, rocks and planets.</p><p>Interestingly, if you pushed an object with negative mass, it will accelerate towards you instead of away. Objects (or fluids) with negative mass behave the opposite way of all conventional materials.</p><p>While invisible, the dark fluid could explain a lot of phenomena that we don’t yet fully understand, Dr Jamie Farnes, lead astrophysicists&nbsp;in the study (who also created a computer model of the dark fluid’s role in the universe) explained in <a href=\"https://theconversation.com/bizarre-dark-fluid-with-negative-mass-could-dominate-the-universe-what-my-research-suggests-107922\"><strong>an essay he authored </strong></a>for&nbsp;<i>The Conversation.</i></p>', 2, 2, 2, 'English', '2018-12-07 19:44:28', '2018-12-07 19:59:25', 'Published', 'paresh9000@gmail.com', 28),
(55, 'We’re not your ‘hired gun’ anymore, Pakistan PM Imran Khan tells US', 'We’re not your ‘hired gun’ anymore, Pakistan PM Imran Khan tells US', '<p>Prime Minister Imran Khan has accused the US of “pushing Pakistan away” and said he would never want to have a relation with Washington where his country is treated like a “hired gun”.</p><p>“I would never want to have a relationship where Pakistan is treated like a hired gun -- given money to fight someone else’s war,” Khan said in an interview with the Washington Post on Thursday, referring to the 1980s war against the Soviet Union and the ongoing war on terror.</p><p>“We should never put ourselves in this position again. It not only cost us human lives, devastation of our tribal areas, but it also cost us our dignity. We would like a proper relationship with the US,” he said.</p><p>Asked to elaborate on the ideal nature of relationship that he would like to have with the US, Khan said: “For instance, our relationship with China is not one-dimensional. It’s a trade relationship between two countries. We want a similar relationship with the US.”</p><p>He said Pakistan was not “hedging” towards China, rather it was Washington’s attitude</p><p>which had brought a change in the bilateral relationship. “The US has basically pushed Pakistan away.”</p><p>Asked why he “harboured anti-US sentiments”, Khan said disagreeing with Washington’s policies did not make him “anti-American”.</p><p>“This is a very imperialistic approach. You are either with me or against me.”</p><p>Khan condemned the 2011 US operation in Abbottabad that killed Osama bin Laden, saying that it was “humiliating” that Washington did not trust Pakistan to kill the terrorist.</p><p>“It was humiliating that we were losing our soldiers and civilians and (suffering terrorist) bomb attacks because we were participating in the US war, and then our ally did not trust us to kill Bin Laden,” he said, adding that the US “should have tipped off Pakistan”.</p><p>“We did not know whether we were a friend or a foe.”</p><p>He also dismissed claims that there were safe havens for terrorists in Pakistan, saying</p><p>that “there are no sanctuaries in Pakistan”.</p><p>Referring to US President Donald Trump’s South Asia policy, Khan said he was committed to having dialogue to achieve peace in war-torn Afghanistan.</p><p>“I talked for years about how there was no military solution in Afghanistan and they called me Taliban Khan. Now I’m happy that everyone realises there is only a political solution.”</p><p>Welcoming the US bid to engage in talks with the Afghan Taliban, he said that Islamabad did not want the US to leave Afghanistan in a hurry as they did in 1989.</p><p>“The last thing we want is to have chaos in Afghanistan. There should be a settlement this time.”</p>', 2, 2, 2, 'English', '2018-12-07 19:47:50', '2018-12-07 19:48:10', 'Published', 'paresh9000@gmail.com', 29),
(56, '1D1F: President commissions largest diaper making factory in Sub-Saharan Africa', '1D1F: President commissions largest diaper making factory in Sub-Saharan Africa', '<p>President Nana Addo Dankwa Akufo-Addo has commissioned the Sunda Ghana Diaper Ltd, the largest diaper making factory in sub-saharan Africa.<br><br>President Akufo-Addo undertook the commissioning of the factory, which is operating under Government’s 1-District-1-Factory initiative, on Wednesday, 6 December, 2018, the final day of his tour of the Greater Accra Region, at the Bortianor, in the Ngleshie Amanfro constituency.<br><br>With an investment of some $84 million, the Sunda Ghana Diaper Ltd will be one of the largest projects operating under the One District One Factory (1D1F) initiative, and will be exporting its products to markets in sub-Saharan Africa.<br><br>The company, as part of operating under the 1D1F initiative, is currently receiving incentives such as tax holidays, import duty waivers and interest rate subsidy to help build its capacity and competitiveness, and, thereby, position it greater productivity and efficiency.<br>&nbsp;</p><p>With an investment of some $84 million, the Sunda Ghana Diaper Ltd will be one of the largest projects operating under the One District One Factory (1D1F) initiative, and will be exporting its products to markets in sub-Saharan Africa.<br><br>The company, as part of operating under the 1D1F initiative, is currently receiving incentives such as tax holidays, import duty waivers and interest rate subsidy to help build its capacity and competitiveness, and, thereby, position it greater productivity and efficiency.<br><br>Addressing the gathering, President Akufo-Addo indicated that “we have to attract investment into Ghana like Mr. Y.C. Chang, people who believe that the investment climate of our country is good, the governance of our country is good, and the opportunities for investment in our country are good.”<br><br>With Sunda Ghana Limited set to establish two more factories under the 1-District-1-Factory initiative, i.e. Homepro Ghana Limited with an additional investment of USD$26 million and Sunda Hardware Limited with an additional investment of USD$18 million, the President stressed that “what it means is that the work we are doing to strengthen the macroeconomy in our country is not some paper work, it is not talk, talk work.”<br><br>He continued, “It has to do with creating the conditions for investment in our country, and that is why it is extremely important for government to commit itself to the discipline that would enable it have a strong macroeconomy.”<br><br>President Akufo-Addo assured that “so long as I am your President that discipline is going to be there in the management of the economy. We are not going to preside over widening deficits, high debts, high rates of interest, unstable currency, erratic power supply. That is not the path of the Akufo-Addo government for Ghana.”<br><br>Apart from establishing a strong macro economy, providing good governance, he noted that the other important contribution of government to the economic development of our country is to make sure that Ghanaian industries, and industries established in Ghana, do not meet unfair competition from others.</p><p>“So that is another responsibility of government, to create a level playing field for Ghanaian industries. It is establishing industries here in Ghana that we can get work for our young people. When we continue to depend on imports, we are creating jobs for other people overseas. Let us work hard to create jobs here for our people in Ghana, by encouraging investments like what we are seeing today,” he added.<br><br>To the Chiefs and people of Bortianor/Ngleshie Amanfro, President Akufo-Addo urged them to “collaborate with our Chinese friends who have shown confidence in our country, and let them see that Ghanaian people know how to conduct ourselves properly, and we know how to conduct ourselves properly.”</p>', 2, 2, 11, 'English', '2018-12-08 05:17:35', '2018-12-08 05:25:20', 'Published', 'paresh9000@gmail.com', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `maried_status` varchar(20) NOT NULL,
  `firstname` varchar(35) DEFAULT NULL,
  `midlename` varchar(35) DEFAULT NULL,
  `lastname` varchar(35) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `dept` int(11) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `empttype` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `datejoin` date DEFAULT NULL,
  `image` text NOT NULL,
  `otherdetails` varchar(255) DEFAULT NULL,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `title`, `maried_status`, `firstname`, `midlename`, `lastname`, `gender`, `phone`, `email`, `birthdate`, `dept`, `address`, `empttype`, `salary`, `datejoin`, `image`, `otherdetails`, `systdate`) VALUES
(2, 'Dr.', 'Single', 'Paresh', '', 'Shama', 'Female', '8160217255', 'paresh9000@gmail.com', '1995-10-03', 5, 66, 3, 4000000, '2011-08-06', 'Paresh.jpg', NULL, '2018-10-18 05:47:39'),
(64, 'Dr.', 'Married', 'Mohammed', 'Kwaku', 'Adamu', 'Female', '0541708169', 'adamumh@gmail.com', '2018-10-31', 3, 78, 3, 4567, '2018-10-14', 'Adamu.JPG', NULL, '2018-10-18 17:04:56'),
(69, 'Mr.', 'Married', 'Perry', 'Tei', 'Fleming', 'Male', '3027262525', 'perry@gmail.com', '2018-11-10', 7, 83, 6, 2896666, '2018-11-07', 'DSC_0685.jpg', NULL, '2018-11-07 09:54:33'),
(70, 'Miss.', 'Single', 'Batul', '', 'T', 'Female', '95386356353', 'batul@gmail.com', '1998-01-11', 6, 87, 3, 114588, '2018-12-07', 'Batul.jfif', NULL, '2018-12-07 07:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_login`
--

CREATE TABLE `tbl_employee_login` (
  `log_id` int(11) NOT NULL,
  `empID` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastlogout` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reset` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee_login`
--

INSERT INTO `tbl_employee_login` (`log_id`, `empID`, `username`, `passcode`, `role`, `status`, `lastlogin`, `lastlogout`, `datecreated`, `systdate`, `reset`) VALUES
(8, 2, 'paresh9000@gmail.com', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y', 'Editorials', 'Unblocked', '2018-10-21 20:09:25', '2018-10-21 20:09:25', '2018-10-21 20:09:25', '2018-10-21 20:09:25', 1),
(9, 64, 'adamumh@gmail.com', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y', 'Admin', 'Unblocked', '2018-11-05 18:20:28', '2018-11-05 18:20:28', '2018-11-05 18:20:28', '2018-11-05 18:20:28', 1),
(10, 69, 'perry@gmail.com', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y', 'WriterReporter', 'Unblocked', '2018-11-11 18:51:28', '2018-11-11 18:51:28', '2018-11-11 18:51:28', '2018-11-11 18:51:28', 1),
(11, 70, 'batul@gmail.com', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y', 'Marketing & Advertis', 'Unblocked', '2018-12-07 07:24:49', '2018-12-07 07:24:49', '2018-12-07 07:24:49', '2018-12-07 07:24:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employment_type`
--

CREATE TABLE `tbl_employment_type` (
  `id_type` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `noofemp` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employment_type`
--

INSERT INTO `tbl_employment_type` (`id_type`, `name`, `detail`, `datecreated`, `systdate`, `noofemp`) VALUES
(3, 'Permanent Staff', 'Full time employees', '2018-10-16 18:48:26', '2018-10-16 18:48:26', 1),
(5, 'Contract Staff', 'Part time workers on contract basics.', '2018-10-18 01:55:46', '2018-10-18 01:55:46', 0),
(6, 'External Contracts', 'Outside this country', '2018-10-21 05:07:08', '2018-10-21 05:07:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `image_position` varchar(30) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `emp_id`, `name`, `path`, `detail`, `image_position`, `datecreated`, `systdate`) VALUES
(4, 64, 'one.jpg', 'mov.jpg', 'Fantastic Beasts: The Crimes of Grindelwald gets mixed reviews', 'Headline', '2018-11-11 17:06:51', '2018-12-01 22:49:47'),
(5, 64, 'two.jpg', 'hack.jpg', 'US man pleads guilty to game hacking charges', 'Headline', '2018-11-11 17:16:54', '2018-12-01 22:52:45'),
(6, 64, 'three.jpg', 'ani.jpg', 'The \'painted wolves\' of Zimbabwe', 'Headline', '2018-11-11 18:08:07', '2018-12-01 22:53:49'),
(7, 64, 'alibaba.png', 'ali.jpg', 'Alibaba Singles Day sales frenzy surpasses records', 'Headline', '2018-11-11 18:24:26', '2018-12-01 22:54:42'),
(8, 64, 'newstax.jpg', 'phi.jpg', 'Rappler: Philippines to charge critical news site with tax evasion', 'Headline', '2018-11-11 18:29:39', '2018-12-01 22:55:04'),
(9, 69, 'goog.jpg', 'goog.jpg', 'Google employees will now be able to more freely speak out over issues of sexual harassment at the firm.', 'Headline', '2018-11-11 20:03:09', '2018-11-11 20:07:50'),
(10, 2, 'bootstrap.png', 'pass.jpg', 'Bostrap 4', 'Headline', '2018-11-15 15:59:26', '2018-12-01 22:55:26'),
(17, 64, '10.1.35-MariaDB', NULL, NULL, '', '2018-12-01 05:19:19', '0000-00-00 00:00:00'),
(18, 64, 'add2.jpg', NULL, NULL, '', '2018-12-01 05:19:19', '0000-00-00 00:00:00'),
(19, 69, 'kapil.jpg', 'kapil.jpg', NULL, '', '2018-12-06 14:10:05', '0000-00-00 00:00:00'),
(21, 64, 'pak.jpg', 'pak.jpg', NULL, '', '2018-12-06 15:13:20', '0000-00-00 00:00:00'),
(22, 2, 'india.PNG', 'india.PNG', 'Indian android apps seek more of your data than global counterparts', 'Headline', '2018-12-07 08:03:54', '0000-00-00 00:00:00'),
(23, 2, 'Screen Shot 2018-12-08 at 00.23.24.png', 'Screen Shot 2018-12-08 at 00.23.24.png', 'Qualcomm announces Snapdragon 8cx chipset for Windows 10', 'Headline', '2018-12-07 18:54:29', '0000-00-00 00:00:00'),
(24, 2, 'Screen Shot 2018-12-08 at 00.52.42.png', 'Screen Shot 2018-12-08 at 00.52.42.png', 'India vs Australia: Ravichandran Ashwin nutmegs Pat Cummins, bamboozles Rishabh Pant too- Watch', 'Headline', '2018-12-07 19:23:01', '0000-00-00 00:00:00'),
(25, 2, 'Screen Shot 2018-12-08 at 01.00.48.png', 'Screen Shot 2018-12-08 at 01.00.48.png', 'Indian IT firm HCL Tech to acquire select IBM software products for USD 1.8 billion', 'Headline', '2018-12-07 19:32:55', '0000-00-00 00:00:00'),
(26, 2, 'Screen Shot 2018-12-08 at 01.05.32.png', 'Screen Shot 2018-12-08 at 01.05.32.png', 'NASA\'s Mars InSight flexes robotic arm, captures new views', 'Headline', '2018-12-07 19:35:49', '0000-00-00 00:00:00'),
(27, 2, 'Screen Shot 2018-12-08 at 01.07.32.png', 'Screen Shot 2018-12-08 at 01.07.32.png', 'Hawaiian Monk Seals Keep Getting Eels Stuck Up Their Snouts, Nobody \'Nose\' Why', 'Headline', '2018-12-07 19:39:36', '0000-00-00 00:00:00'),
(28, 2, 'Screen Shot 2018-12-08 at 01.13.04.png', 'Screen Shot 2018-12-08 at 01.13.04.png', 'NEW \'DARK FLUID\' THEORY COULD EXPLAIN WHY 95 PERCENT OF THE UNIVERSE IS \'MISSING\'', 'Headline', '2018-12-07 19:44:28', '0000-00-00 00:00:00'),
(29, 2, 'Screen Shot 2018-12-08 at 01.16.31.png', 'Screen Shot 2018-12-08 at 01.16.31.png', 'We’re not your ‘hired gun’ anymore, Pakistan PM Imran Khan tells US', 'Headline', '2018-12-07 19:47:50', '0000-00-00 00:00:00'),
(30, 2, '1DF.PNG', '1DF.PNG', '1D1F: President commissions largest diaper making factory in Sub-Saharan Africa', 'Headline', '2018-12-08 05:17:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_liked_news`
--

CREATE TABLE `tbl_liked_news` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `newID` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_liked_news`
--

INSERT INTO `tbl_liked_news` (`id`, `userID`, `newID`, `datecreated`, `systdate`) VALUES
(20, 8, 28, '2018-12-05 06:34:07', '0000-00-00 00:00:00'),
(51, 3, 29, '2018-12-06 08:01:30', '0000-00-00 00:00:00'),
(52, 3, 27, '2018-12-06 08:01:49', '0000-00-00 00:00:00'),
(54, 3, 30, '2018-12-06 08:04:38', '0000-00-00 00:00:00'),
(55, 10, 41, '2018-12-20 06:13:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `newss_id` int(11) NOT NULL,
  `draft_ids` int(11) NOT NULL,
  `tittle` varchar(155) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `details` varchar(20000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL,
  `editorid` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `read_count` int(11) NOT NULL,
  `shared_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `language` varchar(35) DEFAULT NULL,
  `news_status` varchar(20) NOT NULL,
  `date_published` date NOT NULL,
  `end_date` date NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `img_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`newss_id`, `draft_ids`, `tittle`, `description`, `details`, `authorid`, `editorid`, `categoryID`, `read_count`, `shared_count`, `comment_count`, `language`, `news_status`, `date_published`, `end_date`, `datecreated`, `systdate`, `img_id`) VALUES
(27, 41, 'Fantastic Beasts: The Crimes of Grindelwald gets mixed reviews', 'The latest Fantastic Beasts film The Crimes of Grindelwald has earned mixed reviews from critics.', '<p>It has a number of three-star reviews with suggestions that the plot is \"overburdened\" with details and preparing for future adventures.</p><p>There is praise for the \"vibrantly drawn\" characters and Jude Law is highlighted for his performance as young Dumbledore.</p><p>Many agree JK Rowling\'s imagination is \"as awe-inspiring as ever.\"</p><p>The second of five planned Fantastic Beasts films by JK Rowling also earns praise for its special effects.</p><ul><li><a href=\"https://www.bbc.co.uk/news/newsbeat-46152707\"><strong>Ezra Miller stole the show at the Fantastic Beasts sequel\'s premiere</strong></a></li></ul><p>Caryn James in <a href=\"https://www.hollywoodreporter.com/review/fantastic-beasts-crimes-grindelwald-review-1158267?utm_source=Sailthru&amp;utm_medium=email&amp;utm_campaign=THR%20Breaking%20News_2018-11-08%2013:00:00_Jfrosch&amp;utm_term=hollywoodreporter_breakingnews\"><strong>the Hollywood Reporter </strong></a>called it a \"vibrant, engaging improvement\" on the first Fantastic Beasts film.</p><p>\"The sequel has better and at times galvanising special effects, a darker tone and a high-stakes battle between good and evil.</p><p>\"Best of all, its characters are more vibrantly drawn, and tangled in relationships that range from delightful to lethal.\"</p><p>But she said the film has some \"serious liabilities, the gravest being a misbegotten performance by Johnny Depp as the villain of the title\".</p>', 64, 64, 3, 0, 0, 0, 'English', 'Archived', '2018-11-11', '2019-03-30', '2018-11-11 17:12:55', '2018-12-08 05:05:52', 4),
(28, 42, 'US man pleads guilty to game hacking charges', 'A US man accused of knocking game servers offline in a series of attacks has pleaded guilty to charges of computer hacking.', '<p>Sony, EA Origin and Steam were all hit by Utah resident Austin Thompson\'s attacks in 2013 and 2014.</p><p>Mr Thompson also admitted to causing damage costing $95,000 (£73,000) as part of his plea agreement.</p><p>The maximum sentence for the crimes is 10 years in jail and fines of up to $250,000.</p><p>In the attacks, gamers were prevented from playing as Mr Thompson swamped connections to servers with huge amounts of bogus data - so-called denial of service attacks.</p><p>Imminent attacks were announced via a Twitter account called \"derptrolling\" which also featured screenshots of error messages caused by the flood of data. Many of the game servers were offline for hours at a time.</p><p>Tweets sent via the derptrolling account suggested more than one person was behind the attacks, but Mr Thompson is the only person mentioned in a Department of Justice (DoJ) statement.</p><p>\"Denial of service attacks cost businesses millions of dollars annually,\" said US attorney <a href=\"https://www.justice.gov/usao-sdca/pr/utah-man-pleads-guilty-denial-service-computer-hacking-attacks\"><strong>Adam Braverman in the DoJ statement.</strong></a> \"We are committed to finding and prosecuting those who disrupt businesses, often for nothing more than ego.\"</p><p>Mr Thompson is due to be sentenced at a hearing on 1 March, 2019.</p>', 64, 64, 5, 0, 0, 0, 'English', '', '2018-11-11', '2018-12-25', '2018-11-11 17:17:05', '2018-12-04 17:48:42', 5),
(29, 43, 'The painted wolves of Zimbabwe', 'They are stunning; there\'s no question. And the name, \"painted wolves\", seems so apt.', '<p>Their dappled tan and black fur, shot through with flashes of white, dazzles in the sunlight.</p><p>You\'re going to become very familiar with these creatures; you may even fall in love with them, because they will feature in <a href=\"https://www.bbc.co.uk/programmes/p06mvmmr\"><strong>David Attenborough\'s new blockbuster TV series, Dynasties</strong></a>.</p><p>The BBC spent months filming the endangered African wild dogs of Mana Pools National Park in Zimbabwe, and wildlife <a href=\"https://www.nicholasdyer.com/index\"><strong>photographer Nick Dyer</strong></a> says viewers will be enthralled by the result.</p><p>The former London fund manager and marketing executive now dedicates his time and his camera to promoting the animals\' conservation, walking with three packs as they roam the floodplain of the Zambezi River.</p><p>\"During the day, they\'re mostly asleep but when they wake up, they leap and dance with absolute joy,\" he tells me. \"They have this great social bonding thing we call a greeting ceremony. They\'re so full of play, especially with their pups, so they\'re always chasing and pulling each other\'s tails, which is really great fun to watch.\"</p><p>They\'re in a separate evolutionary group from these more familiar canids. <i>Lycaon pictus</i> is their scientific name, which means something like \"painted wolf-like\".</p><p>But they certainly behave much like wolves and dogs. Lots of movement and lots of noise.</p><p>\"They have several calls, but perhaps the most endearing sound they make is the hoo call,\" explains Nick.</p><p>\"If they get separated from the pack, they put their head low and make this \'hoo, hoo\' noise, which is an incredibly haunting sound, but that sound can travel up to 2km and with their big ears they can pick it up, and that reunites the pack.\"</p><p>Whisper it quietly, they\'re also just a bit smelly. Nick recalls watching one animal regurgitate a meal of impala antelope and roll in it.</p><p>&nbsp;</p>', 64, 64, 8, 0, 0, 0, 'English', '', '2018-12-05', '2018-12-25', '2018-11-11 18:09:10', '2018-12-07 05:06:23', 6),
(30, 44, 'Alibaba Singles Day sales frenzy surpasses records', 'E-commerce giant Alibaba has set new sales records on Sunday for its biggest shopping day, the annual Singles Day.', '<p>The Chinese company hit a record $1bn in sales in 85 seconds, and then just shy of $10bn in the first hour of the 24-hour spree.</p><p>Alibaba also beat its 2017 revenue total, $25.3bn, with several hours still remaining.</p><p>Online discounts have been offered on 11 November, Alibaba\'s informal holiday for singles, since 2009.</p><p>The shopping festival is projected to hit over $32bn this year, according to a report by the global app market data provider App Annie.</p><p>The event was kicked off on Saturday with a gala featuring US singer Mariah Carey, a Japanese Beyoncé impersonator and a shoe-shopping-themed Cirque du Soleil performance.</p><h2>What is Singles Day?</h2><p>Alibaba invented the occasion to celebrate the unattached as an antithesis to the romantically involved on Valentine\'s Day.</p><p>It is now the world\'s biggest online sales event and last year\'s total was more than Black Friday and Cyber Monday\'s totals combined, according to Bloomberg.</p><p>Some 180,000 brands are available in the shopping blitz, including top technology companies Xaomi, Apple and Dyson.</p><p>Last year, the Chinese company expanded the event to the Western market, with downloads of its app AliExpress surging in the US and UK.</p><p><strong>Will Singles Day keep on growing?</strong></p><p>The shopping frenzy has broken world records in e-commerce sales - surpassing last year\'s record at 17:34 Hong Kong Time (10:34 GMT).</p><p>However, observers believe as the event matures, its growth rate will slow down.</p><p>Alibaba has also faced new challenges this year, such as new rivals in the market, a slowing economy and its stock dropping 16% thanks to China\'s trade war with the US.</p><p>The November sale event is expected to be founder Jack Ma\'s last at the helm of the company. The current chief executive will take over as chairman next year, Alibaba announced in September.</p>', 64, 64, 6, 0, 0, 0, 'English', '', '2018-12-05', '2018-12-18', '2018-11-11 18:24:44', '2018-12-04 17:43:21', 7),
(31, 45, 'Rappler: Philippines to charge critical news site with tax evasion', 'The Philippines says it will charge the major news site Rappler, which has been critical of President Rodrigo Duterte, with tax evasion.', '<p>Prosecutors said on Friday they also have grounds to indict founder Maria Ressa for violating tax laws after not declaring gains made in tax returns.</p><p>Rappler has denied the charges, calling the case a \"clear form of continuing intimidation and harassment\".</p><p>If found guilty Ms Ressa could be fined and jailed for up to 10 years.</p><p>The government accuses Rappler and its chief executive of failing to pay tax on 2015 bond sales which resulted in 162.5 million pesos ($3 million; £2.3 million) in gains.</p><ul><li><a href=\"https://www.bbc.com/news/world-asia-42713897\"><strong>Why Rappler is raising Philippine press freedom fears</strong></a></li><li><a href=\"https://www.bbc.com/news/world-36659258\"><strong>Duterte: The \'strongman\' of the Philippines</strong></a></li><li><a href=\"https://www.bbc.com/news/world-asia-15527446\"><strong>The state of Philippine media</strong></a></li></ul><p>The English-language outlet\'s lawyer told journalists the case \"has no legal leg to stand on\" because Rappler did not evade any tax obligation.</p><p>A justice department official told news agency AFP the charges would be filed in court next week.</p><p>Earlier this year, <a href=\"https://www.bbc.co.uk/news/world-asia-42692723\"><strong>the site had its licence revoked by the state</strong></a>, igniting a national debate about press freedom.</p><h2>What is Rappler?</h2><p>Founded in 2012 by Ms Ressa, a former CNN journalist, Rappler has grown a reputation for its hard-hitting, investigative journalism.</p><p>The online news site is one of the few Philippine media organisations openly critical of the country\'s leader, questioning his public statement\'s accuracy and particularly his deadly war of drugs.</p><p>The president has labelled the site\'s reports as \"twisted\" and banned its reporter from covering his official activities.</p><p>\"It is meant for maximum impact of intimidation,\" Ms Ressa told The New York Times on Friday after receiving an award from the International Center for Journalists in Washington, DC.</p><p>The Philippines has had one of the strongest records of press freedom in Asia, but observers say this has changed in Mr Duterte\'s presidency.</p><p>In 2016, <a href=\"https://www.bbc.co.uk/news/world-asia-36423329\"><strong>Mr Duterte was criticised for saying some of the many journalists killed in the country deserved to die</strong></a>.</p><p>Since 1986, 176 journalists have been killed in the country, making it one of the most dangerous in the world for reporters.</p>', 64, 64, 7, 0, 0, 0, 'English', '', '2018-11-11', '2018-12-25', '2018-11-11 18:29:50', '2018-12-05 09:26:41', 8),
(32, 47, 'Bostrap 4', 'Just it', '<h3><strong>Introduction</strong></h3><p>Get started with Bootstrap, the world’s most popular framework for building responsive, mobile-first sites, with BootstrapCDN and a template starter page.</p><figure class=\"image\"><img src=\"https://cdn4.buysellads.net/uu/1/21673/1538335010-Slack-white_logo.png\" alt=\"\"></figure><p><a href=\"https://srv.carbonads.net/ads/click/x/GTND42QWCV7I6K3UCWA4YKQMCE7D623ICTYIEZ3JCWBD623ECK7D65QKC6BIVKJLF6BDTK3EHJNCLSIZ?segment=placement:getbootstrapcom;\">All the tools your team needs in one place. Slack: Where work happens.</a><a href=\"http://carbonads.net/?utm_source=getbootstrapcom&amp;utm_medium=ad_via_link&amp;utm_campaign=in_unit&amp;utm_term=carbon\">ads via Carbon</a></p><p>Quick start</p><p>Looking to quickly add Bootstrap to your project? Use BootstrapCDN, provided for free by the folks at MaxCDN. Using a package manager or need to download the source files? <a href=\"https://getbootstrap.com/docs/4.0/getting-started/download/\">Head to the downloads page.</a></p><p>&nbsp;</p><p><i>Starter template</i></p><p>Be sure to have your pages set up with the latest design and development standards. That means using an HTML5 doctype and including a viewport meta tag for proper responsive behaviors. Put it all together and your pages should look like this:</p>', 2, 2, 5, 0, 0, 0, 'Hindi', '', '2018-11-16', '2018-12-30', '2018-11-15 16:01:09', '2018-12-05 09:27:05', 10),
(33, 48, 'Indian android apps seek more of your data than global counterparts', 'Indian android apps seek more of your data than global counterparts', '<h2>Need for approval</h2><p>Some top Indian Android apps across categories seek as much as 45% higher permissions from users compared to their global counterparts. Access to SMSes, microphone and contact book were some permissions accessed by a significantly higher number of Indian apps compared to global peers.</p><h2>Leading categories</h2><p>The key privacy metrics were assessed on 100 Indian apps with each having at least a million downloads across Google Play, Apple\'s App Store and websites. About 50 global Android apps were assessed on privacy and technical parameters to draw a parallel to Indian ones and their permission settings. In some categories such as travel, shopping and wallets, homegrown apps end up taking 1.5 to 3 times higher permissions than global peers.</p><h2>Indian apps take about 8 permissions</h2><p>With rising number of smartphones and data becoming cheaper, internet companies are witnessing many unique visitors to their platforms and seeking permissions helps companies gather more information about usage behaviour, shopping patterns, bank transactions and use of a host of services. Essentially, these permissions help build user profiles which third-party vendors can then use for targeted selling. On an average, Indian apps take about 8 permissions when a user installs a certain app.</p><h2>Invasion of privacy</h2><p>When an app seeks more permissions, it collects additional information about a user that\'s seen as invasion of privacy, especially when the user has unknowingly granted access to certain apps.<br><br>Global tech firms like Facebook have come under scrutiny for mishandling customer data. Most recently, Google said it\'s bringing in new controls that allow user users the rights to share data while installing third-party apps from Google Play Store.</p><p>&nbsp;</p>', 2, 2, 5, 0, 0, 0, 'English', '', '2018-12-07', '2019-02-22', '2018-12-07 08:05:50', '0000-00-00 00:00:00', 22),
(34, 49, 'Qualcomm announces Snapdragon 8cx chipset for Windows 10', 'Qualcomm announces Snapdragon 8cx chipset for Windows 10', '<p>At the Snapdragon Summit in Hawaii, Qualcomm has taken the wraps off its latest chipset intended for Windows 10 computers - the Snapdragon 8cx. This is the successor to the <a href=\"https://www.gsmarena.com/snapdragon_850_unveiled_windows_on_arm_gets_a_speed_and_battery_boost-news-31470.php\">Snapdragon 850</a>, but it\'s a different beast altogether.</p><p>Whereas the 850 was just a modified Snapdragon 845, which is intended for mobile devices, the 8cx is the company\'s first of a kind SoC built specifically for Windows 10 PCs from the ground up. It\'s made on a 7nm process and should be in shipping products around the third quarter of next year.</p><p>The company says it will pack twice the performance of the Snapdragon 850, which, to quote Reddit parlance, is big if true. That is because Qualcomm says the 8cx\'s performance when running native Windows ARM apps should rival that of an Intel Core i5 U-series CPU. The SD850 beat a Core i5-6300U in multi-core benchmark scores and only slightly lagged in single-core scores, so that\'s certainly believable - obviously the 8cx will need to be compared to a current generation Core i5 8th gen part.</p><p>The Snapdragon 8cx\'s Adreno 680 GPU will handle dual 4K HDR displays, and will have hardware acceleration for 4K HDR video playback at 120fps. The chipset\'s CPU cores will be Kryo 495, and it\'s also got an integrated X24 Cat.20 LTE modem with a top theoretical download speed of 2Gbps and 316Mbps uploads.</p><p>Third-gen PCI-E and second-gen USB 3.1 will be supported for \"limitless peripherals\", and for storage there\'s support for NVMe SSDs. The built-in Hexagon 685 DSP will enable enhanced voice assistant experiences for Cortana and Alexa, and Qualcomm\'s fourth-gen AI engine is on board too.</p><p>Bluetooth 5.0 is supported too, as well as Quick Charge 4+. The 8cx is without a doubt the fastest Snapdragon ever, a feat that is made possible in the laptop/2-in-1 category by the better heat dissipation than what you\'d find in any phone. Qualcomm also promises multi-day battery life for the devices that will have the 8cx at the core.</p><p>&nbsp;</p><p>Additionally, this is going to be the first Snapdragon to receive a certification for Windows 10 Enterprise, which is critical for adoption by businesses who might be interested in an always-connected PC platform.</p><p>Finally, let\'s address the odd name: the \"cx\" letters apparently stand for \"compute\" and \"extreme\", to further drive home the point about this being the most radical iteration of any SoC ever made by Qualcomm.</p>', 2, 2, 5, 0, 0, 0, 'English', '', '2018-12-08', '2019-02-28', '2018-12-07 18:57:18', '0000-00-00 00:00:00', 23),
(35, 50, 'India vs Australia: Ravichandran Ashwin nutmegs Pat Cummins, bamboozles Rishabh Pant too- Watch', 'Ravichandran Ashwin was the pick of India bowlers claiming three wickets as India reduced Aussies to 191/7 at the end of the play on Day 2. He picked up the wickets of Shaun Marsh, Marcus Harris and Usman Khawaja to leave Australia at 87/4 at one stage.', '<h2>Ravichandran Ashwin was the pick of India bowlers claiming three wickets as India reduced Aussies to 191/7 at the end of the play on Day 2. He picked up the wickets of Shaun Marsh, Marcus Harris and Usman Khawaja to leave Australia at 87/4 at one stage.</h2><p>After an iffy start to the match in which Team India found themselves 41/4 in the very first session they have remarkably well to bounce back and have their noses slightly ahead going into Day 3.</p><p>Part of the reason why India are ahead in the first Test match of the series against Australia in Adelaide is Ravichandran Ashwin. The off-spinner fist steadied India with the bat putting on a half century run stand with Cheteshwar Pujara on day 1 and then came into his own with the ball on the second day.</p><p>Ashwin was the pick of India bowlers claiming three wickets as India reduced Aussies to 191/7 at the end of the play on Day 2. He picked up the wickets of Shaun Marsh, Marcus Harris and Usman Khawaja to leave Australia at 87/4 at one stage.</p><p>&nbsp;</p><p>Ashwin could have had more wickets and Pat Cummins was especially lucky to survive a beauty which went through his legs and bounced over the top of the stumps. Such was the delivery that India wicketkeeper Rishabh Pant was bamboozled as well and failed to collect.</p><p>Having somehow survived the guile of Ashwin, Cummins succumbed to the new ball when Jasprit Bumrah had him trapped right in front for 10.</p>', 2, 2, 4, 0, 0, 0, 'English', '', '2018-12-08', '2019-04-18', '2018-12-07 19:24:46', '0000-00-00 00:00:00', 24),
(36, 55, 'We’re not your ‘hired gun’ anymore, Pakistan PM Imran Khan tells US', 'We’re not your ‘hired gun’ anymore, Pakistan PM Imran Khan tells US', '<p>Prime Minister Imran Khan has accused the US of “pushing Pakistan away” and said he would never want to have a relation with Washington where his country is treated like a “hired gun”.</p><p>“I would never want to have a relationship where Pakistan is treated like a hired gun -- given money to fight someone else’s war,” Khan said in an interview with the Washington Post on Thursday, referring to the 1980s war against the Soviet Union and the ongoing war on terror.</p><p>“We should never put ourselves in this position again. It not only cost us human lives, devastation of our tribal areas, but it also cost us our dignity. We would like a proper relationship with the US,” he said.</p><p>Asked to elaborate on the ideal nature of relationship that he would like to have with the US, Khan said: “For instance, our relationship with China is not one-dimensional. It’s a trade relationship between two countries. We want a similar relationship with the US.”</p><p>He said Pakistan was not “hedging” towards China, rather it was Washington’s attitude</p><p>which had brought a change in the bilateral relationship. “The US has basically pushed Pakistan away.”</p><p>Asked why he “harboured anti-US sentiments”, Khan said disagreeing with Washington’s policies did not make him “anti-American”.</p><p>“This is a very imperialistic approach. You are either with me or against me.”</p><p>Khan condemned the 2011 US operation in Abbottabad that killed Osama bin Laden, saying that it was “humiliating” that Washington did not trust Pakistan to kill the terrorist.</p><p>“It was humiliating that we were losing our soldiers and civilians and (suffering terrorist) bomb attacks because we were participating in the US war, and then our ally did not trust us to kill Bin Laden,” he said, adding that the US “should have tipped off Pakistan”.</p><p>“We did not know whether we were a friend or a foe.”</p><p>He also dismissed claims that there were safe havens for terrorists in Pakistan, saying</p><p>that “there are no sanctuaries in Pakistan”.</p><p>Referring to US President Donald Trump’s South Asia policy, Khan said he was committed to having dialogue to achieve peace in war-torn Afghanistan.</p><p>“I talked for years about how there was no military solution in Afghanistan and they called me Taliban Khan. Now I’m happy that everyone realises there is only a political solution.”</p><p>Welcoming the US bid to engage in talks with the Afghan Taliban, he said that Islamabad did not want the US to leave Afghanistan in a hurry as they did in 1989.</p><p>“The last thing we want is to have chaos in Afghanistan. There should be a settlement this time.”</p>', 2, 2, 2, 0, 0, 0, 'English', '', '2018-12-08', '2019-04-05', '2018-12-07 19:48:09', '0000-00-00 00:00:00', 29),
(37, 54, 'NEW \'DARK FLUID\' THEORY COULD EXPLAIN WHY 95 PERCENT OF THE UNIVERSE IS \'MISSING\'', 'NEW \'DARK FLUID\' THEORY COULD EXPLAIN WHY 95 PERCENT OF THE UNIVERSE IS \'MISSING\'', '<p>Researchers may have finally put an end to the mysteries of dark matter and dark energy, which are names given to things physicists don’t yet know or understand.</p><p>Based on some indirect observations, researchers have observed that dark matter and energy permeate through the universe, but we can’t see it.</p><p>Now, a study has suggested that these two cosmic phenomena account for nearly 95 percent of all the mass in the known universe.</p><p>According to the study, both these phenomena — dark matter and dark energy — can be explained using a third, new concept of ‘dark fluid’.</p><p>The study highlights dark fluid as a new form of matter that fills the vast fabric of the cosmos&nbsp;and has a negative mass, i.e., it (hypothetically) has the opposite mass of material we know have as having a positive mass, like feathers, pencils, rocks and planets.</p><p>Interestingly, if you pushed an object with negative mass, it will accelerate towards you instead of away. Objects (or fluids) with negative mass behave the opposite way of all conventional materials.</p><p>While invisible, the dark fluid could explain a lot of phenomena that we don’t yet fully understand, Dr Jamie Farnes, lead astrophysicists&nbsp;in the study (who also created a computer model of the dark fluid’s role in the universe) explained in <a href=\"https://theconversation.com/bizarre-dark-fluid-with-negative-mass-could-dominate-the-universe-what-my-research-suggests-107922\"><strong>an essay he authored </strong></a>for&nbsp;<i>The Conversation.</i></p>', 2, 2, 2, 0, 0, 0, 'English', '', '2018-12-08', '2019-03-30', '2018-12-07 19:59:25', '0000-00-00 00:00:00', 28),
(38, 53, 'Hawaiian Monk Seals Keep Getting Eels Stuck Up Their Snouts, Nobody \'Nose\' Why', 'Hawaiian Monk Seals Keep Getting Eels Stuck Up Their Snouts, Nobody \'Nose\' Why\r\n\"Mondays...it might not have been a good one for you but it had to have been better than an eel in your nose.\"', '<p>A hilariously adorable picture has gone viral this week, but it has raised more questions than answers. The National Oceanic and Atmospheric Administration\'s Hawaiian Monk Seal Research Program shared a photo which shows a seal with a spotted eel stuck up its nose.</p><p>Posted on Monday, the caption began, \"Mondays...it might not have been a good one for you but it had to have been better than an eel in your nose.\"</p><p>The picture, which shows the seal looking surprisingly chill, has everyone amused. Since being posted, it has garnered over 1,000 \'shares\' and tickled a ton of netizens.</p><p>However, the strange part about the whole incident is that it is not a one-off thing. As the <a href=\"https://www.theguardian.com/us-news/2018/dec/06/hawaiian-monk-seal-eel-stuck-up-nose-why\">Guardian</a> reports, this incident is just the latest in a line of eels-in-nose incidents that have baffled scientists.</p><p>\"We\'ve been intensively monitoring monk seals for four decades and in all of that time nothing like this has happened,\" said Charles Littnan, the lead scientist at Noaa\'s Hawaiian monk seal research program, to the <a href=\"https://www.theguardian.com/us-news/2018/dec/06/hawaiian-monk-seal-eel-stuck-up-nose-why\">Guardian</a>. \"Now it\'s happened three or four times and we have no idea why.\"</p><p>\"In all cases the eel was successfully removed and the seals were fine. The eels, however, did not make it,\" Hawaiian Monk Seal Research Program revealed in its Facebook caption.</p><p><a href=\"http://www.kltv.com/2018/12/05/an-eel-somehow-got-stuck-monk-seals-nose-its-rare-it-happens/\">KTLV </a>reports that this particular viral picture was taken over the summer on the French Frigate Shoals. And while nobody knows for sure why seals keep getting eels stuck up their noses, experts do have two theories: \"Monk seals feed by sticking their noses in coral reefs and digging in sand so it is possible the eel was defending itself or trying to escape and forced itself into the nose. Or, the seal regurgitated it and it went out the wrong place. More likely the first...\"</p><p>&nbsp;</p>', 2, 2, 8, 0, 0, 0, 'English', '', '2018-12-08', '2019-01-27', '2018-12-07 20:00:40', '0000-00-00 00:00:00', 27),
(39, 52, 'NASA\'s Mars InSight flexes robotic arm, captures new views', 'Spacecraft engineers had already factored extra time into their estimates for instrument deployment to account for likely delays caused by faults.', '<p><strong>Washington:</strong> After the successful touchdown of NASA\'s InSight on Mars last week, new images from the lander show its robotic arm is ready to do some lifting. With a reach of nearly 6 feet (2 metres), the arm will be used to pick up science instruments from the lander\'s deck, gently setting them on the Martian surface at Elysium Planitia, the lava plain where InSight touched down on November 26.</p><p>But first, the arm will use its Instrument Deployment Camera, located on its elbow, to take photos of the terrain in front of the lander, the space agency said in a statement on Thursday. These images will help mission team members determine where to set InSight\'s seismometer and heat flow probe -- the only instruments ever to be robotically placed on the surface of another planet, it added.</p><p>\"Today we can see the first glimpses of our workspace,\" said Bruce Banerdt, the mission\'s principal investigator at NASA\'s Jet Propulsion Laboratory (JPL) in Pasadena, California. \"By early next week, we\'ll be imaging it in finer detail and creating a full mosaic.\" Another camera, called the Instrument Context Camera, is located under the lander\'s deck. It will also offer views of the workspace, though the view won\'t be as pretty.</p><p>\"We had a protective cover on the Instrument Context Camera, but somehow dust still managed to get onto the lens,\" said JPL\'s Tom Hoffman, InSight project manager. \"While this is unfortunate, it will not affect the role of the camera, which is to take images of the area in front of the lander where our instruments will eventually be placed.\"</p><p>Over the past week and a half, mission engineers have been testing those instruments and spacecraft systems, ensuring they were in working order. More images from InSight\'s arm were scheduled to come down this past weekend. However, imaging was momentarily interrupted, resuming the following day.</p><p>Spacecraft engineers had already factored extra time into their estimates for instrument deployment to account for likely delays caused by faults. The mission\'s primary mission is scheduled for two Earth years, or one Mars year.</p>', 2, 2, 8, 0, 0, 0, 'English', '', '2018-12-08', '2019-02-28', '2018-12-07 20:02:15', '0000-00-00 00:00:00', 26),
(40, 51, 'Indian IT firm HCL Tech to acquire select IBM software products for USD 1.8 billion', 'Indian IT company HCL Technologies Friday said it will acquire select IBM software products for USD 1.8 billion (over Rs 12,700 crore) in an all-cash deal.', '<p>Indian IT company HCL Technologies Friday said it will acquire select IBM software products for USD 1.8 billion (over Rs 12,700 crore) in an all-cash deal.</p><p>The transaction, subject to “completion of applicable regulatory reviews”, is slated to close by mid-2019, HCL Technologies said in a statement.</p><p>The deal entails seven products in areas including security, marketing and collaboration solutions, and represents a total addressable market of more than USD 50 billion, HCL Tech said in a regulatory filing.</p><p>“IBM and HCL Technologies today announced a definitive agreement under which HCL will acquire select IBM software products for USD 1.8 billion,” it said.</p><p>With this acquisition, HCL Tech will get software products in areas of marketing, commerce, security and collaboration, a “highly profitable revenue stream” containing a significant annuity component, and access to over 5,000 large clients across industries and geographic markets, along with sales and marketing teams, the filing said.</p><p>HCL Tech Chief Financial Officer Prateek Aggarwal told PTI that the deal also entails</p><p>&nbsp;</p><p>transfer of IBM employees, but did not divulge any numbers. The cash deal will be funded largely through internal accruals, with USD 300 million of debt, HCL Tech said, adding that nearly half of the total amount will be paid at close of the deal.</p><p>This is the biggest acquisition for HCL Tech till date, and among the largest by an Indian tech company. The acquisition also reflects HCL’s ambitions for software products business -- considered to be the next growth frontier for IT companies.</p><p>The software products in the deal include Appscan (for secure application development), BigFix (for secure device management), Unica (for marketing automation), Commerce (for omni-channel eCommerce), Portal (for digital experience), Notes &amp; Domino (for email and low-code rapid application development), and Connections (for workstream collaboration).</p><p>HCL and IBM have an ongoing intellectual property partnership for five of these products.</p><p>“The products that we are acquiring are in large growing market areas like security, marketing and commerce which are strategic segments for HCL. Many of these</p><p>products are well regarded by clients and positioned in the top quadrant by industry analysts,” said C Vijayakumar, president &amp; CEO, HCL Technologies.</p><p>John Kelly, IBM senior vice president, Cognitive Solutions and Research, said: “We believe the time is right to divest these select collaboration, marketing and commerce software assets, which are increasingly delivered as stand-alone products. At the same time, we believe these products are a strong strategic fit for HCL, and that HCL is well positioned to drive innovation and growth for their customers.”</p>', 2, 2, 6, 0, 0, 0, 'English', '', '2018-12-08', '2019-03-30', '2018-12-07 20:15:35', '0000-00-00 00:00:00', 25),
(41, 56, '1D1F: President commissions largest diaper making factory in Sub-Saharan Africa', '1D1F: President commissions largest diaper making factory in Sub-Saharan Africa', '<p>President Nana Addo Dankwa Akufo-Addo has commissioned the Sunda Ghana Diaper Ltd, the largest diaper making factory in sub-saharan Africa.<br><br>President Akufo-Addo undertook the commissioning of the factory, which is operating under Government’s 1-District-1-Factory initiative, on Wednesday, 6 December, 2018, the final day of his tour of the Greater Accra Region, at the Bortianor, in the Ngleshie Amanfro constituency.<br><br>With an investment of some $84 million, the Sunda Ghana Diaper Ltd will be one of the largest projects operating under the One District One Factory (1D1F) initiative, and will be exporting its products to markets in sub-Saharan Africa.<br><br>The company, as part of operating under the 1D1F initiative, is currently receiving incentives such as tax holidays, import duty waivers and interest rate subsidy to help build its capacity and competitiveness, and, thereby, position it greater productivity and efficiency.<br>&nbsp;</p><p>With an investment of some $84 million, the Sunda Ghana Diaper Ltd will be one of the largest projects operating under the One District One Factory (1D1F) initiative, and will be exporting its products to markets in sub-Saharan Africa.<br><br>The company, as part of operating under the 1D1F initiative, is currently receiving incentives such as tax holidays, import duty waivers and interest rate subsidy to help build its capacity and competitiveness, and, thereby, position it greater productivity and efficiency.<br><br>Addressing the gathering, President Akufo-Addo indicated that “we have to attract investment into Ghana like Mr. Y.C. Chang, people who believe that the investment climate of our country is good, the governance of our country is good, and the opportunities for investment in our country are good.”<br><br>With Sunda Ghana Limited set to establish two more factories under the 1-District-1-Factory initiative, i.e. Homepro Ghana Limited with an additional investment of USD$26 million and Sunda Hardware Limited with an additional investment of USD$18 million, the President stressed that “what it means is that the work we are doing to strengthen the macroeconomy in our country is not some paper work, it is not talk, talk work.”<br><br>He continued, “It has to do with creating the conditions for investment in our country, and that is why it is extremely important for government to commit itself to the discipline that would enable it have a strong macroeconomy.”<br><br>President Akufo-Addo assured that “so long as I am your President that discipline is going to be there in the management of the economy. We are not going to preside over widening deficits, high debts, high rates of interest, unstable currency, erratic power supply. That is not the path of the Akufo-Addo government for Ghana.”<br><br>Apart from establishing a strong macro economy, providing good governance, he noted that the other important contribution of government to the economic development of our country is to make sure that Ghanaian industries, and industries established in Ghana, do not meet unfair competition from others.</p><p>“So that is another responsibility of government, to create a level playing field for Ghanaian industries. It is establishing industries here in Ghana that we can get work for our young people. When we continue to depend on imports, we are creating jobs for other people overseas. Let us work hard to create jobs here for our people in Ghana, by encouraging investments like what we are seeing today,” he added.<br><br>To the Chiefs and people of Bortianor/Ngleshie Amanfro, President Akufo-Addo urged them to “collaborate with our Chinese friends who have shown confidence in our country, and let them see that Ghanaian people know how to conduct ourselves properly, and we know how to conduct ourselves properly.”</p>', 2, 2, 11, 0, 0, 0, 'English', '', '2018-12-10', '2018-12-31', '2018-12-08 05:25:20', '0000-00-00 00:00:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_category`
--

CREATE TABLE `tbl_news_category` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `newscat_detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`newscat_id`, `newscat_name`, `newscat_detail`, `datecreated`, `systdate`) VALUES
(2, 'Politics', 'Political', '2018-11-07 14:14:05', '2018-11-07 14:14:05'),
(3, 'Entertainment', 'Entertainment', '2018-11-11 09:04:24', '2018-11-11 09:04:24'),
(4, 'Sport News', 'Sport', '2018-11-11 09:04:49', '2018-11-11 09:04:49'),
(5, 'Technology News', 'Technology', '2018-11-11 09:05:30', '2018-11-11 09:05:30'),
(6, 'Business News', 'Business', '2018-11-11 09:06:15', '2018-11-11 09:06:15'),
(7, 'Culture and Tourism News', 'Religious', '2018-11-11 09:07:58', '2018-11-11 09:07:58'),
(8, 'Science News', 'Science', '2018-11-11 09:14:45', '2018-11-11 09:14:45'),
(9, 'मनोरंजन', NULL, '2018-12-06 14:56:14', '2018-12-06 14:56:14'),
(11, 'World News', 'All around the world', '2018-12-07 19:49:56', '2018-12-07 19:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_h`
--

CREATE TABLE `tbl_news_h` (
  `newss_id` int(11) NOT NULL,
  `draft_ids` int(11) NOT NULL,
  `tittle` varchar(155) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `details` varchar(20000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL,
  `editorid` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `read_count` int(11) NOT NULL,
  `shared_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `language` varchar(35) DEFAULT NULL,
  `news_status` varchar(20) NOT NULL,
  `date_published` date NOT NULL,
  `end_date` date NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `img_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news_h`
--

INSERT INTO `tbl_news_h` (`newss_id`, `draft_ids`, `tittle`, `description`, `details`, `authorid`, `editorid`, `categoryID`, `read_count`, `shared_count`, `comment_count`, `language`, `news_status`, `date_published`, `end_date`, `datecreated`, `systdate`, `img_id`) VALUES
(1001, 41, 'कपिल शर्मा शो\' के पहले गेस्ट बनेंगे दबंग खान', 'सलमान की प्रोडक्शन कंपनी है शो की प्रोड्यूसर ', '<p>कपिल शर्मा लंबे अरसे बाद टीवी की दुनिया में कमबैक करने जा रहे हैं। एक मुश्किल दौर से गुज़रने के बाद कपिल अब अपनी नई प्रोफेशनल पारी खेलने जा रहे हैं। वो शो ‘द कपिल शर्मा शो’ से टीवी पर वापसी कर रहे हैं। कपिल ने शो की शूटिंग शुरू कर दी है। कपिल के शो के दूसरे सीजन का टीजर जारी हो गया है, इसमें शो के जल्द रिलीज होने की भी जानकारी दी गई है। रिपोर्ट के अनुसार, इस शो के पहले मेहमान के तौर पर सलमान खान अपने पिता सलीम खान और भाई के साथ पहुंचेंगे। कपिल के इस शो के सीज़न वन की अपार सफलता को देखते हुए सलमान खान की प्रोडक्शन कंपनी ही इस शो को प्रोड्यूस कर रही है।</p>', 64, 64, 9, 0, 0, 0, 'English', 'Archived', '2018-11-11', '2018-12-09', '2018-11-11 11:42:55', '2018-12-06 16:46:39', 19),
(1002, 0, 'AUS vs IND, पहला टेस्ट: चेतेश्वर पुजारा का बेहतरीन शतक', 'पहले दिन के बाद भारत का स्कोर - 250/9 ', 'एडिलेड में शुरू हुए चार टेस्ट मैचों की सीरीज के पहले टेस्ट के पहले दिन भारत ने स्टंप तक का 250/9 स्कोर बना लिया है। पहले बल्लेबाजी करते हुए भारत की शुरुआत बेहद खराब रही, लेकिन चेतेश्वर पुजारा ने बेहतरीन शतक लगाते हुए टीम को सम्मानजनक स्कोर तक पहुंचा दिया। पुजारा ने 123 रनों की पारी खेली और 88वें ओवर में उनके रन आउट होते ही स्टंप्स हो गया। \r\nपहला सत्र:\r\n\r\nभारत ने एडिलेड में टॉस जीतकर पहले बल्लेबाजी का फैसला लिया, लेकिन खराब शुरुआत ने इस निर्णय को गलत साबित कर दिया। भारतीय टीम ने अंतिम एकादश में रोहित शर्मा को हनुमा विहारी के ऊपर तरजीह दी।\r\nभारत के लिए केएल राहुल और मुरली विजय ओपनिंग के लिए आये, लेकिन दूसरे ही ओवर में जोश हेज़लवुड ने राहुल (2) को 3 के स्कोर पर चलता किया। इसके बाद सातवें ओवर में 15 के स्कोर पर मुरली विजय भी सिर्फ 11 रन बनाकर मिचेल स्टार्क की गेंद पर आउट हो गए।\r\nभारत को सबसे बड़ा झटका 11वें ओवर में लगा, जब कप्तान विराट कोहली सिर्फ 3 रन बनाकर आउट हो गए और भारत का स्कोर 19/3 हो गया। इसके बाद चेतेश्वर पुजारा और अजिंक्य रहाणे ने कुछ देर विकेट के गिरने का सिलसिला रोका, लेकिन 21वें ओवर में रहाणे आख़िरकार चकमा खा गए और 41 के स्कोर पर हेज़लवुड ने उन्हें 13 के निजी स्कोर पर चलता किया।\r\nरहाणे ने पुजारा के साथ चौथे विकेट के लिए 22 रन जोड़े। इसके बाद लंच तक पुजारा और रोहित शर्मा ने टीम को और कोई झटका नहीं लगे दिया। पहले सत्र के बाद भारत का स्कोर 27 ओवर में चार विकेट के नुकसान पर 56 था और चेतेश्वर पुजारा 11 एवं रोहित शर्मा 15 रन बनाकर नाबाद थे।\r\nदूसरा सत्र:\r\n\r\nलंच के बाद भारतीय टीम ने कुछ हद तक वापसी की और दूसरे सत्र में 29 ओवर में दो विकेट के नुकसान पर 87 रन बने। चाय के समय भारत का स्कोर 56 ओवर में 143/6 था और चेतेश्वर पुजारा 46 एवं रविचंद्रन अश्विन 5 रन बनाकर नाबाद थे। लंच से चाय के बीच में भारत ने रोहित शर्मा (37) और ऋषभ पंत (25) का विकेट गंवाया। \r\nचेतेश्वर पुजारा ने रोहित के साथ पांचवें विकेट के लिए 45 रन जोड़े, लेकिन 38वें ओवर में 86 के स्कोर पर नाथन लायन की गेंद पर एक बहुत खराब शॉट खेलकर रोहित आउट हुए। इसके बाद ऋषभ पंत ने पुजारा के साथ 41 रन जोड़े, लेकिन एक तेज़ पारी खेलने के बाद वह भी नाथन लायन की गेंद पर आउट हो गए। इस समय भारत का स्कोर 49.1 ओवर में 127/6 था। इसके बाद पुजारा और अश्विन ने चाय तक भारत को और की झटका नहीं लगने दिया।\r\nतीसरा सत्र:\r\n\r\nचाय के तुरंत बाद चेतेश्वर पुजारा ने अपना अर्धशतक पूरा किया और अश्विन के साथ सातवें विकेट के लिए उन्होंने 62 रनों की बेहद अहम साझेदारी निभाई। हालाँकि 74वें ओवर में 189 के स्कोर पर पैट कमिंस ने अश्विन को 21 के निजी स्कोर पर आउट कर दिया। इशांत शर्मा (4) के साथ मिलकर पुजारा ने टीम को 200 के पार पहुंचाया, लेकिन 83वें ओवर में स्टार्क ने नई गेंद से इशांत को 210 के स्कोर पर आउट करके भारत को आठवां झटका दिया। \r\nहालाँकि पूजारा ने एक छोर संभाले रखा और न सिर्फ अपना 16वां शतक पूरा किया, बल्कि टेस्ट क्रिकेट में 5000 रन भी पूरे किये। उन्होंने मोहम्मद शमी के साथ 40 रनों की तेज़ साझेदारी निभाई और टीम को 250 के स्कोर तक पहुंचाया, लेकिन आखिरी ओवर में वह 123 रन बनाकर रन आउट हुए और 87.5 ओवर में 250/9 के स्कोर पर पहले दिन का खेल समाप्त हुआ। स्टंप्स के समय मोहम्मद शमी 6 और जसप्रीत बुमराह खाता खोले बिना नाबाद थे।\r\nतीसरे सत्र में भारत ने 31.5 ओवर में तीन विकेट के नुकसान पर 107 रन बनाये। ऑस्ट्रेलिया की तरफ से अभी तक मिचेल स्टार्क, जोश हेज़लवुड, नाथन लायन और पैट कमिंस ने एक-एक विकेट लिया है।\r\nसंक्षिप्त स्कोरकार्ड:\r\nभारत: 250/9 (चेतेश्वर पुजारा 123, पैट कमिंस 2/49)', 1, 2, 9, 0, 0, 0, NULL, 'Archive', '2018-12-06', '2018-12-14', '2018-12-06 15:11:26', '2018-12-06 16:46:55', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_tag`
--

CREATE TABLE `tbl_news_tag` (
  `id` int(11) NOT NULL,
  `newsID` int(11) DEFAULT NULL,
  `tagID` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news_tag`
--

INSERT INTO `tbl_news_tag` (`id`, `newsID`, `tagID`, `datecreated`) VALUES
(9, 30, 14, '2018-12-01 21:48:53'),
(10, 29, 22, '2018-12-01 21:48:53'),
(11, 31, 5, '2018-12-01 21:48:53'),
(12, 30, 14, '2018-12-01 21:48:58'),
(13, 29, 22, '2018-12-01 21:48:58'),
(14, 31, 5, '2018-12-01 21:48:58'),
(15, 32, 24, '2018-12-01 21:50:52'),
(16, 32, 24, '2018-12-01 21:51:14'),
(17, 1001, 25, '2018-12-06 14:19:21'),
(18, 1001, 26, '2018-12-06 14:19:21'),
(19, 1001, 25, '2018-12-06 14:19:26'),
(20, 1001, 26, '2018-12-06 14:19:26'),
(21, 1001, 29, '2018-12-06 14:19:39'),
(22, 1002, 36, '2018-12-06 16:52:00'),
(23, 1002, 37, '2018-12-06 16:52:00'),
(24, 1002, 36, '2018-12-06 16:52:03'),
(25, 1002, 37, '2018-12-06 16:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `usrid` int(11) NOT NULL,
  `addid` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reader`
--

CREATE TABLE `tbl_reader` (
  `id` int(11) NOT NULL,
  `language` varchar(35) DEFAULT NULL,
  `device` varchar(35) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reader_tag`
--

CREATE TABLE `tbl_reader_tag` (
  `id` int(11) NOT NULL,
  `readerID` int(11) DEFAULT NULL,
  `tagID` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE `tbl_salary` (
  `id` int(11) NOT NULL,
  `empID` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `statu` varchar(20) DEFAULT NULL,
  `description` varchar(35) DEFAULT NULL,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tag`
--

CREATE TABLE `tbl_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(35) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tag`
--

INSERT INTO `tbl_tag` (`id`, `name`, `datecreated`) VALUES
(1, 'Ronaldo', '2018-12-01 21:43:21'),
(2, 'Business', '2018-12-01 21:43:21'),
(3, 'Company', '2018-12-01 21:43:21'),
(4, 'Study', '2018-12-01 21:43:21'),
(5, 'Sports', '2018-12-01 21:43:21'),
(6, 'Radha Krishna', '2018-12-01 21:43:21'),
(7, 'Religious', '2018-12-01 21:43:21'),
(8, 'Local', '2018-12-01 21:43:21'),
(9, 'Rajkot', '2018-12-01 21:43:21'),
(10, 'World', '2018-12-01 21:43:21'),
(11, 'India', '2018-12-01 21:43:21'),
(12, 'Ronaldo', '2018-12-01 21:45:57'),
(13, 'Business', '2018-12-01 21:45:57'),
(14, 'Company', '2018-12-01 21:45:57'),
(15, 'Study', '2018-12-01 21:45:57'),
(16, 'Sports', '2018-12-01 21:45:57'),
(17, 'Radha Krishna', '2018-12-01 21:45:57'),
(18, 'Religious', '2018-12-01 21:45:57'),
(19, 'Local', '2018-12-01 21:45:57'),
(20, 'Rajkot', '2018-12-01 21:45:57'),
(21, 'World', '2018-12-01 21:45:57'),
(22, 'India', '2018-12-01 21:45:57'),
(23, 'Technology', '2018-12-01 21:49:47'),
(24, 'Technology', '2018-12-01 21:49:51'),
(25, 'कपील शर्मो', '2018-12-06 14:08:17'),
(26, 'सलमान खान', '2018-12-06 14:08:17'),
(27, 'Kapil Sharma', '2018-12-06 14:08:22'),
(28, 'Salman Khan', '2018-12-06 14:08:22'),
(29, 'हास्य', '2018-12-06 14:08:48'),
(30, 'Hindi', '2018-12-06 14:08:48'),
(31, 'Salman Khan', '2018-12-06 14:13:07'),
(32, 'Salman Khan', '2018-12-06 14:13:10'),
(33, 'Comedy', '2018-12-06 14:13:23'),
(34, 'खेल', '2018-12-06 16:51:22'),
(35, 'क्रिकेट', '2018-12-06 16:51:22'),
(36, 'खेल', '2018-12-06 16:51:27'),
(37, 'क्रिकेट', '2018-12-06 16:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unliked_news`
--

CREATE TABLE `tbl_unliked_news` (
  `id` int(11) NOT NULL,
  `readerID` int(11) DEFAULT NULL,
  `newsID` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contact` varchar(10) NOT NULL,
  `possitionheld` varchar(30) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `addressID` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Usr_Name` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `fullname`, `email`, `gender`, `contact`, `possitionheld`, `birthdate`, `addressID`, `datecreated`, `systdate`, `Usr_Name`, `password`) VALUES
(3, 'Paresh', 'paresh98000@hotmail.com', 'Male', '4565', NULL, '1997-09-05', NULL, '2018-12-02 13:14:04', '2018-12-06 17:50:41', 'PSLD', '202cb962ac59075b964b07152d234b70'),
(7, 'Adamu Mohmad', 'mamu@gmail.com', 'Male', '', NULL, '1988-10-15', NULL, '2018-12-02 13:23:12', '0000-00-00 00:00:00', 'Mamu', '202cb962ac59075b964b07152d234b70'),
(8, 'Mahavir', 'mark@gmail.com', 'Male', '', NULL, '1997-11-23', NULL, '2018-12-05 06:33:27', '0000-00-00 00:00:00', 'mark', '202cb962ac59075b964b07152d234b70'),
(9, 'Sharma', '123', 'Male', '123456789', NULL, '2018-12-05', NULL, '2018-12-05 14:43:04', '2018-12-05 18:37:29', 'Shrma', '202cb962ac59075b964b07152d234b70'),
(10, 'Mavis Annor', 'mavis@gmail.com', 'Female', '', NULL, '1996-12-07', NULL, '2018-12-20 06:09:45', '0000-00-00 00:00:00', 'Mavis', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_login`
--

CREATE TABLE `tbl_user_login` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `newsid` int(11) NOT NULL,
  `employID` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `video_position` varchar(30) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `value` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`value`) VALUES
('Hellow how are you');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`adre_id`);

--
-- Indexes for table `tbl_addresscust`
--
ALTER TABLE `tbl_addresscust`
  ADD PRIMARY KEY (`adre_id`);

--
-- Indexes for table `tbl_adverts`
--
ALTER TABLE `tbl_adverts`
  ADD PRIMARY KEY (`advert_id`),
  ADD KEY `advertpackageID` (`advertpackageID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `tbl_advert_packages`
--
ALTER TABLE `tbl_advert_packages`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`clients_id`),
  ADD KEY `usrid` (`usrid`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_news_id` (`comment_news_id`),
  ADD KEY `comment_author` (`comment_author`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dep_id`),
  ADD UNIQUE KEY `name` (`deptname`);

--
-- Indexes for table `tbl_draft_news`
--
ALTER TABLE `tbl_draft_news`
  ADD PRIMARY KEY (`draft_id`),
  ADD UNIQUE KEY `imge_id` (`imge_id`),
  ADD UNIQUE KEY `tittle` (`tittle`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `empID` (`editorid`),
  ADD KEY `imageID` (`authorid`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `address` (`address`),
  ADD KEY `empttype` (`empttype`),
  ADD KEY `dept` (`dept`);

--
-- Indexes for table `tbl_employee_login`
--
ALTER TABLE `tbl_employee_login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `email` (`username`),
  ADD KEY `empID` (`empID`);

--
-- Indexes for table `tbl_employment_type`
--
ALTER TABLE `tbl_employment_type`
  ADD PRIMARY KEY (`id_type`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `tbl_liked_news`
--
ALTER TABLE `tbl_liked_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newID` (`newID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`newss_id`),
  ADD UNIQUE KEY `draft_ids` (`draft_ids`) USING BTREE,
  ADD UNIQUE KEY `img_id` (`img_id`),
  ADD UNIQUE KEY `tittle` (`tittle`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `empID` (`editorid`),
  ADD KEY `tbl_news_ibfk_3` (`authorid`),
  ADD KEY `idu` (`draft_ids`);

--
-- Indexes for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  ADD PRIMARY KEY (`newscat_id`),
  ADD UNIQUE KEY `name` (`newscat_name`);

--
-- Indexes for table `tbl_news_tag`
--
ALTER TABLE `tbl_news_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsID` (`newsID`),
  ADD KEY `tagID` (`tagID`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reader`
--
ALTER TABLE `tbl_reader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reader_tag`
--
ALTER TABLE `tbl_reader_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `readerID` (`readerID`),
  ADD KEY `tagID` (`tagID`);

--
-- Indexes for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empID` (`empID`);

--
-- Indexes for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_unliked_news`
--
ALTER TABLE `tbl_unliked_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsID` (`newsID`),
  ADD KEY `readerID` (`readerID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `addressID` (`addressID`);

--
-- Indexes for table `tbl_user_login`
--
ALTER TABLE `tbl_user_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `employID` (`employID`),
  ADD KEY `newsid` (`newsid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `adre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_addresscust`
--
ALTER TABLE `tbl_addresscust`
  MODIFY `adre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_adverts`
--
ALTER TABLE `tbl_adverts`
  MODIFY `advert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `clients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_draft_news`
--
ALTER TABLE `tbl_draft_news`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_employee_login`
--
ALTER TABLE `tbl_employee_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_employment_type`
--
ALTER TABLE `tbl_employment_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_liked_news`
--
ALTER TABLE `tbl_liked_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `newss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_news_tag`
--
ALTER TABLE `tbl_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reader`
--
ALTER TABLE `tbl_reader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reader_tag`
--
ALTER TABLE `tbl_reader_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tag`
--
ALTER TABLE `tbl_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_unliked_news`
--
ALTER TABLE `tbl_unliked_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user_login`
--
ALTER TABLE `tbl_user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_adverts`
--
ALTER TABLE `tbl_adverts`
  ADD CONSTRAINT `tbl_adverts_ibfk_1` FOREIGN KEY (`advertpackageID`) REFERENCES `tbl_advert_packages` (`pack_id`),
  ADD CONSTRAINT `tbl_adverts_ibfk_2` FOREIGN KEY (`clientID`) REFERENCES `tbl_clients` (`clients_id`);

--
-- Constraints for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD CONSTRAINT `tbl_clients_ibfk_1` FOREIGN KEY (`usrid`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_clients_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `tbl_addresscust` (`adre_id`);

--
-- Constraints for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `tbl_comments_ibfk_1` FOREIGN KEY (`comment_news_id`) REFERENCES `tbl_news` (`newss_id`),
  ADD CONSTRAINT `tbl_comments_ibfk_2` FOREIGN KEY (`comment_author`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_draft_news`
--
ALTER TABLE `tbl_draft_news`
  ADD CONSTRAINT `tbl_draft_news_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `tbl_news_category` (`newscat_id`),
  ADD CONSTRAINT `tbl_draft_news_ibfk_2` FOREIGN KEY (`editorid`) REFERENCES `tbl_employee` (`id`),
  ADD CONSTRAINT `tbl_draft_news_ibfk_3` FOREIGN KEY (`authorid`) REFERENCES `tbl_employee` (`id`),
  ADD CONSTRAINT `tbl_draft_news_ibfk_4` FOREIGN KEY (`imge_id`) REFERENCES `tbl_image` (`image_id`);

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`address`) REFERENCES `tbl_address` (`adre_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_5` FOREIGN KEY (`empttype`) REFERENCES `tbl_employment_type` (`id_type`),
  ADD CONSTRAINT `tbl_employee_ibfk_6` FOREIGN KEY (`dept`) REFERENCES `tbl_department` (`dep_id`);

--
-- Constraints for table `tbl_employee_login`
--
ALTER TABLE `tbl_employee_login`
  ADD CONSTRAINT `tbl_employee_login_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `tbl_employee` (`id`);

--
-- Constraints for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD CONSTRAINT `tbl_image_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`id`);

--
-- Constraints for table `tbl_liked_news`
--
ALTER TABLE `tbl_liked_news`
  ADD CONSTRAINT `tbl_liked_news_ibfk_1` FOREIGN KEY (`newID`) REFERENCES `tbl_news` (`newss_id`),
  ADD CONSTRAINT `tbl_liked_news_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD CONSTRAINT `tbl_news_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `tbl_news_category` (`newscat_id`),
  ADD CONSTRAINT `tbl_news_ibfk_2` FOREIGN KEY (`editorid`) REFERENCES `tbl_employee` (`id`),
  ADD CONSTRAINT `tbl_news_ibfk_3` FOREIGN KEY (`authorid`) REFERENCES `tbl_employee` (`id`),
  ADD CONSTRAINT `tbl_news_ibfk_4` FOREIGN KEY (`draft_ids`) REFERENCES `tbl_draft_news` (`draft_id`),
  ADD CONSTRAINT `tbl_news_ibfk_5` FOREIGN KEY (`img_id`) REFERENCES `tbl_image` (`image_id`);

--
-- Constraints for table `tbl_news_tag`
--
ALTER TABLE `tbl_news_tag`
  ADD CONSTRAINT `tbl_news_tag_ibfk_2` FOREIGN KEY (`tagID`) REFERENCES `tbl_tag` (`id`);

--
-- Constraints for table `tbl_reader_tag`
--
ALTER TABLE `tbl_reader_tag`
  ADD CONSTRAINT `tbl_reader_tag_ibfk_1` FOREIGN KEY (`readerID`) REFERENCES `tbl_reader` (`id`),
  ADD CONSTRAINT `tbl_reader_tag_ibfk_2` FOREIGN KEY (`tagID`) REFERENCES `tbl_tag` (`id`);

--
-- Constraints for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD CONSTRAINT `tbl_salary_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `tbl_employee` (`id`);

--
-- Constraints for table `tbl_unliked_news`
--
ALTER TABLE `tbl_unliked_news`
  ADD CONSTRAINT `tbl_unliked_news_ibfk_1` FOREIGN KEY (`newsID`) REFERENCES `tbl_news` (`newss_id`),
  ADD CONSTRAINT `tbl_unliked_news_ibfk_2` FOREIGN KEY (`readerID`) REFERENCES `tbl_reader` (`id`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `tbl_address` (`adre_id`);

--
-- Constraints for table `tbl_user_login`
--
ALTER TABLE `tbl_user_login`
  ADD CONSTRAINT `tbl_user_login_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD CONSTRAINT `tbl_video_ibfk_1` FOREIGN KEY (`employID`) REFERENCES `tbl_employee` (`id`),
  ADD CONSTRAINT `tbl_video_ibfk_2` FOREIGN KEY (`newsid`) REFERENCES `tbl_news` (`newss_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

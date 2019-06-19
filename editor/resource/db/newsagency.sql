-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2018 at 07:30 AM
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
-- Database: `newsagency`
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
(86, '23', 'high s', 'Mim', 'BA', 'Ghana', NULL, '2018-11-07 10:08:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adverts`
--

CREATE TABLE `tbl_adverts` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `advertname` varchar(50) DEFAULT NULL,
  `tittle` varchar(100) DEFAULT NULL,
  `advertpackageID` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advert_category`
--

CREATE TABLE `tbl_advert_category` (
  `advert_id` int(11) NOT NULL,
  `advert_name` varchar(100) DEFAULT NULL,
  `advert_detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advert_category`
--

INSERT INTO `tbl_advert_category` (`advert_id`, `advert_name`, `advert_detail`, `datecreated`, `systdate`) VALUES
(2, 'Food', 'All food stuff', '2018-11-05 15:58:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advert_packages`
--

CREATE TABLE `tbl_advert_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` int(3) NOT NULL,
  `comment_news_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(9, 'Advertisement', '2nd Floor', 0, 'Mohammed Adamu', 'Advertisement related', '2018-10-18 05:33:24', '2018-10-18 05:33:24'),
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
(46, 'Harassment victims at Google gain more power', 'Google employees will now be able to more freely speak out over issues of sexual harassment at the firm.', '<p><strong>Google employees will now be able to more freely speak out over issues of sexual harassment at the firm.</strong></p><p>&nbsp;</p><p>Responding to demands from the around 20,000 workers who protested last week, the company has said it will end the practice of \"forced arbitration\" in cases of sexual harassment.</p><p>Arbitration will now be optional, chief executive Sundar Pichai said in an all-staff email.</p><p>The company did not, however, respond employees\' demands in other major areas of concern, angering campaigners.</p><p>Most notably, it did not comment on calls for Google\'s board to have an employee representative, and for the company\'s chief diversity officer to report directly to the chief executive.</p><h2>\'Sincerely sorry\'</h2><p>In an email to staff on Thursday, Mr Pichai said: \"Over the past few weeks Google\'s leaders and I have heard your feedback and have been moved by the stories you\'ve shared.</p><p>\"We recognize that we have not always gotten everything right in the past and we are sincerely sorry for that. It\'s clear we need to make some changes.\"</p><p>The measures, Mr Pichai said, will increase transparency around instances of sexual harassment, expand mandatory training, and offer increased support for those with claims.</p><p>Most impactful will be a shift away from forced arbitration, a highly-criticised practice that meant employees were contractually-bound to deal with complaints internally, in what some legal observers have described as being a \"private justice system\".</p><p>\"We will make arbitration optional for individual sexual harassment and sexual assault claims,\" Mr Pichai wrote.</p><p>\"Google has never required confidentiality in the arbitration process and arbitration still may be the best path for a number of reasons (eg personal privacy) but, we recognize that choice should be up to you.\"</p><h2>\'Caste-like system\'</h2><p>But the Tech Workers Coalition, which backed last week\'s action, said the measures did not go nearly far enough, particularly where it related to contractors who worked with the firm.</p><p>\"Sundar ignored the demand for a worker to be represented on the board and [temps, vendors and contractors (TVCs)] continue to have no adequate protections from sexual harassment, who make up over half the Google workforce and are disproportionately women and people of colour.</p><p>\"TVCs didn\'t receive this email this morning, and have been excluded from the townhall. This deliberate sleight demonstrates the caste-like system deployed by Google, which fails to protect its workers and our colleagues.\"</p><p>The spokesperson added: \"For a company that likes to innovate, it\'s striking to see such a lack of vision for treating all of their workforce with basic dignity. We take inspiration from all who work at Google to keep fighting to build worker power.\"</p><p>Campaigners hope the promised overhaul of how Google handles issues around sexual harassment will remove a culture of secrecy that saw<a href=\"https://www.nytimes.com/2018/10/25/technology/google-sexual-harassment-andy-rubin.html\"><strong> one high-profile engineer leave the company with an $90m pay out</strong></a>, despite \"credible\" claims of inappropriate behaviour.</p><p>The company later said that over the past two years, 48 other employees - including 13 considered to be senior staff - had been fired over sexual harassment issues.</p><p>More widely, Google\'s move to end forced arbitration for sexual harassment claims may energise employees at other firms to demand the same. Uber and Microsoft had already dropped the practice.</p>', 69, 2, 5, 'English', '2018-11-11 20:03:09', '2018-11-11 20:27:38', 'Pending', 'perry@gmail.com', 9);

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
(64, 'Dr.', 'Married', 'Mohammed', 'Kwaku', 'Adamu', 'Female', '0541708169', 'adamumh@gmail.com', '2018-10-31', 3, 78, 3, 4567, '2018-10-14', 'Adamu.jpg', NULL, '2018-10-18 17:04:56'),
(69, 'Mr.', 'Married', 'Perry', 'Tei', 'Fleming', 'Male', '3027262525', 'perry@gmail.com', '2018-11-10', 7, 83, 6, 2896666, '2018-11-07', 'DSC_0685.jpg', NULL, '2018-11-07 09:54:33');

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
(8, 2, 'paresh9000@gmail.com', '$2y$10$iloveyouGodcositisyouuXXuPiaR4wUxMcMtSRoCFsEm.sE69mne', 'Editorials', 'Unblocked', '2018-10-21 20:09:25', '2018-10-21 20:09:25', '2018-10-21 20:09:25', '2018-10-21 20:09:25', 1),
(9, 64, 'adamumh@gmail.com', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y', 'Admin', 'Unblocked', '2018-11-05 18:20:28', '2018-11-05 18:20:28', '2018-11-05 18:20:28', '2018-11-05 18:20:28', 1),
(10, 69, 'perry@gmail.com', '$2y$10$iloveyouGodcositisyouu1eO201oU2P3j8UOBq8NZOnFRVZIQt0y', 'WriterReporter', 'Unblocked', '2018-11-11 18:51:28', '2018-11-11 18:51:28', '2018-11-11 18:51:28', '2018-11-11 18:51:28', 1);

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
(4, 64, 'mov.jpg', 'mov.jpg', 'Fantastic Beasts: The Crimes of Grindelwald gets mixed reviews', 'Headline', '2018-11-11 17:06:51', '0000-00-00 00:00:00'),
(5, 64, 'hack.jpg', 'hack.jpg', 'US man pleads guilty to game hacking charges', 'Headline', '2018-11-11 17:16:54', '0000-00-00 00:00:00'),
(6, 64, 'ani.jpg', 'ani.jpg', 'The \'painted wolves\' of Zimbabwe', 'Headline', '2018-11-11 18:08:07', '0000-00-00 00:00:00'),
(7, 64, 'ali.jpg', 'ali.jpg', 'Alibaba Singles Day sales frenzy surpasses records', 'Headline', '2018-11-11 18:24:26', '0000-00-00 00:00:00'),
(8, 64, 'phi.jpg', 'phi.jpg', 'Rappler: Philippines to charge critical news site with tax evasion', 'Headline', '2018-11-11 18:29:39', '0000-00-00 00:00:00'),
(9, 69, 'goog.jpg', 'goog.jpg', 'Google employees will now be able to more freely speak out over issues of sexual harassment at the firm.', 'Headline', '2018-11-11 20:03:09', '2018-11-11 20:07:50');

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `newss_id` int(11) NOT NULL,
  `draft_ids` int(11) NOT NULL,
  `tittle` varchar(155) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(20000) DEFAULT NULL,
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
(27, 41, 'Fantastic Beasts: The Crimes of Grindelwald gets mixed reviews', 'The latest Fantastic Beasts film The Crimes of Grindelwald has earned mixed reviews from critics.', '<p>It has a number of three-star reviews with suggestions that the plot is \"overburdened\" with details and preparing for future adventures.</p><p>There is praise for the \"vibrantly drawn\" characters and Jude Law is highlighted for his performance as young Dumbledore.</p><p>Many agree JK Rowling\'s imagination is \"as awe-inspiring as ever.\"</p><p>The second of five planned Fantastic Beasts films by JK Rowling also earns praise for its special effects.</p><ul><li><a href=\"https://www.bbc.co.uk/news/newsbeat-46152707\"><strong>Ezra Miller stole the show at the Fantastic Beasts sequel\'s premiere</strong></a></li></ul><p>Caryn James in <a href=\"https://www.hollywoodreporter.com/review/fantastic-beasts-crimes-grindelwald-review-1158267?utm_source=Sailthru&amp;utm_medium=email&amp;utm_campaign=THR%20Breaking%20News_2018-11-08%2013:00:00_Jfrosch&amp;utm_term=hollywoodreporter_breakingnews\"><strong>the Hollywood Reporter </strong></a>called it a \"vibrant, engaging improvement\" on the first Fantastic Beasts film.</p><p>\"The sequel has better and at times galvanising special effects, a darker tone and a high-stakes battle between good and evil.</p><p>\"Best of all, its characters are more vibrantly drawn, and tangled in relationships that range from delightful to lethal.\"</p><p>But she said the film has some \"serious liabilities, the gravest being a misbegotten performance by Johnny Depp as the villain of the title\".</p>', 64, 64, 3, 0, 0, 0, 'English', 'Archived', '2018-11-11', '2018-11-09', '2018-11-11 17:12:55', '2018-11-11 17:58:59', 4),
(28, 42, 'US man pleads guilty to game hacking charges', 'A US man accused of knocking game servers offline in a series of attacks has pleaded guilty to charges of computer hacking.', '<p>Sony, EA Origin and Steam were all hit by Utah resident Austin Thompson\'s attacks in 2013 and 2014.</p><p>Mr Thompson also admitted to causing damage costing $95,000 (Â£73,000) as part of his plea agreement.</p><p>The maximum sentence for the crimes is 10 years in jail and fines of up to $250,000.</p><p>In the attacks, gamers were prevented from playing as Mr Thompson swamped connections to servers with huge amounts of bogus data - so-called denial of service attacks.</p><p>Imminent attacks were announced via a Twitter account called \"derptrolling\" which also featured screenshots of error messages caused by the flood of data. Many of the game servers were offline for hours at a time.</p><p>Tweets sent via the derptrolling account suggested more than one person was behind the attacks, but Mr Thompson is the only person mentioned in a Department of Justice (DoJ) statement.</p><p>\"Denial of service attacks cost businesses millions of dollars annually,\" said US attorney <a href=\"https://www.justice.gov/usao-sdca/pr/utah-man-pleads-guilty-denial-service-computer-hacking-attacks\"><strong>Adam Braverman in the DoJ statement.</strong></a> \"We are committed to finding and prosecuting those who disrupt businesses, often for nothing more than ego.\"</p><p>Mr Thompson is due to be sentenced at a hearing on 1 March, 2019.</p>', 64, 64, 5, 0, 0, 0, 'English', '', '2018-11-11', '2018-11-25', '2018-11-11 17:17:05', '0000-00-00 00:00:00', 5),
(29, 43, 'The \'painted wolves\' of Zimbabwe', 'They are stunning; there\'s no question. And the name, \"painted wolves\", seems so apt.', '<p>Their dappled tan and black fur, shot through with flashes of white, dazzles in the sunlight.</p><p>You\'re going to become very familiar with these creatures; you may even fall in love with them, because they will feature in <a href=\"https://www.bbc.co.uk/programmes/p06mvmmr\"><strong>David Attenborough\'s new blockbuster TV series, Dynasties</strong></a>.</p><p>The BBC spent months filming the endangered African wild dogs of Mana Pools National Park in Zimbabwe, and wildlife <a href=\"https://www.nicholasdyer.com/index\"><strong>photographer Nick Dyer</strong></a> says viewers will be enthralled by the result.</p><p>The former London fund manager and marketing executive now dedicates his time and his camera to promoting the animals\' conservation, walking with three packs as they roam the floodplain of the Zambezi River.</p><p>\"During the day, they\'re mostly asleep but when they wake up, they leap and dance with absolute joy,\" he tells me. \"They have this great social bonding thing we call a greeting ceremony. They\'re so full of play, especially with their pups, so they\'re always chasing and pulling each other\'s tails, which is really great fun to watch.\"</p><p>They\'re in a separate evolutionary group from these more familiar canids. <i>Lycaon pictus</i> is their scientific name, which means something like \"painted wolf-like\".</p><p>But they certainly behave much like wolves and dogs. Lots of movement and lots of noise.</p><p>\"They have several calls, but perhaps the most endearing sound they make is the hoo call,\" explains Nick.</p><p>\"If they get separated from the pack, they put their head low and make this \'hoo, hoo\' noise, which is an incredibly haunting sound, but that sound can travel up to 2km and with their big ears they can pick it up, and that reunites the pack.\"</p><p>Whisper it quietly, they\'re also just a bit smelly. Nick recalls watching one animal regurgitate a meal of impala antelope and roll in it.</p><p>&nbsp;</p>', 64, 64, 8, 0, 0, 0, 'English', '', '2018-11-13', '2018-11-25', '2018-11-11 18:09:10', '0000-00-00 00:00:00', 6),
(30, 44, 'Alibaba Singles Day sales frenzy surpasses records', 'E-commerce giant Alibaba has set new sales records on Sunday for its biggest shopping day, the annual Singles Day.', '<p>The Chinese company hit a record $1bn in sales in 85 seconds, and then just shy of $10bn in the first hour of the 24-hour spree.</p><p>Alibaba also beat its 2017 revenue total, $25.3bn, with several hours still remaining.</p><p>Online discounts have been offered on 11 November, Alibaba\'s informal holiday for singles, since 2009.</p><p>The shopping festival is projected to hit over $32bn this year, according to a report by the global app market data provider App Annie.</p><p>The event was kicked off on Saturday with a gala featuring US singer Mariah Carey, a Japanese BeyoncÃ© impersonator and a shoe-shopping-themed Cirque du Soleil performance.</p><h2>What is Singles Day?</h2><p>Alibaba invented the occasion to celebrate the unattached as an antithesis to the romantically involved on Valentine\'s Day.</p><p>It is now the world\'s biggest online sales event and last year\'s total was more than Black Friday and Cyber Monday\'s totals combined, according to Bloomberg.</p><p>Some 180,000 brands are available in the shopping blitz, including top technology companies Xaomi, Apple and Dyson.</p><p>Last year, the Chinese company expanded the event to the Western market, with downloads of its app AliExpress surging in the US and UK.</p><p><strong>Will Singles Day keep on growing?</strong></p><p>The shopping frenzy has broken world records in e-commerce sales - surpassing last year\'s record at 17:34 Hong Kong Time (10:34 GMT).</p><p>However, observers believe as the event matures, its growth rate will slow down.</p><p>Alibaba has also faced new challenges this year, such as new rivals in the market, a slowing economy and its stock dropping 16% thanks to China\'s trade war with the US.</p><p>The November sale event is expected to be founder Jack Ma\'s last at the helm of the company. The current chief executive will take over as chairman next year, Alibaba announced in September.</p>', 64, 64, 6, 0, 0, 0, 'English', '', '2018-11-11', '2018-11-18', '2018-11-11 18:24:44', '2018-11-11 18:25:58', 7),
(31, 45, 'Rappler: Philippines to charge critical news site with tax evasion', 'The Philippines says it will charge the major news site Rappler, which has been critical of President Rodrigo Duterte, with tax evasion.', '<p>Prosecutors said on Friday they also have grounds to indict founder Maria Ressa for violating tax laws after not declaring gains made in tax returns.</p><p>Rappler has denied the charges, calling the case a \"clear form of continuing intimidation and harassment\".</p><p>If found guilty Ms Ressa could be fined and jailed for up to 10 years.</p><p>The government accuses Rappler and its chief executive of failing to pay tax on 2015 bond sales which resulted in 162.5 million pesos ($3 million; Â£2.3 million) in gains.</p><ul><li><a href=\"https://www.bbc.com/news/world-asia-42713897\"><strong>Why Rappler is raising Philippine press freedom fears</strong></a></li><li><a href=\"https://www.bbc.com/news/world-36659258\"><strong>Duterte: The \'strongman\' of the Philippines</strong></a></li><li><a href=\"https://www.bbc.com/news/world-asia-15527446\"><strong>The state of Philippine media</strong></a></li></ul><p>The English-language outlet\'s lawyer told journalists the case \"has no legal leg to stand on\" because Rappler did not evade any tax obligation.</p><p>A justice department official told news agency AFP the charges would be filed in court next week.</p><p>Earlier this year, <a href=\"https://www.bbc.co.uk/news/world-asia-42692723\"><strong>the site had its licence revoked by the state</strong></a>, igniting a national debate about press freedom.</p><h2>What is Rappler?</h2><p>Founded in 2012 by Ms Ressa, a former CNN journalist, Rappler has grown a reputation for its hard-hitting, investigative journalism.</p><p>The online news site is one of the few Philippine media organisations openly critical of the country\'s leader, questioning his public statement\'s accuracy and particularly his deadly war of drugs.</p><p>The president has labelled the site\'s reports as \"twisted\" and banned its reporter from covering his official activities.</p><p>\"It is meant for maximum impact of intimidation,\" Ms Ressa told The New York Times on Friday after receiving an award from the International Center for Journalists in Washington, DC.</p><p>The Philippines has had one of the strongest records of press freedom in Asia, but observers say this has changed in Mr Duterte\'s presidency.</p><p>In 2016, <a href=\"https://www.bbc.co.uk/news/world-asia-36423329\"><strong>Mr Duterte was criticised for saying some of the many journalists killed in the country deserved to die</strong></a>.</p><p>Since 1986, 176 journalists have been killed in the country, making it one of the most dangerous in the world for reporters.</p>', 64, 64, 7, 0, 0, 0, 'English', '', '2018-11-11', '2018-11-25', '2018-11-11 18:29:50', '0000-00-00 00:00:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_category`
--

CREATE TABLE `tbl_news_category` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` varchar(50) DEFAULT NULL,
  `newscat_detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`newscat_id`, `newscat_name`, `newscat_detail`, `datecreated`, `systdate`) VALUES
(2, 'Politics', 'Political news around the world', '2018-11-07 14:14:05', '2018-11-07 14:14:05'),
(3, 'Entertainment Arts News', 'All entertainments related news', '2018-11-11 09:04:24', '2018-11-11 09:04:24'),
(4, 'Sport News', 'All sport related news', '2018-11-11 09:04:49', '2018-11-11 09:04:49'),
(5, 'Technology News', 'All technology related news', '2018-11-11 09:05:30', '2018-11-11 09:05:30'),
(6, 'Business News', 'All business related news', '2018-11-11 09:06:15', '2018-11-11 09:06:15'),
(7, 'Culture and Tourism News', 'All culture and tourism related news', '2018-11-11 09:07:58', '2018-11-11 09:07:58'),
(8, 'Science News', 'All news on science', '2018-11-11 09:14:45', '2018-11-11 09:14:45');

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `advertID` int(11) DEFAULT NULL,
  `employID` int(11) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amoount` float DEFAULT NULL,
  `paymentdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `balance` float DEFAULT NULL,
  `sttus` tinyint(1) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
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
  `name` varchar(35) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `birthdate` date DEFAULT NULL,
  `addressID` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `systdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`adre_id`);

--
-- Indexes for table `tbl_adverts`
--
ALTER TABLE `tbl_adverts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `advertname` (`advertname`),
  ADD UNIQUE KEY `tittle` (`tittle`),
  ADD KEY `advertpackageID` (`advertpackageID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_advert_category`
--
ALTER TABLE `tbl_advert_category`
  ADD PRIMARY KEY (`advert_id`),
  ADD UNIQUE KEY `name` (`advert_name`);

--
-- Indexes for table `tbl_advert_packages`
--
ALTER TABLE `tbl_advert_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_news_id` (`comment_news_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertID` (`advertID`),
  ADD KEY `employID` (`employID`),
  ADD KEY `userID` (`userID`);

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
  MODIFY `adre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_adverts`
--
ALTER TABLE `tbl_adverts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_advert_category`
--
ALTER TABLE `tbl_advert_category`
  MODIFY `advert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_advert_packages`
--
ALTER TABLE `tbl_advert_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_draft_news`
--
ALTER TABLE `tbl_draft_news`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_employee_login`
--
ALTER TABLE `tbl_employee_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_employment_type`
--
ALTER TABLE `tbl_employment_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_liked_news`
--
ALTER TABLE `tbl_liked_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `newss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_news_tag`
--
ALTER TABLE `tbl_news_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_unliked_news`
--
ALTER TABLE `tbl_unliked_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `tbl_adverts_ibfk_1` FOREIGN KEY (`advertpackageID`) REFERENCES `tbl_advert_packages` (`id`),
  ADD CONSTRAINT `tbl_adverts_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `tbl_advert_category` (`advert_id`),
  ADD CONSTRAINT `tbl_adverts_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `tbl_comments_ibfk_1` FOREIGN KEY (`comment_news_id`) REFERENCES `tbl_news` (`newss_id`);

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
  ADD CONSTRAINT `tbl_news_tag_ibfk_1` FOREIGN KEY (`newsID`) REFERENCES `tbl_news` (`newss_id`),
  ADD CONSTRAINT `tbl_news_tag_ibfk_2` FOREIGN KEY (`tagID`) REFERENCES `tbl_tag` (`id`);

--
-- Constraints for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`advertID`) REFERENCES `tbl_adverts` (`id`),
  ADD CONSTRAINT `tbl_payment_ibfk_2` FOREIGN KEY (`employID`) REFERENCES `tbl_employee` (`id`),
  ADD CONSTRAINT `tbl_payment_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `tbl_user` (`id`);

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

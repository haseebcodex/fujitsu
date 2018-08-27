-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2018 at 03:44 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logoskill_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` text NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `password`) VALUES
(1, 'codex', 'codex4ever');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `order_id` int(11) NOT NULL,
  `package` text NOT NULL,
  `price` int(11) NOT NULL,
  `uname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `text_added` text NOT NULL,
  `images` text NOT NULL,
  `design_type` text NOT NULL,
  `design_usage` text NOT NULL,
  `sample_url` text NOT NULL,
  `industry` text NOT NULL,
  `website_address` text NOT NULL,
  `bleed_size` text NOT NULL,
  `pincode` text NOT NULL,
  `created` datetime NOT NULL,
  `phone` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brochure`
--

CREATE TABLE `brochure` (
  `order_id` int(11) NOT NULL,
  `package` text NOT NULL,
  `price` int(11) NOT NULL,
  `uname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `size` text NOT NULL,
  `sides` text NOT NULL,
  `purpose_brochure` text NOT NULL,
  `images` text NOT NULL,
  `industry` text NOT NULL,
  `printing` text NOT NULL,
  `pincode` text NOT NULL,
  `created` datetime NOT NULL,
  `phone` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `name`) VALUES
(1, 'business'),
(2, 'fashion'),
(3, 'sports'),
(4, 'education'),
(5, 'consulting');

-- --------------------------------------------------------

--
-- Table structure for table `confirmed_orders`
--

CREATE TABLE `confirmed_orders` (
  `confirm_id` int(11) NOT NULL,
  `price` text NOT NULL,
  `package_name` text NOT NULL,
  `payment_type` text NOT NULL,
  `firstname_on_creditcard` text NOT NULL,
  `lastname_on_creditcard` text NOT NULL,
  `creditcard_type` text NOT NULL,
  `phonenumber` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` text NOT NULL,
  `business_card` text NOT NULL,
  `logo_illus` text NOT NULL,
  `one_bussiness_day` text NOT NULL,
  `transid` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `invoiceid` text NOT NULL,
  `Authcode` text NOT NULL,
  `DateNTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirmed_orders`
--

INSERT INTO `confirmed_orders` (`confirm_id`, `price`, `package_name`, `payment_type`, `firstname_on_creditcard`, `lastname_on_creditcard`, `creditcard_type`, `phonenumber`, `country`, `city`, `state`, `zip_code`, `business_card`, `logo_illus`, `one_bussiness_day`, `transid`, `email`, `invoiceid`, `Authcode`, `DateNTime`) VALUES
(1, '39', '', 'cc', 'Quynh', 'Nguyen', 'Discover', '8322088639', 'United States', 'Broken Arrow', 'Oklahoma', '74012', '', '', '', '61131236459', 'quynhsq@gmail.com', '989720', '00739R', '0000-00-00 00:00:00'),
(2, '169', '', 'cc', 'giovanna ', 'hale', 'Visa', '9185150694', 'United States', 'Broken Arrow', 'OK', '74014', '', '', '', '61139875458', 'giohale@gmail.com', '109013', '713183', '0000-00-00 00:00:00'),
(3, '169', '', 'cc', 'Rachell ', 'Nielsen', 'Amex', '8186352161', 'United States', 'Malibu', 'CA', '90265', '', '', '', '61180262742', 'rachellicm@gmail.com', '209320', '264268', '0000-00-00 00:00:00'),
(4, '', 'logo/Corporate', 'cc', 'Charles', 'Pinson Rose', 'Visa', '4154304270', 'United States', 'San Francisco', 'CA', '94105', '', '', '', '61208596858', 'dan@perigonwealth.com', '585181', '030736', '0000-00-00 00:00:00'),
(5, '', 'logo/Corporate', 'cc', 'Charles', 'Pinson Rose', 'Visa', '4154304270', 'United States', 'San Francisco', 'CA', '94105', '', '', '', '61208596928', 'dan@perigonwealth.com', '120921', '030168', '0000-00-00 00:00:00'),
(6, '999', '', 'cc', 'Zeeshan', 'AHemd', 'Visa', '3152238226', 'Pakistan', 'karachi', 'sindh', '75400', '', '', '', '60106665573', 'zeeshanahmed26@hotmail.com', '', 'KKMXXA', '2018-08-01 08:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_leads`
--

CREATE TABLE `contactus_leads` (
  `Fname` varchar(1000) NOT NULL,
  `Lname` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus_leads`
--

INSERT INTO `contactus_leads` (`Fname`, `Lname`, `Email`, `Country`, `Phone`, `Message`) VALUES
('Andrew', 'Dominik', 'email3@qualityguestpost.com', 'India', '+911149053214', 'Hi,\r\n \r\nAre you looking for a guest post service to help your SEO & branding?\r\n \r\nWe can help you to get more guest posts on relevant blogs at USD 30 per post. You can forward this email to your SEO agency, so we can work together for you to achieve the best possible outcome.\r\n \r\nYou can also try our service here qualityguestpost.com\r\n \r\n\r\nRegards\r\nAndrew Dominik\r\nSkype: qualityguestpost\r\nwww.qualityguestpost.com');

-- --------------------------------------------------------

--
-- Table structure for table `custom`
--

CREATE TABLE `custom` (
  `order_id` int(11) NOT NULL,
  `logo_design_concept` text NOT NULL,
  `logo_revision` text NOT NULL,
  `logo_additional` text NOT NULL,
  `total_website_pages` text NOT NULL,
  `website_revisions` text NOT NULL,
  `website_monthly_maintenance` text NOT NULL,
  `website_hosting` text NOT NULL,
  `website_additional` text NOT NULL,
  `website_content_msystem` text NOT NULL,
  `website_domain` text NOT NULL,
  `website_google_map` text NOT NULL,
  `website_search_engine` text NOT NULL,
  `stationary_concepts` text NOT NULL,
  `stationary_revisions` text NOT NULL,
  `stationary_add_faxcover` text NOT NULL,
  `stationary_add_emailsignature` text NOT NULL,
  `stationary_add_letterhead` text NOT NULL,
  `brochure_type` text NOT NULL,
  `brochure_concepts` text NOT NULL,
  `brochure_revisions` text NOT NULL,
  `banner_design` text NOT NULL,
  `banner_concepts` text NOT NULL,
  `banner_revisions` text NOT NULL,
  `grand` text NOT NULL,
  `pincode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom`
--

INSERT INTO `custom` (`order_id`, `logo_design_concept`, `logo_revision`, `logo_additional`, `total_website_pages`, `website_revisions`, `website_monthly_maintenance`, `website_hosting`, `website_additional`, `website_content_msystem`, `website_domain`, `website_google_map`, `website_search_engine`, `stationary_concepts`, `stationary_revisions`, `stationary_add_faxcover`, `stationary_add_emailsignature`, `stationary_add_letterhead`, `brochure_type`, `brochure_concepts`, `brochure_revisions`, `banner_design`, `banner_concepts`, `banner_revisions`, `grand`, `pincode`) VALUES
(3, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '983421'),
(4, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '423315'),
(5, '3', '2', '69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '144', '720939'),
(6, '1', '4', '69', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '124', '657296'),
(7, '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '349170'),
(8, '2', '3', '69', '3', '3', '9', '5', 'set', 'set', 'set', 'set', '11', '1', '2', '11', '11', '11', '3', '3', '2', '0', '0', '0', '2173', '3396'),
(9, '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '183783'),
(10, '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '512286'),
(11, '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '90', '492892'),
(12, '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '449', '245728'),
(13, '0', '0', '0', '2', '3', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '524', '');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `order_id` int(11) NOT NULL,
  `package` text NOT NULL,
  `price` int(11) NOT NULL,
  `uname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `name_logo` text NOT NULL,
  `discription_design` text NOT NULL,
  `discription_project` text NOT NULL,
  `color_preference` text NOT NULL,
  `industry` text NOT NULL,
  `target_audience` text NOT NULL,
  `pincode` text NOT NULL,
  `created` datetime NOT NULL,
  `phone` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`order_id`, `package`, `price`, `uname`, `email`, `name_logo`, `discription_design`, `discription_project`, `color_preference`, `industry`, `target_audience`, `pincode`, `created`, `phone`, `country`) VALUES
(170, 'Startup', 39, 'holla', 'holla@yahoo.com', 'mydreammer', 'will explain', 'latter', 'light blue', 'Fashion', 'public', '3468', '2018-05-31 08:06:33', '', '0'),
(171, '', 0, 'Nicole Guerrero', 'ng001114@gmail.com', 'Lipstick barbers', 'Authentic barber pole using lipstick as actual barbers pole.', 'Lipstick barbers pole', 'Red white black blue', 'Fashion', 'Men', '264577', '2018-05-31 11:22:17', '', '0'),
(172, '', 0, 'cathy', 'ccengija@hotmail.com', 'U.S. CENTRAL', 'trucking co.\r\n', '', 'orange', 'Travel', '', '474930', '2018-05-31 11:27:43', '', '0'),
(174, '', 0, 'jorano', 'wyclif2011@hotmail.com', 'ONE STEP DISTRICT', 'clothing design logo', 'for online clothing store', 'black', 'Fashion', 'everyone', '406848', '2018-05-31 11:45:58', '', '0'),
(175, '', 0, 'Aleka Lee', 'alekamarie@icloud.com', 'Styles by alekamarie', 'Costomology design a logo with the sheer comb ', '', 'Orange ', 'Other', '', '409571', '2018-05-31 11:52:56', '', '0'),
(176, '', 0, 'Luke Jones', 'lukejonesgg@gmail.com', 'Fool Sends', 'qergqegbqetbrtb', '', 'ervgerqer', 'Travel', '', '676940', '2018-05-31 11:53:45', '', '0'),
(177, '', 0, 'Aniyah Louder', 'aniyahtocute12@gamail.com', 'Quenn of slimes', 'My company name ', 'A logo', 'Rainbow', 'Craft', '12', '117645', '2018-05-31 11:53:50', '', '0'),
(178, '', 0, 'owen', 'owenrothenberg101@gmail.com', 'Owen Films', 'ELECTRONIC high tec', '', 'all colors', 'Entertainment', 'movie', '259442', '2018-05-31 12:11:05', '', '0'),
(180, 'Startup', 169, 'gretceh', 'gretchenweewee@gmail.com', 'Google', 'Colorful, lots of emojis', 'stuff', 'pink orange and teal', 'Aviation', 'children', '268983', '2018-06-05 09:54:21', '', '0'),
(181, 'Startup', 39, 'Shandria whitney', 'Shandria49@gmail.com', 'Sparkles Fierce foreign hair', 'Hair logo ', 'A hair logo for Brazilian hair', 'Pink black purple ', 'Other', 'Hair buyers', '883827', '2018-06-05 20:38:23', '', '0'),
(189, '', 0, 'Shandria whitney', 'Shandria49@gmail.com', 'Sparkles Fantasy Hair', 'A nice gold purple black and pink design with a African American lady with long hair ', '', 'Purple', 'Other', 'Hair clients ', '361789', '2018-06-06 10:23:24', '', '0'),
(192, 'Professional', 69, 'Tonya Logan', 'tlotv7@comcast.net', 'Day of Dance Fitness', 'we talked about this on phone.. Dance splash ideas ', '', 'on black background  brite royal blue, lime, hot magenta', 'Sports', 'Dance Fitness attendees Zumba, Hip Hop, HIIT', '636428', '2018-06-06 17:35:21', '303-953-0954', 'United States'),
(194, 'Startup', 39, 'quynh', 'quynhsq@gmail.com', 'Sweet Mia', 'It\'s a natural nail spa. I want the logo to be simple but pretty. I like light green.', 'Natural nail spa using organic products for nail treatments', 'light green, vintage color', 'Spa', 'women', '989720', '2018-06-07 13:15:47', '8322088639', 'United States'),
(195, 'Professional', 69, 'Tonya Logan', 'tlotv7@comcast.ney', 'Day of Dance Fitness', 'Day of Dance Fitness', 'Invoice # 9807', 'already done', 'Sports', 'fitness', '45235', '2018-06-07 18:39:20', '303-953-0954', 'United States'),
(196, 'Professional', 69, 'Alan Murphy', 'alna@workforce.com', 'ALan Murphy', 'ALan Murphu', 'ALan Murphy', 'blue', 'Aviation', 'Me', '421685', '2018-06-07 18:59:07', '879876545', 'United States'),
(197, 'Startup', 39, 'Michael McClellan', 'signaturemike143@yahoo.com', 'Nation Pro Roofing, LLC', '', '', 'Red ', 'Construction', 'Home owners', '39436', '2018-06-12 13:06:36', '(214) 578-5713', 'United States'),
(198, 'Ultimate', 169, 'cotter', 'cotter@gmail.com', 'foods', 'foods logo', 'foods logo', 'green', 'Food', 'test', '443980', '2018-06-13 00:33:14', '+1256985632', 'United States'),
(199, 'Ultimate', 169, 'joel hale', 'joelhale@outlook.com', 'joel hale', 'any', 'any', 'any', 'Other', 'any', '109013', '2018-06-13 15:32:21', '9186336142', 'United States'),
(200, 'Ultimate', 169, 'Alan Murphy', 'alan@workforce.com', 'klvhkvjkjklb', 'hkfjkvjhclyu', 'jlfyjfkgufoyuf', 'jhcfyfhfyu', 'Entertainment', 'vjhvjh', '103663', '2018-06-13 15:33:32', '876467896', 'United States'),
(201, 'Startup', 39, 'testing', 'codo@yahoo.com', 'asdf', 'adsf', 'sdf', 'dsf', 'Aviation', 'asdf', '841390', '2018-06-26 04:06:51', 'sdaf', 'United States'),
(202, 'Professional', 69, 'Prince Cummings', 'prince5cum@yahoo.com ', 'Action For Children and Youths Development Agency (ACYDA -SL)', 'I need a brillant and distinct logo showing children or Youths with bright colors exposing the opportunity these children have  ', 'The organisation is a non governmental organisation that will help children and youth to become some body in society. So it has to reflect that. ', 'light blue, light green and yellow or gold.', 'Children', 'Children and Youths ', '332499', '2018-06-26 09:24:43', '+232 78764190', 'Sierra Leone'),
(203, 'Corporate', 129, 'wewrfe', 'ere@shghs.com', 'erewr', 'ewrwer', 'ewrwe', 'eweqw', 'Fashion', 'eqweq', '335827', '2018-06-27 04:10:44', '3423432', 'United States'),
(204, 'Startup', 39, 'Randy Gray', 'Rgray7910@gmail.com', 'RUNVEGAN', 'I would like for the design to say â€œRUNVEGANâ€ but could you put the â€˜Nâ€™ and â€˜Vâ€™ together to look like â€RUNEGANâ€ ??', '', 'Iâ€™m thinking either make the run portion green and the vegan portion yellow', 'Sports', '', '669498', '2018-06-28 07:52:59', '1', 'United States'),
(205, 'Professional from business-logo-design', 69, 'Dauphin', 'junior76vital@gmail.com', 'DAVI Rent a car', 'All', 'Rent a car', 'Green', 'Automotive', 'All', '457669', '2018-06-29 01:30:18', '36705954', 'United States'),
(206, 'Professional from business-logo-design', 69, 'ryan griffith', 'Theexecutiveinspection@gmail.com', 'EXECUTIVE PROPERTY INSPECTIONS', 'Gold leaf', 'Badge', 'Gold and black', 'Other', 'Home buyers', '528819', '2018-07-06 13:38:41', '7027385324', 'United States'),
(207, 'Startup from business-logo-design', 39, 'Melanie', 'jimenezsantosm65@gmail.com', 'Family Mexican Gril', 'I want to put name of the restaurant website and names ', '', 'red', 'Aviation', '', '260368', '2018-07-06 14:14:38', '9083368187', 'United States'),
(208, 'Startup', 39, 'asdf', 'test@yahoo.com', 'sdf', 'adfsadsf', 'asdfsadf', 'sadf', 'Aviation', 'sadf', '673084', '2018-07-11 01:27:27', '23432', 'United States'),
(210, 'Ultimate', 169, 'Rachell Nielsen', 'rachellicm@gmail.com', 'Psychology Center at the Ridge ', 'Jaime E. Medvene Ph.D. & Associates', '', 'blue', 'Aviation', 'Patients Psychology', '209320', '2018-07-11 11:39:56', '818-6352161', 'United States'),
(212, 'Startup', 39, 'asdf', 'test@yahoo.com', 'asdf', 'asdf', 'sdaf', 'asdf', 'Aviation', 'asdf', '488088', '2018-07-24 04:14:06', '2324', 'United States'),
(213, 'Startup', 39, 'asdf', 'test@yahoo.com', 'asdf', 'asdf', 'sdaf', 'asdf', 'Aviation', 'asdf', '488088', '2018-07-24 04:14:23', '2324', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `svgs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `cid`, `svgs`) VALUES
(31, 2, 'asdasasd'),
(41, 1, '{\"svg\":{\"value\":\"<svg id=osamaShakirLayer_1osamaShakir data-name=osamaShakirLayer 1osamaShakir xmlns=osamaShakirhttp://www.w3.org/2000/svgosamaShakir viewBox=osamaShakir0 0 309.82 214.55osamaShakir><defs><style>.cls-1{fill:#d329ab;}.cls-2{fill:#0e5fe0;}.cls-3{fill:#259919;}.cls-4{font-size:68.04px;fill:#6d0b0b;}.cls-4,.cls-7{font-family:MyriadPro-Regular, Myriad Pro;}.cls-5{letter-spacing:-0.01em;}.cls-6{letter-spacing:-0.01em;}.cls-7{font-size:35.92px;fill:#5bed0f;}.cls-8{letter-spacing:-0.01em;}</style></defs><title>new1logo</title><polygon class=osamaShakircls-1osamaShakir points=osamaShakir101.93 0 119 52.55 174.25 52.55 129.55 85.02 146.63 137.57 101.93 105.09 57.23 137.57 74.3 85.02 29.6 52.55 84.85 52.55 101.93 0osamaShakir/><rect class=osamaShakircls-2osamaShakir x=osamaShakir113.43osamaShakir y=osamaShakir30.55osamaShakir width=osamaShakir107osamaShakir height=osamaShakir60osamaShakir rx=osamaShakir12osamaShakir ry=osamaShakir12osamaShakir/><circle cx=osamaShakir167.43osamaShakir cy=osamaShakir113.55osamaShakir r=osamaShakir53osamaShakir/><polygon class=osamaShakircls-3osamaShakir points=osamaShakir213.52 120.55 167.33 120.55 144.24 160.55 167.33 200.55 213.52 200.55 236.61 160.55 213.52 120.55osamaShakir/><text class=osamaShakircls-4osamaShakir transform=osamaShakirtranslate(0 177.99)osamaShakir><tspan class=osamaShakircls-5osamaShakir>L</tspan><tspan x=osamaShakir31.16osamaShakir y=osamaShakir0osamaShakir>ogo He</tspan><tspan class=osamaShakircls-6osamaShakir x=osamaShakir236.77osamaShakir y=osamaShakir0osamaShakir>r</tspan><tspan x=osamaShakir258.34osamaShakir y=osamaShakir0osamaShakir>e</tspan></text></svg>\",\"company\":{\"position\":{\"left\":\"239\",\"top\":\"334\"}},\"slogan\":{\"position\":{\"left\":\"371\",\"top\":\"397\"}}},\"icon\":{\"value\":\"<svg id=osamaShakirLayer_1osamaShakir data-name=osamaShakirLayer 1osamaShakir xmlns=osamaShakirhttp://www.w3.org/2000/svgosamaShakir viewBox=osamaShakir0 0 207.01 200.55osamaShakir><defs><style>.cls-1{fill:#d329ab;}.cls-2{fill:#0e5fe0;}.cls-3{fill:#259919;}</style></defs><title>new1logo2</title><polygon class=osamaShakircls-1osamaShakir points=osamaShakir72.33 0 89.4 52.55 144.65 52.55 99.95 85.02 117.03 137.57 72.33 105.09 27.63 137.57 44.7 85.02 0 52.55 55.25 52.55 72.33 0osamaShakir/><rect class=osamaShakircls-2osamaShakir x=osamaShakir83.83osamaShakir y=osamaShakir30.55osamaShakir width=osamaShakir107osamaShakir height=osamaShakir60osamaShakir rx=osamaShakir12osamaShakir ry=osamaShakir12osamaShakir/><circle cx=osamaShakir137.83osamaShakir cy=osamaShakir113.55osamaShakir r=osamaShakir53osamaShakir/><polygon class=osamaShakircls-3osamaShakir points=osamaShakir183.92 120.55 137.73 120.55 114.64 160.55 137.73 200.55 183.92 200.55 207.01 160.55 183.92 120.55osamaShakir/></svg>\",\"position\":{\"left\":\"269\",\"top\":\"222\"},\"size\":{\"width\":\"207\",\"height\":\"200\"}}}'),
(47, 4, '{\"svg\":{\"value\":\"<svg id=osamaShakirLayer_1osamaShakir data-name=osamaShakirLayer 1osamaShakir xmlns=osamaShakirhttp://www.w3.org/2000/svgosamaShakir xmlns:xlink=osamaShakirhttp://www.w3.org/1999/xlinkosamaShakir viewBox=osamaShakir0 0 504.95 417.8osamaShakir><defs><style>.cls-1{fill:url(#linear-gradient);}.cls-2{fill:#123884;}.cls-3{fill:#77787b;}.cls-4{fill:#5bc2ea;}.cls-5{fill:#1ca6df;}.cls-6{fill:#3baae0;}.cls-7{fill:#2c94d1;}.cls-8{fill:#3280c3;}.cls-9{font-size:89.98px;font-family:Lato-Regular, Lato;letter-spacing:-0.02em;}.cls-10{letter-spacing:0em;}</style><linearGradient id=osamaShakirlinear-gradientosamaShakir x1=osamaShakir276.36osamaShakir y1=osamaShakir328osamaShakir x2=osamaShakir537.55osamaShakir y2=osamaShakir328osamaShakir gradientUnits=osamaShakiruserSpaceOnUseosamaShakir><stop offset=osamaShakir0osamaShakir stop-color=osamaShakir#d0d2d3osamaShakir/><stop offset=osamaShakir0.52osamaShakir stop-color=osamaShakir#fffosamaShakir/><stop offset=osamaShakir1osamaShakir stop-color=osamaShakir#d0d2d3osamaShakir/></linearGradient></defs><title>education123</title><path class=osamaShakircls-1osamaShakir d=osamaShakirM407,197.4A130.6,130.6,0,1,0,537.55,328,130.6,130.6,0,0,0,407,197.4ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM328.37,197c-11.16,3.44-22.45-1.07-22.45-1.07s6.79-10.08,17.95-13.52,22.45,1.06,22.45,1.06S339.52,193.54,328.37,197ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM307.58,168.06c-6.81,9.48-6.14,21.62-6.14,21.62S313.16,186.45,320,177s6.14-21.62,6.14-21.62S314.4,158.58,307.58,168.06ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM291.17,223.9c-10.52,5.06-22.36,2.27-22.36,2.27s5.22-11,15.75-16,22.36-2.28,22.36-2.28S301.69,218.84,291.17,223.9ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM266.33,198.38c-5.34,10.39-2.87,22.3-2.87,22.3s11.11-4.93,16.45-15.32,2.86-22.29,2.86-22.29S271.66,188,266.33,198.38ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM265.66,259.88C257.23,268,245.11,269,245.11,269s1.55-12.07,10-20.15,20.54-9.12,20.54-9.12S274.08,251.8,265.66,259.88ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM234.1,243.37c-1.83,11.53,4.22,22.08,4.22,22.08s9-8.15,10.86-19.68S245,223.69,245,223.69,235.94,231.84,234.1,243.37ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM249.81,307.44c-6.16,9.92-17.64,13.93-17.64,13.93s-1.49-12.07,4.67-22,17.64-13.93,17.64-13.93S256,297.52,249.81,307.44ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM215.15,299.27c1.08,11.62,9.55,20.34,9.55,20.34s6.73-10.13,5.65-21.75-9.56-20.35-9.56-20.35S214.06,287.64,215.15,299.27ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM252,354.68c-2.33,11.44-11.71,19.19-11.71,19.19s-5.58-10.8-3.24-22.24,11.7-19.19,11.7-19.19S254.38,343.25,252,354.68ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM216.7,359.05c5.05,10.52,16,15.76,16,15.76s2.79-11.83-2.25-22.36-16-15.77-16-15.77S211.65,348.52,216.7,359.05ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM268.55,405.85c.66,11.66-6.43,21.54-6.43,21.54s-8.16-9-8.81-20.68,6.43-21.53,6.43-21.53S267.89,394.2,268.55,405.85ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM235.48,419.08C243.05,428,255,430.24,255,430.24s-.31-12.16-7.88-21.05S227.6,398,227.6,398,227.92,410.18,235.48,419.08ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM300.82,439.72c5.6,10.25,3.44,22.21,3.44,22.21S293,457.29,287.42,447,284,424.83,284,424.83,295.22,429.48,300.82,439.72ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM276.64,465.86c10.65,4.79,22.41,1.71,22.41,1.71s-5.5-10.85-16.15-15.63-22.42-1.7-22.42-1.7S266,461.08,276.64,465.86ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM342.59,462.32c9,7.45,11.42,19.36,11.42,19.36s-12.16-.15-21.15-7.6-11.42-19.36-11.42-19.36S333.6,454.88,342.59,462.32ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM329.81,495.56c11.66.5,21.45-6.72,21.45-6.72s-9.13-8-20.8-8.54S309,487,309,487,318.14,495.06,329.81,495.56ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM358.26,165.68c-10,6-22,4.41-22,4.41s4.15-11.43,14.13-17.47,22-4.42,22-4.42S368.25,159.63,358.26,165.68ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM485.54,197c11.16,3.44,22.46-1.07,22.46-1.07s-6.8-10.08-18-13.52-22.45,1.06-22.45,1.06S474.39,193.54,485.54,197ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM506.33,168.06c6.82,9.48,6.14,21.62,6.14,21.62s-11.72-3.23-18.53-12.71-6.15-21.62-6.15-21.62S499.52,158.58,506.33,168.06ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM522.74,223.9c10.53,5.06,22.37,2.27,22.37,2.27s-5.23-11-15.75-16S507,207.86,507,207.86,512.22,218.84,522.74,223.9ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM547.59,198.38c5.33,10.39,2.87,22.3,2.87,22.3s-11.12-4.93-16.45-15.32-2.87-22.29-2.87-22.29S542.25,188,547.59,198.38ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM548.26,259.88C556.68,268,568.8,269,568.8,269s-1.55-12.07-10-20.15-20.54-9.12-20.54-9.12S539.83,251.8,548.26,259.88ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM579.81,243.37c1.84,11.53-4.21,22.08-4.21,22.08s-9-8.15-10.87-19.68S569,223.69,569,223.69,578,231.84,579.81,243.37ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM564.11,307.44c6.15,9.92,17.63,13.93,17.63,13.93s1.5-12.07-4.66-22-17.64-13.93-17.64-13.93S558,297.52,564.11,307.44ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM598.77,299.27c-1.08,11.62-9.56,20.34-9.56,20.34s-6.72-10.13-5.64-21.75,9.56-20.35,9.56-20.35S599.85,287.64,598.77,299.27ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM561.87,354.68c2.34,11.44,11.71,19.19,11.71,19.19s5.59-10.8,3.25-22.24-11.71-19.19-11.71-19.19S559.54,343.25,561.87,354.68ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM597.22,359.05c-5.05,10.52-16,15.76-16,15.76s-2.79-11.83,2.26-22.36,16-15.77,16-15.77S602.26,348.52,597.22,359.05ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM545.36,405.85c-.65,11.66,6.44,21.54,6.44,21.54s8.15-9,8.81-20.68-6.44-21.53-6.44-21.53S546,394.2,545.36,405.85ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM578.43,419.08c-7.56,8.89-19.51,11.16-19.51,11.16s.32-12.16,7.88-21.05S586.31,398,586.31,398,586,410.18,578.43,419.08ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM513.09,439.72c-5.6,10.25-3.44,22.21-3.44,22.21s11.24-4.64,16.84-14.89,3.44-22.21,3.44-22.21S518.69,429.48,513.09,439.72ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM537.27,465.86c-10.65,4.79-22.41,1.71-22.41,1.71s5.51-10.85,16.16-15.63,22.41-1.7,22.41-1.7S547.93,461.08,537.27,465.86ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM471.32,462.32c-9,7.45-11.42,19.36-11.42,19.36s12.16-.15,21.16-7.6,11.41-19.36,11.41-19.36S480.31,454.88,471.32,462.32ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM484.11,495.56c-11.67.5-21.45-6.72-21.45-6.72s9.13-8,20.79-8.54S504.9,487,504.9,487,495.77,495.06,484.11,495.56ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM455.65,165.68c10,6,22.05,4.41,22.05,4.41s-4.15-11.43-14.14-17.47-22-4.42-22-4.42S445.67,159.63,455.65,165.68ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-3osamaShakir d=osamaShakirM407,197.4A130.6,130.6,0,1,0,537.55,328,130.6,130.6,0,0,0,407,197.4Zm0,253.08A122.49,122.49,0,1,1,529.44,328,122.49,122.49,0,0,1,407,450.48ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM339.75,367.28V295.44a94.74,94.74,0,0,0-15.86,6v88.64a92.23,92.23,0,0,1,81.09,0C384.16,370.27,360.57,362,339.75,367.28ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM474.16,295.44v71.84c-20.82-5.25-44.4,3-65.22,22.79a92.23,92.23,0,0,1,81.09,0V301.43A94.84,94.84,0,0,0,474.16,295.44ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM361.15,277.81a53.2,53.2,0,0,0-21.4.84v16.79a92.13,92.13,0,0,1,21.4-3.33ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir250.5 153.43 250.5 153.43 250.5 153.43 250.5 153.43osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir250.5 153.43 250.5 153.43 250.5 153.43 250.5 153.43osamaShakir/><path class=osamaShakircls-6osamaShakir d=osamaShakirM361.15,350.65V292.11a92.13,92.13,0,0,0-21.4,3.33v71.84c20.82-5.25,44.41,3,65.23,22.79C391,365,375.14,350.71,361.15,350.65ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir250.5 153.43 250.5 153.43 250.5 153.43 250.5 153.43osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM474.16,295.44V278.65a53.2,53.2,0,0,0-21.4-.84v14.3A92.05,92.05,0,0,1,474.16,295.44ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-6osamaShakir d=osamaShakirM474.16,367.28V295.44a92.05,92.05,0,0,0-21.4-3.33v58.54c-14,.06-29.83,14.31-43.82,39.42C429.76,370.27,453.34,362,474.16,367.28ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir250.5 153.43 250.5 153.43 250.5 153.43 250.5 153.43osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM361.15,262v15.8c14.74,2.32,29.9,10.38,43.83,23.62C391,276.32,375.14,262.07,361.15,262ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-7osamaShakir d=osamaShakirM405,301.43h0c-13.93-13.24-29.09-21.3-43.83-23.62v14.3A92.78,92.78,0,0,1,405,301.43ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-8osamaShakir d=osamaShakirM405,301.43a92.78,92.78,0,0,0-43.83-9.32v58.54c14,.06,29.84,14.31,43.83,39.42V301.43ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM452.76,262c-14,.06-29.83,14.31-43.82,39.42,13.92-13.24,29.08-21.3,43.82-23.62ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-7osamaShakir d=osamaShakirM452.76,292.11v-14.3c-14.74,2.32-29.9,10.38-43.82,23.62h0A92.71,92.71,0,0,1,452.76,292.11ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-8osamaShakir d=osamaShakirM452.76,350.65V292.11a92.71,92.71,0,0,0-43.82,9.32h0v88.64C422.93,365,438.77,350.71,452.76,350.65ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM406.1,294.53l-7.94-52.69-8.51,21.4C396.57,272.44,402.68,286.12,406.1,294.53ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM407.81,294.53l7.94-52.69,8.51,21.4C417.35,272.44,411.23,286.12,407.81,294.53ZosamaShakir transform=osamaShakirtranslate(-154.48 -148)osamaShakir/><text class=osamaShakircls-9osamaShakir transform=osamaShakirtranslate(0 401.38)osamaShakir>L<tspan class=osamaShakircls-10osamaShakir x=osamaShakir44.63osamaShakir y=osamaShakir0osamaShakir>orem ipsum</tspan></text></svg>\",\"company\":{\"position\":{\"left\":\"94\",\"top\":\"515\"}},\"slogan\":{\"position\":{}}},\"icon\":{\"value\":\"<svg id=osamaShakirLayer_1osamaShakir data-name=osamaShakirLayer 1osamaShakir xmlns=osamaShakirhttp://www.w3.org/2000/svgosamaShakir xmlns:xlink=osamaShakirhttp://www.w3.org/1999/xlinkosamaShakir viewBox=osamaShakir0 0 386.57 347.58osamaShakir><defs><style>.cls-1{fill:url(#linear-gradient);}.cls-2{fill:#123884;}.cls-3{fill:#77787b;}.cls-4{fill:#5bc2ea;}.cls-5{fill:#1ca6df;}.cls-6{fill:#3baae0;}.cls-7{fill:#2c94d1;}.cls-8{fill:#3280c3;}</style><linearGradient id=osamaShakirlinear-gradientosamaShakir x1=osamaShakir276.36osamaShakir y1=osamaShakir328osamaShakir x2=osamaShakir537.55osamaShakir y2=osamaShakir328osamaShakir gradientUnits=osamaShakiruserSpaceOnUseosamaShakir><stop offset=osamaShakir0osamaShakir stop-color=osamaShakir#d0d2d3osamaShakir/><stop offset=osamaShakir0.52osamaShakir stop-color=osamaShakir#fffosamaShakir/><stop offset=osamaShakir1osamaShakir stop-color=osamaShakir#d0d2d3osamaShakir/></linearGradient></defs><title>education123_svg</title><path class=osamaShakircls-1osamaShakir d=osamaShakirM407,197.4A130.6,130.6,0,1,0,537.55,328,130.6,130.6,0,0,0,407,197.4ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM328.94,197c-11.16,3.44-22.45-1.07-22.45-1.07s6.8-10.08,18-13.52,22.45,1.06,22.45,1.06S340.1,193.54,328.94,197ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM308.16,168.06c-6.82,9.48-6.15,21.62-6.15,21.62s11.73-3.23,18.54-12.71,6.15-21.62,6.15-21.62S315,158.58,308.16,168.06ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM291.74,223.9c-10.52,5.06-22.36,2.27-22.36,2.27s5.23-11,15.75-16,22.36-2.28,22.36-2.28S302.27,218.84,291.74,223.9ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM266.9,198.38c-5.33,10.39-2.87,22.3-2.87,22.3s11.12-4.93,16.45-15.32,2.87-22.29,2.87-22.29S272.23,188,266.9,198.38ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM266.23,259.88C257.8,268,245.69,269,245.69,269s1.55-12.07,10-20.15,20.54-9.12,20.54-9.12S274.65,251.8,266.23,259.88ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM234.67,243.37c-1.83,11.53,4.22,22.08,4.22,22.08s9-8.15,10.86-19.68-4.21-22.08-4.21-22.08S236.51,231.84,234.67,243.37ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM250.38,307.44c-6.16,9.92-17.63,13.93-17.63,13.93s-1.5-12.07,4.66-22,17.64-13.93,17.64-13.93S256.54,297.52,250.38,307.44ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM215.72,299.27c1.08,11.62,9.56,20.34,9.56,20.34s6.72-10.13,5.64-21.75-9.56-20.35-9.56-20.35S214.64,287.64,215.72,299.27ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM252.62,354.68c-2.34,11.44-11.71,19.19-11.71,19.19s-5.59-10.8-3.25-22.24,11.71-19.19,11.71-19.19S255,343.25,252.62,354.68ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM217.27,359.05c5,10.52,16,15.76,16,15.76s2.8-11.83-2.25-22.36-16-15.77-16-15.77S212.22,348.52,217.27,359.05ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM269.12,405.85c.66,11.66-6.43,21.54-6.43,21.54s-8.16-9-8.81-20.68,6.44-21.53,6.44-21.53S268.47,394.2,269.12,405.85ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM236.06,419.08c7.56,8.89,19.5,11.16,19.5,11.16s-.31-12.16-7.87-21.05S228.18,398,228.18,398,228.49,410.18,236.06,419.08ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM301.39,439.72c5.6,10.25,3.45,22.21,3.45,22.21S293.6,457.29,288,447s-3.44-22.21-3.44-22.21S295.79,429.48,301.39,439.72ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM277.21,465.86c10.66,4.79,22.42,1.71,22.42,1.71s-5.51-10.85-16.16-15.63-22.41-1.7-22.41-1.7S266.56,461.08,277.21,465.86ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM343.17,462.32c9,7.45,11.42,19.36,11.42,19.36s-12.16-.15-21.16-7.6S322,454.72,322,454.72,334.18,454.88,343.17,462.32ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM330.38,495.56c11.66.5,21.45-6.72,21.45-6.72s-9.13-8-20.79-8.54S309.59,487,309.59,487,318.71,495.06,330.38,495.56ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM358.84,165.68c-10,6-22,4.41-22,4.41s4.14-11.43,14.13-17.47,22-4.42,22-4.42S368.82,159.63,358.84,165.68ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM486.12,197c11.16,3.44,22.45-1.07,22.45-1.07s-6.8-10.08-17.95-13.52-22.45,1.06-22.45,1.06S475,193.54,486.12,197ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM506.91,168.06c6.81,9.48,6.14,21.62,6.14,21.62s-11.72-3.23-18.54-12.71-6.14-21.62-6.14-21.62S500.09,158.58,506.91,168.06ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM523.32,223.9c10.52,5.06,22.36,2.27,22.36,2.27s-5.23-11-15.75-16-22.36-2.28-22.36-2.28S512.79,218.84,523.32,223.9ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM548.16,198.38c5.34,10.39,2.87,22.3,2.87,22.3s-11.12-4.93-16.45-15.32-2.87-22.29-2.87-22.29S542.83,188,548.16,198.38ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM548.83,259.88c8.43,8.08,20.54,9.13,20.54,9.13s-1.54-12.07-10-20.15-20.54-9.12-20.54-9.12S540.41,251.8,548.83,259.88ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM580.39,243.37c1.83,11.53-4.22,22.08-4.22,22.08s-9-8.15-10.86-19.68,4.22-22.08,4.22-22.08S578.55,231.84,580.39,243.37ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM564.68,307.44c6.16,9.92,17.64,13.93,17.64,13.93s1.49-12.07-4.67-22S560,285.45,560,285.45,558.52,297.52,564.68,307.44ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM599.34,299.27c-1.08,11.62-9.56,20.34-9.56,20.34s-6.72-10.13-5.64-21.75,9.56-20.35,9.56-20.35S600.42,287.64,599.34,299.27ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM562.45,354.68c2.33,11.44,11.71,19.19,11.71,19.19s5.58-10.8,3.25-22.24-11.72-19.19-11.72-19.19S560.11,343.25,562.45,354.68ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM597.79,359.05c-5,10.52-16,15.76-16,15.76S579,363,584,352.45s16-15.77,16-15.77S602.84,348.52,597.79,359.05ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM545.94,405.85c-.66,11.66,6.44,21.54,6.44,21.54s8.15-9,8.8-20.68-6.43-21.53-6.43-21.53S546.6,394.2,545.94,405.85ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM579,419.08c-7.57,8.89-19.51,11.16-19.51,11.16s.31-12.16,7.87-21.05S586.88,398,586.88,398,586.57,410.18,579,419.08ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM513.67,439.72c-5.6,10.25-3.44,22.21-3.44,22.21s11.24-4.64,16.84-14.89,3.44-22.21,3.44-22.21S519.27,429.48,513.67,439.72ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM537.85,465.86c-10.65,4.79-22.42,1.71-22.42,1.71s5.51-10.85,16.16-15.63,22.42-1.7,22.42-1.7S548.5,461.08,537.85,465.86ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM471.89,462.32c-9,7.45-11.41,19.36-11.41,19.36s12.16-.15,21.15-7.6S493,454.72,493,454.72,480.88,454.88,471.89,462.32ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM484.68,495.56c-11.66.5-21.45-6.72-21.45-6.72s9.13-8,20.79-8.54S505.47,487,505.47,487,496.35,495.06,484.68,495.56ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM456.23,165.68c10,6,22,4.41,22,4.41s-4.15-11.43-14.14-17.47-22-4.42-22-4.42S446.24,159.63,456.23,165.68ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-3osamaShakir d=osamaShakirM407,197.4A130.6,130.6,0,1,0,537.55,328,130.6,130.6,0,0,0,407,197.4Zm0,253.08A122.49,122.49,0,1,1,529.44,328,122.49,122.49,0,0,1,407,450.48ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM339.75,367.28V295.44a94.74,94.74,0,0,0-15.86,6v88.64a92.23,92.23,0,0,1,81.09,0C384.16,370.27,360.57,362,339.75,367.28ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM474.16,295.44v71.84c-20.82-5.25-44.4,3-65.22,22.79a92.23,92.23,0,0,1,81.09,0V301.43A94.84,94.84,0,0,0,474.16,295.44ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM361.15,277.81a53.2,53.2,0,0,0-21.4.84v16.79a92.13,92.13,0,0,1,21.4-3.33ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir190.73 153.43 190.73 153.43 190.73 153.43 190.73 153.43osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir190.73 153.43 190.73 153.43 190.73 153.43 190.73 153.43osamaShakir/><path class=osamaShakircls-6osamaShakir d=osamaShakirM361.15,350.65V292.11a92.13,92.13,0,0,0-21.4,3.33v71.84c20.82-5.25,44.41,3,65.23,22.79C391,365,375.14,350.71,361.15,350.65ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir190.73 153.43 190.73 153.43 190.73 153.43 190.73 153.43osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM474.16,295.44V278.65a53.2,53.2,0,0,0-21.4-.84v14.3A92.05,92.05,0,0,1,474.16,295.44ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-6osamaShakir d=osamaShakirM474.16,367.28V295.44a92.05,92.05,0,0,0-21.4-3.33v58.54c-14,.06-29.83,14.31-43.82,39.42C429.76,370.27,453.34,362,474.16,367.28ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><polygon class=osamaShakircls-5osamaShakir points=osamaShakir190.73 153.43 190.73 153.43 190.73 153.43 190.73 153.43osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM361.15,262v15.8c14.74,2.32,29.9,10.38,43.83,23.62C391,276.32,375.14,262.07,361.15,262ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-7osamaShakir d=osamaShakirM405,301.43h0c-13.93-13.24-29.09-21.3-43.83-23.62v14.3A92.78,92.78,0,0,1,405,301.43ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-8osamaShakir d=osamaShakirM405,301.43a92.78,92.78,0,0,0-43.83-9.32v58.54c14,.06,29.84,14.31,43.83,39.42V301.43ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM452.76,262c-14,.06-29.83,14.31-43.82,39.42,13.92-13.24,29.08-21.3,43.82-23.62ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-7osamaShakir d=osamaShakirM452.76,292.11v-14.3c-14.74,2.32-29.9,10.38-43.82,23.62h0A92.71,92.71,0,0,1,452.76,292.11ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-8osamaShakir d=osamaShakirM452.76,350.65V292.11a92.71,92.71,0,0,0-43.82,9.32h0v88.64C422.93,365,438.77,350.71,452.76,350.65ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM406.1,294.53l-7.94-52.69-8.51,21.4C396.57,272.44,402.68,286.12,406.1,294.53ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM407.81,294.53l7.94-52.69,8.51,21.4C417.35,272.44,411.23,286.12,407.81,294.53ZosamaShakir transform=osamaShakirtranslate(-214.25 -148)osamaShakir/></svg>\",\"position\":{\"left\":\"214\",\"top\":\"148\"},\"size\":{\"width\":\"386\",\"height\":\"347\"}}}'),
(48, 3, '{\"svg\":{\"value\":\"<svg id=osamaShakirLayer_1osamaShakir data-name=osamaShakirLayer 1osamaShakir xmlns=osamaShakirhttp://www.w3.org/2000/svgosamaShakir xmlns:xlink=osamaShakirhttp://www.w3.org/1999/xlinkosamaShakir viewBox=osamaShakir0 0 473.76 202.58osamaShakir><defs><style>.cls-1{fill:url(#linear-gradient);}.cls-2{fill:url(#linear-gradient-2);}.cls-3{fill:url(#linear-gradient-3);}.cls-4{fill:url(#linear-gradient-4);}.cls-5{fill:url(#linear-gradient-5);}.cls-6{fill:url(#linear-gradient-6);}.cls-7{fill:url(#linear-gradient-7);}.cls-8{fill:url(#linear-gradient-8);}.cls-9{fill:url(#linear-gradient-9);}.cls-10,.cls-12{opacity:0.5;}.cls-10,.cls-11{fill:url(#linear-gradient-10);}.cls-12,.cls-13{fill:url(#linear-gradient-12);}.cls-14{font-size:117.57px;fill:#ff7bac;font-family:Impact, Impact;}</style><linearGradient id=osamaShakirlinear-gradientosamaShakir x1=osamaShakir315.62osamaShakir y1=osamaShakir272.28osamaShakir x2=osamaShakir312.33osamaShakir y2=osamaShakir403.72osamaShakir gradientUnits=osamaShakiruserSpaceOnUseosamaShakir><stop offset=osamaShakir0osamaShakir stop-color=osamaShakir#ec1c24osamaShakir/><stop offset=osamaShakir0.17osamaShakir stop-color=osamaShakir#e61b22osamaShakir/><stop offset=osamaShakir0.4osamaShakir stop-color=osamaShakir#d3171eosamaShakir/><stop offset=osamaShakir0.67osamaShakir stop-color=osamaShakir#b51217osamaShakir/><stop offset=osamaShakir0.97osamaShakir stop-color=osamaShakir#8c0a0dosamaShakir/><stop offset=osamaShakir1osamaShakir stop-color=osamaShakir#87090cosamaShakir/></linearGradient><linearGradient id=osamaShakirlinear-gradient-2osamaShakir x1=osamaShakir250.36osamaShakir y1=osamaShakir332.13osamaShakir x2=osamaShakir262.56osamaShakir y2=osamaShakir332.13osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-3osamaShakir x1=osamaShakir270.37osamaShakir y1=osamaShakir271.15osamaShakir x2=osamaShakir267.08osamaShakir y2=osamaShakir402.59osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-4osamaShakir x1=osamaShakir397.21osamaShakir y1=osamaShakir274.32osamaShakir x2=osamaShakir393.92osamaShakir y2=osamaShakir405.76osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-5osamaShakir x1=osamaShakir538.01osamaShakir y1=osamaShakir277.84osamaShakir x2=osamaShakir534.72osamaShakir y2=osamaShakir409.28osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-6osamaShakir x1=osamaShakir417.12osamaShakir y1=osamaShakir274.82osamaShakir x2=osamaShakir413.83osamaShakir y2=osamaShakir406.26osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-7osamaShakir x1=osamaShakir352.05osamaShakir y1=osamaShakir273.19osamaShakir x2=osamaShakir348.77osamaShakir y2=osamaShakir404.63osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-8osamaShakir x1=osamaShakir546.85osamaShakir y1=osamaShakir278.06osamaShakir x2=osamaShakir543.56osamaShakir y2=osamaShakir409.5osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-9osamaShakir x1=osamaShakir430.09osamaShakir y1=osamaShakir275.14osamaShakir x2=osamaShakir426.8osamaShakir y2=osamaShakir406.58osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-10osamaShakir x1=osamaShakir504.17osamaShakir y1=osamaShakir353.56osamaShakir x2=osamaShakir520.65osamaShakir y2=osamaShakir353.56osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-12osamaShakir x1=osamaShakir320.22osamaShakir y1=osamaShakir353.56osamaShakir x2=osamaShakir336.7osamaShakir y2=osamaShakir353.56osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/></defs><title>hello</title><path class=osamaShakircls-1osamaShakir d=osamaShakirM292,363.79a25.3,25.3,0,0,1,46.71-13.45A26.46,26.46,0,1,0,309,387.67,25.28,25.28,0,0,1,292,363.79ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM262.56,327.49S252.39,331,251,344s0-26.3,0-26.3S252,320.48,262.56,327.49ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-3osamaShakir d=osamaShakirM255.64,349.06s-6.1,29.79,31,28.23c0,0-39.62,11.17-37.09-28.23ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM538.52,333.8s-16.13-9.12-83.11-7.71c0,0-21-20-60.66-24.9,0,0-37.93-3.11-88.36,13.68a333.59,333.59,0,0,1-39.62,10.87s-11.93-7.72-13.33-12.63c0,0,12.54,4.56,41.38-2.45,0,0,67-24.48,116.76-13.33,0,0,29.46,6,48,20.34C459.62,317.67,512.57,316.62,538.52,333.8ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-5osamaShakir d=osamaShakirM549.39,349s-2.81-6.66-20.34-7.37c0,0-.51-2-5.61-7C523.44,334.62,541,330.76,549.39,349ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-6osamaShakir d=osamaShakirM385.64,327.84H446s-25.95-22.09-50-21c0,0,26.47,5.26,33.49,16.13ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-7osamaShakir d=osamaShakirM377.92,327.84V309.61s-34.36-1.41-56.45,8.06c0,0,16.83-13,59.26-12.62ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-8osamaShakir d=osamaShakirM549.39,352.4s-19.6,18.7,5.3,26.35c0,0-16.13.06-20.69,0C534,378.75,533.26,354.15,549.39,352.4ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-9osamaShakir d=osamaShakirM480.86,342.44h0c-47.69-21.13-85.25,18.76-146.65-8.64,0,0,36.08,53.87,126.3,25.05,0,0-39.53,27.42-107.19,2.7,0,0,71.82,39.17,124.76,16.78h0a26.52,26.52,0,0,0,14.82,9.34,25.28,25.28,0,1,1,29.72-37.33A26.48,26.48,0,0,0,480.86,342.44ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-10osamaShakir d=osamaShakirM512.26,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.35,17.35,0,0,0,512.26,349.55ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-11osamaShakir d=osamaShakirM512.26,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.35,17.35,0,0,0,512.26,349.55ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-12osamaShakir d=osamaShakirM328.31,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.32,17.32,0,0,0,328.31,349.55ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><path class=osamaShakircls-13osamaShakir d=osamaShakirM328.31,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.32,17.32,0,0,0,328.31,349.55ZosamaShakir transform=osamaShakirtranslate(-164.86 -294.42)osamaShakir/><text class=osamaShakircls-14osamaShakir transform=osamaShakirmatrix(0.97, 0, -0.25, 0.97, 10.55, 164.99)osamaShakir>AUTO CAR</text></svg>\",\"company\":{\"position\":{\"left\":\"164\",\"top\":\"357\"}},\"slogan\":{\"position\":{}}},\"icon\":{\"value\":\"<svg id=osamaShakirLayer_1osamaShakir data-name=osamaShakirLayer 1osamaShakir xmlns=osamaShakirhttp://www.w3.org/2000/svgosamaShakir xmlns:xlink=osamaShakirhttp://www.w3.org/1999/xlinkosamaShakir viewBox=osamaShakir0 0 305.26 93.25osamaShakir><defs><style>.cls-1{fill:url(#linear-gradient);}.cls-2{fill:url(#linear-gradient-2);}.cls-3{fill:url(#linear-gradient-3);}.cls-4{fill:url(#linear-gradient-4);}.cls-5{fill:url(#linear-gradient-5);}.cls-6{fill:url(#linear-gradient-6);}.cls-7{fill:url(#linear-gradient-7);}.cls-8{fill:url(#linear-gradient-8);}.cls-9{fill:url(#linear-gradient-9);}.cls-10,.cls-12{opacity:0.5;}.cls-10,.cls-11{fill:url(#linear-gradient-10);}.cls-12,.cls-13{fill:url(#linear-gradient-12);}</style><linearGradient id=osamaShakirlinear-gradientosamaShakir x1=osamaShakir315.62osamaShakir y1=osamaShakir272.28osamaShakir x2=osamaShakir312.33osamaShakir y2=osamaShakir403.72osamaShakir gradientUnits=osamaShakiruserSpaceOnUseosamaShakir><stop offset=osamaShakir0osamaShakir stop-color=osamaShakir#ec1c24osamaShakir/><stop offset=osamaShakir0.17osamaShakir stop-color=osamaShakir#e61b22osamaShakir/><stop offset=osamaShakir0.4osamaShakir stop-color=osamaShakir#d3171eosamaShakir/><stop offset=osamaShakir0.67osamaShakir stop-color=osamaShakir#b51217osamaShakir/><stop offset=osamaShakir0.97osamaShakir stop-color=osamaShakir#8c0a0dosamaShakir/><stop offset=osamaShakir1osamaShakir stop-color=osamaShakir#87090cosamaShakir/></linearGradient><linearGradient id=osamaShakirlinear-gradient-2osamaShakir x1=osamaShakir250.36osamaShakir y1=osamaShakir332.13osamaShakir x2=osamaShakir262.56osamaShakir y2=osamaShakir332.13osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-3osamaShakir x1=osamaShakir270.37osamaShakir y1=osamaShakir271.15osamaShakir x2=osamaShakir267.08osamaShakir y2=osamaShakir402.59osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-4osamaShakir x1=osamaShakir397.21osamaShakir y1=osamaShakir274.32osamaShakir x2=osamaShakir393.92osamaShakir y2=osamaShakir405.76osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-5osamaShakir x1=osamaShakir538.01osamaShakir y1=osamaShakir277.84osamaShakir x2=osamaShakir534.72osamaShakir y2=osamaShakir409.28osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-6osamaShakir x1=osamaShakir417.12osamaShakir y1=osamaShakir274.82osamaShakir x2=osamaShakir413.83osamaShakir y2=osamaShakir406.26osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-7osamaShakir x1=osamaShakir352.05osamaShakir y1=osamaShakir273.19osamaShakir x2=osamaShakir348.77osamaShakir y2=osamaShakir404.63osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-8osamaShakir x1=osamaShakir546.85osamaShakir y1=osamaShakir278.06osamaShakir x2=osamaShakir543.56osamaShakir y2=osamaShakir409.5osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-9osamaShakir x1=osamaShakir430.09osamaShakir y1=osamaShakir275.14osamaShakir x2=osamaShakir426.8osamaShakir y2=osamaShakir406.58osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-10osamaShakir x1=osamaShakir504.17osamaShakir y1=osamaShakir353.56osamaShakir x2=osamaShakir520.65osamaShakir y2=osamaShakir353.56osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/><linearGradient id=osamaShakirlinear-gradient-12osamaShakir x1=osamaShakir320.22osamaShakir y1=osamaShakir353.56osamaShakir x2=osamaShakir336.7osamaShakir y2=osamaShakir353.56osamaShakir xlink:href=osamaShakir#linear-gradientosamaShakir/></defs><title>hello2</title><path class=osamaShakircls-1osamaShakir d=osamaShakirM292,363.79a25.3,25.3,0,0,1,46.71-13.45A26.46,26.46,0,1,0,309,387.67,25.28,25.28,0,0,1,292,363.79ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-2osamaShakir d=osamaShakirM262.56,327.49S252.39,331,251,344s0-26.3,0-26.3S252,320.48,262.56,327.49ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-3osamaShakir d=osamaShakirM255.64,349.06s-6.1,29.79,31,28.23c0,0-39.62,11.17-37.09-28.23ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-4osamaShakir d=osamaShakirM538.52,333.8s-16.13-9.12-83.11-7.71c0,0-21-20-60.66-24.9,0,0-37.93-3.11-88.36,13.68a333.59,333.59,0,0,1-39.62,10.87s-11.93-7.72-13.33-12.63c0,0,12.54,4.56,41.38-2.45,0,0,67-24.48,116.76-13.33,0,0,29.46,6,48,20.34C459.62,317.67,512.57,316.62,538.52,333.8ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-5osamaShakir d=osamaShakirM549.39,349s-2.81-6.66-20.34-7.37c0,0-.51-2-5.61-7C523.44,334.62,541,330.76,549.39,349ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-6osamaShakir d=osamaShakirM385.64,327.84H446s-25.95-22.09-50-21c0,0,26.47,5.26,33.49,16.13ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-7osamaShakir d=osamaShakirM377.92,327.84V309.61s-34.36-1.41-56.45,8.06c0,0,16.83-13,59.26-12.62ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-8osamaShakir d=osamaShakirM549.39,352.4s-19.6,18.7,5.3,26.35c0,0-16.13.06-20.69,0C534,378.75,533.26,354.15,549.39,352.4ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-9osamaShakir d=osamaShakirM480.86,342.44h0c-47.69-21.13-85.25,18.76-146.65-8.64,0,0,36.08,53.87,126.3,25.05,0,0-39.53,27.42-107.19,2.7,0,0,71.82,39.17,124.76,16.78h0a26.52,26.52,0,0,0,14.82,9.34,25.28,25.28,0,1,1,29.72-37.33A26.48,26.48,0,0,0,480.86,342.44ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-10osamaShakir d=osamaShakirM512.26,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.35,17.35,0,0,0,512.26,349.55ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-11osamaShakir d=osamaShakirM512.26,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.35,17.35,0,0,0,512.26,349.55ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-12osamaShakir d=osamaShakirM328.31,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.32,17.32,0,0,0,328.31,349.55ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/><path class=osamaShakircls-13osamaShakir d=osamaShakirM328.31,349.55a19.6,19.6,0,0,0-8.09-4,18,18,0,0,1,16.48,15.92l-1.7.06A17.32,17.32,0,0,0,328.31,349.55ZosamaShakir transform=osamaShakirtranslate(-249.43 -294.42)osamaShakir/></svg>\",\"position\":{\"left\":\"250\",\"top\":\"295\"},\"size\":{\"width\":\"305\",\"height\":\"93\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `missing_catagories`
--

CREATE TABLE `missing_catagories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missing_catagories`
--

INSERT INTO `missing_catagories` (`id`, `name`) VALUES
(1, 'industry'),
(2, 'techno'),
(3, 'stationary'),
(4, ''),
(5, 'v'),
(6, 'Catagories'),
(7, 'Catagoriesasd'),
(8, 'Catagoriesasdasd'),
(9, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `query_leads`
--

CREATE TABLE `query_leads` (
  `Name` varchar(1000) NOT NULL,
  `Query` varchar(100) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query_leads`
--

INSERT INTO `query_leads` (`Name`, `Query`, `Email`, `Country`, `Phone`, `Message`) VALUES
('', '', '', '', '', ''),
('SEOplave', 'corporate_identity', 'amerpropas1967@seocdvig.ru', 'Russian Federation', '89611655898', ' \r\nhttp://seorussian.ru/ - Ñ€Ð°ÑÐºÑ€ÑƒÑ‚ÐºÐ° ÑÐ°Ð¹Ñ‚Ð° ÑÑ„Ñ„ÐµÐºÑ‚Ð¸Ð²Ð½Ð¾  - http://seorussian.ru - seorussian.ru'),
('weingart', 'other_query', 'simon.r.singh@gmail.com', 'Armenia', '12038537699', 'Hello! There is an interesting offers for you. http://bit.ly/2rCRcDY'),
('', 'Select query type', '', 'United States', '', ''),
('cotter', 'logo', 'cotter@gmail.com', 'Afghanistan', '1144778855', 'dasdadasddsdadasdasda'),
('', 'Select query type', '', 'United States', '', ''),
('Pashkevichtode', 'other_query', 'pvapvap.1515@mail.ru', 'Netherlands Antilles', '84654859828', 'Ð¯ ÐŸÐ°Ð²ÐµÐ» ÑÐ²Ð»ÑÑŽÑÑŒ Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð¸Ñ‚ÐµÐ»ÐµÐ¼ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸ Ð Ð¾Ð»Ð»ÐµÑ€ ÐµÑÐ»Ð¸ Ð²Ð°Ð¼ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÑƒÐµÑ‚ Ð½Ð°ÑˆÐ° Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ†Ð¸Ñ <a href=http://roller-m.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ð²Ð¸Ð»Ð¾Ñ‡Ð½Ñ‹Ñ… Ð¿Ð¾Ð³Ñ€ÑƒÐ·Ñ‡Ð¸ÐºÐ¾Ð²</a>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ð²Ð¸Ð»Ð¾Ñ‡Ð½Ñ‹Ñ… Ð¿Ð¾Ð³Ñ€ÑƒÐ·Ñ‡Ð¸ÐºÐ¾Ð², Ð·Ð°Ñ…Ð¾Ð´Ð¸Ñ‚Ðµ Ð½Ð° Ð½Ð°Ñˆ ÑÐ°Ð¹Ñ‚ www.roller-m.ru - Ð¼Ñ‹ Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ð¼ Ð’Ð°Ð¼ Ð½Ð° Ð²ÑÐµ Ð²Ð¾Ð¿Ñ€Ð¾ÑÑ‹');

-- --------------------------------------------------------

--
-- Table structure for table `special_deal`
--

CREATE TABLE `special_deal` (
  `Order_Id` int(11) NOT NULL,
  `Package_Name` text NOT NULL,
  `Price` text NOT NULL,
  `Pincode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_deal`
--

INSERT INTO `special_deal` (`Order_Id`, `Package_Name`, `Price`, `Pincode`) VALUES
(1, 'Basic Deal Of 2 In 1', '85', '823827'),
(2, 'Professional Deal Of 2 In 1', '138', '951820'),
(3, 'Corporate Deal Of 3 In 1', '1167', '288788'),
(4, 'Basic Deal Of 2 In 1', '85', '872357'),
(5, 'Professional Deal Of 2 In 1', '138', '851195');

-- --------------------------------------------------------

--
-- Table structure for table `stationery`
--

CREATE TABLE `stationery` (
  `order_id` int(11) NOT NULL,
  `package` text NOT NULL,
  `price` int(11) NOT NULL,
  `uname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `side` text NOT NULL,
  `industry` text NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `fax_number` varchar(50) NOT NULL,
  `web_address` text NOT NULL,
  `physical_address` varchar(70) NOT NULL,
  `pincode` text NOT NULL,
  `created` datetime NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sticky_callmeback`
--

CREATE TABLE `sticky_callmeback` (
  `Name` varchar(1000) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `AMPM` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Timezone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sticky_callmeback`
--

INSERT INTO `sticky_callmeback` (`Name`, `Email`, `Phone`, `AMPM`, `Date`, `Timezone`) VALUES
('', '', '', 'Best Time To Call', '11/06/2018', 'Select Time Zone'),
('', '', '', 'Best Time To Call', '17/06/2018', 'Select Time Zone'),
('', '', '', 'Best Time To Call', '28/06/2018', 'Select Time Zone'),
('', '', '', 'Best Time To Call', '29/06/2018', 'Select Time Zone'),
('Tony Robbins', 'T.robbins76946@hotmail.com', '8904562644', '', '23/07/2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `sticky_design`
--

CREATE TABLE `sticky_design` (
  `Name` varchar(1000) NOT NULL,
  `Query` varchar(100) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sticky_design`
--

INSERT INTO `sticky_design` (`Name`, `Query`, `Email`, `Country`, `Phone`, `Message`) VALUES
('', '', '', '', '', ''),
('Thalianya I Charles ', 'Select query type', 'thalianya20@gmail.com', 'Turks and Caicos Islands', '16493411988', 'Hi Eric can we go back to our conversation I lost connection a few minutes ago so sorry about it '),
('Thalianya I Charles ', 'Select query type', 'thalianya20@gmail.com', 'Turks and Caicos Islands', '16493411988', 'Hi Eric can we go back to our conversation I lost connection a few minutes ago so sorry about it ');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `order_id` int(11) NOT NULL,
  `package` text NOT NULL,
  `price` int(11) NOT NULL,
  `uname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `industry` text NOT NULL,
  `company_info` text NOT NULL,
  `purpose_website` text NOT NULL,
  `competitors` text NOT NULL,
  `likes_dislikes` text NOT NULL,
  `image_communicate` text NOT NULL,
  `website_pages` text NOT NULL,
  `photo_usage` text NOT NULL,
  `font_style` text NOT NULL,
  `homepage_features` text NOT NULL,
  `pincode` text NOT NULL,
  `created` datetime NOT NULL,
  `phone` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`order_id`, `package`, `price`, `uname`, `email`, `industry`, `company_info`, `purpose_website`, `competitors`, `likes_dislikes`, `image_communicate`, `website_pages`, `photo_usage`, `font_style`, `homepage_features`, `pincode`, `created`, `phone`, `country`) VALUES
(1, 'Static', 349, 'Umer Khan', 'umer.khan@codexnow.com', 'Aviation', 'qdasd', '[\"Informational\"]', 'asdasd', 'asdasd', '[\"CuttingEdge\"]', '[\"Home\"]', 'stockPhotos', '[\"TrebuchetMS\",\"TimesNewRoman\",\"Roboto\"]', '[\"SlidingBanner\",\"ListOfServices\",\"Testimonial\"]', '970758', '2018-07-03 12:00:31', '12312424', 'United States');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `brochure`
--
ALTER TABLE `brochure`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmed_orders`
--
ALTER TABLE `confirmed_orders`
  ADD PRIMARY KEY (`confirm_id`);

--
-- Indexes for table `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missing_catagories`
--
ALTER TABLE `missing_catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_deal`
--
ALTER TABLE `special_deal`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `stationery`
--
ALTER TABLE `stationery`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brochure`
--
ALTER TABLE `brochure`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `confirmed_orders`
--
ALTER TABLE `confirmed_orders`
  MODIFY `confirm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom`
--
ALTER TABLE `custom`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `missing_catagories`
--
ALTER TABLE `missing_catagories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `special_deal`
--
ALTER TABLE `special_deal`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stationery`
--
ALTER TABLE `stationery`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

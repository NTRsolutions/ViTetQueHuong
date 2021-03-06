-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2016 at 06:26 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cishop`
--
CREATE DATABASE IF NOT EXISTS `cishop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cishop`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Admin', '', '', 'baf2681995@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', '1479554951'),
(2, 'Mr. Accountant', '017', 'dhk', 'accountant@shop.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '4', '1430737266'),
(3, 'Mr manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '6', '1433682938'),
(7, 'baf', '', '', 'baf2681995@gmail.com', 'be4f9dc679a4bb8b27fe31e1f44cf2bafe63675f', '6', '1481785253');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`) VALUES
(1, 'home', 'after_slider', '1', NULL, ''),
(2, 'home', 'after_slider', '2', NULL, ''),
(3, 'home', 'after_slider', '3', NULL, ''),
(4, 'home', 'after_slider', '4', '0', ''),
(5, 'home', 'after_featured', '1', '0', ''),
(6, 'home', 'after_featured', '2', '0', ''),
(7, 'home', 'after_featured', '3', '0', ''),
(8, 'home', 'after_featured', '4', '0', ''),
(9, 'home', 'after_search', '1', '0', ''),
(10, 'home', 'after_search', '2', '0', ''),
(11, 'home', 'after_search', '3', '0', ''),
(12, 'home', 'after_search', '4', '0', ''),
(13, 'home', 'after_category', '1', '0', ''),
(14, 'home', 'after_category', '2', '0', ''),
(15, 'home', 'after_category', '3', '0', ''),
(16, 'home', 'after_category', '4', '0', ''),
(17, 'home', 'after_latest', '1', '0', ''),
(18, 'home', 'after_popular', '1', '0', ''),
(19, 'home', 'after_most_viewed', '1', '0', ''),
(20, 'category', 'after_filters', '1', 'ok', ''),
(21, 'featured', 'after_most_sold', '1', 'ok', ''),
(22, 'featured', 'after_most_viewed', '1', '0', ''),
(23, 'vendor_home', 'after_filter', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `summery` varchar(1000) NOT NULL,
  `author` varchar(500) NOT NULL,
  `date` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(1, 'Quibusdam deleniti dicta molestiae quia mollitia ', '<p [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas e</p>', 'Consequatur', '2015-09-23', '<p [removed]="line-height: 17.1429px;"></p><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div>', '', '1', 0),
(2, 'Pariatur At a ut ut cupidatat velit explicabo', 'Ea itaque dignissimos anim corrupti, aliquam necessitatibus iste pariatur. Ipsam ea temporibus aspernatur quia odio dolorem sit, ullam alias beatae aliquam modi incidunt, est fugiat vel tenetur et molestias ut culpa consequatur, dolorum sit, nesciunt, vel ut harum corporis amet, ex et sed aperiam minim blanditiis sit, minima ad et iusto quis aut reprehenderit, velit optio, animi, autem provident, vel aute.', 'Cupiditate ', '2002-06-18', 'Ipsum et ad vel est, quas rem minima ex in cillum sit reprehenderit in odit eum rerum sit, illum, nobis saepe est voluptates quis placeat, repellendus. Autem ut est Nam iure quam fugiat, cumque incididunt magnam dolor quae architecto dolor facilis duis qui esse, laboriosam, nihil qui obcaecati voluptatibus duis eos omnis occaecat temporibus eu dolor voluptatem.<span [removed]="line-height: 17.1429px;"><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div></span>', '', '1', 0),
(3, 'Ab quis quod voluptas proident amet aute odit consequatur voluptas at architecto fugiat', 'Eum numquam aut labore voluptates commodo id eos, Nam et eum quidem delectus, tempor fuga. Sit, quo autem ut sunt, do autem soluta enim et cupidatat illum, iure in voluptate esse, exercitationem qui numquam nostrum voluptate accusamus consectetur quis libero in.', 'Hic facere omnis ut sunt enim commodi similique', '1974-10-05', '<p [removed]="line-height: 17.1429px;"></p><p [removed]="line-height: 17.1429px;" 17.1429px;"="">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</p><div [removed]="line-height: 17.1429px;">Nobis adipisci quia enim repellendus. Et placeat, velit ipsum, illum, minus rerum reiciendis ut dolor et molestiae sunt, eum est autem porro eum et sint cupiditate reprehenderit, incidunt, est dolore animi, voluptas et quo facilis omnis libero dolor reiciendis est beatae est ut eiusmod sed deserunt ullamco cillum deserunt et beatae deserunt sapiente modi excepteur tempor doloremque irure ex accusantium quasi ratione nihil ipsa, deserunt dolor quia quasi ab cupiditate aperiam atque a irure dicta odio non perferendis est, nulla ut dolor ut duis aliquam non earum totam deserunt molestiae voluptatibus qui tenetur hic eius et et exercitation ex Nam.</div><div [removed]="line-height: 17.1429px;">  </div>', '', '1', 1),
(4, 'Ad aut tenetur aut enim quod doloribus quia ', 'Voluptatem id accusantium exercitation et cumque repellendus. Accusamus rerum aute nisi amet, duis aliquip in tempora sed qui expedita molestiae unde fugit, aut pariatur? Eiusmod.', 'Quia veniam', '1983-08-20', '<p [removed]="line-height: 17.1429px;">Accusamus sit, consectetur, impedit, quae distinctio. Vel voluptas amet, blanditiis ut consectetur, consequatur, nesciunt, sint aliquam odio occaecat non ex laudantium, et dolorem ex laborum architecto odit magni qui maiores architecto qui et et eu accusantium labore elit, corrupti, nobis amet, elit, qui sed exercitationem deserunt vel voluptatem, est fugiat, sed tempore, enim tempore, nihil ea eligendi eligendi qui culpa, repudiandae odio consectetur, voluptas consequuntur animi, non.</p><p [removed]="line-height: 17.1429px;">Accusamus sit, consectetur, impedit, quae distinctio. Vel voluptas amet, blanditiis ut consectetur, consequatur, nesciunt, sint aliquam odio occaecat non ex laudantium, et dolorem ex laborum architecto odit magni qui maiores architecto qui et et eu accusantium labore elit, corrupti, nobis amet, elit, qui sed exercitationem deserunt vel voluptatem, est fugiat, sed tempore, enim tempore, nihil ea eligendi eligendi qui culpa, repudiandae odio consectetur, voluptas consequuntur animi, non.</p><p [removed]="line-height: 17.1429px;">Accusamus sit, consectetur, impedit, quae distinctio. Vel voluptas amet, blanditiis ut consectetur, consequatur, nesciunt, sint aliquam odio occaecat non ex laudantium, et dolorem ex laborum architecto odit magni qui maiores architecto qui et et eu accusantium labore elit, corrupti, nobis amet, elit, qui sed exercitationem deserunt vel voluptatem, est fugiat, sed tempore, enim tempore, nihil ea eligendi eligendi qui culpa, repudiandae odio consectetur, voluptas consequuntur animi, non.</p><p [removed]="line-height: 17.1429px;"> </p>', '', '2', 1),
(5, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit', '<p><span [removed]="line-height: 1.42857; text-align: justify;"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s,</span><br></p>', '', '2015-10-14', '<div [removed]="text-align: justify;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div><div [removed]="margin-bottom: 14px; padding: 0px;">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div>', NULL, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(1, 'Delevary'),
(2, 'Product Quality'),
(3, 'Vendorship'),
(4, 'Problem Related'),
(5, 'Others'),
(6, 'Science & technology');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `description` longtext,
  `category` varchar(10) DEFAULT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `category`, `added_by`) VALUES
(1, 'Demo Brand 1', '0', '1', ''),
(2, 'Demo Brand 2', '0', '1', ''),
(3, 'Demo Brand 3', '0', '2', ''),
(4, 'Demo Brand 4', '0', '2', ''),
(5, 'Demo Brand 5', '0', '1', ''),
(6, 'Demo Brand 6', '0', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE IF NOT EXISTS `business_settings` (
  `business_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`business_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'kadir_bm@yahoo.com'),
(2, 'shipping_cost', 'ok', '0'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '$'),
(6, 'shipment_info', '', '<p></p><p></p><div class="col-md-6" style="text-align: center; color: red; font-size: 20px;"><i style="background-color: rgb(239, 239, 239);">This is a very good situation that is making it more and more complex everyday</i></div><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><span style="line-height: 17.142858505249px;">However, this is one of the most</span><p></p><p><span style="line-height: 17.142858505249px;"><br></span></p><div class="col-md-6" style="color:red;font-size:20px;"><i>Snippet Set</i></div><span style="line-height: 17.142858505249px;"><br></span><br><p></p><p></p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '1'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[]'),
(12, 'cash_set', '', 'no'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', ''),
(15, 'stripe_publishable', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`) VALUES
(14, 'HỘP QUÀ TẾT 2017', NULL),
(15, 'GIỎ QUÀ TẾT 2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02edcd747e33a3357517662734d93807a4909ca3', '::1', 1483122241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333132323134313b),
('26d61a645524dae1ff01d14bd238f7276fcda71f', '::1', 1483094131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333038393733373b636f75706f6e65727c733a303a22223b636f6d706172657c733a323a225b5d223b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a302e30313030303030303030303030303030303032303831363638313731313732313638353133323934333039333737363730323838303835393337353b733a31313a22746f74616c5f6974656d73223b643a323b733a31343a22746f74616c5f646973636f756e74223b693a303b733a31303a227365745f636f75706f6e223b693a303b733a33323a226563356465636361356564336436623830373965326537653762616363396632223b613a31313a7b733a323a226964223b733a333a22313237223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a303b733a343a226e616d65223b733a31373a2248502d51552d54542d4d50313231333231223b733a383a227368697070696e67223b693a303b733a333a22746178223b643a303b733a353a22696d616765223b733a36373a22687474703a2f2f6c6f63616c686f73742f636973322f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3132375f315f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a226563356465636361356564336436623830373965326537653762616363396632223b733a383a22737562746f74616c223b643a303b7d733a33323a226431663439316134303464363835343838303934336535633363643963613235223b613a31313a7b733a323a226964223b733a333a22313239223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a343a226e756c6c223b733a353a227072696365223b643a302e30313030303030303030303030303030303032303831363638313731313732313638353133323934333039333737363730323838303835393337353b733a343a226e616d65223b733a31343a2247492d51552d54542d6d62343535223b733a383a227368697070696e67223b693a303b733a333a22746178223b643a303b733a353a22696d616765223b623a303b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a226431663439316134303464363835343838303934336535633363643963613235223b733a383a22737562746f74616c223b643a302e30313030303030303030303030303030303032303831363638313731313732313638353133323934333039333737363730323838303835393337353b7d7d6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a353a2241646d696e223b7469746c657c733a353a2261646d696e223b),
('7a1f319001cc35688558b7a0a935dff2d3dbb4d9', '::1', 1483085230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333038353233303b),
('9df08a23ecab0d55a4519c7c153bbe6037b453c1', '::1', 1483084508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333038333136393b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a312e303130303030303030303030303030303038383831373834313937303031323532333233333839303533333434373236353632353b733a31313a22746f74616c5f6974656d73223b643a323b733a31343a22746f74616c5f646973636f756e74223b693a303b733a31303a227365745f636f75706f6e223b693a303b733a33323a223133383539373465643539303461343338363136666637626462336637343339223b613a31313a7b733a323a226964223b733a333a22313430223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a313b733a343a226e616d65223b733a353a226461646173223b733a383a227368697070696e67223b693a303b733a333a22746178223b643a303b733a353a22696d616765223b733a36373a22687474703a2f2f6c6f63616c686f73742f636973322f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3134305f315f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a223133383539373465643539303461343338363136666637626462336637343339223b733a383a22737562746f74616c223b643a313b7d733a33323a223962383631393235316131393035376366663730373739323733653935616136223b613a31313a7b733a323a226964223b733a333a22313330223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a302e30313030303030303030303030303030303032303831363638313731313732313638353133323934333039333737363730323838303835393337353b733a343a226e616d65223b733a31313a2247492d51552d6262313131223b733a383a227368697070696e67223b693a303b733a333a22746178223b643a303b733a353a22696d616765223b733a36373a22687474703a2f2f6c6f63616c686f73742f636973322f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3133305f325f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a223962383631393235316131393035376366663730373739323733653935616136223b733a383a22737562746f74616c223b643a302e30313030303030303030303030303030303032303831363638313731313732313638353133323934333039333737363730323838303835393337353b7d7d),
('a96d774b03dbb36cffc60f82a7f8f6215e95a9a4', '::1', 1483106562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333130323736373b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a312e39353939393939393939393939393939363434373238363332313139393439393037303634343337383636323130393337353b733a31313a22746f74616c5f6974656d73223b643a313b733a31343a22746f74616c5f646973636f756e74223b693a303b733a31303a227365745f636f75706f6e223b693a303b733a33323a223036393035396237656638343066306337346138313465633932333762366563223b613a31313a7b733a323a226964223b733a333a22313236223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a312e39353939393939393939393939393939363434373238363332313139393439393037303634343337383636323130393337353b733a343a226e616d65223b733a31333a2247492d51552d54542d52313032223b733a383a227368697070696e67223b733a313a2232223b733a333a22746178223b643a303b733a353a22696d616765223b733a37323a22687474703a2f2f6c6f63616c686f73742f636973322f636973322f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3132365f315f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a223036393035396237656638343066306337346138313465633932333762366563223b733a383a22737562746f74616c223b643a312e39353939393939393939393939393939363434373238363332313139393439393037303634343337383636323130393337353b7d7d),
('b38d0ea46952973f13c92a5bbe0c2f4e082b0639', '::1', 1483085502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333038353530323b),
('e33b142cf13a386c9bcf7f2dfa6dcb7747483da2', '::1', 1483085502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438333038353530323b);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE IF NOT EXISTS `contact_message` (
  `contact_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext,
  PRIMARY KEY (`contact_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `phone`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(1, 'Barrett Shepard', NULL, '0', 'zape@gmail.com', '', '1444834552', 'no', NULL, NULL),
(14, 'bobebong', 'banghoang', '', 'baf2681995@gmail.com', 'helooajnomoto', '1482742870', 'no', NULL, NULL),
(15, 'bobebong', 'banghoang', '', 'baf2681995@gmail.com', 'helooajnomoto', '1482743054', 'no', NULL, NULL),
(16, 'm?i ', 'fadfads', '', 'fdsfaa@d?ghfdk', 'sdfgfsgsd', '1482743154', 'no', NULL, NULL),
(17, 'm?i ', 'fadfads', '', 'fdsfaa@d?ghfdk', 'sdfgfsgsd', '1482743225', 'no', NULL, NULL),
(18, 'tuan', 'hee', '', 'baf2681995@gmail.com', 'reawrewr', '1482746992', 'no', NULL, NULL),
(19, 'bafbppp', 'fdsf', '', 'baf2681995@gmail.com', 'dfasdf', '1482747156', 'no', NULL, NULL),
(20, 'baf dsahfj  bppp', 'fdsf', '', 'baf2681995@gmail.com', 'dfasdf', '1482747198', 'no', NULL, NULL),
(21, 'gsgdfgs gfdsgdsfg b sgdsfg', 'fdsf', '', 'baf2681995@gmail.com', 'gsfdgsfd', '1482747291', 'no', NULL, NULL),
(22, 'tu anh', 'fadsf', '', 'baf2681995@gmail.com', 'faasdfa', '1482747382', 'no', NULL, NULL),
(23, 'hekkkk', 'fasdfa', '096664562', 'baf26dsfds81aa995@gmail.com', 'dfasdfdsfdsf', '1482919723', 'no', NULL, NULL),
(24, 'baf', 'banghoang', '0964124333', 'baf2681995@gmail.com', 'hhhhh', '1482924296', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `title`, `spec`, `added_by`, `till`, `code`, `status`) VALUES
(1, 'Tri An', '{"set_type":"category","set":"[\\"1\\"]","discount_type":"percent","discount_value":"10","shipping_free":null}', '{"type":"admin","id":"1"}', '', 'TriAn', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
  `general_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`general_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'PQShop'),
(2, 'system_email', 'admin@shop.com'),
(3, 'system_title', 'PQShop'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', ''),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', 'Super Shop'),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', ''),
(39, 'contact_phone', ''),
(40, 'contact_email', ''),
(41, 'contact_website', ''),
(42, 'footer_text', '<p><br></p>'),
(43, 'footer_category', '["1","2"]'),
(38, 'contact_address', ''),
(45, 'admin_notification_sound', 'no'),
(46, 'admin_notification_volume', '0.00'),
(47, 'privacy_policy', ''),
(48, 'discus_id', 'activeittest'),
(49, 'home_notification_sound', 'no'),
(50, 'homepage_notification_volume', '0.00'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'ok'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', ''),
(58, 'vendor_system', NULL),
(59, 'cache_time', '0.01'),
(60, 'file_folder', 'helllo'),
(62, 'slides', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `word` longtext NOT NULL,
  `english` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `Bangla` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Spanish` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Arabic` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `French` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Chinese` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Vietnamese` longtext CHARACTER SET utf8,
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=859 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `Vietnamese`) VALUES
(1, 'home', 'Home', 'বাড়ি', 'Hogar', 'الصفحة الرئيسية', 'Accueil', '家', NULL),
(2, 'toggle_navigation', 'Toggle Navigation', 'টগল ন্যাভিগেশন', 'Activar Navegación', 'تبديل للملاحة', 'Basculer la navigation', '切换导航', NULL),
(3, 'our_products', 'Our Products', 'আমাদের পণ্য', 'Nuestros Productos', 'منتجاتنا', 'Nos Produits', '我们的产品', NULL),
(4, 'featured_product', 'Featured Product', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Producto Destacado', 'المنتج المميز', 'Produit En Vedette', '特色产品', NULL),
(5, 'see_more', 'See More', 'আরো দেখুন', 'Ver Más', 'شاهد المزيد', 'Voir Plus', '查看更多', NULL),
(6, 'contact', 'Contact', 'যোগাযোগ', 'Contacto', 'اتصال', 'Contact', '联系', NULL),
(7, 'search_product', 'Search Product', 'অনুসন্ধান পণ্য', 'Buscar Producto', 'البحث عن منتج', 'Recherche produit', '搜索产品', NULL),
(8, 'choose_category', 'Choose Category', 'বিভাগ নির্বাচন করুন', 'Escoja una Categoría', 'اختر الفئة', 'Choisissez Catégorie', '选择类别', NULL),
(9, 'choose_sub_category', 'Choose Sub Category', 'উপ বিভাগ চয়ন করুন', 'Elige categoría Sub', 'اختر الفئة الرئيسية', 'Choisissez Sous catégorie', '选择子类别', NULL),
(10, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'Últimos Productos', 'أحدث المنتجات', 'Derniers produits', '最新产品', NULL),
(11, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'Lo más Vendido', 'الأكثر مبيعا', 'La plupart Vendu', '最畅销的', NULL),
(12, 'most_viewed_products', 'Most Viewed Products', 'সর্বাধিক দেখা পণ্য', 'Productos más vistas', 'المنتجات الأكثر مشاهدة', 'Produits les plus consultés', '大多数浏览过的产品', NULL),
(13, 'email_address', 'Email Address', 'এটি ইমেল ঠিকানা', 'Dirección De Correo Electrónico', 'عنوان البريد الإلكتروني', 'Adresse e-mail', '电子邮件地址', NULL),
(14, 'subscribe', 'Subscribe', 'সদস্যতা', 'Suscribir', 'الاشتراك', 'S''abonner', '订阅', NULL),
(15, 'categories', 'Categories', 'বিভাগ', 'Categorías', 'الفئات', 'Catégories', '分类', NULL),
(16, 'useful_links', 'Useful Links', 'দরকারী লিংক', 'Enlaces Útiles', 'روابط مفيدة', 'Liens Utiles', '相关链接', NULL),
(17, 'all_products', 'All Products', 'সব পণ্য', 'Todos Los Productos', 'جميع المنتجات', 'Tous Les Produits', '所有产品', NULL),
(18, 'featured', 'Featured', 'বৈশিষ্ট্যযুক্ত', 'Destacado', 'ظهرت', 'Sélection', '精选', NULL),
(19, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'Contactez Nous', '联系我们', NULL),
(20, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'Téléphone', '电话', NULL),
(21, 'website', 'Website', 'ওয়েবসাইট', 'Sitio web', 'الموقع', 'Site Internet', '网站', NULL),
(22, 'email', 'Email', 'এটি ইমেল', 'Email', 'البريد الإلكتروني', 'Email', '电子邮件', NULL),
(23, 'facebook', 'Facebook', 'ফেসবুক', 'Facebook', 'الفيسبوك', 'Facebook', 'Facebook的', NULL),
(24, 'twitter', 'Twitter', 'টুইটার', 'Gorjeo', 'تغريد', 'Gazouillement', '推特', NULL),
(25, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'Google Plus', 'جوجل بلس', 'Google Plus', '谷歌加', NULL),
(26, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'يوتيوب', 'Youtube', 'YouTube的', NULL),
(27, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'Todos Los Derechos Reservados', 'جميع الحقوق محفوظة', 'Tous Droits Réservés', '版权所有', NULL),
(28, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'Términos Y Condiciones', 'الشروط والأحكام', 'Termes &amp; Conditions', '条款及条件', NULL),
(29, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'Política De Privacidad', 'سياسة الخصوصية', 'Politique de confidentialité', '隐私政策', NULL),
(30, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'Producto añadido al carrito', 'أضيف المنتج للسلة', 'Produit ajouté au panier', '产品已加入购物车', NULL),
(31, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'Añadido a la cesta', 'تم إضافته للسلة', 'Ajouté au panier', '添加到购物车', NULL),
(32, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'উত্পাদনের মোট পরিমানের সহজলভ্যতা অতিক্রম!', 'Producto Cantidad Exceed disponibles!', 'المنتج الكمية تتجاوز توافر!', 'Produit Quantité dépassera la disponibilité!', '产品数量超越空房！', NULL),
(33, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ!', 'Ya Producto añadido a la cesta!', 'المنتج أضفت إلى السلة!', 'Produit Déjà ajouté au panier!', '产品已添加到购物车！', NULL),
(34, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য শুরুতেই যোগ', 'Producto añadido a la lista de deseos', 'أضيف المنتج الى قائمه التمني', 'Produit ajouté à la liste', '产品添加到收藏', NULL),
(35, 'added_to_wishlist', 'Added To Wishlist', 'শুরুতেই যোগ', 'Añadido a Mis Favoritos', 'أضيف الى قائمة الامنيات', 'Ajouté à la liste', '添加到收藏', NULL),
(36, 'adding_to_wishlist..', 'Adding To Wishlist..', 'লটারি যোগ ..', 'Agregando a Mis Favoritos ..', 'إضافة إلى قائمة الامنيات ..', 'Ajout dans la liste ..', '添加到收藏..', NULL),
(37, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্য সাইফুল থেকে সরানো হয়েছে', 'Producto Fuera De Regalos', 'تمت إزالة المنتج من قائمة الامنيات', 'Produit retiré de la liste d''envies', '产品移出收藏', NULL),
(38, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'Producto puntuado', 'المنتج تقييمه بنجاح', 'Produit nominale succès', '产品额定成功', NULL),
(39, 'product_rating_failed', 'Product Rating Failed', 'পণ্য নির্ধারণ ব্যর্থ', 'Calificación del producto Falló', 'تقييم المنتج فشل', 'Évaluation du produit Échec', '产品评分失败', NULL),
(40, 'you_already_rated_this_product', 'You Already Rated This Product', 'যদি আপনি ইতিমধ্যেই এই পণ্য রেট', 'Ya has puntuado este producto', 'كنت إذا تقييمه هذا المنتج', 'Vous déjà évalué ce produit', '您已经评价过此产品', NULL),
(41, 'working..', 'Working..', 'ওয়ার্কিং ..', 'Trabajo ..', 'العمل ..', 'De travail ..', '工作..', NULL),
(42, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যেই সদস্যতা', 'Usted ya Suscrito', 'كنت مشتركا بالفعل', 'Vous êtes déjà inscrit', '你已经订阅', NULL),
(43, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সদস্যতা', 'Usted Suscrito con éxito', 'كنت قد اشتركت بنجاح', 'Vous avez souscrit avec succès', '您已成功订阅', NULL),
(44, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'যদি আপনি ইতিমধ্যেই এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব', 'Usted ya Suscrito Thrice De Este Browser', 'كنت مشتركا بالفعل ثلاث مرات من هذا المتصفح', 'Vous êtes déjà inscrit trois fois depuis ce navigateur', '你已经订阅三次从这个浏览器', NULL),
(45, 'logging_in..', 'Logging In..', 'লগ ইন ..', 'Iniciar Sesión ..', 'تسجيل الدخول ..', 'Connexion ..', '在登录..', NULL),
(46, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ ইন', 'Usted ha entrado en el éxito', 'لقد دخلت بنجاح', 'Vous êtes connecté avec succès', '你登录成功', NULL),
(47, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা করুন!', 'Error De Inicio De Sesion! </font><font>Inténtalo De Nuevo!', 'فشل تسجيل الدخول! </font><font>حاول مرة أخرى!', 'Échec De La Connexion! </font><font>Essaye Encore!', '登录失败！</font><font>再试一次！', NULL),
(48, 'submitting..', 'Submitting..', 'জমা ..', 'Envío de ..', 'تقديم ..', 'Envoi ..', '提交..', NULL),
(49, 'email_sent_successfully', 'Email Sent Successfully', 'এটি ইমেল সফলভাবে পাঠানো', 'Email Enviado Satisfactoriamente', 'البريد الإلكتروني المرسلة بنجاح', 'Courriel envoyé avec succès', '电子邮件发送成功', NULL),
(50, 'email_does_not_exist!', 'Email Does Not Exist!', 'ইমেইলটির কোন অস্তিত্ব নেই!', 'Email no existe!', 'البريد الإلكتروني غير موجود!', 'Email ne existe pas!', '电子邮件不存在！', NULL),
(51, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'এটি ইমেল ব্যর্থ পাঠানোর! </font><font>আবার চেষ্টা করুন', 'Envío de correo electrónico Error! </font><font>Inténtalo De Nuevo', 'إرسال البريد الإلكتروني فشل! </font><font>حاول مرة أخرى', 'Email envoi a échoué! </font><font>Essaye Encore', '电子邮件发送失败！</font><font>再试一次', NULL),
(52, 'logging_in', 'Logging In', 'লগ ইন', 'Iniciar Sesión', 'تسجيل الدخول', 'Connexion', '在登录', NULL),
(53, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'Añadiendo al carro ..', 'إضافة إلى السلة ..', 'Ajout au panier ..', '添加到购物车..', NULL),
(54, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো হয়েছে', 'Producto Fuera de la cesta', 'تمت إزالة المنتج من السلة', 'Produit retiré du panier', '产品移出车', NULL),
(55, 'the_field_is_required', 'The Field Is Required', 'আপনি উত্তর দিবেন না', 'El campo es obligatorio', 'مطلوب الميدان', 'Le champ est obligatoire', '该字段是必须的', NULL),
(56, 'logout', 'Logout', 'প্রস্থান', 'Cerrar Sesión', 'خروج', 'Se Déconnecter', '登出', NULL),
(57, 'login', 'Login', 'লগইন', 'Iniciar Sesión', 'تسجيل الدخول', 'S''identifier', '登录', NULL),
(58, 'register', 'Register', 'নিবন্ধন', 'Registrarse', 'تسجيل', 'Inscription', '注册', NULL),
(59, 'sign_in', 'Sign In', 'প্রবেশ কর', 'Ingresar', 'تسجيل الدخول', 'S''inscrire', '签到', NULL),
(60, 'do_not_have_account_?_click_', 'Do Not Have Account ? Click ', 'সেট ব্যবহার করা হয়নি? </font><font>দেখার জন্য ক্লিক করুন', 'No tiene cuenta? </font><font>Haga clic en', 'ليس لديك حساب؟ </font><font>انقر', 'Ne pas avoir un compte? </font><font>Cliquez', '没有帐户？</font><font>点击', NULL),
(61, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'Contratar', 'سجل', 'Signer', '签字', NULL),
(62, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ করুন', 'Añadir A La Cesta', 'أضف إلى السلة', 'Ajouter Au Panier', '添加到购物车', NULL),
(63, 'to_registration_.', 'To Registration .', 'নিবন্ধন করুন.', 'Para inscripción.', 'إلى التسجيل.', 'Pour inscription.', '登记。', NULL),
(64, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمة السر', 'Mot de passe', '密码', NULL),
(65, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'Olvidaste Tu Contraseña?', 'نسيت كلمة المرور؟', 'Mot De Passe Oublié?', '忘记密码？', NULL),
(66, 'log_in', 'Log In', 'আপনার যাত্রা শুরু করুন', 'Iniciar Sesión', 'تسجيل الدخول', 'S''identifier', '登录', NULL),
(67, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'Has Olvidado Tu Contraseña', 'نسيت كلمة المرور', 'Mot De Passe Oublié', '忘记密码', NULL),
(68, 'submit', 'Submit', 'জমা দিন', 'Enviar', 'عرض', 'Soumettre', '提交', NULL),
(69, 'close', 'Close', 'ঘনিষ্ঠ', 'Cerrar', 'قريب', 'Fermer', '关闭', NULL),
(70, 'already_signed Up?_click', 'Already Signed Up? Click', 'ইতিমধ্যে সাইন আপ? </font><font>দেখার জন্য ক্লিক করুন', 'Ya está inscrito? </font><font>Haga clic en', 'توقيع بالفعل؟ </font><font>انقر', 'Déjà inscrit? </font><font>Cliquez', '已注册？</font><font>点击', NULL),
(71, 'to_login_your_account', 'To Login Your Account', 'আপনার একাউন্টে লগইন করার জন্য', 'Para Entrar Tu Cuenta', 'لتسجيل الدخول إلى حسابك', 'Pour Connexion Votre compte', '要登录您的账户', NULL),
(72, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar Contraseña', 'تأكيد كلمة السر', 'Confirmez Le Mot De Passe', '确认密码', NULL),
(73, 'your_first_name', 'Your First Name', 'তোমার নামের প্রথম অংশ', 'Su Nombre', 'الاسم الأول', 'Ton Prénom', '你的名字', NULL),
(74, 'your_last_name', 'Your Last Name', 'তোমার শেষ নাম', 'Tu Apellido', 'اسمك الاخير', 'Votre Nom De Famille', '你的姓氏', NULL),
(75, 'address_line_1', 'Address Line 1', 'ঠিকানা লেখার জায়গা 1', 'Dirección Línea 1', 'العنوان سطر 1', 'Adresse 1', '地址第一行', NULL),
(76, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন ২', 'Dirección Línea 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2', NULL),
(77, 'city', 'City', 'শহর', 'Ciudad', 'مدينة', 'Ville', '城市', NULL),
(78, 'ZIP', 'ZIP', 'জিপ', 'Postal', 'ZIP', 'Postal', 'ZIP', NULL),
(79, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড মিলছে না', 'Contraseña Mismatched', 'كلمة المرور غير متطابقة', 'Mot de passe Mismatched', '密码不匹配', NULL),
(80, 'products', 'Products', 'পণ্য', 'Productos', 'المنتجات', 'Produits', '制品', NULL),
(81, 'filter_by', 'Filter By', 'দ্বারা ফিল্টার', 'Filtrado Por', 'تصفية حسب', 'Filtrer Par', '过滤方式', NULL),
(82, 'category', 'Category', 'শ্রেণী', 'Categoría', 'فئة', 'Catégorie', '类别', NULL),
(83, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'Prix', '价格', NULL),
(84, 'results', 'Results', 'ফলাফল', 'Resultados', 'النتائج', 'Résultats', '结果', NULL),
(85, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'Iniciar Sesión En Su Cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户', NULL),
(86, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে', 'Contraseña Olvidada', 'نسيت كلمة المرور', 'Mot De Passe Oublié', '忘记密码', NULL),
(87, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'এটি ইমেল নতুন পাসওয়ার্ড দিয়ে পাঠানো হয়েছে!', 'Correo electrónico enviado con la nueva contraseña!', 'البريد الإلكتروني المرسلة وكلمة المرور الجديدة!', 'Email envoyé avec nouveau mot de passe!', '电子邮件发送的新密码！', NULL),
(88, 'cancelled', 'Cancelled', 'বাতিল হয়েছে', 'Cancelado', 'إلغاء', 'Annulé', '取消', NULL),
(89, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'Este Campo Es Requerido', 'هذه الخانة مطلوبه', 'Ce Champ Est Obligatoire', '这是必填栏', NULL),
(90, 'signing_in...', 'Signing In...', 'সাইন ইন ...', 'Firmar En ...', 'تسجيل الدخول ...', 'Connectez-Vous ...', '登录...', NULL),
(91, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ইমেল প্রেরণ নতুন পাসওয়ার্ড', 'Nueva contraseña enviada a su correo electrónico', 'كلمة السر الجديدة المرسلة إلى البريد الإلكتروني الخاص بك', 'Nouveau mot de passe envoyé à votre e-mail', '发送到您的邮箱新密码', NULL),
(92, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', 'Error De Inicio De Sesion!', 'فشل تسجيل الدخول!', 'Échec De La Connexion!', '登录失败！', NULL),
(93, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ইমেইল ঠিকানা! </font><font>আবার চেষ্টা করুন', 'Mail E-mail! </font><font>Inténtalo De Nuevo', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول مرة أخرى', 'Mauvaise adresse e-mail! </font><font>Essaye Encore', '错误的电子邮件地址！</font><font>再试一次', NULL),
(94, 'login_successful!', 'Login Successful!', 'সফল লগইন!', 'Inicio de sesión correcto!', 'دخول ناجح!', 'Connexion Réussie!', '登录成功！', NULL),
(95, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', 'ÉXITO!', 'النجاح!', 'SUCCÈS!', '成功了！', NULL),
(96, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'Restablecer La Contraseña', 'إعادة تعيين كلمة المرور', 'Réinitialiser Le Mot De Passe', '重设密码', NULL),
(97, 'visit_home_page', 'Visit Home Page', 'হোম পেজ দেখুন', 'Visita la página de Inicio', 'زيارة الصفحة الرئيسية', 'Visitez la page d''accueil', '访问主页', NULL),
(98, 'profile', 'Profile', 'প্রোফাইল', 'Perfil', 'الملف الشخصي', 'Profil', '轮廓', NULL),
(99, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'Tableau de bord', '仪表盘', 'Bảng điều khiển'),
(100, '24_hours_stock', '24 Hours Stock', '24 ঘন্টা স্টক', '24 Horas de la', '24 ساعة المالية', '24 Heures Stock', '24小时股票', NULL),
(101, '24_hours_sale', '24 Hours Sale', '24 ঘন্টা বিক্রয়', '24 Horas Venta', '24 ساعة بيع', '24 Heures Vente', '24小时销售', NULL),
(102, '24_hours_destroy', '24 Hours Destroy', '24 ঘন্টা ধ্বংস', '24 Horas Destroy', '24 ساعة تدمير', '24 Heures Destroy', '24小时销毁', NULL),
(103, 'pending_order_map', 'Pending Order Map', 'পেন্ডিং অর্ডারের ম্যাপ', 'Orden Pendiente Mapa', 'في انتظار ترتيب خريطة', 'Commande de cartes en attente', '挂单地图', NULL),
(104, 'present_customer_live_on_your_store', 'Present Customer Live On Your Store', 'আপনার দোকান উপস্থিত গ্রাহক লাইভ', 'Presente en Vivo al cliente en su tienda', 'الحالي العملاء يعيشون على مخزن لديك', 'Présent en direct à la clientèle sur votre boutique', '目前客户住在你的店', NULL),
(105, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগের বিজ্ঞ মাসিক স্টক', 'Categoría Wise Mensual Stock', 'فئة الحكيم المالية الشهرية', 'Catégorie Wise mensuel Stock', '明智类股票月刊', NULL),
(106, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগের বিজ্ঞ মাসিক বিক্রয়', 'Categoría Wise Mensual Venta', 'الفئة بيع الحكيم شهري', 'Catégorie Wise vente mensuel', '分类明智每月销售', NULL),
(107, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগের বিজ্ঞ মাসিক ধ্বংস', 'Categoría Wise Mensual Destroy', 'تدمير فئة الحكيم شهري', 'Détruisez Catégorie Wise mensuel', '分类明智每月销毁', NULL),
(108, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগের বিজ্ঞ মাসিক গ্র্যান্ড লাভ', 'Categoría Wise Mensual Gran Beneficio', 'فئة الحكيم الشهرية الكبرى الربح', 'Catégorie Wise mensuel de Grand Profit', '分类明智每月利润大', NULL),
(109, 'cost', 'Cost', 'মূল্য', 'Costo', 'كلفة', 'Coût', '费用', NULL),
(110, 'value', 'Value', 'মান', 'Valor', 'قيمة', 'Valeur', '值', NULL),
(111, 'loss', 'Loss', 'ক্ষতি', 'Pérdida', 'خسارة', 'Perte', '失利', NULL),
(112, 'profit', 'Profit', 'লাভ', 'Beneficio', 'ربح', 'Bénéfice', '利润', NULL),
(113, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'Sub-categoría', 'الفئة الفرعية', 'Sous-catégorie', '分类别', NULL),
(114, 'brands', 'Brands', 'ব্লগ', 'Marcas', 'العلامات التجارية', 'Marques', '品牌', NULL),
(115, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'Stock del producto', 'الأسهم المنتج', 'Stock de produits', '产品库存', NULL),
(116, 'sale', 'Sale', 'বিক্রয়', 'Venta', 'بيع', 'Vente', '卖', NULL),
(117, 'reports', 'Reports', 'প্রতিবেদন', 'Informes', 'تقارير', 'Rapports', '报告', NULL),
(118, 'product_compare', 'Product Compare', 'পণ্য তুলনা', 'Producto Comparar', 'المنتج قارن', 'Produit Comparer', '产品比较', NULL),
(119, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'Los deseos del producto', 'التمنيات المنتج', 'Voeux du produit', '产品愿望', NULL),
(120, 'customers', 'Customers', 'গ্রাহকরা', 'Clientes', 'الزبائن', 'Clientèle', '客户', NULL),
(121, 'create_new_page', 'Create New Page', 'নতুন পৃষ্ঠা তৈরি করুন', 'Crear nueva página', 'إنشاء صفحة جديدة', 'Créer une page', '创建新页面', NULL),
(122, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি করুন', 'Crear deslizante', 'إنشاء المتزلج', 'Créer Curseur', '创建滑块', NULL),
(123, 'front_settings', 'Front Settings', 'ফ্রন্ট সেটিংস', 'Ajustes delanteros', 'إعدادات الأمامية', 'Réglages avant', '前方设置', NULL),
(124, 'banner_settings', 'Banner Settings', 'ব্যানার সেটিংস', 'Ajustes Banner', 'إعدادات راية', 'Paramètres de Bannière', '横幅设置', NULL),
(125, 'site_settings', 'Site Settings', 'সাইট সেটিংস', 'Configuración del sitio', 'إعدادات الموقع', 'Paramètres du site', '网站设置', NULL),
(126, 'staffs', 'Staffs', 'কর্মীরা', 'Estados Mayores', 'الموظفين', 'Staffs', '工作人员', 'Nhân viên'),
(127, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'Todos los Estados Mayores', 'كل الأركان', 'Tous les états-majors', '所有员工', NULL),
(128, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'Permisos de los funcionarios', 'ضوابط الموظفين', 'Permission de personnel', '工作人员权限', NULL),
(129, 'messaging', 'Messaging', 'মেসেজিং', 'Mensajería', 'الرسائل', 'Messagerie', '消息', NULL),
(130, 'newsletters', 'Newsletters', 'নিউজ লেটার', 'Boletines', 'النشرات الإخبارية', 'Bulletins', '简讯', NULL),
(131, 'contact_messages', 'Contact Messages', 'যোগাযোগ বার্তা', 'Contacto Mensajes', 'رسائل الاتصال', 'Contacts Messages', '联系信息', NULL),
(132, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'Langue', '语言', NULL),
(133, 'business_settings', 'Business Settings', 'ব্যবসায়ের সেটিংসের', 'Configuración de negocio', 'إعدادات التجارية', 'Réglages d''affaires', '商业环境', NULL),
(134, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল গালাগাল প্রতিবেদন করো', 'Administrar perfil de administrador', 'إدارة الملف الشخصي ل admin', 'Gérer un profil administrateur', '管理管理员配置', NULL),
(135, 'SEO_proggres', 'SEO Proggres', 'এসইও Proggres', 'SEO Proggres', 'SEO Proggres', 'SEO Proggres', 'SEO Proggres', NULL),
(136, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'Tutorial en línea', 'دروس عبر الإنترنت', 'Didacticiel en ligne', '在线教程', NULL),
(137, 'checkout', 'Checkout', 'হোটেল হইতে বিদায়সময়', 'Revisa', 'الدفع', 'Check-Out', '查看', NULL),
(138, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা হয়েছে', 'Eliminado correctamente', 'حذف بنجاح', 'Supprimé avec succès', '成功删除', NULL),
(139, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'Annuler', '取消', NULL),
(140, 'required', 'Required', 'প্রয়োজনীয়', 'Necesario', 'مطلوب', 'Requis', '需要', NULL),
(141, 'must_be_a_number', 'Must Be A Number', 'একটি সংখ্যা হতে হবে', 'Debe Ser Un Número', 'يجب أن يكون هناك عدد', 'Doit être un nombre', '必须是数字', NULL),
(142, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'Debe ser una dirección de correo electrónico válida', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'Doit être une adresse e-mail valide', '必须是一个有效的E-Mail地址', NULL),
(143, 'save', 'Save', 'সংরক্ষণ', 'Guardar', 'حفظ', 'Sauvegarder', '保存', NULL),
(144, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'Producto Publicado!', 'المنتج النشر!', 'Publié produit!', '产品发布！', NULL),
(145, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'Producto Inédito!', 'المنتج غير منشورة!', 'Produit inédit!', '产品未公布！', NULL),
(146, 'product_featured!', 'Product Featured!', 'পণ্য দেখানো হয়েছে!', 'Producto Destacado!', 'منتج مميز!', 'Produit vedette!', '产品特色！', NULL),
(147, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য Unfeatured!', 'Sin rasgos producto!', 'Unfeatured المنتج!', 'Unfeatured produit!', '产品Unfeatured！', NULL),
(148, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'Deslizador Publicado!', 'المنزلق نشر!', 'Publié curseur!', '滑块发布！', NULL),
(149, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'Deslizador Inédito!', 'التمرير غير منشورة!', 'Curseur inédit!', '滑块未公布！', NULL),
(150, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'Página Publicado!', 'الصفحة نشر!', 'Publié page!', '网页发布！', NULL),
(151, 'page_unpublished!', 'Page Unpublished!', 'পাতা অপ্রকাশিত!', 'Página Inédito!', 'الصفحة غير منشورة!', 'Page inédite!', '页面未公布！', NULL),
(152, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'বিজ্ঞপ্তি সাউন্ড সক্ষম!', 'Notificación de sonido activado!', 'الإخطار الصوت المتعددة!', 'Notification sonore activé!', '通知启用声音！', NULL),
(153, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'বিজ্ঞপ্তি সাউন্ড নিষ্ক্রিয়!', 'Notificación de sonido discapacitados!', 'الإخطار الصوت معطل!', 'Notification sonore handicapés!', '通知声音残疾人！', NULL),
(154, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'Google Login Habilitado!', 'جوجل الدخول ممكن!', 'Google Connexion activé!', '谷歌登录启用！', NULL),
(155, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'Google Acceso de minusválidos!', 'جوجل تسجيل الدخول معطل!', 'Google Login Disabled!', '谷歌禁用登录！', NULL),
(156, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'Facebook Login Habilitado!', 'الفيسبوك تسجيل الدخول ممكن!', 'Facebook Connexion activé!', 'Facebook的登录启用！', NULL),
(157, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'Facebook Login discapacitados!', 'الفيسبوك تسجيل الدخول معطل!', 'Facebook Login Disabled!', 'Facebook的登录禁用！', NULL),
(158, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​পেমেন্ট অক্ষম!', 'El pago de PayPal habilitado!', 'باي بال الدفع معطل!', 'Paiement Paypal désactivé!', '支付宝付款禁用！', NULL),
(159, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপ্যাল ​​পেমেন্ট সক্ষম!', 'El pago de PayPal Habilitado!', 'باي بال الدفع المتعددة!', 'Paiement Paypal activé!', 'Paypal支付启用！', NULL),
(160, 'manage_categories', 'Manage Categories', 'বিভাগ গালাগাল', 'Gestionar Categorías', 'إدارة الفئات', 'Gérer Les Catégories', '管理类别', NULL),
(161, 'add_category', 'Add Category', 'বিভাগ যোগ করুন', 'Guardar Categoría', 'إضافة فئة', 'Ajouter Catégorie', '添加类别', NULL),
(162, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', 'Con éxito Añadido!', 'واضاف بنجاح!', 'Ajouté avec succès!', '添加成功！', NULL),
(163, 'create_category', 'Create Category', 'বিভাগ তৈরি করুন', 'Crear categoría', 'إنشاء الفئة', 'Créer une catégorie', '创建类别', NULL),
(164, 'no', 'No', 'না', 'No', 'لا', 'Non', '没有', NULL),
(165, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'Nom', '名字', NULL),
(166, 'options', 'Options', 'বিকল্প', 'Opciones', 'خيارات', 'Options', '选项', NULL),
(167, 'manage_sub_categories', 'Manage Sub Categories', 'উপ বিভাগ গালাগাল', 'Administrar Sub Categorías', 'إدارة الفئات الفرعية', 'Gérer Sous-catégories', '管理子分类', NULL),
(168, 'add_sub-category', 'Add Sub-category', 'উপ-বিভাগ যোগ করুন', 'Añadir Sub-categoría', 'إضافة فئة الفرعية', 'Ajouter Sous-catégorie', '添加子类别', NULL),
(169, 'create_sub_category', 'Create Sub Category', 'উপ বিভাগ তৈরি করুন', 'Crear Subcategoría', 'إنشاء التصنيف الفرعي', 'Créez Sous catégorie', '创建子类别', NULL),
(170, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'Sub Categoría', 'التصنيف الفرعي', 'Sous catégorie', '子类别', NULL),
(171, 'manage_brands', 'Manage Brands', 'ব্র্যান্ড পরিচালনা', 'Administrar las marcas', 'إدارة العلامات التجارية', 'Gérer Marques', '管理品牌', NULL),
(172, 'add_brand', 'Add Brand', 'ব্র্যান্ড যোগ', 'Añadir Marca', 'إضافة العلامة التجارية', 'Ajouter Marque', '添加品牌', NULL),
(173, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি করুন', 'Crear Marca', 'إنشاء العلامة التجارية', 'Créer Marque', '创建品牌', NULL),
(174, 'logo', 'Logo', 'লোগো', 'Logo', 'الشعار', 'Logo', '徽标', NULL),
(175, 'brand', 'Brand', 'ব্র্যান্ড', 'Marca', 'علامة تجارية', 'Marque', '牌', NULL),
(176, 'manage_product', 'Manage Product', 'পণ্য গালাগাল প্রতিবেদন করো', 'Manejo de Producto', 'إدارة المنتج', 'Gérer produit', '管理产品', NULL),
(177, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'Añadir Producto', 'إضافة منتج', 'Ajouter un produit', '添加产品', NULL),
(178, 'create_product', 'Create Product', 'পণ্য তৈরি করুন', 'Crear Producto', 'إنشاء المنتج', 'Créez produit', '创建产品', NULL),
(179, 'back_to_product_list', 'Back To Product List', 'পিছনে পণ্য তালিকায়', 'Volver al listado de productos', 'الرجوع إلى قائمة المنتجات', 'Retour à la liste de produit', '返回产品列表', NULL),
(180, 'image', 'Image', 'ভাবমূর্তি', 'Imagen', 'صورة', 'Image', '图像', NULL),
(181, 'title', 'Title', 'খেতাব', 'Título', 'عنوان', 'Titre', '称号', NULL),
(182, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'Cantidad actual', 'الكمية الحالية', 'Quantité actuelle', '电流量', NULL),
(183, 'publish', 'Publish', 'প্রকাশ করা', 'Publicar', 'نشر', 'Publier', '发布', NULL),
(184, 'product', 'Product', 'পণ্য', 'Producto', 'المنتج', 'Produit', '产品', 'Sản Phẩm'),
(185, 'quantity', 'Quantity', 'পরিমাণ', 'Cantidad', 'كمية', 'Quantité', '数量', NULL),
(186, 'sale Price', 'Sale Price', 'বিক্রয় মূল্য', 'Precio De Venta', 'سعر البيع', 'Prix ​​De Vente', '销售价格', NULL),
(187, 'creation Date', 'Creation Date', 'তৈরির তারিখ', 'Fecha De Creacion', 'تاريخ الإنشاء', 'Date De Création', '创建日期', NULL),
(188, 'manage_banner', 'Manage Banner', 'ব্যানার গালাগাল প্রতিবেদন করো', 'Administrar Banner', 'إدارة راية', 'Gérer Bannière', '管理横幅', NULL),
(189, 'homepage', 'Homepage', 'হোম পেজ', 'Página principal', 'الصفحة الرئيسية', 'Page d''accueil', '主页', NULL),
(190, 'category_page', 'Category Page', 'বিভাগ পাতায় লেখা', 'Categoría Página', 'الفئة الصفحة', 'Catégorie page', '分类页', NULL),
(191, 'featured_page', 'Featured Page', 'আলোচিত পাতা', 'Página Destacado', 'صفحة مميزة', 'Vedette page', '推荐页面', NULL),
(192, 'after_slider', 'After Slider', 'স্লাইডার পর', 'Después deslizante', 'بعد المتزلج', 'Après Curseur', '后滑块', NULL),
(193, 'select_banner_image', 'Select Banner Image', 'ব্যানার চিত্র নির্বাচন করুন', 'Seleccionar Imagen del Anuncio', 'حدد راية صورة', 'Sélectionnez Banner Image', '选择横幅图片', NULL),
(194, 'link', 'Link', 'লিংক', 'Enlace', 'صلة', 'Lien', '链接', NULL),
(195, 'updating..', 'Updating..', 'আপডেট ..', 'Actualizando ..', 'تحديث ..', 'Mise à jour ..', '更新..', NULL),
(196, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', 'Ajustes Actualizado!', 'الإعدادات المحدثة!', 'Paramètres Mise à jour!', '设置更新！', 'Thiết đặt dã được cập nhật!'),
(197, 'update', 'Update', 'আপডেট', 'Actualización', 'التحديث', 'Mise À Jour', '更新', 'Cập nhật'),
(198, 'after_featured', 'After Featured', 'পরে বৈশিষ্ট্যযুক্ত', 'Después destacados', 'بعد مميزة', 'Après vedette', '精选后', NULL),
(199, 'after_search', 'After Search', 'অনুসন্ধান পর', 'Después de Búsqueda', 'بعد البحث', 'Après Recherche', '经过搜索', NULL),
(200, 'after_category', 'After Category', 'বিভাগ পরে', 'Después Categoría', 'بعد الفئة', 'Après Catégorie', '分类后，', NULL),
(201, 'after_latest', 'After Latest', 'সর্বশেষ পর', 'Después reciente', 'بعد آخر', 'Après Dernières', '经过最新', NULL),
(202, 'after_popular', 'After Popular', 'জনপ্রিয় পর', 'Después populares', 'بعد الشعبية', 'Après populaire', '之后人气', NULL),
(203, 'after_most_viewed', 'After Most Viewed', 'সাম্প্রতিক পর', 'After Most Viewed', 'بعد الأكثر مشاهدة', 'Après plus consultés', '最受欢迎之后', NULL),
(204, 'after_filters', 'After Filters', 'ফিল্টার পর', 'Después de Filtros', 'بعد الفلاتر', 'Après Filtres', '经过过滤器', NULL),
(205, 'after_most_sold', 'After Most Sold', 'সবথেকে বেশি বিক্রিত পর', 'Después de más vendidos', 'بعد الأكثر مبيعا', 'Après les plus vendus', '最畅销的后', NULL),
(206, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'Banner Publicado!', 'راية نشر!', 'Bannière Publié!', '横幅发布！', NULL),
(207, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'Banner Inédito!', 'راية غير منشورة!', 'Bannière inédit!', '未公布的旗帜！', NULL),
(208, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'Administrar sitio', 'إدارة الموقع', 'Gérer le site', '管理网站', NULL),
(209, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración General', 'الإعدادات العامة', 'Réglages Généraux', '常规设置', NULL),
(210, 'favicon', 'Favicon', 'ফেভিকন', 'Favicon', 'فافيكون', 'Favicon', '网站图标', NULL),
(211, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'Medio Social', 'وسائل التواصل الاجتماعي', 'Médias Sociaux', '社交媒体', NULL),
(212, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক প্রবেশ করুন Configuaration', 'Social Acceso de configuaration', 'تسجيل الدخول الاجتماعي Configuaration', 'Social Connexion configuaration', '社会登录Configuaration', NULL),
(213, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'Configuración de producto Comentario', 'إعدادات المنتج تعليق', 'Produit Commentez Paramètres', '商品评论设置', NULL),
(214, 'SEO', 'SEO', 'এসইও', 'SEO', 'SEO', 'SEO', '搜索引擎优化', NULL),
(215, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'Ajustes Captcha', 'إعدادات CAPTCHA', 'Paramètres Captcha', '验证码设置', NULL),
(216, 'home_page', 'Home Page', 'হোম পেজ', 'Home Page', 'الصفحة الرئيسية', 'Page d''accueil', '主页', NULL),
(217, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'Página de contacto', 'صفحة الاتصال', 'Page de contact', '联系方式页面', NULL),
(218, 'footer', 'Footer', 'পাদলেখ', 'Pie de página', 'تذييل', 'Pied de page', '页脚', NULL),
(219, 'system_name', 'System Name', 'সিস্টেম নাম', 'Nombre del sistema', 'اسم النظام', 'Name System', '系统名称', NULL),
(220, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'Sistema de Correo', 'نظام البريد الإلكتروني', 'Système Email', '电子邮件系统', NULL),
(221, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'Sistema Título', 'نظام العنوان', 'Système Titre', '系统标题', NULL),
(222, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন বিজ্ঞপ্তি সাউন্ড', 'Sonido de notificación de administración', 'مشرف صوت الإعلام', 'Administrateur notification sonore', '管理员通知声音', NULL),
(223, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'Volumen de Notificación de administración', 'مشرف إعلام حجم', 'Administrateur volume de la notification', '管理员通知音量', NULL),
(224, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'Volumen: ', 'الصوت: ', 'Volume: ', '体积： ', NULL),
(225, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোম পেজ বিজ্ঞপ্তি সাউন্ড', 'Notificación de sonido Página de inicio', 'الصفحة الرئيسية صوت الإعلام', 'Page d''accueil de notification sonore', '首页通知声音', NULL),
(226, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোম পেজ বিজ্ঞপ্তি ভলিউম', 'Volumen Notificación Homepage', 'الصفحة الرئيسية إعلام حجم', 'Page d''accueil Volume de notification', '首页通知音量', NULL),
(227, 'saving', 'Saving', 'রক্ষা', 'Ahorro', 'إنقاذ', 'Économie', '节约', NULL),
(228, 'home_category', 'Home Category', 'হোম বিভাগ', 'Inicio Categoría', 'home الفئة', 'Accueil Catégorie', '首页分类', NULL),
(229, 'home_brands', 'Home Brands', 'হোম ব্র্যান্ড', 'Inicio Marcas', 'الرئيسية ماركات', 'Accueil Marques', '家居品牌', NULL),
(230, 'manage_category_page', 'Manage Category Page', 'বিষয়শ্রেণী পাতা গালাগাল প্রতিবেদন করো', 'Administrar Categoría Página', 'إدارة الفئة الصفحة', 'Gérer Catégorie page', '管理分类页', NULL),
(231, 'side_bar_position', 'Side Bar Position', 'সাইড বার অবস্থান', 'Barra lateral Posición', 'الجانب بار الوظيفة', 'Side Bar Position', '边栏位置', NULL),
(232, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'Subir Logo', 'تحميل الشعار', 'Upload Logo', '上传徽标', NULL),
(233, 'drop_logos_to_upload', 'Drop Logos To Upload', 'আপলোড লোগো ছাড়ুন', 'Caída Logos Para Sube', 'إسقاط شعارات لتحميل', 'Déposez Logos Pour télécharger', '降标志上传', NULL),
(234, 'or_click_to_pick_manually', 'Or Click To Pick Manually', 'অথবা ম্যানুয়ালি চয়ন করার জন্য ক্লিক করুন', 'O Haga clic para seleccionar manualmente', 'أو انقر لاختيار يدويا', 'Ou Cliquez sur pour choisir manuellement', '或点击手动选择', NULL),
(235, 'all_logos', 'All Logos', 'সমস্ত প্রতীক', 'Todos los logos', 'كل الشعارات', 'Tous les Logos', '所有徽标', NULL),
(236, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'Seleccione Logo', 'حدد الشعار', 'Sélectionnez Logo', '选择标识', NULL),
(237, 'place', 'Place', 'জায়গা', 'Lugar', 'مكان', 'Endroit', '地方', NULL),
(238, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'Logo de administración', 'المشرف الشعار', 'Administrateur Logo', '管理员标识', NULL),
(239, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'Con éxito seleccionada!', 'مختارة بنجاح!', 'Sélectionné avec succès!', '成功入选！', NULL),
(240, 'change', 'Change', 'পরিবর্তন', 'Cambio', 'تغيير', 'Changement', '变化', NULL),
(241, 'homepage_header_logo', 'Homepage Header Logo', 'হোম পেজ শিরোলেখ লোগো', 'Página de inicio Logo Cabecera', 'الصفحة الرئيسية رأس الشعار', 'Accueil Logo Header', '首页页眉徽标', NULL),
(242, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোম পেজ পাদলেখ লোগো', 'Página de inicio Pie de página Logo', 'الصفحة الرئيسية تذييل شعار', 'Accueil Footer Logo', '网页页脚徽标', NULL),
(243, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'Seleccione Favicon', 'حدد فافيكون', 'Sélectionnez Favicon', '选择网站图标', NULL),
(244, 'social_links', 'Social Links', 'সামাজিক লিংক', 'Enlaces Sociales', 'الروابط الاجتماعية', 'Liens sociaux', '社会联系', NULL),
(245, 'discus_settings', 'Discus Settings', 'চাকতি সেটিংস', 'Ajustes Discus', 'إعدادات رمي ​​القرص', 'Réglages Discus', '铁饼设置', NULL),
(246, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'Discus ID', 'رمي القرص ID', 'Discus ID', '七彩ID', NULL),
(247, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংগুলি', 'Facebook Entrar Configuración', 'الفيسبوك تسجيل الدخول إعدادات', 'Facebook Paramètres de connexion', 'Facebook的登录设置', NULL),
(248, 'status', 'Status', 'অবস্থা', 'Estado', 'حالة', 'Statut', '状态', NULL),
(249, 'google+_login_settings', 'Google+ Login Settings', 'Google + লগইন সেটিংগুলি', 'Google+ Entrar Configuración', 'في Google+ الدخول إعدادات', 'Google+ Paramètres de connexion', 'Google+的登录设置', NULL),
(250, 'public_key', 'Public Key', 'সর্বজনীন কী', 'Clave Pública', 'المفتاح العام', 'À clé publique', '公钥', NULL),
(251, 'private_key', 'Private Key', 'ব্যক্তিগত কী', 'Clave Privada', 'مفتاح خاص', 'Clé privée', '私钥', NULL),
(252, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান গালাগাল প্রতিবেদন করো', 'Administrar la optimización del Search Engine', 'إدارة محرك البحث الأمثل', 'Gérer Search Engine Optimization', '管理搜索引擎优化', NULL),
(253, 'keywords', 'Keywords', 'মূলশব্দ', 'Palabras clave', 'الكلمات المفتاحية', 'Mots-clés', '关键词', NULL),
(254, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'Auteur', '笔者', NULL),
(255, 'description', 'Description', 'বিবরণ', 'Descripción', 'وصف', 'Description', '描述', NULL),
(256, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'Dirección De Contacto', 'عنوان الإتصال', 'Adresse De Contact', '联系地址', NULL),
(257, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'Teléfono De Contacto', 'الاتصال الهاتف', 'Numéro Du Contact', '联系电话', NULL),
(258, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'Email De Contacto', 'تواصل بالبريد الاكتروني', 'Email Du Contact', '联系人电子邮件', NULL),
(259, 'contact_website', 'Contact Website', 'যোগাযোগ ওয়েবসাইট', 'Contacto Sitio web', 'الإتصال الموقع', 'Contact Site', '联系网站', NULL),
(260, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'Contacto Acerca', 'الاتصال عن', 'Contactez-propos', '联系关于', NULL),
(261, 'footer_category', 'Footer Category', 'পাদলেখ বিভাগ', 'Pie de página Categoría', 'تذييل الفئة', 'Pied de page Catégorie', '页脚类别', NULL),
(262, 'footer_text', 'Footer Text', 'পাদলেখ শিরোনাম', 'Texto De Pie De Página', 'تذييل النص', 'Pied de texte', '页脚文本', NULL),
(263, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'Realmente desea eliminar este logotipo?', 'حقا تريد حذف هذا الشعار؟', 'Vraiment de vouloir supprimer ce logo?', '真的要删除这个标志？', NULL),
(264, 'manage_languages', 'Manage Languages', 'ভাষা পরিচালনা', 'Administrar Idiomas', 'إدارة اللغات', 'Gérer les langues', '管理语言', NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `Vietnamese`) VALUES
(265, 'add_language', 'Add Language', 'নতুন ভাষা যোগ করা', 'Agregar idioma', 'إضافة اللغة', 'Ajouter une langue', '添加语言', NULL),
(266, 'add_new_word', 'Add New Word', 'নতুন শব্দ যোগ', 'Añadir nueva palabra', 'إضافة جديد وورد', 'Ajout d''un mot', '添加新词', NULL),
(267, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'Realmente desea eliminar este idioma?', 'حقا تريد حذف هذه اللغة؟', 'Vraiment de vouloir supprimer cette langue?', '真的要删除这种语言？', NULL),
(268, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'Ahorrar ..', 'إنقاذ ..', 'Enregistrement ..', '节能..', NULL),
(269, 'delete_language', 'Delete Language', 'ভাষা মুছে দিতে', 'Eliminar Idioma', 'حذف اللغة', 'Supprimer Langue', '删除语言', NULL),
(270, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'Seleccione Idioma', 'اختار اللغة', 'Choisir La Langue', '选择语言', NULL),
(271, 'word', 'Word', 'শব্দ', 'Palabra', 'كلمة', 'Mot', '字', NULL),
(272, 'translation', 'Translation', 'অনুবাদ', 'Traducción', 'ترجمة', 'Traduction', '翻译', NULL),
(273, 'updated!', 'Updated!', 'আপডেট করা হয়েছে!', 'Actualizado!', 'تحديث!', 'Mise à jour!', '更新！', 'Cập nhật!'),
(274, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'Realmente desea eliminar esta Palabra?', 'حقا تريد حذف هذه الكلمة؟', 'Vraiment de vouloir supprimer cette Parole?', '真的要删除这个字？', NULL),
(275, 'delete', 'Delete', 'মুছে দিন', 'Borrar', 'حذف', 'Effacer', '删除', NULL),
(276, 'translate', 'Translate', 'অনুবাদ করা', 'Traducir', 'ترجم', 'Traduire', '翻译', NULL),
(277, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'Salvar A Todos', 'احفظ الكل', 'Sauver Tous', '保存全部', NULL),
(278, 'manage_profile', 'Manage Profile', 'প্রোফাইল গালাগাল প্রতিবেদন করো', 'Administrar perfil', 'إدارة الملف', 'Gérer le profil', '管理个人资料', NULL),
(279, 'manage_details', 'Manage Details', 'বিস্তারিত গালাগাল প্রতিবেদন করো', 'Administrar Detalles', 'إدارة تفاصيل', 'Gérer Détails', '管理细则', NULL),
(280, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'Adresse', '地址', NULL),
(281, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', 'Perfil Actualizado!', 'يتم تجديد!', 'Profil Mis À Jour!', '个人资料已更新！', NULL),
(282, 'update_profile', 'Update Profile', 'হালনাগাদ প্রফাইল', 'Actualización Del Perfil', 'تحديث الملف', 'Mettre À Jour Le Profil', '更新个人资料', NULL),
(283, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন করুন', 'Cambiar La Contraseña', 'تغيير كلمة المرور', 'Changer Le Mot De Passe', '更改密码', NULL),
(284, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'Contraseña Actual', 'كلمة السر الحالية', 'Mot De Passe Actuel', '当前密码', NULL),
(285, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'Nueva Contraseña *', 'كلمة سر جديدة *', 'Nouveau Mot De Passe *', '新密码*', NULL),
(286, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা হয়েছে!', 'Contraseña Actualizada!', 'كلمة التحديث!', 'Mot de passe Mise à jour!', '密码更新！', NULL),
(287, 'update_password', 'Update Password', 'আপডেট পাসওয়ার্ড', 'Actualizar contraseña', 'تحديث كلمة المرور', 'Mise à jour le mot de passe', '更新密码', NULL),
(288, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', 'Contraseña Incorrecta!', 'كلمة المرور غير صحيحة!', 'Mot De Passe Incorrect!', '密码不正确！', NULL),
(289, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা করুন', 'Administrar configuración de negocio', 'إدارة إعدادات الشركة', 'Gérer les paramètres commerciaux', '管理业务设置', NULL),
(290, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল ​​পেমেন্ট', 'Pago Paypal', 'باي بال الدفع', 'Paiement Paypal', '支付宝付款', NULL),
(291, 'paypal_email', 'Paypal Email', 'PayPal এর ইমেইল', 'E-Mail De Paypal', 'باي بال البريد الإلكتروني', 'Paypal Email', '贝宝电子邮件', NULL),
(292, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট প্রকার', 'PayPal Tipo de cuenta', 'باي بال نوع الحساب', 'Type de compte Paypal', '贝宝账户类型', NULL),
(293, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'Nombre moneda', 'اسم العملة', 'Nom de la devise', '货币名称', NULL),
(294, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'Símbolo de moneda', 'رمز العملة', 'Symbole monétaire', '货币符号', NULL),
(295, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ প্রকার', 'Envios Tipo Costo', 'تكلفة الشحن نوع', 'Frais de port Type de coût', '运费类型', NULL),
(296, 'product_wise', 'Product Wise', 'পণ্য প্রজ্ঞাময়', 'Sabio Producto', 'المنتج الحكيم', 'Wise Produit', '产品智者', NULL),
(297, 'fixed', 'Fixed', 'স্থায়ী', 'Fijo', 'ثابت', 'Fixé', '固定', NULL),
(298, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন করা হয়েছে যদি)', 'El coste de envío (Si Fijo)', 'تكلفة الشحن (إذا كان ثابت)', 'Coût de l''expédition (Si fixe)', '运费（如果固定）', NULL),
(299, 'shipment_info', 'Shipment Info', 'চালান তথ্য', 'Envío Info', 'شحنة معلومات', 'Infos expédition', '出货信息', NULL),
(300, 'FAQs', 'FAQs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'Preguntas frecuentes', 'أسئلة وأجوبة', 'FAQs', '常见问题解答', NULL),
(301, 'question', 'Question', 'প্রশ্ন', 'Pregunta', 'سؤال', 'Question', '题', NULL),
(302, 'answer', 'Answer', 'উত্তর', 'Respuesta', 'إجابة', 'Répondre', '答案', NULL),
(303, 'add_more_FAQs', 'Add More FAQs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'Añadir Más preguntas frecuentes', 'إضافة المزيد من أسئلة وأجوبة', 'Ajouter Plus de FAQ', '添加更多常见问题解答', NULL),
(304, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'Enviar Newsletter', 'إرسال النشرة الإخبارية', 'Envoyer lettre', '发送新闻', NULL),
(305, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'Correos electrónicos (usuarios)', 'رسائل البريد الإلكتروني (المستخدمين)', 'E-mails (utilisateurs)', '电子邮件（用户）', NULL),
(306, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'Correos electrónicos (usuarios registrados)', 'رسائل البريد الإلكتروني (مشترك)', 'E-mails (abonnés)', '电子邮件（用户）', NULL),
(307, 'from_:_email_address', 'From : Email Address', 'থেকে: এটি ইমেল ঠিকানা', 'De: Dirección de correo electrónico', 'من: عنوان البريد الإلكتروني', 'De: Adresse électronique', '来自：电子邮件地址', NULL),
(308, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'Boletín Asunto', 'النشرة الموضوع', 'Lettre Sujet', '时事主题', NULL),
(309, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'Boletín de contenido', 'النشرة المحتوى', 'Bulletin contenu', '通讯内容', NULL),
(310, 'sending', 'Sending', 'পাঠানো', 'Enviando', 'إرسال', 'Envoi', '发出', NULL),
(311, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'Enviado!', 'أرسلت!', 'Envoyé!', '发送！', NULL),
(312, 'send', 'Send', 'পাঠান', 'Enviar', 'إرسال', 'Envoyer', '发送', NULL),
(313, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'Sujet', '学科', NULL),
(314, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'Date', '日期', NULL),
(315, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'Message', '信息', NULL),
(316, 'date_time', 'Date Time', 'তারিখ সময়', 'Fecha Y Hora', 'التاريخ الوقت', 'Date Heure', '日期时间', NULL),
(317, 'reply', 'Reply', 'উত্তর', 'Responder', 'رد', 'Répondre', '回复', NULL),
(318, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'Administrar Estados Mayores', 'إدارة الأركان', 'Gérer Staffs', '管理职员', NULL),
(319, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'Añadir Staff', 'إضافة للموظفين', 'Ajouter personnel', '增加员工', NULL),
(320, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি করুন', 'Crear administración', 'إنشاء الادارية', 'Créer Administrateur', '创建管理员', NULL),
(321, 'role', 'Role', 'ভূমিকা', 'Papel', 'دور', 'Rôle', '角色', NULL),
(322, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'Editar administración', 'تحرير المشرف', 'Modifier Administrateur', '编辑管理', NULL),
(323, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত হয়েছে!', 'Editado con éxito!', 'حرره بنجاح!', 'Edité avec succès!', '编辑成功！', NULL),
(324, 'edit', 'Edit', 'সম্পাদন করা', 'Editar', 'تحرير', 'Éditer', '编辑', NULL),
(325, 'sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress', NULL),
(326, 'Manage_roles', 'Manage Roles', 'ভূমিকা গালাগাল প্রতিবেদন করো', 'Administrar funciones', 'إدارة الأدوار', 'Gérer les rôles', '管理角色', NULL),
(327, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'Añadir Rol', 'إضافة دور', 'Ajouter un rôle', '添加角色', NULL),
(328, 'create_role', 'Create Role', 'ভূমিকা তৈরি করুন', 'Crear Rol', 'إنشاء دور', 'Créer un rôle', '创建角色', NULL),
(329, 'back_to_role_list', 'Back To Role List', 'পিছনে ভূমিকা তালিকায়', 'Volver a la lista Rol', 'الرجوع إلى قائمة دور', 'Retour à la liste de Rôle', '返回角色列表', NULL),
(330, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'Editar Papel', 'تحرير الدور', 'Modifier Rôle', '编辑角色', NULL),
(331, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'Realmente desea eliminar este?', 'حقا تريد حذف هذا؟', 'Vraiment de vouloir supprimer ce?', '真的要删除吗？', NULL),
(332, 'manage_slider', 'Manage Slider', 'স্লাইডার পরিচালনা', 'Administrar deslizante', 'إدارة المتزلج', 'Gérer Curseur', '管理滑块', NULL),
(333, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'Lista deslizante', 'قائمة المنزلق', 'Liste curseur', '滑块名单', NULL),
(334, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'Serial deslizante', 'المنزلق المسلسل', 'Curseur de série', '滑盖系列', NULL),
(335, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'Con éxito Serialized!', 'تسلسل بنجاح!', 'Sérialisé succès!', '成功连载！', NULL),
(336, 'ID', 'ID', 'আইডি', 'Identificación', 'الهوية', 'ID', 'ID', NULL),
(337, 'manage_page', 'Manage Page', 'পাতা গালাগাল প্রতিবেদন করো', 'Administrar Página', 'إدارة الصفحة', 'Gérer la page', '管理页面', NULL),
(338, 'add_page', 'Add Page', 'পৃষ্ঠা যুক্ত করুন', 'Añadir Página', 'أضف الصفحة', 'Ajouter une page', '添加页面', NULL),
(339, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'Crear Página', 'انشئ صفحة', 'Créer Une Page', '创建页', NULL),
(340, 'back_to_page_list', 'Back To Page List', 'প্রথম পাতা তালিকায়', 'Volver a la lista Página', 'الرجوع إلى قائمة الصفحة', 'Retour à la liste de la page', '返回页面列表', NULL),
(341, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'Nombre De La Página', 'اسم الصفحة', 'Nom de la page', '页面名称', NULL),
(342, 'page', 'Page', 'পৃষ্ঠা', 'Página', 'صفحة', 'Page', '页面', NULL),
(343, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'Precio De Venta', 'سعر البيع', 'Prix ​​De Vente', '销售价格', NULL),
(344, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'Fecha De Creacion', 'تاريخ الإنشاء', 'Date De Création', '创建日期', NULL),
(345, 'page_title', 'Page Title', 'পাতা শিরোনাম', 'Título De La Página', 'عنوان الصفحة', 'Titre De La Page', '页面标题', NULL),
(346, 'parmalink', 'Parmalink', 'Parmalink', 'Parmalink', 'Parmalink', 'Parmalink', 'Parmalink', NULL),
(347, 'tags', 'Tags', 'ট্যাগ্স', 'Etiquetas', 'الكلمات', 'Mots clés', '标签', NULL),
(348, 'number_of_page_parts', 'Number Of Page Parts', 'পাতা অংশ সংখ্যা', 'Número de las partes Page', 'عدد الأجزاء الصفحة', 'Nombre de pages Pièces', '页零件数量', NULL),
(349, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে শুরু করি', 'Vamos a empezar a crear su página', 'يتيح البدء في إنشاء الصفحة الخاصة بك', 'Permet de commencer à créer votre page', '让我们开始创建你的页面', NULL),
(350, 'parts', 'Parts', 'যন্ত্রাংশ', 'Partes', 'أجزاء', 'Parties', '零件', NULL),
(351, 'reset', 'Reset', 'রিসেট', 'Reajustar', 'إعادة تعيين', 'Réinitialiser', '重置', NULL),
(352, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'Télécharger', '上传', NULL),
(353, 'select_size', 'Select Size', 'নির্বাচন আকার', 'Selecciona El Tamaño', 'حدد الحجم', 'Sélectionnez La Taille', '选择尺寸', NULL),
(354, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'Un cuarto', 'ربع', 'Un quart', '四分之一', NULL),
(355, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'Un tercio', 'ثلث', 'Un tiers', '三分之一', NULL),
(356, 'half', 'Half', 'অর্ধেক', 'Mitad', 'نصف', 'Moitié', '半', NULL),
(357, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'Dos tercios', 'ثلثي', 'Deux tiers', '三分之二', NULL),
(358, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'Tres cuartos', 'ثلاثة أرباع', 'Trois-quatrième', '三十四', NULL),
(359, 'full', 'Full', 'পূর্ণ', 'Completo', 'كامل', 'Complet', '满', NULL),
(360, 'select_type', 'Select Type', 'নির্বাচন করুন প্রকার', 'Seleccionar tipo', 'حدد نوع', 'Sélectionner le type', '选择类型', NULL),
(361, 'content', 'Content', 'সন্তুষ্ট', 'Contenido', 'محتوى', 'Contenu', '内容', NULL),
(362, 'widget', 'Widget', 'উইজেট', 'Widget', 'القطعة', 'Widget', '小工具', NULL),
(363, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'Más Vistos', 'الأكثر مشاهدة', 'Le Plus Regardé', '最受关注', NULL),
(364, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'No más de 4 columnas!', 'لا يزيد على 4 أعمدة!', 'Pas plus de 4 colonnes!', '不超过4列！', NULL),
(365, 'category_name', 'Category Name', 'নামের তালিকা', 'Nombre De La Categoría', 'اسم التصنيف', 'Nom De Catégorie', '分类名称', NULL),
(366, 'edit_category', 'Edit Category', 'সম্পাদনা বিভাগ', 'Editar categoría', 'تحرير الفئة', 'Modifier une catégorie', '编辑类别', NULL),
(367, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'Sub-categoría Nombre', 'الفئة الفرعية اسم', 'Sous-catégorie Nom', '子类别名称', NULL),
(368, 'edit_sub-category', 'Edit Sub-category', 'সম্পাদনা করুন উপ-বিভাগ', 'Editar Sub-categoría', 'تحرير التصنيف الفرعى-', 'Modifier la sous-catégorie', '编辑子类别', NULL),
(369, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'Nombre De La Marca', 'اسم العلامة التجارية', 'Marque', '品牌', NULL),
(370, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'Logotipo De La Marca', 'شعار العلامة التجارية', 'Logo De La Marque', '品牌标识', NULL),
(371, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'Seleccionar logo de la marca', 'حدد شعار العلامة التجارية', 'Sélectionnez une marque Logo', '选择品牌标识', NULL),
(372, 'edit_brand', 'Edit Brand', 'সম্পাদনা করুন ব্র্যান্ড', 'Editar Marca', 'تحرير العلامة التجارية', 'Modifier Marque', '编辑品牌', NULL),
(373, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'Título del producto', 'عنوان المنتج', 'Titre du produit', '产品名称', NULL),
(374, 'unit', 'Unit', 'একক', 'Unidad', 'وحدة', 'Unité', '单元', NULL),
(375, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'Unidad (por ejemplo Kg, ordenador, etc.)', 'وحدة (مثلا كلغ، والكمبيوتر الخ.)', 'Unité (ex Kg, ordinateur, etc.)', '单位（如斤，PC等设备）', NULL),
(376, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'Precio De Compra', 'سعر الشراء', 'Prix ​​D''Achat', '购买价格', NULL),
(377, 'shipping_cost', 'Shipping Cost', 'শিপিং খরচ', 'Costo De Envío', 'تكلفة الشحن', 'Frais De Port', '运输费', NULL),
(378, 'product_tax', 'Product Tax', 'পণ্য ট্যাক্স', 'Fiscal Producto', 'الضريبة المنتج', 'Impôt sur le produit', '产品税', NULL),
(379, 'product_discount', 'Product Discount', 'পণ্যের ডিসকাউন্ট', 'Descuento del producto', 'الخصم المنتج', 'Remise de produit', '产品折扣', NULL),
(380, 'images', 'Images', 'ছবি', 'Imágenes', 'الصور', 'Images', '图片', NULL),
(381, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'Elija El Archivo', 'اختر ملف', 'Choisissez Fichier', '选择文件', NULL),
(382, 'color', 'Color', 'রঙ', 'Color', 'اللون', 'Couleur', '颜色', NULL),
(383, 'add_more_colors', 'Add More Colors', 'আরো রঙ যোগ করুন', 'Añadir más colores', 'إضافة المزيد من الألوان', 'Ajouter plus de couleurs', '添加更多颜色', NULL),
(384, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'আপনি আপনার পণ্যের জন্য আরো মাঠ প্রয়োজন হয়, তাহলে আরও বেশির জন্য এখানে ক্লিক করুন ...', 'Si necesita más campo para su producto, por favor haga clic aquí para Más ...', 'إذا كنت بحاجة إلى المزيد من الميدان للمنتج الخاص بك، الرجاء انقر هنا للمزيد ...', 'Si vous désirez plus de terrain pour votre produit, S''il vous plaît Cliquez ici pour plus ...', '如果你需要更多的现场为您的产品，请点击这里查看更多...', NULL),
(385, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্র যোগ করুন', 'Añadir más campos', 'إضافة المزيد من الحقول', 'Ajouter d''autres champs', '添加更多的字段', NULL),
(386, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'Producto se ha cargado!', 'المنتج قد تم إيداع!', 'Produit a été téléchargé!', '产品已上传！', NULL),
(387, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'Nombre Del Campo', 'اسم الحقل', 'Nom De Domaine', '字段名称', NULL),
(388, 'field_value', 'Field Value', 'ক্ষেত্রের মান', 'Campo Valor', 'قيمة الحقل', 'Champ Valeur', '字段值', NULL),
(389, 'out_of_stock', 'Out Of Stock', 'মজুদ শেষ', 'Agotado', 'إنتهى من المخزن', 'Rupture De Stock', '缺货', NULL),
(390, 'view_product', 'View Product', 'আমাদের পণ্য', 'Ver Producto', 'عرض المنتج', 'Voir le produit', '查看产品', NULL),
(391, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'Visto éxito!', 'مشاهدة بنجاح!', 'Vu succès!', '成功查看！', NULL),
(392, 'view', 'View', 'দৃশ্য', 'Vista', 'عرض', 'Vue', '视图', NULL),
(393, 'view_discount', 'View Discount', 'দেখুন বাট্টা', 'Ver descuento', 'عرض الخصم', 'Voir Discount', '查看折扣', NULL),
(394, 'viewing_discount!', 'Viewing Discount!', 'বাট্টা দেখছেন!', 'Viendo el descuento!', 'عرض خصم!', 'Regarde un rabais!', '查看折扣！', NULL),
(395, 'discount', 'Discount', 'ডিসকাউন্ট', 'Descuento', 'خصم', 'Remise', '折扣', NULL),
(396, 'add_product_quantity', 'Add Product Quantity', 'উত্পাদনের মোট পরিমানের যোগ', 'Añadir Producto Cantidad', 'إضافة منتج الكمية', 'Ajouter Produit Quantité', '添加产品数量', NULL),
(397, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'Cantidad añadida!', 'الكمية المضافة!', 'Quantité Ajouté!', '添加量！', NULL),
(398, 'stock', 'Stock', 'স্টক', 'Valores', 'الأوراق المالية', 'Stock', '股票', NULL),
(399, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্য পরিমাণ হ্রাস করুন', 'Reducir Producto Cantidad', 'تقليل كمية المنتج', 'Réduire Produit Quantité', '减少产品数量', NULL),
(400, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমিয়ে!', 'Cantidad rebajado!', 'كمية خفض!', 'Quantité réduit!', '数量减少！', NULL),
(401, 'destroy', 'Destroy', 'ধ্বংস করা', 'Destruir', 'هدم', 'Détruire', '破坏', NULL),
(402, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'Editar Producto', 'تحرير المنتج', 'Modifier le produit', '编辑产品', NULL),
(403, 'rate', 'Rate', 'হার', 'Tarifa', 'معدل', 'Taux', '率', NULL),
(404, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'Total', '总', NULL),
(405, 'reason_note', 'Reason Note', 'কারণ উল্লেখ্য', 'Motivo Nota', 'السبب ملاحظة', 'Raison Remarque', '原因说明', NULL),
(406, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'Administre su stock del producto', 'إدارة الأسهم الخاصة بك المنتج', 'Gérer votre produit Stock', '管理你的产品库存', NULL),
(407, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'Destruye Entrada Producto', 'تدمير دخول المنتج', 'Détruisez Entrée produit', '销毁产品入境', NULL),
(408, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'স্টক এন্ট্রি নেওয়া যোগ!', 'Añadir Tomado de la entrada Stock!', 'إضافة المحصلة دخول سوق الأسهم!', 'Ajouter Stock Entrée pris!', '添加股票输入上当受骗！', NULL),
(409, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ করুন', 'Añadir stock del producto', 'إضافة منتج المالية', 'Ajouter le produit Stock', '添加产品库存', NULL),
(410, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'এন্ট্রি নেওয়া ধ্বংস!', 'Destruye Tomado de entrada!', 'تدمير المحصلة الدخول!', 'Détruisez Entrée pris!', '摧毁条目获取！', NULL),
(411, 'create_stock', 'Create Stock', 'স্টক তৈরি করুন', 'Crear archivo', 'إنشاء البورصة', 'Créer Stock', '创建库存', NULL),
(412, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'Tipo de entrada', 'نوع الدخول', 'Type d''entrée', '条目类型', NULL),
(413, 'note', 'Note', 'বিঃদ্রঃ', 'Nota', 'ملاحظة', 'Note', '注意', NULL),
(414, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ করা হয়েছে পরিমাণ হ্রাস করা হবে.', 'Cantidad añadida será reducido.', 'وأضاف الكمية ستنخفض.', 'Ajouté Quantité sera réduite.', '加入数量将减少。', NULL),
(415, 'manage_sale', 'Manage Sale', 'বিক্রয় গালাগাল প্রতিবেদন করো', 'Administrar Venta', 'إدارة بيع', 'Gérer Vente', '销售管理', NULL),
(416, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'Venta Código', 'بيع مدونة', 'Vente code', '销售守则', NULL),
(417, 'buyer', 'Buyer', 'ক্রেতা', 'Comprador', 'مشتر', 'Acheteur', '买主', NULL),
(418, 'delivery_status', 'Delivery Status', 'ডেলিভারি স্থিতি', 'Estado De Entrega', 'حالة التسليم', 'Statut De Livraison', '交货状态', NULL),
(419, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'Estado De Pago', 'حالة السداد', 'Statut De Paiement', '付款状态', NULL),
(420, 'sales', 'Sales', 'বিক্রয়', 'Ventas', 'مبيعات', 'Ventes', '销售', NULL),
(421, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন করুন', 'Elija su estilo deslizante', 'اختيار المتزلج طريقتك', 'Choisissez votre style Slider', '选择您的滑盖造型', NULL),
(422, 'play', 'Play', 'খেলা', 'Jugar', 'لعب', 'Jouer', '玩', NULL),
(423, 'choose', 'Choose', 'নির্বাচন করা', 'Escoger', 'اختار', 'Choisir', '选择', NULL),
(424, 'enter_preview', 'Enter Preview', 'সম্পূর্ণ বিবরণের পূর্বরূপ দেখুন লিখুন', 'Introduzca Prevista', 'أدخل معاينة', 'Entrez Aperçu', '进入预览', NULL),
(425, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'Crear deslizante ..', 'خلق المتزلج ..', 'Création curseur ..', '创建滑块..', NULL),
(426, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'Deslizador Agregado', 'المنزلق واضاف!', 'Curseur Ajouté!', '滑块增加！', NULL),
(427, 'select_background_image', 'Select Background Image', 'নির্বাচন পটভূমি চিত্র', 'Seleccione la imagen de fondo', 'اختر صورة الخلفية', 'Sélectionnez l''image de fond', '选择背景图片', NULL),
(428, 'select_image', 'Select Image', 'নির্বাচন করুন', 'Seleccionar Imagen', 'اختر صورة', 'Sélectionner l''image', '选择图片', NULL),
(429, 'font-color', 'Font-color', 'ফন্টের রং', 'Color de fuente', 'لون الخط', 'Couleur de police', '字体颜色', NULL),
(430, 'background_color', 'Background Color', 'পেছনের রঙ', 'Color De Fondo', 'لون الخلفية', 'Couleur De Fond', '背景颜色', NULL),
(431, 'clean', 'Clean', 'পরিষ্কার', 'Limpio', 'نظيف', 'Propre', '清洁', NULL),
(432, 'slider_serial_saved!', 'Slider Serial Saved!', 'সিরিয়াল সংরক্ষিত এখানে ক্লিক করুন!', 'Slider Guardados de serie!', 'المنزلق المسلسل المحفوظ!', 'Curseur série Saved!', '滑盖系列救了！', NULL),
(433, 'permissions', 'Permissions', 'অনুমতি', 'Permisos', 'أذونات', 'Autorisations', '权限', NULL),
(434, 'off', 'Off', 'বন্ধ', 'Apagado', 'بعيدا', 'De', '离', NULL),
(435, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'Añadir A La Lista De Deseos', 'اضف الى قائمة الامنيات', 'Ajouter À La Liste De Souhaits', '添加到收藏', NULL),
(436, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'Nuestras Marcas disponibles', 'علاماتنا التجارية المتاحة', 'Nos Marques disponibles', '我们现有的品牌', NULL),
(437, 'product_color_options', 'Product Color Options', 'পণ্য রঙ বিকল্প', 'Opciones de color Producto', 'خيارات المنتج اللون', 'options de couleur de produit', '产品颜色选项', NULL),
(438, 'add_colors', 'Add Colors', 'রঙ যোগ করুন', 'Añadir colores', 'إضافة الألوان', 'Ajouter des couleurs', '添加颜色', NULL),
(439, 'preview', 'Preview', 'সম্পূর্ণ বিবরণের পূর্বরূপ দেখুন', 'Preestreno', 'معاينة', 'Aperçu', '预习', NULL),
(440, 'related_products', 'Related Products', 'সংশ্লিষ্ট পণ্য', 'Productos Relacionados', 'المنتجات ذات الصلة', 'Produits Connexes', '相关产品', NULL),
(441, 'full_description', 'Full Description', 'পূর্ণ বিবরণ', 'Descripción Completa', 'الوصف الكامل', 'Description Complète', '完整说明', NULL),
(442, 'additional_specification', 'Additional Specification', 'অতিরিক্ত স্পেসিফিকেশন', 'Especificación adicional', 'مواصفات إضافية', 'Spécification Supplémentaire', '其他规格', NULL),
(443, 'reviews', 'Reviews', 'পর্যালোচনা', 'Opiniones', 'التعليقات', 'Avis', '点评', NULL),
(444, 'add_to wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'Añadir A La Lista De Deseos', 'اضف الى قائمة الامنيات', 'Ajouter À La Liste De Souhaits', '添加到收藏', NULL),
(445, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Productos Destacados', 'منتجات مميزة', 'Produits Présentés', '特色产品', NULL),
(446, 'our_contacts', 'Our Contacts', 'আমাদের পরিচিতি', 'Nuestros Contactos', 'دليل المنسوبين', 'Nos Contacts', '我们的联系方式', NULL),
(447, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'Sobre Nosotros', 'عنا', 'A Propos De Nous', '关于我们', NULL),
(448, 'get_in_touch', 'Get In Touch', 'যোগাযোগ করুন', 'Ponerse En Contacto', 'الحصول على اتصال', 'Entrer en contact', '保持联系', NULL),
(449, 'contacts_form', 'Contacts Form', 'পরিচিতিতে ফরম', 'Contactos Formulario', 'اتصالات نموذج', 'Formulaire de contacts', '联系表格', NULL),
(450, 'e-mail', 'E-mail', 'ই-মেইল', 'Email', 'البريد الإلكتروني', 'Email', '电子邮件', NULL),
(451, 'sending..', 'Sending..', 'পাঠানো ..', 'Enviando ..', 'إرسال ..', 'Envoi ..', '正在发送。', NULL),
(452, 'send_message:', 'Send Message:', 'বার্তা পাঠাও:', 'Enviar Mensaje:', 'أرسل رسالة:', 'Envoyer Le Message:', '发信息：', NULL),
(453, 'message_sent!', 'Message Sent!', 'বার্তা প্রদান!', 'Mensaje Enviado!', 'تم إرسال الرسالة!', 'Message Envoyé!', '消息已发送！', NULL),
(454, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', 'Captcha Incorrecto!', 'كلمة التحقق غير صحيح!', 'Captcha Incorrecte!', '验证码不正确！', NULL),
(455, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'Mi Perfil', 'ملفي الشخصي', 'Mon Profil', '我的简历', NULL),
(456, 'personal_information', 'Personal Information', 'ব্যক্তিগত তথ্য', 'Información Personal', 'معلومات شخصية', 'Information Personnelle', '个人信息', NULL),
(457, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'Compra total', 'إجمالي شراء', 'Total Achat', '总购买', NULL),
(458, 'last_7_days', 'Last 7 Days', 'শেষ 7 দিন', 'Últimos 7 días', 'اخر 7 ايام', 'Les 7 derniers jours', '最近7天', NULL),
(459, 'last_30_days', 'Last 30 Days', 'গত 30 দিনে', 'Últimos 30 Días', 'اخر 30 يوم', '30 derniers jours', '最后30天', NULL),
(460, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'Productos deseados', 'المنتجات تمنى', 'Produits souhaité', '希望产品', NULL),
(461, 'user_since', 'User Since', 'ব্যবহারকারী যেহেতু', 'Usuario desde', 'المستخدم منذ', 'Utilisateur depuis', '用户自', NULL),
(462, 'last_login', 'Last Login', 'সর্বশেষ লগইন', 'Último Acceso', 'آخر تسجيل دخول', 'Dernière Connexion', '上次登录', NULL),
(463, 'purchase_history', 'Purchase History', 'ক্রয় ইতিহাস', 'Historial De Compras', 'تاريخ شراء', 'Historique D''Achat', '购买记录', NULL),
(464, 'wishlist', 'Wishlist', 'লটারি', 'Lista', 'مفضلة', 'Liste', '心愿', NULL),
(465, 'edit_info', 'Edit Info', 'সম্পাদনা তথ্য', 'Editar información', 'تحرير معلومات', 'Modifier les informations', '编辑信息', NULL),
(466, 'invoice', 'Invoice', 'চালান', 'Factura', 'فاتورة', 'Facture', '发票', NULL),
(467, 'availability', 'Availability', 'উপস্থিতি', 'Disponibilidad', 'توفر', 'Disponibilité', '可用性', NULL),
(468, 'purchase', 'Purchase', 'ক্রয়', 'Compra', 'شراء', 'Achat', '购买', NULL),
(469, 'remove', 'Remove', 'অপসারণ', 'Quitar', 'إزالة', 'Supprimer', '拆除', NULL),
(470, 're-write your_first_name', 'Re-write Your First Name', 'আপনার নামের প্রথম অংশ পুনরায় লিখুন', 'Vuelva a escribir su nombre', 'إعادة كتابة الاسم الأول', 'Re-écrire Votre Prénom', '重新写你的名字', NULL),
(471, 're-write your_last_name', 'Re-write Your Last Name', 'আপনার পদবি পুনরায় লিখুন', 'Vuelva a escribir su apellido', 'إعادة كتابة الاسم الأخير', 'Re-écrire Votre Nom', '重新写你的姓', NULL),
(472, 're-write_your_phone_number', 'Re-write Your Phone Number', 'আপনার ফোন নম্বর পুনরায় লিখুন', 'Vuelva a escribir su número de teléfono', 'إعادة كتابة رقم الهاتف الخاص بك', 'Re-écrire votre numéro de téléphone', '重新写你的电话号码', NULL),
(473, 'ZIP_Code', 'ZIP Code', 'মার্কিন', 'Código postal', 'الرمز البريدي', 'Code postal', '邮政编码', NULL),
(474, 'city_name', 'City Name', 'শহরের নাম', 'Nombre De La Ciudad', 'اسم المدينة', 'Nom De La Ville', '城市的名字', NULL),
(475, 'your_skype_id', 'Your Skype Id', 'আপনার স্কাইপ আইডি', 'Tu Identificacion De Skype', 'رقم سكايب الخاص بك', 'Votre Identifiant Skype', '你的Skype帐号', NULL),
(476, 'your_facebook_profile_link', 'Your Facebook Profile Link', 'আপনার ফেসবুক প্রোফাইল লিঙ্ক', 'Su perfil de Facebook Enlace', 'الخاص بك الفيسبوك ملف الموقع', 'Votre profil Facebook Lien', '你的Facebook个人资料链接', NULL),
(477, 'your_google+_profile_link', 'Your Google+ Profile Link', 'আপনার Google+ প্রোফাইল লিংক', 'Su Google+ Enlace', 'في + Google ملف الموقع', 'Votre profil Google+ Lien', '您的Google+个人资料链接', NULL),
(478, 'browse', 'Browse', 'ব্রাউজ করুন', 'Explorar', 'تصفح', 'Feuilleter', '浏览', NULL),
(479, 'update_info', 'Update Info', 'আপডেট তথ্য', 'Actualizar Información', 'تحديث معلومات', 'Information De Mise À Jour', '更新信息', NULL),
(480, 'enter_your_current_password', 'Enter Your Current Password', 'আপনার বর্তমান পাসওয়ার্ডটি প্রবেশ করান', 'Introduce Tu Contraseña Actual', 'أدخل كلمة المرور الحالية', 'Entrer Votre Mot De Passe Actuel', '输入当前的密码', NULL),
(481, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'Nueva Contraseña', 'كلمة سر جديدة', 'Nouveau Mot De Passe', '新密码', NULL),
(482, 'enter_your_new_password', 'Enter Your New Password', 'আপনার নতুন পাসওয়ার্ড লিখুন', 'Ingrese su nueva contraseña', 'أدخل كلمة المرور الجديدة', 'Entrez votre nouveau mot de passe', '输入新密码', NULL),
(483, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'Confirmar Nueva Contraseña', 'تأكيد كلمة السر الجديدة', 'Confirmer Le Nouveau Mot De Passe', '确认新密码', NULL),
(484, 're-enter_your_new_password', 'Re-enter Your New Password', 'আপনার নতুন পাসওয়ার্ড আবার লিখুন', 'Vuelva a introducir su nueva contraseña', 'إعادة إدخال كلمة المرور الجديدة', 'Re-entrez votre nouveau mot de passe', '重新输入新密码', NULL),
(485, 'save_password', 'Save Password', 'পাসওয়ার্ড সংরক্ষণ', 'Guardar Contraseña', 'حفظ كلمة المرور', 'Enregistrer Le Mot De Passe', '保存密码', NULL),
(486, 'incorrect_password', 'Incorrect Password', 'ভুল পাসওয়ার্ড৤', 'Contraseña Incorrecta', 'كلمة المرور غير صحيحة', 'Mot De Passe Incorrect', '密码不正确', NULL),
(487, 'terms_conditions', 'Terms Conditions', 'শর্তাবলী', 'Términos Y Condiciones', 'الشروط والأحكام', 'Termes Et Conditions', '条款细则', NULL),
(488, 'give_a_rating', 'Give A Rating', 'একটি রেটিং দিতে', 'Give A Clasificación', 'إعطاء تقييم', 'Donner une note', '给予评级', NULL),
(489, 'tax', 'Tax', 'কর', 'Impuesto', 'ضريبة', 'Impôt', '税', NULL),
(490, 'shipping', 'Shipping', 'পরিবহন', 'Envío', 'الشحن', 'Livraison', '送货', NULL),
(491, 'grand_total', 'Grand Total', 'সর্বমোট', 'Gran Total', 'المجموع الإجمالي', 'Total', '累计', NULL),
(492, 'empty_cart', 'Empty Cart', 'খালি ট্রলি', 'Vaciar el carro', 'فارغة سلة', 'Panier Vide', '清空购物车', NULL),
(493, 'added_to wishlist', 'Added To Wishlist', 'শুরুতেই যোগ', 'Añadido a Mis Favoritos', 'أضيف الى قائمة الامنيات', 'Ajouté à la liste', '添加到收藏', NULL),
(494, 'available', 'Available', 'উপলব্ধ', 'Disponible', 'متاح', 'Disponible', '可用的', NULL),
(495, 'remove_from_wishlist', 'Remove From Wishlist', 'সাইফুল থেকে সরান', 'Quitar de la lista', 'إزالة من قائمة الامنيات', 'Supprimer de la Liste', '从收藏中删除', NULL),
(496, 'my_cart', 'My Cart', 'আমার কার্ট', 'Mi Carrito', 'سلة التسوق', 'Mon panier', '我的购物车', NULL),
(497, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'Carrito De Compras', 'عربة التسوق', 'Panier', '购物车', NULL),
(498, 'review_&_edit_your_product', 'Review & Edit Your Product', 'পর্যালোচনা ও সম্পাদনা করুন আপনার পণ্য', 'Revisión y edición de su producto', 'مراجعة وتحرير منتجك', 'Consulter et modifier votre produit', '审查和编辑你的产品', NULL),
(499, 'qty', 'Qty', 'Qty', 'Cantidad', 'الكمية', 'Quantité', '数量', NULL),
(500, 'option', 'Option', 'পছন্দ', 'Opción', 'خيار', 'Option', '选项', NULL),
(501, 'shipping_info', 'Shipping Info', 'জাহাজীকরন তথ্য', 'Información De Envío', 'معلومات الشحن', 'Info Livraison', '航运信息', NULL),
(502, 'shipping_and_address_info', 'Shipping And Address Info', 'গ্রেপ্তার এবং ঠিকানা তথ্য', 'Envío y Dirección Info', 'الشحن وعنوان معلومات', 'Adresse d''expédition et Infos', '航运及地址信息', NULL),
(503, 'shipping_address', 'Shipping Address', 'প্রেরণের ঠিকানা', 'Dirección De Envío', 'عنوان الشحن', 'Adresse De Livraison', '邮寄地址', NULL),
(504, 'first_name', 'First Name', 'প্রথম নাম', 'Nombre', 'الاسم الأول', 'Prénom', '名字', NULL),
(505, 'last_name', 'Last Name', 'নামের শেষাংশ', 'Apellido', 'اسم العائلة', 'Nom De Famille', '姓', NULL),
(506, 'zip/postal_code', 'Zip/postal Code', 'জিপ / পোস্টাল কোড', 'Postal / Código Postal', 'الرمز البريدي / الرمز البريدي', 'Zip / code postal', '邮编/邮政编码', NULL),
(507, 'payment', 'Payment', 'প্রদান', 'Pago', 'دفع', 'Paiement', '付款', NULL),
(508, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'Seleccione el método de pago', 'اختر طريقة الدفع', 'Sélectionnez la méthode de paiement', '请选择支付方式', NULL),
(509, 'choose_a_payment_method', 'Choose A Payment Method', 'একটি পেমেন্ট পদ্ধতি বেছে নিন', 'Elija un método de pago', 'اختيار طريقة الدفع', 'Choisissez une méthode de paiement', '选择付款方式', NULL),
(510, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'Preguntas Frecuentes', 'أسئلة مكررة', 'Questions Fréquemment Posées', '经常问的问题', NULL),
(511, 'subtotal', 'Subtotal', 'উপমোট', 'Total parcial', 'حاصل الجمع', 'Total', '小计', NULL),
(512, 'invoice_paper', 'Invoice Paper', 'চালান পেপার', 'Papel Factura', 'فاتورة ورقة', 'Papier facture', '发票纸', NULL),
(513, 'invoice_no', 'Invoice No', 'চালান নং', 'Factura No', 'رقم الفاتورة', 'NumFacture', '发票号码', NULL),
(514, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'Información Del Cliente:', 'معلومات العميل:', 'Renseignements sur le client:', '客户资料：', NULL),
(515, 'first_name:', 'First Name:', 'প্রথম নাম:', 'Nombre:', 'الاسم الأول:', 'Prénom:', '名字：', NULL),
(516, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'Apellido:', 'اسم العائلة:', 'Nom De Famille:', '姓：', NULL),
(517, 'city_:', 'City :', 'নগরী:', 'Ciudad:', 'مدينة:', 'Ville:', '城市：', NULL),
(518, 'peyment_details_:', 'Peyment Details :', 'Peyment বিবরণ:', 'Peyment Detalles:', 'PEYMENT تفاصيل:', 'Peyment Détails:', 'Peyment详细信息：', NULL),
(519, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা:', 'Estado De Pago:', 'حالة السداد:', 'Statut De Paiement:', '付款状态：', NULL),
(520, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি:', 'Forma De Pago:', 'طريقة الدفع:', 'Mode de paiement:', '付款方式：', NULL),
(521, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'Factura De Pago', 'دفع الفاتورة', 'Paiement de facture', '付款发票', NULL),
(522, 'item', 'Item', 'আইটেম', 'Artículo', 'العنصر', 'Article', '项目', NULL),
(523, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'Costo Unitario', 'تكلفة الوحدة', 'Coût Unitaire', '单价', NULL),
(524, 'sub_total_amount', 'Sub Total Amount', 'উপ মোট পরিমাণ', 'Sub Total Importe', 'جنوب المبلغ الكلي لل', 'Sous Montant total', '小计金额', NULL),
(525, 'print', 'Print', 'ছাপা', 'Impresión', 'طباعة', 'Impression', '打印', NULL),
(526, 'manage_users', 'Manage Users', 'ব্যবহারকারী গালাগাল প্রতিবেদন', 'Administrar usuarios', 'إدارة المستخدمين', 'Gérer les utilisateurs', '管理用户', NULL),
(527, 'view_profile', 'View Profile', 'প্রোফাইল দেখা', 'Ver Perfil', 'الملف الشخصي', 'Voir Le Profil', '查看资料', NULL),
(528, 'users', 'Users', 'ব্যবহারকারীরা', 'Usuarios', 'المستخدمين', 'Utilisateurs', '用户', NULL),
(529, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'Comparación de productos Venta', 'مقارنة بيع المنتج', 'Comparaison de vente de produit', '产品销售比较', NULL),
(530, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা রিপোর্ট', 'Venta de productos ¡Comparar Reportar', 'المنتج بيع مقارنة تقرير', 'Vente de produit Rapport de comparaison', '产品销售比较报告', NULL),
(531, 'get_stock_report', 'Get Stock Report', 'স্টক প্রতিবেদন করুন', 'Obtén Stock Reportar', 'الحصول على الأوراق المالية تقرير', 'Obtenez Stock Rapport', '获取库存报告', NULL),
(532, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'Entrega Pago', 'تسليم الدفع', 'Livraison Paiement', '货到付款', NULL),
(533, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'Factura No:', 'رقم الفاتورة:', 'NO FACTURE:', '发票号码：', NULL),
(534, 'date_:', 'Date :', 'তারিখ:', 'Fecha:', 'تاريخ:', 'Date:', '日期：', NULL),
(535, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'Información Del Cliente', 'معلومات العميل', 'Renseignements sur le client', '客户信息', NULL),
(536, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'Detalle de Pago', 'دفع التفاصيل', 'Paiement Détail', '付款明细', NULL),
(537, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'Forma De Pago', 'طريقة الدفع', 'Mode de paiement', '付款方式', NULL),
(538, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'Día De Pago', 'تاريخ الدفع', 'Date De Paiement', '支付日期', NULL),
(539, 'zipcode', 'Zipcode', 'পিনকোড', 'Código Postal', 'الرمز البريدي', 'Code Postal', '邮政编码', NULL),
(540, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'Marcador de ubicación', 'علامة الموقع', 'Marker Localisation', '标记位置', NULL),
(541, 'payment_details', 'Payment Details', 'বিস্তারিত হিসাব', 'Detalles Del Pago', 'تفاصيل الدفع', 'Détails de paiement', '付款详情', NULL),
(542, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমিয়ে পরিমাণ যোগ করা হবে.', 'Cantidad reducida se añadirán.', 'انخفاض الكمية ستضاف.', 'Quantité réduite seront ajoutés.', '减少数量将增加。', NULL),
(543, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'Resultado Monetario', 'فقدان النقدي', 'Perte monétaire', '金钱损失', NULL),
(544, 'details_of', 'Details Of', 'বিস্তারিত', 'Detalles De', 'تفاصيل', 'Détails de', '详细信息', NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `Vietnamese`) VALUES
(545, 'tag', 'Tag', 'ট্যাগ', 'Etiqueta', 'بطاقة', 'Balise', '标签', NULL),
(546, 'colors', 'Colors', 'রঙ', 'Colores', 'الألوان', 'Couleurs', '颜色', NULL),
(547, 'user', 'User', 'ব্যবহারকারী', 'Usuario', 'المستخدم', 'Utilisateur', '用户', NULL),
(548, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'Número Telefónico', 'رقم الهاتف', 'numéro de téléphone', '电话号码', NULL),
(549, 'view_contact_message', 'View Contact Message', 'দেখুন যোগাযোগ বার্তা', 'Ver contacto Mensaje', 'عرض طرق الاتصال رسالة', 'Voir Contact Message', '查看联系信息', NULL),
(550, 'view_message', 'View Message', 'দেখুন বার্তা', 'Ver Mensaje', 'إرسال رسالة خاصة إلى', 'Voir le message', '查看留言', NULL),
(551, 'message_from', 'Message From', 'থেকে বার্তা', 'Mensaje De', 'رسالة من', 'Message De', '从消息', NULL),
(552, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'Fecha Y Hora', 'التاريخ والوقت', 'Date et heure', '日期时间', NULL),
(553, 'reply_contact_message', 'Reply Contact Message', 'যোগাযোগ বার্তা উত্তর', 'Responder Contacto Mensaje', 'رد الاتصال رسالة', 'Répondre Contact Message', '回复留言联系', NULL),
(554, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে জবাব দিয়েছেন!', 'Respondió con éxito!', 'أجاب بنجاح!', 'Répondit succès!', '成功作答！', NULL),
(555, 'reply_message', 'Reply Message', 'বার্তা উত্তর', 'Responder Mensaje', 'الرد رسالة', 'Message De Réponse', '回复留言', NULL),
(556, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখুন', 'Ver mensaje original', 'عرض الرسالة الأصلية', 'Voir Original Message', '查看原始消息', NULL),
(557, 'new_word', 'New Word', 'নতুন শব্দ', 'Palabra Nueva', 'كلمة جديدة', 'Nouveau Mot', '新词', NULL),
(558, 'already_exists!', 'Already Exists!', 'আগে থেকেই আছে!', 'Ya Existe!', 'موجود بالفعل!', 'Existe Déjà!', '已经存在！', NULL),
(559, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre de Idioma', 'اسم اللغة', 'Nom de la langue', '语言名称', NULL),
(560, 'new_language', 'New Language', 'নতুন ভাষা', 'Nuevo Idioma', 'لغة جديدة', 'Nouvelle Langue', '新的语言', NULL),
(561, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', '¿Realmente desea eliminar este idioma?', 'هل حقا تريد حذف هذه اللغة؟', 'Êtes-vous sûr de vouloir supprimer cette langue?', '你真的要删除这个语言？', NULL),
(562, 'unknown_user', 'Unknown User', 'অজানা ব্যবহারকারী', 'Usuario Desconocido', 'مجهول العضو', 'Utilisateur Inconnu', '未知用户', NULL),
(563, 'slider_enabled!', 'Slider Enabled!', 'সক্ষম স্লাইডার!', 'Deslizador Habilitado!', 'المنزلق ممكن!', 'Curseur activé!', '滑块启用！', NULL),
(564, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'Deslizador discapacitados!', 'التمرير معطل!', 'Curseur handicapés!', '滑块残疾人！', NULL),
(565, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ অর্থ প্রদান সক্ষম!', 'Pago Dinero en efectivo habilitado!', 'الدفع نقدا تمكين!', 'Paiement en espèces activé!', '现金支付启用！', NULL),
(566, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ অর্থ প্রদান করা হবে নিষ্ক্রিয়!', 'Pago Dinero en efectivo habilitado!', 'الدفع نقدا معطل!', 'Paiement en espèces désactivé!', '现金付款禁用！', NULL),
(567, 'slider', 'Slider', 'স্লাইডার', 'Deslizador', 'المنزلق', 'Curseur', '滑块', NULL),
(568, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'Pago al contado', 'دفع نقدا', 'Paiement en espèces', '现金支付', NULL),
(569, 'revisit_after', 'Revisit After', 'পরবর্তীতে পরিদর্শন', 'Revisar Después', 'إعادة النظر بعد', 'Revoir Après', '回访后', NULL),
(570, 'days', 'Days', 'দিন', 'Días', 'أيام', 'Jours', '天', NULL),
(571, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'Usted registrado correctamente', 'كنت مسجل بنجاح', 'Vous enregistré avec succès', '你成功注册', NULL),
(572, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'নিবন্ধন অকৃতকার্য! </font><font>আবার চেষ্টা কর!', '¡Registro fallido! </font><font>¡Inténtalo de nuevo!', 'فشل في التسجيل! </font><font>حاول مرة أخرى!', 'Échec de l''enregistrement! </font><font>Essaye encore!', '注册失败！</font><font>再试一次！', NULL),
(573, 'registering..', 'Registering..', 'নিবন্ধীকরণ ..', 'Registrando ..', 'تسجيل ..', 'Enregistrement ..', '注册..', NULL),
(574, 'you_logged_out_successfully', 'You Logged Out Successfully', 'আপনি সফলভাবে লগ আউট', 'Usted cerrado la sesión con éxito', 'قمت بتسجيل بنجاح', 'Vous vous êtes connecté avec succès', '您已注销成功', NULL),
(575, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'Raya Pago', 'شريط الدفع', 'Stripe paiement', '条纹付款', NULL),
(576, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা সিক্রেট কী', 'Raya clave secreta', 'شريط سر مفتاح', 'Stripe Secret Key', '条纹秘密钥匙', NULL),
(577, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'Raya Publicable clave', 'شريط للنشر مفتاح', 'Stripe Publiable clé', '条纹可发布重点', NULL),
(578, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ড বিবরণ যাচাই!', 'Su Tarjeta detalles verificado!', 'بطاقتك تفاصيل التحقق!', 'Votre carte Détails Vérifié!', '您的信用卡资料验证！', NULL),
(579, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'Pagará con la raya', 'دفع مع الشريط', 'Payez à rayures', '支付随着条纹', NULL),
(580, 'color_schemes', 'Color Schemes', 'কালার স্কিম', 'Combinaciones de colores', 'أنظمة الألوان', 'Jeux de couleurs', '配色方案', NULL),
(581, 'header_color', 'Header Color', 'শিরোলেখ রঙ', 'Cabecera color', 'رأس اللون', 'Header couleur', '标题颜色', NULL),
(582, 'footer_color', 'Footer Color', 'পাদলেখ রঙ', 'Pie de página en color', 'تذييل اللون', 'Pied de couleur', '页脚颜色', NULL),
(583, 'select', 'Select', 'নির্বাচন করা', 'Seleccionar', 'اختار', 'Sélectionner', '选择', NULL),
(584, 'cart_emptied', 'Cart Emptied', 'কার্ট emptied', 'Cesta Vaciado', 'عربة أفرغ', 'Panier Vidé', '购物车清空', NULL),
(585, 'header/footer_color_scheme', 'Header/footer Color Scheme', 'হেডার / ফুটার বর্ণবিন্যাস', 'Encabezado / pie de página Esquema de color', 'رأس / تذييل نظام الألوان', 'En-tête / pied de page Color Scheme', '页眉/页脚配色方案', NULL),
(586, 'header_/_footer_scheme', 'Header / Footer Scheme', 'শিরোলেখ / পাদলেখ প্রকল্প', 'Encabezado Pie de página Esquema /', 'رأس / تذييل مخطط', 'Tête / pied Scheme', '页眉/页脚计划', NULL),
(587, 'choode_your_scheme', 'Choode Your Scheme', 'আপনার স্কিম Choode', 'Choode Su Esquema', 'Choode مخطط لديك', 'Choode Votre Scheme', 'Choode你的计划', NULL),
(588, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'Editar Página', 'تعديل الصفحة', 'Modifier la page', '编辑页面', NULL),
(589, 'ddd', 'Ddd', 'DDD', 'Ddd', 'DDD', 'Ddd', 'DDD', NULL),
(590, 'page_code', 'Page Code', 'পৃষ্ঠা কোড', 'Página de códigos', 'كود الصفحة', 'Code Page', '页面代码', NULL),
(591, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'Página Etiquetas', 'الصفحة الكلمات', 'Page Tags', '标签页', NULL),
(592, 'column', 'Column', 'স্তম্ভ', 'Columna', 'عمود', 'Colonne', '柱', NULL),
(593, 'gg', 'Gg', 'GG', 'Gg', 'زز', 'Gg', 'GG', NULL),
(594, 'if_you_need_more_choice_options_for_your_product_,please_click_here.', 'If You Need More Choice Options For Your Product ,please Click Here.', 'আপনি আপনার পণ্যের জন্য আরো পছন্দ বিকল্প প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para su producto, por favor haga clic aquí.', 'إذا كنت بحاجة إلى المزيد من الخيارات الخيارات للمنتج الخاص بك، الرجاء الضغط هنا.', 'Si vous souhaitez plus d''options choix pour votre produit, s''il vous plaît Cliquez ici.', '如果您需要更多的选择选项，为您的产品，请点击这里。', NULL),
(595, 'add_option', 'Add Option', 'অপশন যোগ', 'Añadir Opción', 'إضافة خيار', 'Ajouter une option', '添加选项', NULL),
(596, 'customer_input_title', 'Customer Input Title', 'গ্রাহক ইনপুট শিরোনাম', 'Cliente Título de entrada', 'العميل إدخال عنوان', 'Entrée client Titre', '顾客输入标题', NULL),
(597, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য বিকল্প যোগ', 'Agregar opciones para la opción', 'إضافة خيارات للاختيار', 'Ajouter des Options For Choice', '添加选项供选择', NULL),
(598, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহক ইনপুট বিকল্প যোগ', 'Añadir Opciones de entrada del cliente', 'إضافة خيارات الإدخال العملاء', 'Ajouter Options d''entrée à la clientèle', '添加用户输入选项', NULL),
(599, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ বিকল্প প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para los clientes de este producto, por favor haga clic aquí.', 'إذا كنت بحاجة إلى المزيد من الخيارات الخيارات للعملاء من هذا المنتج، يرجى النقر هنا.', 'Si vous souhaitez plus d''options choix pour les clients de ce produit, s''il vous plaît Cliquez ici.', '如果您需要更多的选择方式供客户选择本产品，请点击这里。', NULL),
(600, 'option_name', 'Option Name', 'বিকল্প নাম', 'Nombre de la opción', 'الخيار اسم', 'Nom de l''option', '选项​​名称', NULL),
(601, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'Detalles Del Producto', 'تفاصيل المنتج', 'Détails du produit', '产品详情', NULL),
(602, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'Detalles del negocio', 'تفاصيل العمل', 'Détails d''affaires', '业务细节', NULL),
(603, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ বিকল্প', 'Opciones de elección de los clientes', 'خيارات اختيار العملاء', 'Options choix du client', '客户选择选项', NULL),
(604, 'choose_one', 'Choose One', 'একটি নির্বাচন করুন', 'Elige uno', 'اختر واحدا', 'Choisissez-en un', '选一个', NULL),
(605, 'choices', 'Choices', 'গ্রেপ্তার', 'Elecciones', 'الخيارات', 'Choix', '选择', NULL),
(606, 'change_choices', 'Change Choices', 'পরিবর্তন গ্রেপ্তার', 'Cambiar opciones', 'تغيير خيارات', 'Changer choix', '更改选择', NULL),
(607, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'Cupón de Descuento', 'خصم القسيمة', 'Coupon de réduction', '优惠券折扣', NULL),
(608, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'Cupón de descuento', 'خصم القسيمة', 'Coupon de réduction', '优惠券', NULL),
(609, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'Administrar Cupones', 'إدارة كوبونات', 'Gérer Coupons', '管理优惠券', NULL),
(610, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'Añadir Cupón', 'إضافة القسيمة', 'Ajouter Coupon', '添加优惠券', NULL),
(611, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'Crear Cupón', 'إنشاء القسيمة', 'Créer Coupon', '创建优惠券', NULL),
(612, 'coupon', 'Coupon', 'কুপন', 'Cupón', 'كوبون', 'Coupon', '优惠券', NULL),
(613, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'Cupón Título', 'قسيمة العنوان', 'Coupon Titre', '优惠券标题', NULL),
(614, 'valid_till', 'Valid Till', 'বৈধ', 'Válido hasta', 'صالحة ل', 'Valable Pour', '有效期至', NULL),
(615, 'coupon_discount_for', 'Coupon Discount For', 'জন্য কুপন ডিসকাউন্ট', 'Cupón Descuento Para', 'كوبون خصم ل', 'Coupon de réduction Pour', '优惠券折扣', NULL),
(616, 'discount_type', 'Discount Type', 'ছাড়ের ধরন', 'Tipo de descuento', 'نوع الخصم', 'Type de remise', '量贩式', NULL),
(617, 'discount_value', 'Discount Value', 'বাট্টা মূল্য', 'Valor Descuento', 'قيمة الخصم', 'Valeur Remise', '贴现值', NULL),
(618, 'coupon_logo', 'Coupon Logo', 'কুপন লোগো', 'Cupón Logo', 'قسيمة الشعار', 'Coupon Logo', '优惠券标志', NULL),
(619, 'select_coupon_logo', 'Select Coupon Logo', 'নির্বাচন কুপন লোগো', 'Seleccione Cupón Logo', 'حدد القسيمة الشعار', 'Sélectionnez Coupon Logo', '选择优惠券标志', NULL),
(620, 'code', 'Code', 'কোড', 'Código', 'رمز', 'Code', '代码', NULL),
(621, 'added_by', 'Added By', 'দ্বারা যোগ', 'Añadido por', 'اضيف بواسطة', 'Ajouté par', '通过添加', NULL),
(622, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'Código Promocional', 'رمز القسيمة', 'Code Promo', '优惠券代码', NULL),
(623, 'edit_coupon', 'Edit Coupon', 'সম্পাদনা কুপন', 'Editar Cupón', 'تحرير القسيمة', 'Modifier Coupon', '编辑优惠券', NULL),
(624, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট উপর', 'Cupón de descuento en las', 'كوبون خصم على', 'Coupon de réduction Sur', '优惠券折扣', NULL),
(625, 'coupon_already_activated', 'Coupon Already Activated', 'কুপন ইতিমধ্যে সক্রিয়', 'Cupón sido activado', 'القسيمة إذا المنشط', 'Coupon déjà activé', '优惠券已激活', NULL),
(626, 'applying..', 'Applying..', 'প্রয়োগ ..', 'Aplicando ..', 'تطبيق ..', 'Application ..', '应用..', NULL),
(627, 'coupon_not_valid', 'Coupon Not Valid', 'বৈধ নয় কুপন', 'Cupón no válido', 'القسيمة غير صالح', 'Coupon non valide', '优惠券无效', NULL),
(628, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'Cupón Descuento Exitosa', 'قسيمة الخصم الناجح', 'Coupon de réduction réussie', '优惠券折扣成功', NULL),
(629, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'Aplicar cupón', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券', NULL),
(630, 'coupon_discount_activated', 'Coupon Discount Activated', 'কুপন ডিসকাউন্ট সক্রিয়', 'Cupón Descuento Activado', 'خصم القسيمة المنشط', 'Bon de réduction Activé', '优惠券折扣激活', NULL),
(631, 'enabled!', 'Enabled!', 'সক্রিয়!', 'Habilitado!', 'تمكين!', 'Enabled!', '启用！', NULL),
(632, 'disabled!', 'Disabled!', 'পংগু!', 'Habilitado!', 'معاق!', 'Désactivé!', '残疾人！', NULL),
(633, 'be_a_seller', 'Be A Seller', 'একটি বিক্রেতা হতে', 'Sea Un Vendedor', 'يكون البائع', 'Soyez un vendeur', '成为一个卖家', NULL),
(634, 'already_a_seller?', 'Already A Seller?', 'ইতিমধ্যে একটি বিক্রেতা?', '¿Ya es usted vendedor?', 'إذا كنت بائع؟', 'Déjà un vendeur?', '已经是卖家？', NULL),
(635, 'click', 'Click', 'দেখার জন্য ক্লিক করুন', 'Haga clic en', 'انقر', 'Cliquez', '点击', NULL),
(636, 'company', 'Company', 'কোম্পানি', 'Empresa', 'شركة', 'Entreprise', '公司', NULL),
(637, 'display_name', 'Display Name', 'ডিসপ্লে নাম', 'Mostrar nombre', 'اسم العرض', 'Afficher un nom', '显示名称', NULL),
(638, 'vendors', 'Vendors', 'বিক্রেতা', 'Los vendedores', 'الباعة', 'Les vendeurs', '厂商', NULL),
(639, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'Administrar proveedores', 'إدارة الباعة', 'Gérer vendeurs', '管理供应商', NULL),
(640, 'total_sale', 'Total Sale', 'মোট বিক্রয়', 'Venta total', 'إجمالي بيع', 'Total Vente', '总销售额', NULL),
(641, 'vendor', 'Vendor', 'বিক্রেতা', 'Vendedor', 'بائع', 'Fournisseur', '供应商', NULL),
(642, 'due_amount', 'Due Amount', 'কারণে পরিমাণ', 'Cantidad a pagar', 'المبلغ المستحق', 'Montant dû', '到期金额', NULL),
(643, 'pay', 'Pay', 'বেতন', 'Pagar', 'دفع', 'Payer', '付', NULL),
(644, 'membership_type', 'Vendorship Type', 'Vendorship ধরন', 'Tipo Vendorship', 'نوع Vendorship', 'Type de Vendorship', 'Vendorship类型', NULL),
(645, 'create_membership', 'Create Vendorship', 'Vendorship তৈরি', 'Crear Vendorship', 'إنشاء Vendorship', 'Créer Vendorship', '创建Vendorship', NULL),
(646, 'membership', 'Vendorship', 'Vendorship', 'Vendorship', 'Vendorship', 'Vendorship', 'Vendorship', NULL),
(647, 'timespan', 'Timespan', 'এইসব', 'Espacio de tiempo', 'المدى الزمني', 'Timespan', '时间跨度', NULL),
(648, 'add_membership', 'Add Vendorship', 'Vendorship করো', 'Añadir Vendorship', 'إضافة Vendorship', 'Ajouter Vendorship', '添加Vendorship', NULL),
(649, 'edit_membership', 'Edit Vendorship', 'সম্পাদনা Vendorship', 'Editar Vendorship', 'تحرير Vendorship', 'Modifier Vendorship', '编辑Vendorship', NULL),
(650, 'for', 'For', 'জন্য', 'Por', 'إلى', 'Pour', '为', NULL),
(651, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'Productos Máximos', 'المنتجات القصوى', 'Produits maximum', '最大产品', NULL),
(652, 'lifetime', 'Lifetime', 'জীবনকাল', 'Vida', 'حياة', 'Durée de vie', '一生', NULL),
(653, 'manage_vendor_profile', 'Manage Vendor Profile', 'বিক্রেতার প্রোফাইল পরিচালনা', 'Administrar perfil de proveedor', 'إدارة بائع الشخصي', 'Gérer Profil vendeur', '管理供应商档案', NULL),
(654, 'settings', 'Settings', 'সেটিংস', 'Ajustes', 'الإعدادات', 'Paramètres', '设置', NULL),
(655, 'contact_message', 'Contact Message', 'যোগাযোগ বার্তা', 'Contacto Mensaje', 'الاتصال رسالة', 'Contact Message', '联系方式留言', NULL),
(656, 'choose_product', 'Choose Product', 'পণ্য নির্বাচন', 'Elija Producto', 'اختيار المنتج', 'Choisissez un produit', '选择产品', NULL),
(657, 'full_invoice', 'Full Invoice', 'সম্পূর্ণ চালান', 'Factura completa', 'الفاتورة كاملة', 'Facture complet', '全部发票', NULL),
(658, 'invoice_for', 'Invoice For', 'জন্য চালান', 'Para Factura', 'فاتورة ل', 'Facture de', '发票', NULL),
(659, 'admin', 'Admin', 'অ্যাডমিন', 'Administración', 'المشرف', 'Administrateur', '管理员', NULL),
(660, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অ্যাকাউন্ট অনুমোদিত নয়. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'Cuenta No Aprobado. </font><font>Esperar la aprobación.', 'الحساب غير المعتمدة. </font><font>الانتظار للحصول على الموافقة.', 'Compte non approuvé. </font><font>Attendre l''approbation.', '帐户不获批准。</font><font>等待审批。', NULL),
(661, 'payment_stat', 'Payment Stat', 'পেমেন্ট Stat', 'Stat Pago', 'دفع ستات', 'Paiement Stat', '支付统计', NULL),
(662, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'Total Vendido', 'إجمالي تباع', 'Vendu total', '累计售出', NULL),
(663, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান', 'Pagado por el cliente', 'التي يدفعها العملاء', 'Payé par le client', '支付客户', NULL),
(664, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'Pagado a proveedor', 'دفعت إلى بائع', 'Payé au fournisseur', '支付给供应商', NULL),
(665, 'due_to_vendor', 'Due To Vendor', 'দরুন বিক্রেতা', 'Debido a proveedor', 'ونظرا إلى البائع', 'En raison de vendeur', '由于供应商', NULL),
(666, 'vendor_home', 'Vendor Home', 'বিক্রেতার হোম', 'Vendedor Inicio', 'بائع الصفحة الرئيسية', 'Fournisseur Accueil', '供应商首页', NULL),
(667, 'vendor_homepage', 'Vendor Homepage', 'বিক্রেতার হোমপেজ', 'Vendedor Homepage', 'بائع الصفحة الرئيسية', 'Accueil du vendeur', '供应商首页', NULL),
(668, 'after_vendor_featured', 'After Vendor Featured', 'বিক্রেতার আলোচিত পরে', 'Después de proveedores destacados', 'بعد بائع مميزة', 'Après vendeur vedette', '供应商精选后', NULL),
(669, 'vendor_notification_sound', 'Vendor Notification Sound', 'বিক্রেতার বিজ্ঞপ্তি শব্দ', 'Vendedor sonido de notificación', 'بائع إعلام الصوت', 'Notification vendeur sonore', '供应商通知声音', NULL),
(670, 'vendor_notification_volume', 'Vendor Notification Volume', 'বিক্রেতার বিজ্ঞপ্তি ভলিউম', 'Vendedor volumen Notificación', 'بائع إعلام حجم', 'Fournisseur notification Volume', '供应商的通知音量', NULL),
(671, 'vendor_logo', 'Vendor Logo', 'বিক্রেতার লোগো', 'Vendedor Logo', 'بائع الشعار', 'Vendor Logo', '销售商标志', NULL),
(672, 'vendor_images', 'Vendor Images', 'বিক্রেতার ছবি', 'Imágenes de proveedores', 'صور بائع', 'Images fournisseurs', '供应商形象', NULL),
(673, 'select_banner', 'Select Banner', 'নির্বাচন ব্যানার', 'Seleccione Banner', 'حدد شعار', 'Sélectionnez Bannière', '选择旗帜', NULL),
(674, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা করুন', 'Administrar configuración de recepción de pago', 'إدارة إعدادات الدفع الاستلام', 'Gérer les paramètres de réception de paiements', '管理的收款设置', NULL),
(675, 'select_product', 'Select Product', 'নির্বাচন পণ্য', 'Seleccionar producto', 'حدد المنتج', 'Sélectionner un produit', '选择产品', NULL),
(676, 'pay_vendor', 'Pay Vendor', 'পে বিক্রেতার', 'Vendedor Paga', 'دفع البائع', 'Pay vendeur', '支付供应商', NULL),
(677, 'cash_on_delivery_to_vendor', 'Cash On Delivery To Vendor', 'বিলি নগদ বিক্রেতা', 'Pago contra entrega al proveedor', 'نقدا عند التسليم لبائع', 'Cash On Delivery Pour fournisseur', '货到付款到供应商', NULL),
(678, 'due', 'Due', 'দরুন', 'Debido', 'بسبب', 'Dû', '应有', NULL),
(679, 'partially_paid', 'Partially Paid', 'আংশিকভাবে প্রদত্ত', 'Parcialmente Pagado', 'دفعت جزئيا', 'Partiellement payé', '部分支付', NULL),
(680, 'fully_paid', 'Fully Paid', 'সম্পূর্ণ পরিশোধ', 'Totalmente pagado', 'مدفوع بالكامل', 'Entièrement payé', '缴足', NULL),
(681, 'total_cash_on_delivery_to_vendor', 'Total Cash On Delivery To Vendor', 'বিক্রেতা ডেলিভারি মোট ক্যাশ', 'Total activos líquidos en el envío a Vendor', 'مجموع نقدا عند التسليم لالبائع', 'Total en espèces sur la livraison à vendeur', '总货到付款到供应商', NULL),
(682, 'paid_cash_on_delivery_to_vendor', 'Paid Cash On Delivery To Vendor', 'বিক্রেতা বিলি নগদ পরিশোধের', 'Pagado Pago contra entrega al proveedor', 'تدفع نقدا عند التسليم لبائع', 'Payés par contre remboursement au fournisseur', '支付货到付款到供应商', NULL),
(683, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'Por Admin', 'من طرف Admin', 'Par admin', '由Admin', NULL),
(684, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'Pago contra entrega', 'الدفع عند التسليم', 'Paiement À La Livraison', '货到付款', NULL),
(685, 'upgrade', 'Upgrade', 'আপগ্রেড', 'Modernización', 'تطوير', 'Améliorer', '提升', NULL),
(686, 'choose_membership', 'Choose Vendorship', 'Vendorship চয়ন', 'Elija Vendorship', 'اختيار Vendorship', 'Choisissez Vendorship', '选择Vendorship', NULL),
(687, 'details', 'Details', 'বিস্তারিত', 'Detalles', 'تفاصيل', 'Détails', '详细信息', NULL),
(688, 'method', 'Method', 'পদ্ধতি', 'Método', 'طريقة', 'Méthode', '方法', NULL),
(689, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'Máximo Producto', 'الحد الأقصى المنتج', 'Produit maximum', '最大产品', NULL),
(690, 'default', 'Default', 'ডিফল্ট', 'Defecto', 'افتراضي', 'Par défaut', '默认', NULL),
(691, 'free', 'Free', 'বিনামূল্যে', 'Gratis', 'حر', 'Libre', '自由', NULL),
(692, 'manage_membership_settings', 'Manage Vendorship Settings', 'Vendorship সেটিংস পরিচালনা করুন', 'Administrar configuración Vendorship', 'إدارة إعدادات Vendorship', 'Gérer les paramètres Vendorship', '管理Vendorship设置', NULL),
(693, 'upgrade_membership', 'Upgrade Vendorship', 'Vendorship আপগ্রেড', 'Actualiza Vendorship', 'ترقية Vendorship', 'Améliorez Vendorship', '升级Vendorship', NULL),
(694, 'about', 'About', 'প্রায়', 'Sobre', 'حول', 'Sur', '大约', NULL),
(695, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা প্রদত্ত', 'Pagado por los clientes', 'يدفعها العملاء', 'Payés par les clients', '支付的客户', NULL),
(696, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'Debido De admin', 'بسبب من المسؤول', 'En raison par Admin', '由于从管理员', NULL),
(697, 'membership_expiration', 'Vendorship Expiration', 'Vendorship মেয়াদপূর্তির', 'Vencimiento Vendorship', 'Vendorship انتهاء الصلاحية', 'Vendorship Expiration', 'Vendorship过期', NULL),
(698, 'membership_details', 'Vendorship Details', 'Vendorship বিস্তারিত', 'Vendorship Detalles', 'Vendorship تفاصيل', 'Vendorship Détails', 'Vendorship详细', NULL),
(699, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'Quantité', '量', NULL),
(700, 'cash', 'Cash', 'নগদ', 'Efectivo', 'نقد', 'Argent comptant', '现金', NULL),
(701, 'paypal', 'Paypal', 'পেপ্যাল', 'PayPal', 'باي بال', 'Paypal', '支付宝', NULL),
(702, 'str ipe', 'Str Ipe', 'Str IPE', 'Str Ipe', 'شارع بورصة البترول الدولية', 'Str Ipe', '海峡蚁', NULL),
(703, 'stripe', 'Stripe', 'ডোরা', 'Raya', 'شريط', 'Stripe', '条纹', NULL),
(704, 'products_of', 'Products Of', 'পণ্য', 'Artículos de', 'منتجات', 'Produits De', '产品', NULL),
(705, 'all_vendors', 'All Vendors', 'সকল বিক্রেতাদের', 'Todos los vendedores', 'جميع الباعة', 'Tous les vendeurs', '所有厂商', NULL),
(706, 'all_categories', 'All Categories', 'সব ধরনের', 'Todas Las Categorías', 'جميع الفئات', 'Toutes Catégories', '所有类别', NULL),
(707, 'after_filter', 'After Filter', 'ফিল্টার পরে', 'Después de Filtro', 'بعد تصفية', 'Après Filtre', '过滤后', NULL),
(708, 'sitemap_link', 'Sitemap Link', 'সাইট ম্যাপ লিংক', 'Mapa del sitio Enlace', 'رابط خريطة الموقع', 'Plan du site Lien', '地图链接', NULL),
(709, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক পৌঁছানো', 'Red de Alcance Social', 'شبكة ريتش الاجتماعية', 'Réseau portée sociale', '社会网络覆盖', NULL),
(710, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক ম্যাট্রিক', 'Alexa Traffic Métrica', 'اليكسا المرور القياسات', 'Alexa Traffic Metrics', 'Alexa的流量指标', NULL),
(711, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'Alexa Traffic Gráficos', 'اليكسا المرور الرسوم البيانية', 'Alexa Traffic Graphiques', 'Alexa的流量图', NULL),
(712, 'search_index', 'Search Index', 'সহায়িকাসন্ধানসূচি', 'Buscar Índice', 'مؤشر البحث', 'Recherche Index', '搜索索引', NULL),
(713, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক মান', 'Alexa ranking de tráfico', 'رتبة اليكسا المرور', 'Alexa Traffic Rank', 'Alexa排名', NULL),
(714, 'your_email_address', 'Your Email Address', 'আপনার ইমেইল ঠিকানা', 'Tu Correo Electrónico', 'بريدك الإلكتروني', 'Votre adresse E-mail', '您的电子邮件地址', NULL),
(715, 'uploaded_maximum_products', 'Uploaded Maximum Products', 'ঊর্ধ্বভরণকৃত সর্বাধিক পণ্য', 'Subida Productos Máximos', 'منتجات محملة الأقصى', 'Téléchargées produits maximum', '上传的最大产品', NULL),
(716, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'Ajustes de Pago', 'إعدادات الدفع', 'Réglages de paiement', '付款设置', NULL),
(717, 'my_packages', 'My Packages', 'আমার প্যাকেজ', 'Mis Paquetes', 'بلدي الحزم', 'Mes Forfaits', '我的包', NULL),
(718, 'registration_successful!', 'Registration Successful!', 'অস্ত্রোপচার!', '¡Registro exitoso!', 'نجاح عملية التسجيل!', 'Inscription réussi!', '注册成功！', NULL),
(719, 'please_check_your_email_inbox', 'Please Check Your Email Inbox', 'আপনার ইমেইল ইনবক্স চেক করুন দয়া করে', 'Por favor revise su bandeja de entrada de correo electrónico', 'يرجى التحقق من بريدك الالكتروني', 'S''il vous plaît vérifier votre boite email', '请检查您的电子邮件收件箱', NULL),
(720, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'Visita Mi Página de Inicio', 'زيارتي الصفحة الرئيسية', 'Visitez ma page d''accueil', '访问我的主页', NULL),
(721, 'next', 'Next', 'পরবর্তী', 'Siguiente', 'التالى', 'Suivant', '下一个', NULL),
(722, 'previous', 'Previous', 'পূর্ববর্তী', 'Anterior', 'سابق', 'Précédent', '上一页', NULL),
(723, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'Total Productos subidos', 'مجموع المنتجات حملت', 'Total des Produits téléchargées', '共上传产品', NULL),
(724, 'uploaded_published_products', 'Uploaded Published Products', 'ঊর্ধ্বভরণকৃত প্রকাশিত পণ্য', 'Productos Publicados Subida', 'منتجات محملة المنشورة', 'Produits téléchargées Publié', '上传发布产品', NULL),
(725, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', 'ইতিমধ্যে আপলোড সর্বাধিক পণ্য!', 'Ya cargados Productos Máximo!', 'تم الرفع بالفعل منتجات الأقصى!', 'Déjà téléchargé produits maximum!', '已上传最高的产品！', NULL),
(726, 'upgrade_your_membership', 'Upgrade Your Vendorship', 'তোমার Vendorship আপগ্রেড', 'Actualiza Tu Vendorship', 'ترقية Vendorship لديك', 'Améliorez votre Vendorship', '升级你的Vendorship', NULL),
(727, 'membership_payments', 'Vendorship Payments', 'Vendorship পেমেন্টস্', 'Pagos Vendorship', 'المدفوعات Vendorship', 'Paiements de Vendorship', 'Vendorship付款', NULL),
(728, 'manage_membership_payments', 'Manage Vendorship Payments', 'Vendorship পেমেন্ট পরিচালনা', 'Administrar Pagos Vendorship', 'إدارة المدفوعات Vendorship', 'Gérer les paiements Vendorship', '管理Vendorship付款', NULL),
(729, 'upgraded_membership', 'Upgraded Vendorship', 'আপগ্রেড Vendorship', 'Vendorship actualizado', 'Vendorship ترقية', 'Vendorship amélioré', '升级Vendorship', NULL),
(730, 'view_payment_details', 'View Payment Details', 'দেখুন পেমেন্ট বিস্তারিত', 'Ver los detalles del pago', 'عرض تفاصيل الدفع', 'Voir les détails de paiement', '查看付款明细', NULL),
(731, 'confirm_payment', 'Confirm Payment', 'পেমেন্ট নিশ্চিত', 'Confirmar Pago', 'تأكيد الدفع', 'Confirmer le paiement', '确认付款', NULL),
(732, 'datetime', 'Datetime', 'তারিখ সময়', 'Fecha y hora', 'التاريخ والوقت', 'Datetime', '日期时间', NULL),
(733, 'membership_to_upgrade', 'Vendorship To Upgrade', 'আপগ্রেড করার Vendorship', 'Vendorship Para actualizar', 'Vendorship لترقية', 'Vendorship Pour mettre à niveau', 'Vendorship升级', NULL),
(734, 'paid', 'Paid', 'প্রদত্ত', 'Pagado', 'دفع', 'Payé', '付费', NULL),
(735, 'check_details', 'Check Details', 'বিবরণ চেক', 'Compruebe Detalles', 'تحقق من التفاصيل', 'Consultez les détails', '查看详情', NULL),
(736, 'type', 'Type', 'আদর্শ', 'Tipo', 'اكتب', 'Type', '类型', NULL),
(737, 'none', 'None', 'না', 'Ninguno', 'لا شيء', 'Aucun', '无', NULL),
(738, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'Facebook comentario', 'الفيسبوك تعليق', 'Facebook Commentaire', 'Facebook的评论', NULL),
(739, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'Disqus comentario', 'هارد تعليق', 'Disqus Commentaire', 'DISQUS评论', NULL),
(740, 'fb_comment_id', 'Fb Comment Id', 'আইডি মন্তব্য FB', 'Fb Comentario Id', 'أف ب تعليق رقم', 'Fb Id Commentaire', 'FB注释ID', NULL),
(741, 'seal', 'Seal', 'সীল', 'Foca', 'ختم', 'Joint', '密封', NULL),
(742, 'membership_seal', 'Vendorship Seal', 'Vendorship সীল', 'Vendorship Seal', 'Vendorship الختم', 'Seal Vendorship', 'Vendorship密封', NULL),
(743, 'select_membership_seal', 'Select Vendorship Seal', 'Vendorship সীল নির্বাচন', 'Seleccione Vendorship Seal', 'حدد Vendorship الختم', 'Sélectionnez Seal Vendorship', '选择Vendorship密封', NULL),
(744, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'Lista de proveedores', 'قائمة بائع', 'Liste de fournisseurs', '供应商列表', NULL),
(745, 'vendorship_timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', NULL),
(746, 'remaining', 'Remaining', 'অবশিষ্ট', 'Restante', 'المتبقية', 'Restant', '剩余', NULL),
(747, 'my_products', 'My Products', 'আমার পণ্য', 'Mis Productos', 'منتجاتي', 'Mes produits', '我的产品', NULL),
(748, 'product_list', 'Product List', 'পণ্য তালিকা', 'Lista de productos', 'قائمة المنتجات', 'Liste de produits', '产品列表', NULL),
(749, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'Proveedores Directorio', 'التسجيل بائع', 'Enregistrement des fournisseurs', '供应商登记', NULL),
(750, 'customer_login', 'Customer Login', 'গ্রাহক লগইন', 'Acceso del cliente', 'دخول العملاء', 'Connexion client', '客户登录', NULL),
(751, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'Registro Clientes', 'التسجيل العملاء', 'Inscription à la clientèle', '客户注册', NULL),
(752, 'pending_vendors', 'Pending Vendors', 'অপেক্ষারত বিক্রেতারা', 'Los vendedores pendientes', 'الباعة في انتظار', 'Les vendeurs en attente', '待供应商', NULL),
(753, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার Stattistics', 'Vendedor Stattistics', 'بائع Stattistics', 'Fournisseur Stattistics', '供应商Stattistics', NULL),
(754, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'বিজ্ঞপ্তি ইমেইল বিক্রেতা পাঠানো হয়েছে!', 'Notificación por correo electrónico enviado a vendedor!', 'إشعار البريد الإلكتروني المرسلة إلى البائع!', 'Courriel de notification envoyé au vendeur!', '通知邮件发送给供应商！', NULL),
(755, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'Aprobación de proveedores', 'بائع الموافقة', 'Approbation du vendeur', '供应商认证', NULL),
(756, 'approval', 'Approval', 'অনুমোদন', 'Aprobación', 'موافقة', 'Approbation', '审批', NULL),
(757, 'approve', 'Approve', 'অনুমোদন করা', 'Aprobar', 'الموافقة', 'Approuver', '赞成', NULL),
(758, 'postpone', 'Postpone', 'মুলতবি করা', 'Posponer', 'تأجيل', 'Reporter', '延期', NULL),
(759, 'vendor_system', 'Vendor System', 'বিক্রেতার সিস্টেম', 'Sistema Vendor', 'نظام بائع', 'Système du vendeur', '供应商体系', NULL),
(760, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'Nuestros proveedores', 'الباعة لدينا', 'Nos fournisseurs', '我们的供应商', NULL),
(761, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজ ক্যাশে সময়', 'Página de caché Tiempo', 'الصفحة الرئيسية الكاش الوقت', 'Page d''accueil Cache Temps', '首页缓存时间', NULL),
(762, 'search_for', 'Search For', 'সন্ধান করা', 'Buscar', 'بحث عن', 'Rechercher', '搜索', NULL),
(763, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'Los vendedores totales', 'مجموع الباعة', 'Nombre de fournisseurs', '总供应商', NULL),
(764, 'Sample Page', 'Sample Page', 'নমুনা পৃষ্ঠা', 'Página de Ejemplo', 'عينة الصفحة', 'Page d''exemple', '示例页面', NULL),
(765, 'vendorship_timespan', 'Vendorship Timespan', 'Vendorship এইসব', 'Vendorship Timespan', 'Vendorship زمنية', 'Vendorship Timespan', 'Vendorship时间跨度', NULL),
(766, 'blog', 'Blog', 'ব্লগ', 'Blog', 'مدونة', 'Blog', '博客', 'Tin tức'),
(767, 'all_blogs', 'All Blogs', 'সকল ব্লগ', 'Todos los blogs', 'كل المدونات', 'Tous les blogs', '所有博客', NULL),
(768, 'all_blog_categories', 'All Blog Categories', 'সকল ব্লগ বিভাগ', 'Todas las Categorías del blog', 'جميع أقسام المدونة', 'Tous blog Catégories', '所有博客分类', NULL),
(769, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'Administrar Blog', 'إدارة المدونة', 'Gérer Blog', '管理博客', NULL),
(770, 'add_blog', 'Add Blog', 'ব্লগ যোগ', 'Añadir Blog', 'إضافة المدونة', 'Ajouter Blog', '加入博客', NULL),
(771, 'create_blog', 'Create Blog', 'ব্লগ তৈরি করুন', 'Crear Blog', 'إنشاء مدونة', 'Créer un blog', '创建博客', NULL),
(772, 'back_to_blog_list', 'Back To Blog List', 'পিছনে তালিকা ব্লগ', 'Volver a la lista de blogs', 'العودة إلى قائمة المدونة', 'Retour à la liste Blog', '返回博客列表', NULL),
(773, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'Editar Blog', 'تحرير المدونة', 'Modifier Blog', '编辑博客', NULL),
(774, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'Añadir Blog Categoría', 'إضافة المدونة الفئة', 'Ajouter Blog Catégorie', '加入博客类别', NULL),
(775, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি করুন', 'Crear Blog Categoría', 'إنشاء مدونة الفئة', 'Créer un blog Catégorie', '创建博客类别', NULL),
(776, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'Editar Blog Categoría', 'تحرير المدونة الفئة', 'Modifier Blog Catégorie', '编辑博客类别', NULL),
(777, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'Blog Categoría', 'بلوق الفئة', 'Blog Catégorie', '博客类别', NULL),
(778, 'blog_details', 'Blog Details', 'ব্লগ বিবরণ', 'Blog detalles', 'تفاصيل بلوق', 'Détails blog', '博客详细', NULL),
(779, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'Titulo de Blog', 'عنوان المدونة', 'Titre du Blog', '博客标题', NULL),
(780, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'Estival', 'صيفي', 'D''été', '综述', NULL),
(781, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', 'ব্লগ আপলোড করা হয়েছে!', 'Blog se ha cargado!', 'بلوق تم تحميل!', 'Blog a été téléchargé!', '博客已经上传！', NULL),
(782, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'Categorías del blog', 'بلوق الفئات', 'Blog Catégories', '博客分类', NULL),
(783, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'Carpeta Descargable Productos', 'تحميل المنتج اسم المجلد', 'Téléchargeable produit Nom du dossier', '可下载的产品文件夹名称', NULL),
(784, 'product_is_a_file', 'Product Is A File', 'পণ্যের একটি ফাইল', 'Producto es un archivo', 'المنتج هو ملف', 'Produit est un fichier', '产品是一个文件', NULL),
(785, 'video', 'Video', 'ভিডিও', 'Vídeo', 'فيديو', 'Vidéo', '视频', NULL),
(786, 'audio', 'Audio', 'অডিও', 'Audio', 'سمعي', 'Acoustique', '音频', NULL),
(787, 'software', 'Software', 'সফটওয়্যার', 'Software', 'البرمجيات', 'Logiciels', '软体', NULL),
(788, 'etc.', 'Etc.', 'প্রভৃতি', 'Etcétera', 'إلخ', 'Etc.', '等等。', NULL),
(789, 'product_file', 'Product File', 'পণ্য ফাইলের', 'Archivo de productos', 'ملف المنتج', 'Fiche produit', '产品文件', NULL),
(790, 'compressed', 'Compressed', 'কম্প্রেস', 'Comprimido', 'مضغوط', 'Comprimé', '压缩', NULL),
(791, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'Vista rápida', 'نظرة سريعة', 'Aperçu', '快速浏览', NULL),
(792, 'compare', 'Compare', 'তুলনা', 'Comparar', 'قارن', 'Comparer', '比', NULL),
(793, 'todays_deal', 'Todays Deal', 'আজকের ডীল', 'Trato de hoy', 'صفقة اليوم', 'Todays affaire', '今天的交易', NULL),
(794, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ', 'Producto añadido a la comparación', 'وأضاف المنتج لمقارنة', 'Produit ajouté à la comparaison', '产品加入对比', NULL),
(795, 'compared', 'Compared', 'তুলনায়', 'Comparado', 'مقارنة', 'Comparé', '相比', NULL),
(796, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'Producto eliminadas del Comparar', 'إزالة المنتجات من قارن', 'Produit retiré du comparateur', '产品移出比较', NULL),
(797, 'compare_category_full', 'Compare Category Full', 'সম্পূর্ণ শ্রেণী তুলনা', 'Comparar Categoría Completo', 'قارن الفئة كامل', 'Comparez Catégorie complet', '比较分类全部', NULL),
(798, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ', 'Producto Ya agregación a la comparación', 'المنتج أضفت إلى قارن', 'Produit Déjà ajouté à comparer', '产品已添加到比较', NULL),
(799, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'Restablecer la lista de comparación', 'إعادة تعيين قائمة قارن', 'Réinitialiser la liste de comparaison', '复位比较列表', NULL),
(800, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'De vuelta a casa', 'الرجوع إلى الصفحة الرئيسية', 'De retour à la maison', '返回首页', NULL),
(801, 'latest_blogs', 'Latest Blogs', 'সর্বশেষ ব্লগ', 'Últimos Blogs', 'أحدث المدونات', 'Derniers Blogs', '最新博客', NULL),
(802, 'wish', 'Wish', 'ইচ্ছা', 'Deseos', 'أتمنى', 'Souhaiter', '希望', NULL),
(803, 'wished', 'Wished', 'কাম্য', 'Deseado', 'تمنى', 'Souhaité', '希望', NULL),
(804, 'wishing..', 'Wishing..', 'তবেই ..', 'Deseando..', 'متمنيا ..', 'Souhaitant ..', '许愿..', NULL),
(805, 'unvailable', 'Unvailable', 'Unvailable', 'Unvailable', 'أونفيلبل', 'Unvailable', 'Unvailable', NULL),
(806, 'today''s_deal', 'Today''s Deal', 'আজ এর ডীল', 'La oferta de hoy', 'صفقة اليوم', 'Aujourd''hui, Deal', '今日团购', NULL),
(807, 'digital_product', 'Digital Product', 'ডিজিটাল পণ্য', 'Digital Producto', 'المنتج الرقمي', 'Digitals', '数字产品', 'Đồ công nghệ'),
(808, 'update_product_file', 'Update Product File', 'আপডেট পণ্য ফাইলের', 'Actualizar archivo de Producto', 'تحديث ملف المنتج', 'Mise à jour Fiche produit', '更新产品文件', NULL),
(809, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'Tamaño máximo', 'الحد الأقصى لحجم', 'Taille maximale', '最大尺寸', NULL),
(810, 'text', 'Text', 'পাঠ', 'Texto', 'نص', 'Texte', '正文', NULL),
(811, 'downloads', 'Downloads', 'জনপ্রিয়তা', 'Descargas', 'التحميلات', 'Téléchargements', '下载', NULL),
(812, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'Télécharger', '下载', NULL),
(813, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকৃত', 'Descargar Permiso denegado', 'تحميل الإذن مرفوض', 'Télécharger Autorisation refusée', '下载权限被拒绝', NULL),
(814, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের চুক্তি পণ্য!', 'Producto en el actual Deal!', 'المنتج في هذه الأيام صفقة!', 'Produit Dans Todays Deal!', '产品在今天的交易！', NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `Vietnamese`) VALUES
(815, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'আজকের চুক্তি থেকে সরানো পণ্য!', 'Producto eliminadas del de hoy Deal!', 'المنتج إزالتها من هذه الأيام صفقة!', 'Produit retiré du Todays Deal!', '产品中删除从今天的交易！', NULL),
(816, 'vendor_locator', 'Vendor Locator', 'বিক্রেতার লোকেটার', 'Localizador de proveedores', 'بائع محدد', 'Localisateur de vendeur', '销售商定位器', NULL),
(817, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'Localizador de tiendas', 'فروعنا', 'Localisateur de magasin', '新店', NULL),
(818, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'Buscar proveedores', 'الباعة بحث', 'Les fournisseurs de recherche', '搜索厂商', NULL),
(819, 'go', 'Go', 'যাওয়া', 'Irse', 'اذهب', 'Aller', '走', NULL),
(820, 'search_vendor_by_title,_location,_address_etc.', 'Search Vendor By Title, Location, Address Etc.', 'শিরোনাম দ্বারা অনুসন্ধান বিক্রেতার, অবস্থান, ঠিকানা ইত্যাদি', 'Búsqueda de proveedores por Título, ubicación, dirección, etc.', 'البحث البائعين حسب العنوان، الموقع، عنوان إلخ', 'Recherche vendeur par titre, Lieu, adresse, etc.', '搜索供应商通过标题，地点，地址等', NULL),
(821, 'search_product_by_title,_description_etc.', 'Search Product By Title, Description Etc.', 'শিরোনাম, বিবরণ ইত্যাদি দ্বারা অনুসন্ধান পণ্য', 'Búsqueda de productos por Título, Descripción Etc.', 'البحث عن منتج حسب العنوان، الوصف إلخ', 'Recherche de produits par Titre, Description Etc.', '产品搜索按标题，描述等，', 'tìm kiếm sản phẩm bằng tiêu đề, mô tả, ...'),
(822, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'Top Diapositivas', 'أعلى الشرائح', 'Top Diapositives', '小刀架', NULL),
(823, 'manage_slidess', 'Manage Slidess', 'Slidess পরিচালনা', 'Administrar Slidess', 'إدارة Slidess', 'Gérer Slidess', '管理Slidess', NULL),
(824, 'add_slides', 'Add Slides', 'স্লাইড যুক্ত', 'Añadir Diapositivas', 'إضافة الشرائح', 'Ajouter Diapositives', '添加幻灯片', NULL),
(825, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'Crear diapositivas', 'إنشاء الشرائح', 'Création de diapositives', '创建幻灯片', NULL),
(826, 'edit_slides', 'Edit Slides', 'সম্পাদনা স্লাইড', 'Editar Diapositivas', 'تحرير الشرائح', 'Modifier les diapositives', '编辑幻灯片', NULL),
(827, 'slides', 'Slides', 'স্লাইড', 'Diapositivas', 'الشرائح', 'Diapositives', '幻灯片', NULL),
(828, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'Configurar deslizador', 'إعدادات المنزلق', 'Réglages Slider', '滑块设置', NULL),
(829, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'Capa deslizante', 'طبقة المتزلج', 'Curseur Layer', '层滑块', NULL),
(830, 'category_menu_slider', 'Category Menu Slider', 'বিভাগ মেনু স্লাইডার', 'Categoría Menú deslizante', 'فئة القائمة المتزلج', 'Catégorie Menu Curseur', '分类菜单滑块', NULL),
(831, 'quick', 'Quick', 'দ্রুত', 'Rápida', 'سريع', 'Vite', '速', NULL),
(832, 'slides_name', 'Slides Name', 'স্লাইড নাম', 'Nombre Diapositivas', 'اسم الشرائح', 'Nom Diapositives', '幻灯片名称', NULL),
(833, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'Diapositivas Logo', 'الشرائح الشعار', 'Diapositives Logo', '幻灯片徽标', NULL),
(834, 'select_slides_logo', 'Select Slides Logo', 'স্লাইড লোগো নির্বাচন', 'Seleccione Diapositivas Logo', 'حدد الشرائح الشعار', 'Sélectionnez Diapositives Logo', '选择幻灯片徽标', NULL),
(835, 'manage_top_slides', 'Manage Top Slides', 'শীর্ষ স্লাইড গালাগাল প্রতিবেদন', 'Administrar Top Diapositivas', 'إدارة الشرائح الأعلى', 'Gérer Top Diapositives', '管理小刀架', NULL),
(836, 'slider_on_/_off', 'Slider On / Off', 'স্লাইডার / বন্ধ', 'Control deslizante de encendido / apagado', 'المنزلق تشغيل / إيقاف', 'Curseur On / Off', '滑开/关', NULL),
(837, 'most_viewed_blogs', 'Most Viewed Blogs', 'ব্লগই দেখা', 'Más Vistas Blogs', 'الأكثر مشاهدة المدونات', 'Meilleurs affichages Blogs', '最多查看博客', NULL),
(838, 'choose_a+product', 'Choose A+product', 'একটি A + পণ্য চয়ন', 'Elija un producto +', 'اختيار المنتج +', 'Choisissez un produit +', '选择A +产品', 'chọn nhiều sản phẩm'),
(839, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'Elija un producto', 'اختر المنتج', 'Choisissez un produit', '选择一个产品', 'chọn một sản phẩm'),
(840, 'activate', 'Activate', 'সক্রিয় করা', 'Activar', 'تفعيل', 'Activer', '激活', 'Kích hoạt'),
(841, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'Seleccione Banner Slide', 'حدد شعار الشريحة', 'Sélectionnez Bannière de diapositives', '选择幻灯片旗帜', NULL),
(842, 'downloading...', 'Downloading...', 'ডাউনলোড হচ্ছে ...', 'Descargando ...', 'تحميل ...', 'Téléchargement ...', '下载...', 'đang tải...'),
(843, 'Test Page', 'Test Page', NULL, NULL, NULL, NULL, NULL, NULL),
(844, 'Test', 'Test', NULL, NULL, NULL, NULL, NULL, NULL),
(845, 'hello', 'Hello', NULL, NULL, NULL, NULL, NULL, NULL),
(846, 'shop', 'Shop', NULL, NULL, NULL, NULL, NULL, NULL),
(847, 'project', 'Project', NULL, NULL, NULL, NULL, NULL, NULL),
(848, 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(849, 'shop_detail', 'Shop Detail', NULL, NULL, NULL, NULL, NULL, NULL),
(850, 'shop_detail_view', 'Shop Detail View', NULL, NULL, NULL, NULL, NULL, NULL),
(851, 'news_detail', 'News Detail', NULL, NULL, NULL, NULL, NULL, NULL),
(852, 'gioi-thieu', 'Gioi-thieu', NULL, NULL, NULL, NULL, NULL, NULL),
(853, 'shop1', 'Shop1', NULL, NULL, NULL, NULL, NULL, NULL),
(854, 'shop2', 'Shop2', NULL, NULL, NULL, NULL, NULL, NULL),
(855, 'lienhe', 'Lienhe', NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'dangki', 'Dangki', NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'sucess_regis', 'Sucess Regis', NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'success_regis', 'Success Regis', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  PRIMARY KEY (`logo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(2, ''),
(3, ''),
(4, ''),
(5, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Gold', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE IF NOT EXISTS `membership_payment` (
  `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`membership_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '41', ''),
(43, 'view', 'sale_view', '41', ''),
(44, 'delete', 'sale_delete', '41', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` int(11) NOT NULL,
  `num_of_imgs` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tag` longtext COLLATE utf8_unicode_ci,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `front_image` longtext COLLATE utf8_unicode_ci,
  `brand` longtext COLLATE utf8_unicode_ci NOT NULL,
  `current_stock` int(11) DEFAULT '0',
  `unit` longtext COLLATE utf8_unicode_ci NOT NULL,
  `additional_fields` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `background` longtext COLLATE utf8_unicode_ci,
  `discount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tax` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `tax_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `color` longtext COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `main_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `added_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=145 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `added_by`, `download`, `download_name`, `deal`) VALUES
(144, 0, 0, '[]', 'we', 14, '                                                                                                                        <p><br></p>', 30, '4', '1.00', '1.00', '', '1483022850', '', '', 'ok', NULL, '', 1, '1', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, NULL),
(131, 0, 0, '[]', 'GIỎ QUÀ TẾT v4444', 15, '<p><br></p>', 28, '1', '0.01', '0.01', '', '1482745340', 'ok', '', 'ok', NULL, '', 12, '0', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok'),
(138, 0, 0, '[]', 'asdasd', 15, '<p><br></p>', 28, '1', '1.00', '0.99', '', '1482999779', '0', '', 'ok', NULL, '', NULL, '1', '{"name":"null","value":"null"}', 0, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, NULL),
(139, 0, 0, '[]', 'baf', 14, '                                                                                <p><br></p>', 30, '3', '1.00', '0.98', '', '1483004193', '', '', 'ok', NULL, '', 2, '1', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok'),
(140, 0, 0, '[]', 'dadas', 14, '                                        <p><br></p>', 30, '2', '1.00', '1.00', '', '1483006206', '', '', 'ok', NULL, '', 3, '1', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, NULL),
(126, 0, 0, '[]', 'GIỎ QUÀ TẾT R102', 15, '                                                                                <p><br></p>', 28, '1', '2.00', '3.00', '2', '1482745049', 'ok', '', 'ok', NULL, '', 20, '10', '{"name":"null","value":"null"}', 1, NULL, '2', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok'),
(127, 0, 0, '[]', 'HỘP QUÀ TẾT MP121321', 14, '                                        <p><br></p>', 30, '1', '0.00', '0.00', '', '1482745207', 'ok', '', 'ok', NULL, '', 3, '0', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok'),
(128, 0, 0, '[]', 'GIỎ QUÀ TẾT N1235', 15, '<p><br></p>', 28, '1', '0.01', '0.01', '', '1482745243', 'ok', '', 'ok', NULL, '', 11, '0', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok'),
(129, 0, 0, '[]', 'GIỎ QUÀ TẾT mb455', 15, '<p><br></p>', 28, '1', '0.01', '0.01', '', '1482745279', 'ok', '', 'ok', NULL, '', 2, '0', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok'),
(130, 0, 0, '[]', 'GIỎ QUÀ bb111', 15, '                                                                                                                        <p>Muc Xoai<br></p>', 28, '1', '0.01', '0.01', '', '1482745309', '', '', 'ok', NULL, '', 3, '0', '{"name":"null","value":"null"}', 1, NULL, '', 'percent', '', 'percent', '["rgba(204,204,204,1)"]', '[]', '0', '{"type":"admin","id":"1"}', 'no', NULL, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '["13","17","21","37","41","45","49"]', 'Manages Products'),
(4, 'Accountant', '["9","13","17","21"]', 'Accountancy and Support'),
(6, 'Manager', '["5","13","29","33","37","41","57","63"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_code` longtext,
  `buyer` longtext,
  `product_details` longtext,
  `shipping_address` longtext,
  `vat` longtext,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext,
  `payment_details` longtext,
  `payment_timestamp` longtext,
  `grand_total` longtext,
  `sale_datetime` longtext,
  `delivary_datetime` longtext,
  `delivery_status` longtext,
  `viewed` longtext,
  PRIMARY KEY (`sale_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(4, '2015104', '1', '{"07e1cd7dca89a1678042477183b7ac3f":{"id":"119","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":39,"name":"Product-Box-Mockup","shipping":"0","tax":0,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_119_1_thumb.jpg","coupon":"","rowid":"07e1cd7dca89a1678042477183b7ac3f","subtotal":39},"eb160de1de89d9058fcb0b968dbbbd68":{"id":"117","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":700,"name":"Men-Perfume","shipping":"100","tax":600,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_117_1_thumb.jpg","coupon":"","rowid":"eb160de1de89d9058fcb0b968dbbbd68","subtotal":700}}', '{"firstname":"Mr. Customer","email":"customer@shop.com","lastname":"Boy","phone":"(88) 090 0938","address1":"Dhaka","address2":"Bangladesh","city":"Dhaka","zip":"1212","langlat":"(12.44819535767321, 76.66826244013669)","payment_type":"cash_on_delivery"}', '600', '', '100', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '1439', '1444743436', '', '[{"admin":"","status":"delivered","delivery_time":""}]', 'ok'),
(2, '2015102', '1', '{"735b90b4568125ed6c3f678819b6e058":{"id":"67","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(255,229,179,1)\\"}}","price":1000,"name":"Beats","shipping":0,"tax":0,"image":"http:\\/\\/localhost:10\\/shop13\\/uploads\\/product_image\\/product_67_1_thumb.jpg","coupon":"","rowid":"735b90b4568125ed6c3f678819b6e058","subtotal":1000},"5ef059938ba799aaa845e1c2e8a762bd":{"id":"118","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":50,"name":"digital-2","shipping":"100","tax":10,"image":"http:\\/\\/localhost:10\\/shop13\\/uploads\\/product_image\\/product_118_1_thumb.jpg","coupon":"","rowid":"5ef059938ba799aaa845e1c2e8a762bd","subtotal":50}}', '{"firstname":"Mr. Customer","email":"customer@shop.com","lastname":"Boy","phone":"(88) 090 0938","address1":"Dhaka","address2":"Bangladesh","city":"Dhaka","zip":"1212","langlat":"(12.44819535767321, 76.66826244013669)","payment_type":"cash_on_delivery"}', '10', '', '100', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '1160', '1444344245', '', '[{"admin":"","status":"pending","delivery_time":""}]', 'ok'),
(3, '2015103', '1', '{"07e1cd7dca89a1678042477183b7ac3f":{"id":"119","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(119,0,212,1)\\"}}","price":39,"name":"Product-Box-Mockup","shipping":"0","tax":0,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_119_1_thumb.jpg","coupon":"","rowid":"07e1cd7dca89a1678042477183b7ac3f","subtotal":39}}', '{"firstname":"Mr. Customer","email":"customer@shop.com","lastname":"Boy","phone":"(88) 090 0938","address1":"Dhaka","address2":"Bangladesh","city":"Dhaka","zip":"1212","langlat":"(12.44819535767321, 76.66826244013669)","payment_type":"cash_on_delivery"}', '0', '', '0', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '39', '1444673766', '', '[{"admin":"","status":"delivered","delivery_time":""}]', 'ok'),
(5, '2015105', '1', '{"5ef059938ba799aaa845e1c2e8a762bd":{"id":"118","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":50,"name":"digital-2","shipping":"100","tax":10,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_118_1_thumb.jpg","coupon":"","rowid":"5ef059938ba799aaa845e1c2e8a762bd","subtotal":50},"da4fb5c6e93e74d3df8527599fa62642":{"id":"120","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":10,"name":"James-Bond-Spectre","shipping":"0","tax":0,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_120_1_thumb.jpg","coupon":"","rowid":"da4fb5c6e93e74d3df8527599fa62642","subtotal":10}}', '{"firstname":"Mr. Customer","email":"customer@shop.com","lastname":"Boy","phone":"(88) 090 0938","address1":"Dhaka","address2":"Bangladesh","city":"Dhaka","zip":"1212","langlat":"(12.44819535767321, 76.66826244013669)","payment_type":"cash_on_delivery"}', '10', '', '100', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '170', '1444772995', '', '[{"admin":"","status":"delivered","delivery_time":""}]', 'ok'),
(6, '2015106', '1', '{"4c56ff4ce4aaf9573aa5dff913df997a":{"id":"121","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"rgba(204,204,204,1)\\"}}","price":0,"name":"HTML-5-Documentation","shipping":"0.00","tax":0,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_121_1_thumb.jpg","coupon":"","rowid":"4c56ff4ce4aaf9573aa5dff913df997a","subtotal":0}}', '{"firstname":"Mr. Customer","email":"customer@shop.com","lastname":"Boy","phone":"(88) 090 0938","address1":"Dhaka","address2":"Bangladesh","city":"Dhaka","zip":"1212","langlat":"(12.44819535767321, 76.66826244013669)","payment_type":"cash_on_delivery"}', '0', '', '0', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '0', '1444774847', '', '[{"admin":"","status":"delivered","delivery_time":""}]', 'ok'),
(7, '2015107', '1', '{"a0a080f42e6f13b3a2df133f073095dd":{"id":"122","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":0,"name":"CSS3-Documentation","shipping":"0.00","tax":0,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_122_1_thumb.jpg","coupon":"","rowid":"a0a080f42e6f13b3a2df133f073095dd","subtotal":0},"4c56ff4ce4aaf9573aa5dff913df997a":{"id":"121","qty":1,"option":"{\\"color\\":{\\"title\\":\\"Color\\",\\"value\\":\\"\\"}}","price":0,"name":"HTML-5-Documentation","shipping":"0.00","tax":0,"image":"http:\\/\\/localhost\\/activesupershop\\/v1.3\\/uploads\\/product_image\\/product_121_1_thumb.jpg","coupon":"","rowid":"4c56ff4ce4aaf9573aa5dff913df997a","subtotal":0}}', '{"firstname":"Mr. Customer","email":"customer@shop.com","lastname":"Boy","phone":"(88) 090 0938","address1":"Dhaka","address2":"Bangladesh","city":"Dhaka","zip":"1212","langlat":"(12.44819535767321, 76.66826244013669)","payment_type":"cash_on_delivery"}', '0', '', '0', 'cash_on_delivery', '[{"admin":"","status":"paid"}]', '', NULL, '0', '1444776296', '', '[{"admin":"","status":"delivered","delivery_time":""}]', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(1, '{"images":["ase"],"texts":[{"name":"text_1","text":"WELCOME TO","color":"rgba(255,255,255,1)","background":"rgba(196,4,189,1)"},{"name":"text_2","text":"YOUR SHOP NAME","color":"rgba(255,255,255,1)","background":"rgba(141,0,176,1)"}]}', '0', 'Welcome', '2', 0),
(2, '{"images":[],"texts":[{"name":"text_1","text":"WELCOME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_2","text":"YOUR SHOP NAME","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"},{"name":"text_3","text":"SHOP TITLE","color":"rgba(255,255,255,1)","background":"rgba(0,0,0,0)"}]}', '0', 'Welcome 2', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE IF NOT EXISTS `slider_style` (
  `slider_style_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`slider_style_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:6500;transition2d:all;transition3d:15;\\"",\r\n   "background":"bg",\r\n   "images":[\r\n\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"WELCOME",\r\n         "name":"text_1",\r\n         "style":"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;",\r\n         "data_ls":"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;",\r\n         "color":"#ffffff",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h1",\r\n         "show_name":"YOUR SHOP NAME",\r\n         "name":"text_2",\r\n         "style":"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;",\r\n         "color":"#ffffff",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h1",\r\n         "show_name":"SHOP TITLE",\r\n         "name":"text_3",\r\n         "style":"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;",\r\n         "color":"#ffffff",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:20px; left:50%;width:220px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"WELCOME TO",\r\n         "name":"text_1",\r\n         "style":"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"YOUR SHOP NAME",\r\n         "name":"text_2",\r\n         "style":"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;",\r\n         "color":"#ffffff",\r\n         "background":"#8D00B0"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Product Image 1",\r\n         "name":"circle_1",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 2",\r\n         "name":"circle_2",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; "\r\n      },\r\n      {\r\n         "show_name":"Product Image 3",\r\n         "name":"circle_3",\r\n         "style":"top:35%; left:60%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; "\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#C404BD",\r\n         "other":"fixed"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 1",\r\n         "name":"product_title_1",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 2",\r\n         "name":"product_title_2",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; ",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE 3",\r\n         "name":"product_title_3",\r\n         "style":"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:4500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:80px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:180px; white-space:nowrap;width:220px; ",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:280px; white-space:nowrap; width:220px;",\r\n         "data_ls":"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURe 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:580px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:680px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:100px;left:780px;width:220px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; ",\r\n         "name":"semi_long_3",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_1",\r\n         "style":"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_2",\r\n         "style":"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_3",\r\n         "style":"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_4",\r\n         "style":"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_5",\r\n         "style":"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;",\r\n         "data_ls":"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"+",\r\n         "name":"feature_bullet_6",\r\n         "style":"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; ",\r\n         "color":"#ffffff",\r\n         "background":"#c404bd"\r\n      },\r\n      {\r\n         "element":"h5",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; ",\r\n         "color":"#8d00b0",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:105,106;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:60px;left:578px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "name":"semi_long_1",\r\n         "style":"top:170px;left:800px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "name":"square_1",\r\n         "style":"top:265px;left:1020px;width:200px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; ",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 1",\r\n         "name":"product_feature_1",\r\n         "style":"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 2",\r\n         "name":"product_feature_2",\r\n         "style":"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 3",\r\n         "name":"product_feature_3",\r\n         "style":"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 4",\r\n         "name":"product_feature_4",\r\n         "style":"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 5",\r\n         "name":"product_feature_5",\r\n         "style":"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 6",\r\n         "name":"product_feature_6",\r\n         "style":"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"div",\r\n         "show_name":"PRODUCT FEATURE 7",\r\n         "name":"product_feature_7",\r\n         "style":"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; ",\r\n         "data_ls":"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; ",\r\n         "color":"#470467",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "name":"long_1",\r\n         "style":"top:50%; left:50%;width:200px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h6",\r\n         "show_name":"PRICE",\r\n         "name":"price",\r\n         "style":"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "color":"#ffffff",\r\n         "background":"#b816b2"\r\n      },\r\n      {\r\n         "element":"h6",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;",\r\n         "data_ls" : "",\r\n         "color":"#ffffff",\r\n         "background":"#760093"\r\n      }\r\n   ]\r\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:100px;left:100px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:100px;left:400px; width:250px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; ",\r\n         "color":"#34009d",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":" DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; ",\r\n         "color":"#ffffff",\r\n         "background":"#740091"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 8",\r\n         "name":"dummy_text_8",\r\n         "style":"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; ",\r\n         "color":"#ff00f6",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7500;transition2d:73,102;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:50px; left:50%;width:278px; white-space:nowrap;",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"IMAGE"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#d9482b",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}'),
(10, 'SLIDER TYPE 8', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:7000;transition2d:76,77,78,79;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "style":"top:120px; left:42%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_1",\r\n         "show_name":"PRODUCT IMAGE 1"\r\n      },\r\n      {\r\n         "style":"top:120px; left:58%;width:180px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"semi_long_2",\r\n         "show_name":"PRODUCT IMAGE 2"\r\n      },\r\n      {\r\n         "style":"top:50px; left:50%;width:200px; white-space:nowrap; ",\r\n         "data_ls":"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; ",\r\n         "name":"long_1",\r\n         "show_name":"PRODUCT IMAGE 3"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 1",\r\n         "name":"dummy_text_1",\r\n         "style":"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 2",\r\n         "name":"dummy_text_2",\r\n         "style":"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 3",\r\n         "name":"dummy_text_3",\r\n         "style":"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 4",\r\n         "name":"dummy_text_4",\r\n         "style":"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 5",\r\n         "name":"dummy_text_5",\r\n         "style":"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 6",\r\n         "name":"dummy_text_6",\r\n         "style":"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; ",\r\n         "color":"#fd2931",\r\n         "background":"rgba(255,255,255,0.85)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"product_title",\r\n         "style":"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; ",\r\n         "color":"#fff",\r\n         "background":"#11008b"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"DUMMY TEXT 7",\r\n         "name":"dummy_text_7",\r\n         "style":"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; ",\r\n         "data_ls":"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; ",\r\n         "color":"#000",\r\n         "background":"rgba(0,0,0,0)"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(11, 'WELCOME TYPE 3', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:8000;transition2d:4;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"ase",\r\n         "style":"top:45%; left:45%;width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"p",\r\n         "show_name":"Introducing",\r\n         "name":"text_1",\r\n         "style":"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#C505BD",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"Your Shop Name",\r\n         "name":"text_2",\r\n         "style":"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"p",\r\n         "show_name":"your Shop Slogan",\r\n         "name":"text_3",\r\n         "style":"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;",\r\n         "color":"#8D00AF",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   "full_slide_style":"data-ls=\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\"",\r\n   "background":"bg_apple",\r\n   "images":[\r\n      {\r\n         "show_name":"Image 1",\r\n         "name":"semi_long_1",\r\n         "style":"top:120px; left:300px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 2",\r\n         "name":"semi_long_2",\r\n         "style":"top:120px; left:200px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      },\r\n      {\r\n         "show_name":"Image 3",\r\n         "name":"semi_long_3",\r\n         "style":"top:120px; left:100px; width:200px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;"\r\n      }\r\n   ],\r\n   "texts":[\r\n      {\r\n         "element":"h1",\r\n         "show_name":"PRODUCT TITLE",\r\n         "name":"text_1",\r\n         "style":"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h2",\r\n         "show_name":"BIG SALE",\r\n         "name":"text_2",\r\n         "style":"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;",\r\n         "color":"#FA6BF3",\r\n         "background":"rgba(1,1,1,0)"\r\n      },\r\n      {\r\n         "element":"h3",\r\n         "show_name":"$99",\r\n         "name":"text_3",\r\n         "style":"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;",\r\n         "data_ls":"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;",\r\n         "color":"#730091",\r\n         "background":"rgba(1,1,1,0)"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `slides_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`slides_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `name`) VALUES
(1, 'ddd'),
(2, ''),
(3, ''),
(4, '');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE IF NOT EXISTS `social_links` (
  `social_links_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`social_links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'active-classified'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '1', '1', '1', '101', '80', '8080', '', '1436646573', '', ''),
(2, 'add', '1', '2', '2', '100', '80', '8000', '', '1436646648', '', ''),
(3, 'add', '2', '4', '3', '100', '80', '8000', '', '1436646728', '', ''),
(4, 'add', '2', '4', '4', '100', '80', '8000', '', '1436646794', '', ''),
(5, 'add', '1', '1', '9', '100', '100', '10000', '', '1438969394', '', ''),
(69, 'destroy', '1', '3', '67', '1', NULL, '0', 'sale', '1444344245', '2', NULL),
(70, 'destroy', '1', '3', '118', '1', NULL, '0', 'sale', '1444344245', '2', NULL),
(71, 'destroy', '6', '25', '119', '1', NULL, '0', 'sale', '1444673766', '3', NULL),
(72, 'destroy', '6', '25', '119', '1', NULL, '0', 'sale', '1444743436', '4', NULL),
(73, 'destroy', '4', '8', '117', '1', NULL, '0', 'sale', '1444743436', '4', NULL),
(74, 'destroy', '1', '3', '118', '1', NULL, '0', 'sale', '1444772995', '5', NULL),
(75, 'destroy', '6', '26', '120', '1', NULL, '0', 'sale', '1444772995', '5', NULL),
(76, 'destroy', '6', '27', '121', '1', NULL, '0', 'sale', '1444774847', '6', NULL),
(77, 'destroy', '6', '27', '122', '1', NULL, '0', 'sale', '1444776296', '7', NULL),
(78, 'destroy', '6', '27', '121', '1', NULL, '0', 'sale', '1444776296', '7', NULL),
(79, 'add', '15', '28', '126', '6', '3.00', '18', '', '1482745146', NULL, NULL),
(80, 'add', '15', '28', '127', '2', '0.00', '0', '', '1482745356', NULL, NULL),
(81, 'add', '15', '28', '128', '1', '0.01', '0.01', '', '1482745363', NULL, NULL),
(82, 'add', '15', '28', '130', '3', '0.01', '0.03', '', '1482745371', NULL, NULL),
(83, 'add', '14', '30', '127', '3', '0.00', '0', '', '1482917105', NULL, NULL),
(84, 'add', '15', '28', '131', '12', '0.01', '0.12', '', '1482997402', NULL, NULL),
(85, 'add', '15', '28', '126', '14', '3.00', '42', '', '1482997411', NULL, NULL),
(86, 'add', '15', '28', '128', '10', '0.01', '0.1', '', '1482997417', NULL, NULL),
(87, 'add', '14', '30', '132', '3', '2.07', '6.209999999999999', '', '1482998176', NULL, NULL),
(88, 'destroy', '14', '30', '127', '9', NULL, '1', '', '1482998191', NULL, NULL),
(89, 'add', '14', '30', '133', '1', '3223.00', '3223', '', '1482998341', NULL, NULL),
(90, 'add', '14', '30', '134', '1', '3.00', '3', '', '1482998424', NULL, NULL),
(91, 'add', '14', '30', '135', '2', '0.98', '1.96', '', '1482998533', NULL, NULL),
(92, 'add', '14', '30', '136', '1', '0.96', '0.96', '', '1482999498', NULL, NULL),
(93, 'add', '14', '30', '137', '1', '1.00', '1', '', '1482999698', NULL, NULL),
(94, 'add', '14', '30', '127', '3', '0.00', '0', '', '1482999784', NULL, NULL),
(95, 'add', '14', '30', '139', '2', '0.98', '1.96', '', '1483004198', NULL, NULL),
(96, 'add', '14', '30', '140', '3', '1.00', '3', '', '1483006215', NULL, NULL),
(97, 'add', '14', '30', '141', '1', '1.00', '1', '', '1483020144', NULL, NULL),
(98, 'add', '14', '30', '142', '1', '1.00', '1', '', '1483022502', NULL, NULL),
(99, 'add', '14', '30', '143', '1', '1.00', '1', '', '1483022589', NULL, NULL),
(100, 'add', '14', '30', '144', '1', '1.00', '1', '', '1483022857', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `sub_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sub_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`) VALUES
(28, 'Bánh', '15'),
(29, 'Mức', '15'),
(30, 'Bánh', '14');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE IF NOT EXISTS `ui_settings` (
  `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext,
  `value` longtext,
  PRIMARY KEY (`ui_settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(1, 'side_bar_pos', NULL),
(2, 'latest_item_div', NULL),
(3, 'most_popular_div', NULL),
(4, 'most_view_div', NULL),
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '18'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '2'),
(9, 'home_bottom_logo', '2'),
(10, 'home_category', 'null'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'left'),
(13, 'home_brand', 'null'),
(14, 'footer_color', NULL),
(15, 'header_color', 'grey');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `downloads` longtext NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `downloads`) VALUES
(1, 'Mr. Customer', 'Boy', 'customer@shop.com', '(88) 090 0938', 'Dhaka', 'Bangladesh', 'Dhaka', '1212', '(12.44819535767321, 76.66826244013669)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '', '1436652284', '', '', '', '["115","106","95","117","118"]', '1444986151', '[{"sale":2,"product":"118"},{"sale":4,"product":"119"},{"sale":5,"product":"118"},{"sale":5,"product":"120"},{"sale":6,"product":"121"},{"sale":7,"product":"122"},{"sale":7,"product":"121"}]'),
(10, 'tuansdsad', 'truongdsad', 'baf2681aa995@gmail.com', '45454', 'sadsd', NULL, 'dsds', '4545454', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, '1482830482', NULL, NULL, NULL, '[]', NULL, ''),
(9, 'tuanff', 'truongfdf', 'wbap2681995@gmail.com', '11123333', 'dsad', NULL, 'sadas', '121321', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, '1482830382', NULL, NULL, NULL, '[]', NULL, ''),
(8, 'tuan', 'truong', 'baf2681995@gmail.com', 'vt', 'fgfd', NULL, 'fggfg', '1222222', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, '1482830332', NULL, NULL, NULL, '[]', '1483082364', ''),
(11, 'tuansdsad', 'truongdsad', 'baffdsaf2681aa995@gmail.com', '45454', 'sadsd', NULL, 'dsds', '4545454', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, '1482830519', NULL, NULL, NULL, '[]', NULL, ''),
(12, 'fdsfds', 'tiiii', 'baf26dsfdsdsasdaf81aa995@gmail.com', '1231111111', 'asas', NULL, 's?', '1213333', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, '1482920411', NULL, NULL, NULL, '[]', NULL, ''),
(13, 'huyen', 'nguyen', 'baf26dsfds81aa995@gmail.com', '0222222236', 'adsa', NULL, 'sfdsf', '200003', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, '1483093709', NULL, NULL, NULL, '[]', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `membership`, `create_timestamp`, `approve_timestamp`, `member_timestamp`, `member_expire_timestamp`, `details`, `last_login`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `pinterest`, `stripe_details`, `paypal_email`, `preferred_payment`, `cash_set`, `stripe_set`, `paypal_set`, `phone`, `keywords`, `description`, `lat_lang`) VALUES
(1, 'Mr. Vendor', 'vendor@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Vendor Pvt. Ltd.', 'Vendor Shop', 'dhaka', 'Address', 'approved', '0', 1439049705, 0, 0, 1451606400, '', 0, '', '', '', '', '', '', '', '', '', '', '[]', '', '', '', '', '(23.74319497113364, 90.40212959191285)'),
(2, 'Example Vendor', 'vendor1@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(3, 'Example Vendor', 'vendor2@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(4, 'Example Vendor', 'vendor3@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(5, 'Example Vendor', 'vendor4@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(6, 'Example Vendor', 'vendor5@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, 'Example Vendor', 'vendor6@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(8, 'Example Vendor', 'vendor7@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Example Vendor', 'Example Vendor', 'Example Road', 'Example House', 'approved', '0', 1444161452, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(9, 'Ishmael Dodson', 'vuharupy@gmail.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', 'Mayo and Zimmerman Trading', 'Randall Garcia', 'Corrupti amet quos placeat velit odit labore labore est et voluptatibus amet aliquam quos sint et obcaecati debitis mollit incidunt', 'Anim rerum ad velit est aut aute iure reprehenderit labore in ipsum', 'pending', '0', 1444818277, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE IF NOT EXISTS `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext,
  PRIMARY KEY (`vendor_invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

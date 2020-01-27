-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 23 jan. 2020 à 14:48
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestibankv2`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `IdAdresse` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) NOT NULL,
  `complement` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `codePostal` varchar(255) NOT NULL,
  `rue` varchar(255) NOT NULL,
  PRIMARY KEY (`IdAdresse`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`IdAdresse`, `numero`, `complement`, `ville`, `codePostal`, `rue`) VALUES
(1, '38051', 'Ap #807-9261 Diam. St.', 'Togo', '33-283', '6169 Id Av.'),
(2, '44423', 'Ap #945-2124 Donec Road', 'Korea, North', '47854', '611-9994 Eget, Rd.'),
(3, '50517', '441 Hendrerit. Av.', 'Costa Rica', '555230', 'Ap #536-9350 Lacus Avenue'),
(4, '44325', '694-4070 Penatibus Road', 'Senegal', '2018', 'P.O. Box 763, 5517 Cursus Rd.'),
(5, '73412', 'P.O. Box 205, 2652 Odio. Ave', 'Sudan', '690480', 'P.O. Box 613, 5481 Nec Avenue'),
(6, '63507', '753-1084 Nunc. St.', 'South Africa', 'B8V 6E1', 'Ap #425-3535 Sit Av.'),
(7, '14961', 'Ap #737-9999 Eu St.', 'Turkey', '20711', 'Ap #947-2953 Nullam Avenue'),
(8, '47072', 'P.O. Box 407, 6601 Eget St.', 'Northern Mariana Islands', '96506-697', 'P.O. Box 830, 4629 Eget Rd.'),
(9, '57901', 'Ap #113-6606 Vel, Ave', 'Christmas Island', '32567', 'P.O. Box 271, 5153 Mauris Av.'),
(10, '23493', '7299 Aenean Ave', 'Colombia', '55205', '300-4413 Ultricies Av.'),
(11, '40441', 'P.O. Box 694, 1499 Pretium Avenue', 'Lesotho', '66566', 'P.O. Box 583, 3663 Ac Ave'),
(12, '07692', '384 Ultricies Av.', 'Ireland', '9882', '982-9401 Velit. Road'),
(13, '64438', 'P.O. Box 908, 4130 Urna, Ave', 'Saudi Arabia', '14424-502', '907-6936 Dui St.'),
(14, '81627', '553-483 Erat. Rd.', 'Northern Mariana Islands', '3054', '869-3893 Ut Ave'),
(15, '47691', 'P.O. Box 607, 3173 Ipsum Rd.', 'San Marino', '49984', 'P.O. Box 510, 8945 Scelerisque St.'),
(16, '12940', 'P.O. Box 300, 3029 Ornare, Av.', 'Jamaica', '9079', 'Ap #714-9951 A, St.'),
(17, '59734', 'P.O. Box 159, 409 Eu Avenue', 'Pitcairn Islands', '782043', '334-3626 Augue, Av.'),
(18, '49566', 'P.O. Box 654, 5073 Ante St.', 'Heard Island and Mcdonald Islands', '03366', '1140 Semper St.'),
(19, '84599', '922-4224 Ultricies Av.', 'Indonesia', '2387 OW', 'Ap #309-9822 Neque St.'),
(20, '28613', '9191 Nec, Rd.', 'Myanmar', '422303', 'Ap #210-563 Lectus Road'),
(21, '41749', 'Ap #526-1908 Magna Road', 'Christmas Island', '50700', 'Ap #637-9730 Sit Avenue'),
(22, '87328', '9795 Suspendisse St.', 'Croatia', '508523', '867-621 Praesent St.'),
(23, '91581', 'P.O. Box 555, 9156 Imperdiet Street', 'Anguilla', '74021', 'P.O. Box 811, 2972 Orci Rd.'),
(24, '33043', 'Ap #307-779 Ut Rd.', 'Slovakia', '63876-58386', '1640 Morbi St.'),
(25, '20080', '950 Aliquam St.', 'Congo, the Democratic Republic of the', '4048', '2141 Dictum Av.'),
(26, '66138', 'P.O. Box 764, 9086 Vitae St.', 'Antarctica', 'L6E 1J5', 'P.O. Box 492, 2767 Fermentum Rd.'),
(27, '73445', 'Ap #661-4619 Risus Road', 'Serbia', '33745', 'Ap #826-1220 Ligula. St.'),
(28, '68153', '9225 Vitae Av.', 'Chile', 'R9V 0K7', '609-7343 Phasellus Avenue'),
(29, '12221', 'Ap #985-2764 Suspendisse Avenue', 'Armenia', '9587', 'P.O. Box 459, 6715 Ligula Rd.'),
(30, '90216', 'Ap #669-7525 Pellentesque Road', 'American Samoa', '14037', '5997 A Av.'),
(31, '52418', '7505 Non Rd.', 'Georgia', '633392', 'P.O. Box 766, 6168 Tellus St.'),
(32, '25690', '6091 Semper Rd.', 'Western Sahara', '51904', '768-3099 Ultricies Street'),
(33, '27169', '516-2331 Ac Street', 'Kazakhstan', '11338', '2537 Odio. Av.'),
(34, '21559', 'P.O. Box 309, 9793 Congue Av.', 'Denmark', '44534', 'Ap #427-5260 Ornare, Avenue'),
(35, '79963', 'P.O. Box 287, 8198 Et, St.', 'Virgin Islands, United States', '76172', '282-6019 Mi Avenue'),
(36, '61131', 'P.O. Box 646, 8477 Velit. Rd.', 'Bermuda', '5623', '672 Dui. Street'),
(37, '32810', 'P.O. Box 346, 8410 Ipsum Street', 'Svalbard and Jan Mayen Islands', '07893', '616-1169 Velit. St.'),
(38, '27651', 'Ap #297-6554 Aliquam Street', 'Norway', '85212', 'P.O. Box 474, 642 Pede. Rd.'),
(39, '35543', 'P.O. Box 269, 2455 Laoreet Ave', 'Faroe Islands', '621862', 'Ap #127-2065 Nunc, Ave'),
(40, '93797', 'P.O. Box 663, 6916 Magna. Rd.', 'Lebanon', '19101', '6411 Malesuada Road'),
(41, '60641', '2969 Scelerisque Rd.', 'Lebanon', '939425', '3761 Ipsum Ave'),
(42, '79599', '175-8404 Volutpat. St.', 'Macedonia', '9188 MU', '452-4334 Ac Street'),
(43, '59427', '4264 Malesuada St.', 'Honduras', '38241-12063', 'P.O. Box 428, 9257 Massa. Rd.'),
(44, '79874', '491-6472 Risus. Rd.', 'Jordan', '51312', '8278 Malesuada. Ave'),
(45, '95540', '5070 Neque. Av.', 'French Polynesia', 'Y3C 9G9', 'P.O. Box 411, 9993 Urna. St.'),
(46, '63380', '9133 Gravida. Avenue', 'Palestine, State of', '90760', '7050 Lacinia Avenue'),
(47, '49136', '6197 Vitae Road', 'Nepal', '69762', '215-9736 Mattis. Av.'),
(48, '48910', 'Ap #430-4341 Vitae, Avenue', 'New Caledonia', '4543', 'Ap #715-8441 Eleifend Rd.'),
(49, '41482', '3787 Nec, Road', 'Madagascar', '1240', 'P.O. Box 386, 1543 Ornare St.'),
(50, '78045', '964 Nonummy Ave', 'Svalbard and Jan Mayen Islands', '98067', 'P.O. Box 105, 3467 Nulla St.'),
(51, '10589', '3383 Vel, St.', 'Brazil', '55532', 'P.O. Box 171, 8895 Vel, Street'),
(52, '15494', '1398 Dis Street', 'Mozambique', '35-539', '986-9891 Magna. St.'),
(53, '59217', '385-9884 Et Rd.', 'Turks and Caicos Islands', '825528', 'P.O. Box 263, 9103 Aliquet, Road'),
(54, '70312', '8475 In Ave', 'Iceland', '22031', '648-4388 Sociis Rd.'),
(55, '35541', '170-5674 Tempus Rd.', 'Papua New Guinea', '513443', 'Ap #763-3676 Fringilla Road'),
(56, '57845', 'Ap #374-7059 In Street', 'Singapore', '15510', 'P.O. Box 814, 8964 Feugiat St.'),
(57, '30770', '872-6434 Nascetur St.', 'Malta', '60915', '690-8454 At Road'),
(58, '85269', 'Ap #952-9453 Luctus. Rd.', 'New Zealand', '175054', '3005 Tellus. Ave'),
(59, '33417', 'P.O. Box 713, 3540 Enim Ave', 'Ireland', '81542-65483', 'P.O. Box 123, 245 Iaculis Road'),
(60, '61137', '5142 Augue St.', 'Armenia', 'K4E 7R2', 'Ap #179-5925 Quisque Street'),
(61, '04185', '469-1367 Imperdiet Av.', 'Barbados', '38637-49478', 'P.O. Box 847, 5497 Amet, Street'),
(62, '40717', '307-1413 Consectetuer Ave', 'Croatia', '63108', 'Ap #568-884 Torquent Road'),
(63, '67332', 'Ap #836-4378 Cubilia Avenue', 'Albania', '46996', 'P.O. Box 327, 2665 Nunc St.'),
(64, '82819', 'Ap #430-8620 Pretium Rd.', 'Guadeloupe', '7666', 'P.O. Box 386, 5113 Risus Road'),
(65, '09858', 'Ap #457-4221 Cursus Rd.', 'Reunion', '30833', 'P.O. Box 108, 1054 Felis. Ave'),
(66, '59033', '6151 Elit, Street', 'Saint Vincent and The Grenadines', '01065', '924-3632 Et Street'),
(67, '66669', 'P.O. Box 518, 1065 Vel Av.', 'Eritrea', '936838', '5788 Ut Ave'),
(68, '72379', 'Ap #295-6995 Mauris Av.', 'Korea, South', '952459', '154-3807 Sem Rd.'),
(69, '99975', 'Ap #773-1955 Nunc Avenue', 'Philippines', '40379', 'Ap #695-5043 Vulputate St.'),
(70, '30893', '5011 Ipsum. Street', 'Monaco', '99696', '879-7221 Suspendisse Rd.'),
(71, '79123', 'P.O. Box 380, 3027 Quis Ave', 'Saint Kitts and Nevis', '595618', 'P.O. Box 741, 3763 Pulvinar St.'),
(72, '55402', 'Ap #554-5245 At St.', 'Antarctica', '5149', 'Ap #213-2220 Nam Av.'),
(73, '84637', '3582 Luctus Ave', 'Argentina', '8306', '615-4615 Et, St.'),
(74, '39576', '2727 Dolor Street', 'Afghanistan', '25135', '4121 Orci Av.'),
(75, '75592', '3068 Tincidunt Avenue', 'Guam', 'Z5326', '180-7326 Lorem Street'),
(76, '83487', '570-6033 Orci Road', 'Svalbard and Jan Mayen Islands', '44895', 'Ap #940-3921 Cum St.'),
(77, '40207', '7495 Adipiscing Rd.', 'Nauru', '13154', 'Ap #704-2770 Nascetur Av.'),
(78, '81731', 'P.O. Box 967, 4715 Proin Av.', 'Saint Vincent and The Grenadines', 'UW72 4HG', 'Ap #823-5367 Suspendisse Street'),
(79, '33705', '1025 Nonummy Av.', 'Macedonia', '60110', 'Ap #144-3132 Consectetuer Ave'),
(80, '50296', '8799 Lorem Ave', 'Armenia', '00224', 'P.O. Box 814, 2932 Donec Rd.'),
(81, '27722', '8497 Sed Rd.', 'Japan', '20952', '194-3349 Lacinia Street'),
(82, '99118', '275-584 Bibendum St.', 'Equatorial Guinea', '40724', '9256 Enim, Avenue'),
(83, '96854', 'Ap #758-2058 Duis Ave', 'New Zealand', '50319', '875-1810 Eleifend Rd.'),
(84, '76908', 'Ap #739-3995 Dapibus Avenue', 'Ethiopia', '95722-41072', 'P.O. Box 300, 4786 Penatibus Street'),
(85, '91266', '424-1624 Nisl. Ave', 'Taiwan', '5839', 'P.O. Box 172, 2828 Eget, Rd.'),
(86, '68199', 'P.O. Box 783, 7443 Arcu. Av.', 'Mozambique', 'Z7061', '528-1771 Eu Rd.'),
(87, '61690', 'P.O. Box 183, 2142 Scelerisque Av.', 'Laos', '59761-683', 'Ap #550-2003 Risus St.'),
(88, '90510', 'P.O. Box 149, 2775 Commodo Road', 'Suriname', 'QP46 6WT', 'P.O. Box 331, 756 Nisi Ave'),
(89, '43512', 'Ap #216-2756 Etiam Rd.', 'Curaçao', '7605', '409-7433 Semper Ave'),
(90, '84486', 'P.O. Box 534, 7288 Id Ave', 'Nauru', '098198', '960-6091 Velit Rd.'),
(91, '10429', 'Ap #474-402 Vitae Rd.', 'Korea, South', '66093-407', 'P.O. Box 609, 6995 Magna Ave'),
(92, '33358', '779-6112 Ac St.', 'Nepal', 'M9V 4P8', '4474 Suspendisse St.'),
(93, '56234', 'Ap #421-1280 Ut Rd.', 'Thailand', '730299', '206-4055 Dolor Ave'),
(94, '05299', '3550 Mauris Av.', 'Guinea', '639760', '154-6764 In, Road'),
(95, '17779', 'Ap #654-5874 Amet St.', 'Cook Islands', '411118', '3505 Arcu. Rd.'),
(96, '39446', '3332 Arcu Road', 'Bhutan', '35-126', '7660 Augue, Rd.'),
(97, '77062', '620-8056 Augue Ave', 'Costa Rica', '854277', '778 Sed St.'),
(98, '81565', '5796 Turpis. St.', 'Isle of Man', 'Z9809', '870-5453 Lorem, Road'),
(99, '31764', 'Ap #570-5686 Enim Street', 'Spain', '79608', '7134 Gravida Rd.'),
(100, '24123', 'Ap #685-1002 Primis Avenue', 'Slovakia', '85471', 'P.O. Box 553, 9874 Cras Ave'),
(101, '53638', 'Ap #629-9263 Ipsum. Av.', 'Bahrain', '50055', 'P.O. Box 947, 9318 Aliquet St.'),
(102, '89310', 'Ap #793-7905 Lacus Rd.', 'Belarus', '81579', '890-4643 Amet, Street'),
(103, '02767', 'Ap #106-3808 Blandit Street', 'Togo', '79781-384', 'Ap #928-3979 Rutrum St.'),
(104, '54543', 'P.O. Box 709, 3928 Ipsum. St.', 'Monaco', '2743', '5004 Blandit Ave'),
(105, '63756', '8498 Praesent Rd.', 'Algeria', '4205', '809-4907 Urna. Rd.'),
(106, '51253', '2865 Consequat Ave', 'Libya', '781589', '5923 Aliquet St.'),
(107, '16956', 'Ap #838-7697 Orci Avenue', 'Guernsey', '16508', '680-7922 Eu Ave'),
(108, '27462', '8291 Libero Street', 'Algeria', '2172', '5756 Vulputate Ave'),
(109, '51455', '867 Aenean Rd.', 'Viet Nam', '4317', '9077 Euismod Street'),
(110, '01961', 'P.O. Box 389, 5290 Bibendum St.', 'Palau', 'GW99 1QE', 'Ap #612-983 Libero Avenue'),
(111, '80133', '536-6377 Tortor, St.', 'Kenya', '3588 KE', '9467 Ante, Street'),
(112, '69773', 'P.O. Box 204, 4645 Donec Rd.', 'British Indian Ocean Territory', '680440', '2901 Donec St.'),
(113, '40073', 'Ap #112-8732 Ornare, Avenue', 'Tanzania', '43904-82890', '4708 Vel, Road'),
(114, '59302', '985-7831 Sit St.', 'Greenland', '9856', '662-3498 Dignissim Ave'),
(115, '40129', 'P.O. Box 427, 6480 Justo Ave', 'Libya', '49212', '976-151 Nunc Av.'),
(116, '85586', '584-2172 Rhoncus. Avenue', 'Samoa', '98888', '6443 Lorem St.'),
(117, '18481', 'P.O. Box 634, 6539 Ipsum Av.', 'Gambia', '161853', 'P.O. Box 565, 9040 Sem St.'),
(118, '41926', '8054 Vel, Road', 'Palestine, State of', '1813', 'P.O. Box 198, 5990 Non Ave'),
(119, '41316', 'P.O. Box 952, 9186 Lorem Rd.', 'Czech Republic', '33875', 'P.O. Box 992, 5084 A, Ave'),
(120, '96188', '118-8857 Enim, Ave', 'Bosnia and Herzegovina', '8132', 'Ap #616-151 Sed Rd.'),
(121, '03141', '735-8755 In, Ave', 'Virgin Islands, United States', '434746', 'P.O. Box 463, 4950 Fusce St.'),
(122, '75057', 'P.O. Box 897, 4749 Pellentesque Rd.', 'Finland', '74576', '147-7571 Cubilia Ave'),
(123, '66742', '867 Euismod Rd.', 'Solomon Islands', '77279-952', '473-2715 Ornare, Avenue'),
(124, '06115', '584-1192 Aliquam St.', 'South Sudan', '70411', 'Ap #128-6746 Sit Rd.'),
(125, '34458', 'P.O. Box 976, 2128 Ac, St.', 'Turks and Caicos Islands', 'Z3101', 'Ap #408-2512 Consectetuer Ave'),
(126, '50639', 'Ap #439-9653 Cursus Rd.', 'Turkmenistan', 'P8 2RJ', 'Ap #595-990 Dignissim Rd.'),
(127, '90443', 'P.O. Box 350, 1837 Nisi. Street', 'Egypt', '00861', 'P.O. Box 884, 5471 Senectus Ave'),
(128, '30561', '7430 Cum St.', 'Bouvet Island', '50902', '6999 Non Rd.'),
(129, '84334', 'Ap #767-9505 Dui. St.', 'Western Sahara', '21412', '460-8645 Urna. Rd.'),
(130, '34700', 'P.O. Box 410, 5497 Lectus Ave', 'Christmas Island', '26276-929', '6688 Primis Rd.'),
(131, '98531', 'Ap #938-3621 Donec Rd.', 'Central African Republic', '96546-95014', '5430 Ac Rd.'),
(132, '92735', 'Ap #965-339 Euismod Ave', 'Italy', '786112', 'Ap #344-5603 Arcu. Avenue'),
(133, '74285', '570-4990 Erat, Street', 'Belize', 'J4H 5N7', '2725 Et, Av.'),
(134, '98276', 'P.O. Box 309, 3270 Sit Rd.', 'Guinea', '14105', '1836 Pharetra Rd.'),
(135, '26645', '940-8357 Erat Road', 'Albania', 'FA1X 5VN', 'P.O. Box 300, 8299 Mattis St.'),
(136, '62298', 'Ap #534-5545 Interdum St.', 'Isle of Man', '29329-057', 'Ap #587-5583 Augue Ave'),
(137, '40231', 'P.O. Box 622, 4236 In Ave', 'Guam', '591282', '420-8034 Turpis St.'),
(138, '03077', '299-7619 Justo Road', 'Comoros', '20432', '724-7833 Nulla. St.'),
(139, '85216', 'Ap #406-1540 Neque. St.', 'South Georgia and The South Sandwich Islands', '09473', 'P.O. Box 341, 5167 Et Av.'),
(140, '49612', 'Ap #997-9336 A, Avenue', 'Cape Verde', '40764', '2864 Cras Street'),
(141, '50237', '454-495 Nullam Street', 'Papua New Guinea', '113282', 'P.O. Box 527, 4242 Suspendisse Av.'),
(142, '95808', '1010 Fermentum Road', 'Tunisia', '277772', 'P.O. Box 592, 7250 Vivamus St.'),
(143, '48347', '7341 Non Street', 'San Marino', '55-235', 'Ap #767-2806 Egestas Road'),
(144, '62431', 'Ap #249-4218 Ipsum. Ave', 'Bonaire, Sint Eustatius and Saba', '06359', '369-641 Nec Ave'),
(145, '55760', '4192 Ligula. Street', 'Oman', '1496 WC', 'P.O. Box 206, 2075 Natoque Road'),
(146, '26619', '6031 Tempor Av.', 'Slovenia', 'C2S 2X2', 'P.O. Box 988, 509 Et, St.'),
(147, '13987', 'Ap #821-4603 Nunc Rd.', 'Côte D\'Ivoire (Ivory Coast)', '933310', '8588 Consectetuer Rd.'),
(148, '77245', 'P.O. Box 527, 7680 Eleifend, Rd.', 'Barbados', '23925', 'Ap #357-1299 Ac St.'),
(149, '68560', '7280 Mattis St.', 'Marshall Islands', '50631-681', 'P.O. Box 174, 1673 Penatibus Street'),
(150, '29366', 'P.O. Box 217, 8784 Luctus Rd.', 'Mauritania', '9102', '5658 Erat Avenue'),
(151, '16935', 'P.O. Box 179, 2378 Donec Avenue', 'Sri Lanka', '564706', 'P.O. Box 688, 4041 Quis Road'),
(152, '10328', 'P.O. Box 856, 1594 Mus. Avenue', 'Turkey', '30900', '7584 Fusce Street'),
(153, '62254', 'P.O. Box 192, 2828 Et Street', 'Germany', '99334', 'P.O. Box 802, 5299 Semper. St.'),
(154, '96131', 'Ap #340-1700 Odio. Rd.', 'Mauritania', '4973', 'P.O. Box 786, 8148 Eu Av.'),
(155, '38927', 'P.O. Box 841, 3465 At Av.', 'Nauru', '76672', 'Ap #528-1985 Proin St.'),
(156, '01316', '113-8553 Eu Rd.', 'American Samoa', '99670-053', 'Ap #331-2907 In St.'),
(157, '08289', 'Ap #301-7299 Nascetur Rd.', 'Saint Kitts and Nevis', '89303', '697-6895 Mattis. St.'),
(158, '89012', 'Ap #549-7957 Vulputate, Ave', 'Turkmenistan', '588360', 'Ap #230-7674 Eu Ave'),
(159, '12381', '311-2554 Elementum Rd.', 'Uruguay', '20206', 'P.O. Box 851, 7570 Lorem, St.'),
(160, '80097', '379 Egestas Rd.', 'Brazil', '22655', '2207 Dolor Road'),
(161, '59649', 'P.O. Box 595, 9820 A St.', 'Timor-Leste', '52138', 'P.O. Box 913, 6215 Integer Street'),
(162, '09030', 'P.O. Box 898, 1000 Donec Rd.', 'Mali', '2111', 'Ap #504-463 Id, Ave'),
(163, '72920', 'P.O. Box 130, 8480 Orci, St.', 'Anguilla', 'Z4863', 'P.O. Box 421, 7954 Tincidunt Av.'),
(164, '42255', 'Ap #297-3740 Molestie St.', 'Rwanda', '038939', '1404 Sem. Rd.'),
(165, '14201', 'Ap #991-728 Molestie Rd.', 'Korea, South', '786224', '919-8547 Pede. Rd.'),
(166, '96323', 'Ap #452-1443 Turpis St.', 'Madagascar', '4097', '568-1564 Ultricies St.'),
(167, '11563', 'P.O. Box 211, 7086 Montes, Rd.', 'Egypt', '249500', 'Ap #893-1495 Penatibus Rd.'),
(168, '20039', 'Ap #855-2072 Sed Road', 'Belgium', '8358', '786-4892 Fames St.'),
(169, '24066', 'P.O. Box 567, 2411 Suspendisse Rd.', 'Morocco', '9687', 'Ap #606-4173 Id Ave'),
(170, '24382', '324-4602 Ut, Rd.', 'Sweden', '713058', '810-4390 Nisi Avenue'),
(171, '99011', 'P.O. Box 277, 4979 Pellentesque St.', 'Jersey', '59781', '616-8491 Tellus. Street'),
(172, '79000', 'P.O. Box 424, 3868 Faucibus. Ave', 'Uruguay', '44176', '2560 Ante Rd.'),
(173, '14034', '6788 Posuere, St.', 'Vanuatu', '20703', '3929 Mauris. Av.'),
(174, '03516', '2091 Aliquam St.', 'Sao Tome and Principe', '94872-24687', '786 Imperdiet St.'),
(175, '30798', 'P.O. Box 536, 1411 Velit Rd.', 'Falkland Islands', '52409', 'P.O. Box 106, 5146 Non Rd.'),
(176, '44675', '1634 Proin Ave', 'Belarus', '04133', '521-6869 Semper St.'),
(177, '65454', 'P.O. Box 682, 1560 Vivamus St.', 'Israel', '92977-451', '8269 Orci, St.'),
(178, '23444', '298-8345 Pede Street', 'Madagascar', '62432', '688 Ligula Street'),
(179, '94060', 'Ap #764-8013 In Av.', 'Turks and Caicos Islands', '23173', '552-6565 Nullam Street'),
(180, '35215', 'P.O. Box 573, 8720 Tincidunt, St.', 'Pitcairn Islands', '75154', '924 Curabitur Street'),
(181, '94467', 'Ap #807-4097 Nisl. Avenue', 'Greece', '837986', '4019 Sem, Road'),
(182, '88107', 'P.O. Box 331, 9829 Convallis Road', 'Nicaragua', 'YL22 5EV', 'P.O. Box 712, 8440 Tellus Rd.'),
(183, '90136', 'P.O. Box 900, 7430 Sapien, Road', 'Bulgaria', '28607', '7118 Massa Street'),
(184, '41338', '4117 Pellentesque. Rd.', 'Kuwait', '49592', 'P.O. Box 677, 8685 Lectus Road'),
(185, '23266', 'P.O. Box 405, 2770 Proin Rd.', 'British Indian Ocean Territory', '92260', 'Ap #619-6725 At Street'),
(186, '84475', 'Ap #787-5679 At, Avenue', 'Wallis and Futuna', 'Z9847', '3598 Praesent Rd.'),
(187, '62642', 'P.O. Box 661, 8720 Auctor Avenue', 'Afghanistan', '47135-37326', 'P.O. Box 408, 9213 Mi Road'),
(188, '84600', 'P.O. Box 832, 2338 Euismod Rd.', 'Jordan', '31311', 'Ap #624-4930 Ornare. Rd.'),
(189, '95070', '664-9711 Felis. Street', 'Myanmar', '2559 EG', 'P.O. Box 105, 4571 Felis Road'),
(190, '02339', '110-597 Natoque Avenue', 'Iraq', '8910 XX', '8222 Eleifend. St.'),
(191, '54917', '659-8668 Lacus. Rd.', 'Åland Islands', '71713', 'P.O. Box 839, 8273 Morbi Ave'),
(192, '56755', '837-2927 Mauris. Rd.', 'Luxembourg', '60813', '772-8184 Posuere Avenue'),
(193, '56079', '6068 Massa Ave', 'Belarus', '28321-75647', 'P.O. Box 830, 5024 Enim, Street'),
(194, '61810', '705-1118 Ante. Road', 'Angola', '626690', '6450 Enim Road'),
(195, '33951', '616-5807 Vulputate, Street', 'Chile', '53642', '623 Ipsum Street'),
(196, '76011', 'P.O. Box 325, 2633 Ligula. Street', 'New Caledonia', '44731', 'P.O. Box 232, 3618 Non, Street'),
(197, '94682', '8987 Cursus St.', 'Togo', '02404', '1714 Et Rd.'),
(198, '80743', '5548 Felis Ave', 'United Arab Emirates', '3538', 'P.O. Box 793, 6607 Quisque Ave'),
(199, '22167', '495-5703 Justo St.', 'Estonia', '94123', '5504 Ultrices Rd.'),
(200, '19056', 'P.O. Box 980, 2264 Malesuada Road', 'Mexico', 'J2 1ZB', 'Ap #715-2037 Eget, Street');

-- --------------------------------------------------------

--
-- Structure de la table `affectationhisto`
--

DROP TABLE IF EXISTS `affectationhisto`;
CREATE TABLE IF NOT EXISTS `affectationhisto` (
  `idAffectation` int(11) NOT NULL,
  `idDemande` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `idAgent` int(11) NOT NULL,
  PRIMARY KEY (`idAffectation`),
  KEY `ct4` (`idAdmin`),
  KEY `ct5` (`idAgent`),
  KEY `ct6` (`idDemande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `IdCompte` int(11) NOT NULL AUTO_INCREMENT,
  `numCompte` varchar(255) NOT NULL,
  `solde` float NOT NULL,
  `IdClient` int(11) NOT NULL,
  `dateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rib` varchar(255) NOT NULL,
  `tauxAGIOS` float NOT NULL,
  `autorisationDecouvert` tinyint(1) NOT NULL,
  `plafondDecouvert` float NOT NULL,
  `tauxInterets` float NOT NULL,
  `seuilMinRemu` float NOT NULL,
  PRIMARY KEY (`IdCompte`),
  KEY `cts13` (`IdClient`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`IdCompte`, `numCompte`, `solde`, `IdClient`, `dateCreation`, `rib`, `tauxAGIOS`, `autorisationDecouvert`, `plafondDecouvert`, `tauxInterets`, `seuilMinRemu`) VALUES
(1, 'S6I 0N7', 9, 0, '2020-01-23 15:22:17', '5', 6, 3, 10, 7, 4),
(2, 'W1K 4E3', 1, 0, '2020-01-23 15:22:17', '1', 7, 2, 2, 1, 6),
(3, 'F0B 4E2', 9, 0, '2020-01-23 15:22:17', '8', 2, 3, 5, 2, 9),
(4, 'O1E 6X3', 7, 0, '2020-01-23 15:22:17', '7', 2, 2, 10, 9, 9),
(5, 'P2P 7C2', 9, 0, '2020-01-23 15:22:17', '9', 1, 5, 6, 10, 6),
(6, 'C0P 4D8', 7, 0, '2020-01-23 15:22:17', '8', 4, 1, 5, 4, 7),
(7, 'Q9F 4Q4', 2, 0, '2020-01-23 15:22:17', '9', 3, 4, 9, 3, 8),
(8, 'I0X 2Y2', 5, 0, '2020-01-23 15:22:17', '9', 3, 4, 6, 5, 9),
(9, 'Z2O 1U3', 5, 0, '2020-01-23 15:22:17', '8', 2, 1, 5, 1, 7),
(10, 'J1V 3H2', 8, 0, '2020-01-23 15:22:17', '9', 4, 1, 6, 9, 5),
(11, 'B3X 0F5', 1, 0, '2020-01-23 15:22:17', '6', 6, 1, 3, 4, 8),
(12, 'H5T 7V7', 1, 0, '2020-01-23 15:22:17', '5', 8, 5, 7, 8, 2),
(13, 'A0X 7M1', 8, 0, '2020-01-23 15:22:17', '5', 10, 4, 4, 1, 2),
(14, 'D6B 9D4', 8, 0, '2020-01-23 15:22:17', '8', 4, 1, 2, 7, 10),
(15, 'T5T 3Q2', 4, 0, '2020-01-23 15:22:17', '3', 3, 4, 2, 6, 6),
(16, 'W6E 6L0', 7, 0, '2020-01-23 15:22:17', '7', 8, 5, 2, 5, 8),
(17, 'S0V 3N8', 8, 0, '2020-01-23 15:22:17', '6', 10, 5, 3, 4, 1),
(18, 'F3X 8Y5', 1, 0, '2020-01-23 15:22:17', '10', 8, 5, 6, 5, 8),
(19, 'K5L 1U0', 8, 0, '2020-01-23 15:22:17', '10', 3, 5, 4, 4, 7),
(20, 'F4Z 5T8', 1, 0, '2020-01-23 15:22:17', '6', 3, 1, 2, 1, 5),
(21, 'L2T 3A4', 2, 0, '2020-01-23 15:22:17', '8', 2, 4, 9, 1, 3),
(22, 'B3B 0E4', 7, 0, '2020-01-23 15:22:17', '7', 9, 2, 9, 3, 1),
(23, 'J7M 2G6', 10, 0, '2020-01-23 15:22:17', '8', 9, 2, 4, 8, 3),
(24, 'X4Z 0P8', 2, 0, '2020-01-23 15:22:17', '4', 4, 3, 6, 1, 3),
(25, 'S9T 2V3', 9, 0, '2020-01-23 15:22:17', '10', 3, 1, 4, 4, 7),
(26, 'Z6I 9O6', 10, 0, '2020-01-23 15:22:17', '3', 7, 3, 7, 2, 3),
(27, 'Y0T 8K5', 1, 0, '2020-01-23 15:22:17', '10', 8, 2, 10, 2, 3),
(28, 'S6R 0C0', 6, 0, '2020-01-23 15:22:17', '3', 6, 2, 1, 10, 10),
(29, 'E8V 8I0', 7, 0, '2020-01-23 15:22:17', '8', 1, 3, 4, 7, 7),
(30, 'C1T 0X9', 2, 0, '2020-01-23 15:22:17', '9', 5, 2, 4, 1, 6),
(31, 'P4R 1A0', 3, 0, '2020-01-23 15:22:17', '3', 10, 3, 10, 1, 9),
(32, 'Z3V 8X1', 7, 0, '2020-01-23 15:22:17', '10', 2, 1, 1, 3, 4),
(33, 'B0G 8I0', 6, 0, '2020-01-23 15:22:17', '7', 4, 5, 10, 4, 10),
(34, 'L6D 5I1', 10, 0, '2020-01-23 15:22:17', '2', 10, 2, 5, 8, 6),
(35, 'S7S 0I2', 7, 0, '2020-01-23 15:22:17', '6', 1, 5, 5, 10, 3),
(36, 'R7U 3C4', 5, 0, '2020-01-23 15:22:17', '5', 5, 5, 7, 8, 3),
(37, 'W1N 9K5', 9, 0, '2020-01-23 15:22:17', '7', 9, 4, 6, 1, 3),
(38, 'H0Y 5N1', 6, 0, '2020-01-23 15:22:17', '1', 8, 5, 2, 1, 1),
(39, 'C1O 5D2', 8, 0, '2020-01-23 15:22:17', '5', 2, 2, 1, 5, 1),
(40, 'F3O 8Z5', 10, 0, '2020-01-23 15:22:17', '9', 2, 1, 5, 8, 2),
(41, 'V8K 9B9', 6, 0, '2020-01-23 15:22:17', '6', 4, 2, 3, 1, 5),
(42, 'H5P 7T1', 9, 0, '2020-01-23 15:22:17', '3', 10, 4, 5, 5, 1),
(43, 'K1W 7P9', 10, 0, '2020-01-23 15:22:17', '3', 4, 2, 4, 5, 3),
(44, 'U9E 1M2', 5, 0, '2020-01-23 15:22:17', '7', 8, 1, 8, 10, 2),
(45, 'F6Y 2N6', 9, 0, '2020-01-23 15:22:17', '4', 1, 2, 2, 6, 2),
(46, 'S2U 6C1', 1, 0, '2020-01-23 15:22:17', '9', 3, 2, 8, 7, 6),
(47, 'K9X 8S8', 9, 0, '2020-01-23 15:22:17', '8', 5, 2, 10, 3, 3),
(48, 'T7I 2U3', 9, 0, '2020-01-23 15:22:17', '1', 9, 2, 8, 3, 10),
(49, 'Z3A 1M0', 10, 0, '2020-01-23 15:22:17', '10', 4, 1, 4, 6, 3),
(50, 'S5H 5P8', 6, 0, '2020-01-23 15:22:17', '2', 4, 1, 4, 7, 7),
(51, 'S1H 5I7', 7, 0, '2020-01-23 15:22:17', '7', 5, 4, 6, 3, 3),
(52, 'W9K 4S5', 8, 0, '2020-01-23 15:22:17', '10', 1, 5, 7, 4, 9),
(53, 'F9N 3F7', 4, 0, '2020-01-23 15:22:17', '5', 8, 4, 4, 6, 3),
(54, 'T3W 8A9', 4, 0, '2020-01-23 15:22:17', '1', 4, 4, 2, 10, 9),
(55, 'C3O 9E7', 9, 0, '2020-01-23 15:22:17', '9', 3, 1, 2, 2, 9),
(56, 'A7H 5U7', 5, 0, '2020-01-23 15:22:17', '5', 5, 2, 9, 4, 4),
(57, 'Z9A 9Q7', 5, 0, '2020-01-23 15:22:17', '8', 2, 4, 7, 1, 5),
(58, 'X8T 8U1', 7, 0, '2020-01-23 15:22:17', '5', 6, 4, 10, 2, 7),
(59, 'X0C 5S8', 2, 0, '2020-01-23 15:22:17', '1', 5, 1, 9, 10, 10),
(60, 'Q8F 7P2', 3, 0, '2020-01-23 15:22:17', '9', 10, 1, 3, 9, 9),
(61, 'M1K 3D4', 5, 0, '2020-01-23 15:22:17', '9', 1, 1, 6, 5, 8),
(62, 'L4S 8P8', 7, 0, '2020-01-23 15:22:17', '1', 3, 3, 7, 7, 5),
(63, 'K9Z 0Y3', 3, 0, '2020-01-23 15:22:17', '4', 1, 4, 8, 9, 8),
(64, 'C7J 1B8', 10, 0, '2020-01-23 15:22:17', '9', 1, 4, 1, 2, 6),
(65, 'K7D 3J6', 10, 0, '2020-01-23 15:22:17', '5', 2, 4, 9, 10, 1),
(66, 'Y8A 0F3', 3, 0, '2020-01-23 15:22:17', '1', 4, 4, 8, 7, 9),
(67, 'O2I 4Y3', 2, 0, '2020-01-23 15:22:17', '5', 8, 4, 6, 8, 3),
(68, 'Y4G 1E6', 5, 0, '2020-01-23 15:22:17', '8', 7, 3, 10, 2, 3),
(69, 'A3U 9R2', 6, 0, '2020-01-23 15:22:17', '8', 10, 4, 7, 9, 10),
(70, 'E8W 6P1', 4, 0, '2020-01-23 15:22:17', '5', 9, 4, 2, 4, 3),
(71, 'S0Z 9S0', 2, 0, '2020-01-23 15:22:17', '5', 2, 1, 6, 10, 6),
(72, 'E2J 8X2', 9, 0, '2020-01-23 15:22:17', '2', 3, 1, 1, 8, 4),
(73, 'E5A 6X8', 4, 0, '2020-01-23 15:22:17', '4', 5, 2, 9, 8, 1),
(74, 'K5C 0S5', 4, 0, '2020-01-23 15:22:17', '4', 5, 4, 4, 10, 5),
(75, 'I1L 1L6', 1, 0, '2020-01-23 15:22:17', '3', 2, 4, 2, 3, 10),
(76, 'M6Z 7R0', 6, 0, '2020-01-23 15:22:17', '1', 2, 1, 2, 3, 10),
(77, 'X6X 2D2', 3, 0, '2020-01-23 15:22:17', '10', 6, 3, 6, 4, 10),
(78, 'O7E 7F2', 8, 0, '2020-01-23 15:22:17', '2', 5, 3, 4, 6, 8),
(79, 'M1E 7L5', 3, 0, '2020-01-23 15:22:17', '1', 6, 5, 5, 4, 1),
(80, 'L7Y 6G8', 6, 0, '2020-01-23 15:22:17', '4', 5, 2, 9, 10, 8),
(81, 'T7V 2D1', 5, 0, '2020-01-23 15:22:17', '5', 7, 2, 4, 8, 10),
(82, 'R7C 9W9', 6, 0, '2020-01-23 15:22:17', '9', 7, 2, 3, 1, 7),
(83, 'H3V 3N7', 9, 0, '2020-01-23 15:22:17', '1', 5, 1, 5, 9, 1),
(84, 'I8N 5T5', 9, 0, '2020-01-23 15:22:17', '8', 2, 4, 9, 5, 9),
(85, 'N3M 4G4', 6, 0, '2020-01-23 15:22:17', '1', 6, 4, 1, 5, 10),
(86, 'B5O 3A2', 8, 0, '2020-01-23 15:22:17', '2', 9, 4, 6, 3, 7),
(87, 'W5A 9K7', 7, 0, '2020-01-23 15:22:17', '7', 1, 4, 1, 1, 3),
(88, 'H2X 4P5', 6, 0, '2020-01-23 15:22:17', '2', 6, 2, 4, 9, 2),
(89, 'S1Y 6E8', 8, 0, '2020-01-23 15:22:17', '1', 5, 1, 7, 4, 6),
(90, 'R4V 3P6', 4, 0, '2020-01-23 15:22:17', '9', 10, 5, 5, 1, 2),
(91, 'W3A 1T3', 3, 0, '2020-01-23 15:22:17', '10', 1, 3, 8, 3, 2),
(92, 'L1D 8H4', 4, 0, '2020-01-23 15:22:17', '6', 7, 4, 10, 1, 10),
(93, 'B4C 8E3', 3, 0, '2020-01-23 15:22:17', '4', 4, 3, 3, 3, 9),
(94, 'F8Z 8A2', 9, 0, '2020-01-23 15:22:17', '2', 8, 2, 8, 9, 2),
(95, 'L5I 9P4', 6, 0, '2020-01-23 15:22:17', '10', 2, 1, 2, 4, 9),
(96, 'D5V 4I4', 7, 0, '2020-01-23 15:22:17', '1', 8, 5, 9, 4, 6),
(97, 'R8Z 5E5', 1, 0, '2020-01-23 15:22:17', '9', 2, 3, 10, 10, 4),
(98, 'T6T 1O9', 6, 0, '2020-01-23 15:22:17', '1', 9, 3, 7, 6, 4),
(99, 'D0A 1P7', 9, 0, '2020-01-23 15:22:17', '2', 8, 5, 7, 4, 1),
(100, 'Z0R 8C4', 1, 0, '2020-01-23 15:22:17', '8', 5, 4, 8, 8, 7);

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

DROP TABLE IF EXISTS `demande`;
CREATE TABLE IF NOT EXISTS `demande` (
  `IDDemande` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `dateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `demandeChequier` tinyint(1) NOT NULL,
  `demandeCloture` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDDemande`),
  KEY `cts11` (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `justificatif`
--

DROP TABLE IF EXISTS `justificatif`;
CREATE TABLE IF NOT EXISTS `justificatif` (
  `IdJustificatif` int(11) NOT NULL AUTO_INCREMENT,
  `justificatif` longblob NOT NULL,
  `IDDemande` int(11) NOT NULL,
  PRIMARY KEY (`IdJustificatif`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `IdNotification` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `dateNotification` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idAgent` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idTransaction` int(11) NOT NULL,
  PRIMARY KEY (`IdNotification`),
  KEY `cts8` (`idClient`),
  KEY `cts9` (`idAgent`),
  KEY `cts10` (`idTransaction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `IdRole` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`IdRole`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `IdTransaction` int(11) NOT NULL AUTO_INCREMENT,
  `numCompte` int(11) NOT NULL,
  `numTransaction` int(11) NOT NULL,
  `dateEmission` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `typeTransaction` varchar(255) NOT NULL,
  `idVirement` int(11) NOT NULL,
  PRIMARY KEY (`IdTransaction`),
  KEY `cts15` (`numCompte`),
  KEY `cts16` (`idVirement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `IdRole` int(11) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `idNotification` int(11) NOT NULL,
  `idBoss` int(11) NOT NULL,
  `idVisaVis` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `cst1` (`IdRole`),
  KEY `ct2` (`idBoss`),
  KEY `ct3` (`idVisaVis`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID`, `login`, `password`, `nom`, `prenom`, `email`, `telephone`, `IdRole`, `matricule`, `idNotification`, `idBoss`, `idVisaVis`) VALUES
(1, 'xxxxx', 'VPT87EQY4AT', 'Macaulay', 'Simon Paris', 'Cras.interdum@velnislQuisque.net', 6, 0, 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.', 0, 0, 0),
(2, 'xxxxx', 'UES17OFL7XV', 'Charles', 'Loevan Muller', 'Sed@massa.com', 1, 0, 'diam vel arcu. Curabitur ut odio vel est tempor bibendum.', 0, 0, 0),
(3, 'xxxxx', 'WXZ43FKX4HA', 'Herman', 'Cédric Adam', 'Maecenas@cursuspurusNullam.org', 2, 0, 'quam. Pellentesque habitant morbi tristique senectus et netus et malesuada', 0, 0, 0),
(4, 'xxxxx', 'ETL02PTU2CO', 'Zephania', 'Adrien Baron', 'Nulla.eu.neque@risus.ca', 6, 0, 'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', 0, 0, 0),
(5, 'xxxxx', 'VFL41XXM0AD', 'Hoyt', 'Yohan Mallet', 'arcu.Vestibulum.ut@velconvallisin.co.uk', 6, 0, 'neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.', 0, 0, 0),
(6, 'xxxxx', 'MKY17SQU2KH', 'Eric', 'Bruno Aubert', 'tempor.augue@pedemalesuada.ca', 5, 0, 'amet nulla. Donec non justo. Proin non massa non ante', 0, 0, 0),
(7, 'xxxxx', 'EKI43PQG0VA', 'Jerome', 'Lucas Dubois', 'elit.a@lectus.co.uk', 6, 0, 'lectus. Cum sociis natoque penatibus et magnis dis parturient montes,', 0, 0, 0),
(8, 'xxxxx', 'LDH43USG4JW', 'Dieter', 'Gaspard Huet', 'at.sem@euodioPhasellus.com', 1, 0, 'eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis', 0, 0, 0),
(9, 'xxxxx', 'YON94VNC8ET', 'Hamish', 'Pierre Fontaine', 'et@Lorem.ca', 4, 0, 'Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non', 0, 0, 0),
(10, 'xxxxx', 'MXR65WLC1CF', 'Alfonso', 'Kilian Philippe', 'amet@facilisisSuspendisse.org', 6, 0, 'mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla', 0, 0, 0),
(11, 'xxxxx', 'KDB15LOT5EM', 'Hashim', 'Mathis Boucher', 'nulla.Integer.urna@risusNuncac.ca', 4, 0, 'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit.', 0, 0, 0),
(12, 'xxxxx', 'ZFS52QFH1DW', 'Roth', 'Lorenzo Rey', 'ornare.placerat.orci@in.ca', 8, 0, 'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin', 0, 0, 0),
(13, 'xxxxx', 'MEM00RQE7NU', 'Seth', 'Jordan Bourgeois', 'dui.Cum.sociis@acfeugiatnon.com', 1, 0, 'elit sed consequat auctor, nunc nulla vulputate dui, nec tempus', 0, 0, 0),
(14, 'xxxxx', 'HDG45URX2OX', 'Andrew', 'Lilian Bertrand', 'In@odio.co.uk', 2, 0, 'non massa non ante bibendum ullamcorper. Duis cursus, diam at', 0, 0, 0),
(15, 'xxxxx', 'MSH12VIF1WS', 'Benjamin', 'Macéo Pereira', 'id.magna.et@Nullatincidunt.net', 1, 0, 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum,', 0, 0, 0),
(16, 'xxxxx', 'XSV82SYV7YB', 'Castor', 'Marwane Gauthier', 'tristique.senectus.et@ettristique.co.uk', 7, 0, 'vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id', 0, 0, 0),
(17, 'xxxxx', 'MYX11PPK6IW', 'Paul', 'Lucas Jean', 'Quisque.ac@dolordapibusgravida.net', 9, 0, 'non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris', 0, 0, 0),
(18, 'xxxxx', 'CEZ70PTN0GU', 'Wade', 'Quentin Blanc', 'Fusce.fermentum.fermentum@variuseteuismod.com', 9, 0, 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,', 0, 0, 0),
(19, 'xxxxx', 'KIW91WDZ3ZQ', 'Chaim', 'Adam Leclerc', 'sagittis.Duis.gravida@eu.org', 1, 0, 'ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat', 0, 0, 0),
(20, 'xxxxx', 'JHV54BJC4IF', 'Lane', 'Baptiste Bernard', 'ante.lectus.convallis@semegestasblandit.co.uk', 5, 0, 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 0, 0, 0),
(21, 'xxxxx', 'OPD46TAN1SM', 'Abbot', 'Léon Philippe', 'sagittis.lobortis.mauris@sollicitudinorcisem.com', 3, 0, 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique', 0, 0, 0),
(22, 'xxxxx', 'OIC25VIJ8KJ', 'Victor', 'Gabriel Robin', 'euismod.enim@anuncIn.edu', 3, 0, 'morbi tristique senectus et netus et malesuada fames ac turpis', 0, 0, 0),
(23, 'xxxxx', 'BIE53OST5RD', 'Silas', 'Davy Perrin', 'arcu.Vestibulum.ut@pedeSuspendissedui.co.uk', 1, 0, 'ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed', 0, 0, 0),
(24, 'xxxxx', 'BFI59YPZ2KM', 'Rahim', 'Victor Rodriguez', 'egestas.a@erat.net', 7, 0, 'ac metus vitae velit egestas lacinia. Sed congue, elit sed', 0, 0, 0),
(25, 'xxxxx', 'GCL71PQK8GB', 'Harlan', 'Romain Denis', 'vitae@interdumliberodui.net', 1, 0, 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi', 0, 0, 0),
(26, 'xxxxx', 'UXJ73RCR7VP', 'Zeph', 'Esteban Lemaire', 'semper.rutrum.Fusce@auguemalesuadamalesuada.com', 9, 0, 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', 0, 0, 0),
(27, 'xxxxx', 'YJU69FOL0LY', 'Elvis', 'Timothée Nguyen', 'Mauris.molestie@consectetuerrhoncus.com', 2, 0, 'sit amet, dapibus id, blandit at, nisi. Cum sociis natoque', 0, 0, 0),
(28, 'xxxxx', 'RUK94ZJS4OA', 'Xanthus', 'Léo Henry', 'ullamcorper.Duis@idmollisnec.org', 1, 0, 'ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus', 0, 0, 0),
(29, 'xxxxx', 'KRN96OUJ2HK', 'Dustin', 'Adrien Daniel', 'eget@Cumsociis.org', 6, 0, 'in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus', 0, 0, 0),
(30, 'xxxxx', 'PON75DEC2CO', 'Graham', 'Léon Humbert', 'nunc@Fuscefeugiat.edu', 4, 0, 'Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum.', 0, 0, 0),
(31, 'xxxxx', 'SLZ13MFH8SB', 'Jelani', 'Antoine Gerard', 'Nam.porttitor@aliquameros.net', 3, 0, 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', 0, 0, 0),
(32, 'xxxxx', 'NQC44XVK2AN', 'Reese', 'Yanis Sanchez', 'Fusce.dolor.quam@Vestibulumante.net', 7, 0, 'laoreet, libero et tristique pellentesque, tellus sem mollis dui, in', 0, 0, 0),
(33, 'xxxxx', 'JHH28WTQ2XW', 'Orson', 'Enzo Dupuis', 'in@turpisegestas.edu', 6, 0, 'et nunc. Quisque ornare tortor at risus. Nunc ac sem', 0, 0, 0),
(34, 'xxxxx', 'YTM76LPD1WB', 'Quentin', 'Rémi Meyer', 'faucibus@Phasellusdolor.ca', 1, 0, 'pede et risus. Quisque libero lacus, varius et, euismod et,', 0, 0, 0),
(35, 'xxxxx', 'JIQ42MZZ0HR', 'Vaughan', 'Kylian Marchand', 'quis.lectus@accumsanconvallisante.co.uk', 9, 0, 'nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor', 0, 0, 0),
(36, 'xxxxx', 'OPL20GKD0FK', 'Yuli', 'Louis Benoit', 'conubia.nostra.per@vel.edu', 5, 0, 'nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor', 0, 0, 0),
(37, 'xxxxx', 'AJA46URS4OX', 'Rahim', 'Nicolas Germain', 'sem.magna@variusorciin.net', 4, 0, 'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas', 0, 0, 0),
(38, 'xxxxx', 'NMO31YTQ8XB', 'Tyler', 'Simon Leroux', 'nibh.enim@montesnascetur.com', 3, 0, 'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut', 0, 0, 0),
(39, 'xxxxx', 'PNB70PPC4MA', 'Cody', 'Antonin Dupont', 'lectus.sit.amet@erateget.co.uk', 3, 0, 'Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,', 0, 0, 0),
(40, 'xxxxx', 'VSK14YSU6HL', 'Tiger', 'Tristan Boucher', 'odio@nonsapienmolestie.edu', 3, 0, 'Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc', 0, 0, 0),
(41, 'xxxxx', 'NIS98OPH1OB', 'Gabriel', 'Aaron Gillet', 'imperdiet.ullamcorper@idrisus.edu', 6, 0, 'imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 0, 0, 0),
(42, 'xxxxx', 'BUB68DWG6MB', 'Geoffrey', 'Thomas Masson', 'Proin.non.massa@montes.net', 3, 0, 'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque', 0, 0, 0),
(43, 'xxxxx', 'AVR93WFM9HV', 'Gray', 'Clément Brunet', 'vehicula.et@nonmagna.net', 4, 0, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 0, 0, 0),
(44, 'xxxxx', 'PIM99SKD1AL', 'Vance', 'Alexis Mallet', 'dolor@nonlaciniaat.co.uk', 5, 0, 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla', 0, 0, 0),
(45, 'xxxxx', 'PMH77GET3OJ', 'Dolan', 'Pierre Andre', 'iaculis.quis.pede@pede.net', 7, 0, 'ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et', 0, 0, 0),
(46, 'xxxxx', 'JCM98NPH0FR', 'Lyle', 'Enzo Andre', 'tincidunt.vehicula@ametconsectetueradipiscing.org', 3, 0, 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', 0, 0, 0),
(47, 'xxxxx', 'TLM59JTS4GY', 'Erich', 'Nicolas Mercier', 'in@Aliquamrutrumlorem.org', 6, 0, 'Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie', 0, 0, 0),
(48, 'xxxxx', 'VPJ53GAG5WX', 'Armando', 'Bruno Andre', 'nisl.Maecenas@erat.com', 4, 0, 'est tempor bibendum. Donec felis orci, adipiscing non, luctus sit', 0, 0, 0),
(49, 'xxxxx', 'JEC57BNZ2KP', 'Carlos', 'Élouan Garcia', 'Phasellus@Aeneaneuismodmauris.net', 2, 0, 'eros non enim commodo hendrerit. Donec porttitor tellus non magna.', 0, 0, 0),
(50, 'xxxxx', 'YAC38FMW7VM', 'Curran', 'Roméo Marie', 'dignissim.magna.a@blanditcongue.co.uk', 6, 0, 'dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 0, 0, 0),
(51, 'xxxxx', 'KLW85PLG0FB', 'Dolan', 'Corentin Lucas', 'imperdiet.ornare.In@aliquam.ca', 7, 0, 'Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam', 0, 0, 0),
(52, 'xxxxx', 'GIK55HFY3FD', 'Keefe', 'Marwane Blanc', 'ante@necmalesuadaut.ca', 6, 0, 'dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus', 0, 0, 0),
(53, 'xxxxx', 'KXF01AXA9DE', 'Phelan', 'Evan Giraud', 'aliquet.diam@ipsumCurabitur.co.uk', 4, 0, 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam', 0, 0, 0),
(54, 'xxxxx', 'RPI74CMQ4CJ', 'Abbot', 'Samuel Gomez', 'Nulla.semper@enimnon.org', 1, 0, 'sit amet ultricies sem magna nec quam. Curabitur vel lectus.', 0, 0, 0),
(55, 'xxxxx', 'VXM00CZS4EA', 'Fulton', 'Pierre Renard', 'a.feugiat.tellus@massaMauris.org', 2, 0, 'Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.', 0, 0, 0),
(56, 'xxxxx', 'USA47QOE6FV', 'Kennan', 'Marwane Martin', 'sit@volutpatNullafacilisis.com', 4, 0, 'ipsum sodales purus, in molestie tortor nibh sit amet orci.', 0, 0, 0),
(57, 'xxxxx', 'ENG59JYU0KR', 'Alexander', 'Tristan Mathieu', 'quis.pede.Suspendisse@NulladignissimMaecenas.org', 6, 0, 'augue ac ipsum. Phasellus vitae mauris sit amet lorem semper', 0, 0, 0),
(58, 'xxxxx', 'TTV85LDU6OO', 'Fulton', 'Robin Michel', 'vel@amet.net', 2, 0, 'libero et tristique pellentesque, tellus sem mollis dui, in sodales', 0, 0, 0),
(59, 'xxxxx', 'HHZ59GEZ1IC', 'Rajah', 'Antoine Herve', 'erat.volutpat@vulputate.co.uk', 4, 0, 'nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,', 0, 0, 0),
(60, 'xxxxx', 'QDP53OGA9FJ', 'Harper', 'Samuel Meunier', 'at@nibhDonecest.ca', 3, 0, 'mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.', 0, 0, 0),
(61, 'xxxxx', 'YIM76GAZ8FK', 'Dylan', 'Robin Paul', 'ac.orci.Ut@commodohendreritDonec.co.uk', 3, 0, 'cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum', 0, 0, 0),
(62, 'xxxxx', 'AEC09XAX1ZH', 'Demetrius', 'Macéo Nguyen', 'non@eusemPellentesque.co.uk', 2, 0, 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim', 0, 0, 0),
(63, 'xxxxx', 'PCY11YUM0PA', 'Jerome', 'Anthony Gillet', 'vulputate.lacus.Cras@eleifendCrassed.co.uk', 4, 0, 'eu augue porttitor interdum. Sed auctor odio a purus. Duis', 0, 0, 0),
(64, 'xxxxx', 'SLZ62KKD3BM', 'Edan', 'Mattéo Fleury', 'nec.imperdiet.nec@inhendreritconsectetuer.ca', 4, 0, 'euismod est arcu ac orci. Ut semper pretium neque. Morbi', 0, 0, 0),
(65, 'xxxxx', 'BTF11ULS3LF', 'Cairo', 'Léonard Blanc', 'eget@ligula.ca', 6, 0, 'Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.', 0, 0, 0),
(66, 'xxxxx', 'JGW55WMG3QI', 'Bradley', 'Bruno Lopez', 'sit@Nullatemporaugue.net', 7, 0, 'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.', 0, 0, 0),
(67, 'xxxxx', 'YOV85TJO9QH', 'Alec', 'Yanis Garnier', 'nec.metus.facilisis@egetodio.co.uk', 1, 0, 'euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet,', 0, 0, 0),
(68, 'xxxxx', 'MUQ69LKN6OK', 'Kasper', 'Léon Dubois', 'nascetur.ridiculus@euismodac.ca', 1, 0, 'aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,', 0, 0, 0),
(69, 'xxxxx', 'LKV00MJZ9DU', 'Carson', 'Simon Dubois', 'lobortis@in.co.uk', 3, 0, 'sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam', 0, 0, 0),
(70, 'xxxxx', 'ANB28QWD0RO', 'Lev', 'Émile Marechal', 'convallis.erat.eget@euaugue.ca', 4, 0, 'rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', 0, 0, 0),
(71, 'xxxxx', 'HQZ31ZTQ4KN', 'Cadman', 'Léon Schmitt', 'enim@Quisqueornare.edu', 1, 0, 'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci', 0, 0, 0),
(72, 'xxxxx', 'IAC66UNV8CB', 'Ezekiel', 'Mathéo Meunier', 'odio@sollicitudinadipiscingligula.co.uk', 1, 0, 'nunc sed libero. Proin sed turpis nec mauris blandit mattis.', 0, 0, 0),
(73, 'xxxxx', 'GPF58JCA0XB', 'Raja', 'Diego Lemaire', 'vel.arcu@nonluctus.org', 6, 0, 'Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.', 0, 0, 0),
(74, 'xxxxx', 'YCC83QCH7NA', 'Abel', 'Thibault Pereira', 'ultrices.sit@nondui.ca', 6, 0, 'metus eu erat semper rutrum. Fusce dolor quam, elementum at,', 0, 0, 0),
(75, 'xxxxx', 'DPA24IOV4SO', 'Roth', 'Pierre Benoit', 'Aliquam@ametdapibus.com', 8, 0, 'Donec tincidunt. Donec vitae erat vel pede blandit congue. In', 0, 0, 0),
(76, 'xxxxx', 'WIB25JHT2CU', 'Jarrod', 'Bruno Jacob', 'arcu@semmollisdui.co.uk', 6, 0, 'Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,', 0, 0, 0),
(77, 'xxxxx', 'SWE12XUG6BM', 'Bradley', 'Gabriel Albert', 'ipsum.dolor.sit@volutpatNulladignissim.edu', 9, 0, 'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', 0, 0, 0),
(78, 'xxxxx', 'ORU88TEN8EH', 'Tiger', 'Dorian Colin', 'quam@Craseu.ca', 9, 0, 'Ut semper pretium neque. Morbi quis urna. Nunc quis arcu', 0, 0, 0),
(79, 'xxxxx', 'KZH67DTT0OD', 'Ralph', 'Yanis Marty', 'Cras.vehicula.aliquet@litoratorquent.edu', 8, 0, 'habitant morbi tristique senectus et netus et malesuada fames ac', 0, 0, 0),
(80, 'xxxxx', 'FVP91YYJ7JG', 'Jackson', 'Rémi Rousseau', 'tempor.lorem@ipsumcursusvestibulum.com', 7, 0, 'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', 0, 0, 0),
(81, 'xxxxx', 'CKU67NTQ7SX', 'Buckminster', 'Mathis Etienne', 'Sed@vitae.edu', 9, 0, 'Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc', 0, 0, 0),
(82, 'xxxxx', 'ITB82DQW3UN', 'Forrest', 'Dimitri Michel', 'et.risus@eleifend.edu', 8, 0, 'sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales.', 0, 0, 0),
(83, 'xxxxx', 'MVL67LFB6KM', 'Erich', 'Mathis Philippe', 'non@cubiliaCurae.com', 3, 0, 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.', 0, 0, 0),
(84, 'xxxxx', 'DLT83NBY9SP', 'Aquila', 'Macéo Roussel', 'consectetuer@felisadipiscingfringilla.net', 4, 0, 'nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 0, 0, 0),
(85, 'xxxxx', 'KZG74ZGG9UN', 'Graham', 'Samuel Philippe', 'libero.mauris@odioapurus.edu', 4, 0, 'montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', 0, 0, 0),
(86, 'xxxxx', 'NAR82XRB2GS', 'Aidan', 'Amine Lemaire', 'ac.mi.eleifend@Aenean.com', 7, 0, 'orci. Ut semper pretium neque. Morbi quis urna. Nunc quis', 0, 0, 0),
(87, 'xxxxx', 'YRY06GRU8EV', 'Trevor', 'Louis Masson', 'dictum.eleifend@liberoet.net', 8, 0, 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed', 0, 0, 0),
(88, 'xxxxx', 'CRB95LRJ9CP', 'Lane', 'Timothée Marie', 'nec.urna.suscipit@egestasblanditNam.co.uk', 7, 0, 'ac metus vitae velit egestas lacinia. Sed congue, elit sed', 0, 0, 0),
(89, 'xxxxx', 'HUR47BYI3DI', 'Dillon', 'Dimitri Leveque', 'lorem.tristique.aliquet@nuncsed.com', 7, 0, 'ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque.', 0, 0, 0),
(90, 'xxxxx', 'VUZ21HPM4EA', 'Marvin', 'Kevin Guerin', 'quis.diam@dolornonummyac.org', 8, 0, 'ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin', 0, 0, 0),
(91, 'xxxxx', 'PKP86SCT0HY', 'Ralph', 'Jordan Barre', 'egestas.blandit@viverra.com', 3, 0, 'odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', 0, 0, 0),
(92, 'xxxxx', 'PPK92YTG9FD', 'Merritt', 'Alexis Gay', 'sollicitudin.adipiscing.ligula@nisl.net', 3, 0, 'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,', 0, 0, 0),
(93, 'xxxxx', 'XZJ26UEK8MX', 'Alec', 'Hugo Dubois', 'ac.eleifend.vitae@estMauriseu.edu', 6, 0, 'sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', 0, 0, 0),
(94, 'xxxxx', 'NCT41MQS8NE', 'Elvis', 'Nathan Petit', 'placerat.eget.venenatis@at.co.uk', 2, 0, 'pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', 0, 0, 0),
(95, 'xxxxx', 'VIB99LWF3XM', 'Colt', 'Zacharis Olivier', 'imperdiet.nec.leo@Proin.com', 8, 0, 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat', 0, 0, 0),
(96, 'xxxxx', 'UZW22SWH9IY', 'Slade', 'Malik Aubert', 'Vivamus.nisi.Mauris@Proineget.org', 9, 0, 'Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,', 0, 0, 0),
(97, 'xxxxx', 'QOM89TQN3OB', 'Deacon', 'Timothée Meyer', 'ipsum@lobortis.net', 4, 0, 'ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo', 0, 0, 0),
(98, 'xxxxx', 'PFJ11DTS1UF', 'Carson', 'Noah Berger', 'gravida.mauris@Crassedleo.com', 4, 0, 'molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl', 0, 0, 0),
(99, 'xxxxx', 'PYC52XMM5XO', 'Richard', 'Valentin Gonzalez', 'elit@consectetuereuismodest.co.uk', 9, 0, 'nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', 0, 0, 0),
(100, 'xxxxx', 'BVS29CJX1EW', 'Michael', 'Noah Faure', 'aliquet.Phasellus.fermentum@arcuMorbisit.com', 6, 0, 'non quam. Pellentesque habitant morbi tristique senectus et netus et', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `virement`
--

DROP TABLE IF EXISTS `virement`;
CREATE TABLE IF NOT EXISTS `virement` (
  `IdVirement` int(11) NOT NULL AUTO_INCREMENT,
  `numCompteDeb` int(11) NOT NULL,
  `numCompteCred` int(11) NOT NULL,
  PRIMARY KEY (`IdVirement`),
  KEY `cts17` (`numCompteDeb`),
  KEY `cts18` (`numCompteCred`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

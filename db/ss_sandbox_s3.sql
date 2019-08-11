-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2019 at 09:37 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ss_sandbox_s3`
--

-- --------------------------------------------------------

--
-- Table structure for table `articlepage`
--

CREATE TABLE `articlepage` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Author` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `BrochureID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articlepage`
--

INSERT INTO `articlepage` (`ID`, `Date`, `Teaser`, `Author`, `PhotoID`, `BrochureID`) VALUES
(10, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers.', 'Vincent Trailblazer', 8, 0),
(11, '2019-08-01', NULL, 'Marissa Ross', 9, 0),
(12, '2019-08-03', NULL, 'Lonely Planet', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `articlepage_live`
--

CREATE TABLE `articlepage_live` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Author` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `BrochureID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articlepage_live`
--

INSERT INTO `articlepage_live` (`ID`, `Date`, `Teaser`, `Author`, `PhotoID`, `BrochureID`) VALUES
(10, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers.', 'Vincent Trailblazer', 8, 0),
(11, '2019-08-01', NULL, 'Marissa Ross', 9, 0),
(12, '2019-08-03', NULL, 'Lonely Planet', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `articlepage_versions`
--

CREATE TABLE `articlepage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Author` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `BrochureID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articlepage_versions`
--

INSERT INTO `articlepage_versions` (`ID`, `RecordID`, `Version`, `Date`, `Teaser`, `Author`, `PhotoID`, `BrochureID`) VALUES
(1, 10, 3, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers', NULL, 0, 0),
(2, 10, 4, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers', 'Vincent Trailblazer', 0, 0),
(3, 11, 3, '2019-08-01', 'If you only have a couple of days, a handful of essential sights shouldn’t be missed. The most important will be the ahu, the ceremonial platforms on which stand the moai. The figures originally had eyes of coral and obsidian; on the beach at Ahu Tahai near Hanga Roa, you will see how they looked thanks to a reconstruction.', NULL, 0, 0),
(4, 11, 4, '2019-08-01', 'If you only have a couple of days, a handful of essential sights shouldn’t be missed. The most important will be the ahu, the ceremonial platforms on which stand the moai. The figures originally had eyes of coral and obsidian; on the beach at Ahu Tahai near Hanga Roa, you will see how they looked thanks to a reconstruction.', 'Marissa Ross', 0, 0),
(5, 12, 3, '2019-08-03', 'After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.', 'Lonely Planet', 0, 0),
(6, 12, 4, '2019-08-03', NULL, 'Lonely Planet', 0, 0),
(7, 11, 5, '2019-08-01', NULL, 'Marissa Ross', 0, 0),
(8, 10, 5, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers.', 'Vincent Trailblazer', 0, 0),
(9, 10, 6, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers.', 'Vincent Trailblazer', 3, 0),
(10, 12, 5, '2019-08-03', NULL, 'Lonely Planet', 4, 0),
(11, 12, 6, '2019-08-03', NULL, 'Lonely Planet', 5, 0),
(12, 12, 7, '2019-08-03', NULL, 'Lonely Planet', 7, 0),
(13, 10, 7, '2019-07-30', 'A journey to Zimbabwe will take you through an attractive patchwork of landscapes, from highveld, balancing boulders and flaming msasa trees, to laidback towns, lush mountains and lifeblood rivers.', 'Vincent Trailblazer', 8, 0),
(14, 11, 6, '2019-08-01', NULL, 'Marissa Ross', 9, 0),
(15, 12, 8, '2019-08-03', NULL, 'Lonely Planet', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

CREATE TABLE `errorpage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(13, 404),
(14, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

CREATE TABLE `errorpage_live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(13, 404),
(14, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

CREATE TABLE `errorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500),
(3, 13, 1, 404),
(4, 14, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext DEFAULT NULL,
  `Content` mediumtext DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2019-08-10 13:26:56', '2019-08-10 13:26:56', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(6, 'Folder', '2019-08-11 15:58:27', '2019-08-11 15:58:27', 'travel-photos', 'travel-photos', 'assets/travel-photos/', NULL, 1, 0, 1),
(8, 'Image', '2019-08-11 16:23:20', '2019-08-11 16:23:20', 'zimbabwe.jpg', 'zimbabwe', 'assets/travel-photos/zimbabwe.jpg', NULL, 1, 6, 1),
(9, 'Image', '2019-08-11 16:23:40', '2019-08-11 16:23:40', 'easter-island.jpg', 'easter island', 'assets/travel-photos/easter-island.jpg', NULL, 1, 6, 1),
(10, 'Image', '2019-08-11 16:23:49', '2019-08-11 16:23:49', 'lima.jpg', 'lima', 'assets/travel-photos/lima.jpg', NULL, 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HtmlEditorConfig` mediumtext DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

CREATE TABLE `group_roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `PermissionRoleID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE `loginattempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `EmailHashed` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginattempt`
--

INSERT INTO `loginattempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `EmailHashed`, `Status`, `IP`, `MemberID`) VALUES
(1, 'LoginAttempt', '2019-08-10 12:27:13', '2019-08-10 12:27:13', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '::1', 1),
(2, 'LoginAttempt', '2019-08-10 12:27:23', '2019-08-10 12:27:23', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1),
(3, 'LoginAttempt', '2019-08-11 15:10:07', '2019-08-11 15:10:07', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT 0,
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT 0,
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2019-08-11 15:10:07', '2019-08-10 12:26:55', 'Default Admin', NULL, 'admin', 'e8d027536661a3f234ad108e1afbe9cb5413ef5a', '2019-08-14 15:10:07', '$2y$10$244305c6c795033e90993O4cKjYtHR/XnGgQkjrGV48RFxZNPtfQa', NULL, 3, '2019-08-11 18:53:08', NULL, NULL, 'blowfish', '10$244305c6c795033e90993a', NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE `memberpassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2019-08-10 12:26:56', '2019-08-10 12:26:56', '$2y$10$244305c6c795033e90993O4cKjYtHR/XnGgQkjrGV48RFxZNPtfQa', '10$244305c6c795033e90993a', 'blowfish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 1,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

CREATE TABLE `permissionrole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE `permissionrolecode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

CREATE TABLE `redirectorpage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

CREATE TABLE `redirectorpage_live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

CREATE TABLE `redirectorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2019-08-10 12:26:56', '2019-08-10 12:26:56', 'Your Site Name', 'your tagline here', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

CREATE TABLE `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

CREATE TABLE `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

CREATE TABLE `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

CREATE TABLE `sitetree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext DEFAULT NULL,
  `MetaDescription` mediumtext DEFAULT NULL,
  `ExtraMeta` mediumtext DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2019-08-11 15:56:54', '2019-08-10 12:26:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2019-08-11 15:56:54', '2019-08-10 12:26:55', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2019-08-11 15:56:54', '2019-08-10 15:09:42', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(7, 'Page', '2019-08-11 15:56:54', '2019-08-10 15:11:07', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(8, 'Page', '2019-08-11 15:56:54', '2019-08-10 15:11:46', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(9, 'ArticleHolder', '2019-08-11 15:56:54', '2019-08-10 15:12:22', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(10, 'ArticlePage', '2019-08-11 16:23:29', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 9),
(11, 'ArticlePage', '2019-08-11 16:23:42', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, '<p><span class=\"m_first-letter m_first-letter--flagged\">If you only have a couple of days, a handful of essential sights shouldn’t be missed. The most important will be the ahu, the ceremonial platforms on which stand the moai. The figures originally had eyes of coral and obsidian; on the beach at Ahu Tahai near Hanga Roa, you will see how they looked thanks to a reconstruction.</span></p><p><span class=\"m_first-letter m_first-letter--flagged\">T</span>he monolithic statues of Rapa Nui (<a href=\"https://www.telegraph.co.uk/travel/destinations/south-america/easter-island/hotels/\" target=\"_blank\">Easter Island</a>) called moai are sublimely beautiful works of art. Tall figures carved out of volcanic rock between the 11th and 14th centuries by Polynesian settlers, they have long, unsmiling faces, elegant, hawk-like noses and brooding brows. They can seem alienating or enthralling, depending on the angle, the light, your mood and the weather.</p><p>Rapa Nui is a tiny triangle some 14 miles long on its base and about seven miles wide, making it roughly the size of Jersey. At each of its three corners stands an extinct volcano.</p><p>Some 2,300 miles from the coast of Chile, the island is one of the most isolated places on the planet. It is treeless, dotted with volcanoes and fringed with sandy beaches. High waves often lash its western shores.</p><p>This setting – and the 800 or so moai – have turned much of Rapa Nui into a Unesco World Heritage Site and a tourism magnet. Its permanent population is around 5,200, about half of whom are of Polynesian descent.</p><p>In 2012, 86,949 visitors came, most by plane from Chile, though some tourists fly in from Lima or from Australasia via Tahiti. Occasionally, cruises make stopovers.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6, 9),
(12, 'ArticlePage', '2019-08-11 16:23:51', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8, 9),
(13, 'ErrorPage', '2019-08-11 15:56:54', '2019-08-10 15:23:44', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(14, 'ErrorPage', '2019-08-11 15:56:54', '2019-08-10 15:38:35', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

CREATE TABLE `sitetree_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_imagetracking`
--

CREATE TABLE `sitetree_imagetracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_linktracking`
--

CREATE TABLE `sitetree_linktracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0,
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

CREATE TABLE `sitetree_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext DEFAULT NULL,
  `MetaDescription` mediumtext DEFAULT NULL,
  `ExtraMeta` mediumtext DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2019-08-10 14:23:43', '2019-08-10 12:26:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2019-08-10 15:10:31', '2019-08-10 15:09:42', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(7, 'Page', '2019-08-10 15:11:36', '2019-08-10 15:11:07', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(8, 'Page', '2019-08-10 15:12:07', '2019-08-10 15:11:46', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(9, 'ArticleHolder', '2019-08-10 15:16:34', '2019-08-10 15:12:22', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(10, 'ArticlePage', '2019-08-11 16:23:29', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 9),
(11, 'ArticlePage', '2019-08-11 16:23:42', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, '<p><span class=\"m_first-letter m_first-letter--flagged\">If you only have a couple of days, a handful of essential sights shouldn’t be missed. The most important will be the ahu, the ceremonial platforms on which stand the moai. The figures originally had eyes of coral and obsidian; on the beach at Ahu Tahai near Hanga Roa, you will see how they looked thanks to a reconstruction.</span></p><p><span class=\"m_first-letter m_first-letter--flagged\">T</span>he monolithic statues of Rapa Nui (<a href=\"https://www.telegraph.co.uk/travel/destinations/south-america/easter-island/hotels/\" target=\"_blank\">Easter Island</a>) called moai are sublimely beautiful works of art. Tall figures carved out of volcanic rock between the 11th and 14th centuries by Polynesian settlers, they have long, unsmiling faces, elegant, hawk-like noses and brooding brows. They can seem alienating or enthralling, depending on the angle, the light, your mood and the weather.</p><p>Rapa Nui is a tiny triangle some 14 miles long on its base and about seven miles wide, making it roughly the size of Jersey. At each of its three corners stands an extinct volcano.</p><p>Some 2,300 miles from the coast of Chile, the island is one of the most isolated places on the planet. It is treeless, dotted with volcanoes and fringed with sandy beaches. High waves often lash its western shores.</p><p>This setting – and the 800 or so moai – have turned much of Rapa Nui into a Unesco World Heritage Site and a tourism magnet. Its permanent population is around 5,200, about half of whom are of Polynesian descent.</p><p>In 2012, 86,949 visitors came, most by plane from Chile, though some tourists fly in from Lima or from Australasia via Tahiti. Occasionally, cruises make stopovers.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6, 9),
(12, 'ArticlePage', '2019-08-11 16:23:51', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8, 9),
(13, 'ErrorPage', '2019-08-10 15:23:44', '2019-08-10 15:23:44', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(14, 'ErrorPage', '2019-08-10 15:38:35', '2019-08-10 15:38:35', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

CREATE TABLE `sitetree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext DEFAULT NULL,
  `MetaDescription` mediumtext DEFAULT NULL,
  `ExtraMeta` mediumtext DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2019-08-10 12:26:55', '2019-08-10 12:26:55', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2019-08-10 12:26:56', '2019-08-10 12:26:56', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2019-08-10 12:26:56', '2019-08-10 12:26:56', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 1, 2, 1, 1, 1, 'HomePage', '2019-08-10 14:23:43', '2019-08-10 12:26:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 1, 0, 1, 0, 'Page', '2019-08-10 15:09:42', '2019-08-10 15:09:42', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 2, 1, 1, 1, 'Page', '2019-08-10 15:10:19', '2019-08-10 15:09:42', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 6, 3, 1, 1, 1, 'Page', '2019-08-10 15:10:25', '2019-08-10 15:09:42', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 7, 1, 0, 1, 0, 'Page', '2019-08-10 15:11:07', '2019-08-10 15:11:07', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 7, 2, 1, 1, 1, 'Page', '2019-08-10 15:11:25', '2019-08-10 15:11:07', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 7, 3, 1, 1, 1, 'Page', '2019-08-10 15:11:33', '2019-08-10 15:11:07', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 8, 1, 0, 1, 0, 'Page', '2019-08-10 15:11:46', '2019-08-10 15:11:46', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 8, 2, 1, 1, 1, 'Page', '2019-08-10 15:11:54', '2019-08-10 15:11:46', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 8, 3, 1, 1, 1, 'Page', '2019-08-10 15:12:00', '2019-08-10 15:11:46', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 9, 1, 0, 1, 0, 'ArticleHolder', '2019-08-10 15:12:22', '2019-08-10 15:12:22', 'new-article-holder', 'New Article Holder', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 9, 2, 1, 1, 1, 'ArticleHolder', '2019-08-10 15:12:40', '2019-08-10 15:12:22', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(18, 9, 3, 1, 1, 1, 'ArticleHolder', '2019-08-10 15:12:44', '2019-08-10 15:12:22', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(19, 10, 1, 0, 1, 0, 'ArticlePage', '2019-08-10 15:15:07', '2019-08-10 15:15:07', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(20, 10, 2, 1, 1, 1, 'ArticlePage', '2019-08-10 15:15:20', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(21, 11, 1, 0, 1, 0, 'ArticlePage', '2019-08-10 15:15:29', '2019-08-10 15:15:29', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(22, 11, 2, 1, 1, 1, 'ArticlePage', '2019-08-10 15:15:42', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(23, 9, 4, 0, 1, 0, 'ArticleHolder', '2019-08-10 15:16:01', '2019-08-10 15:12:22', 'travel-guides', 'Lima', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(24, 9, 5, 1, 1, 1, 'ArticleHolder', '2019-08-10 15:16:32', '2019-08-10 15:12:22', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(25, 12, 1, 0, 1, 0, 'ArticlePage', '2019-08-10 15:16:51', '2019-08-10 15:16:51', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(26, 12, 2, 1, 1, 1, 'ArticlePage', '2019-08-10 15:17:01', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(27, 13, 1, 1, 1, 1, 'ErrorPage', '2019-08-10 15:23:44', '2019-08-10 15:23:44', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(28, 14, 1, 1, 1, 1, 'ErrorPage', '2019-08-10 15:38:35', '2019-08-10 15:38:35', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(29, 10, 3, 1, 1, 1, 'ArticlePage', '2019-08-11 15:24:01', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(30, 10, 4, 1, 1, 1, 'ArticlePage', '2019-08-11 15:25:00', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(31, 11, 3, 1, 1, 1, 'ArticlePage', '2019-08-11 15:27:18', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, '<p><span class=\"m_first-letter m_first-letter--flagged\">T</span>he monolithic statues of Rapa Nui (<a href=\"https://www.telegraph.co.uk/travel/destinations/south-america/easter-island/hotels/\" target=\"_blank\">Easter Island</a>) called moai are sublimely beautiful works of art. Tall figures carved out of volcanic rock between the 11th and 14th centuries by Polynesian settlers, they have long, unsmiling faces, elegant, hawk-like noses and brooding brows. They can seem alienating or enthralling, depending on the angle, the light, your mood and the weather.</p><p>Rapa Nui is a tiny triangle some 14 miles long on its base and about seven miles wide, making it roughly the size of Jersey. At each of its three corners stands an extinct volcano.</p><p>Some 2,300 miles from the coast of Chile, the island is one of the most isolated places on the planet. It is treeless, dotted with volcanoes and fringed with sandy beaches. High waves often lash its western shores.</p><p>This setting – and the 800 or so moai – have turned much of Rapa Nui into a Unesco World Heritage Site and a tourism magnet. Its permanent population is around 5,200, about half of whom are of Polynesian descent.</p><p>In 2012, 86,949 visitors came, most by plane from Chile, though some tourists fly in from Lima or from Australasia via Tahiti. Occasionally, cruises make stopovers.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(32, 11, 4, 1, 1, 1, 'ArticlePage', '2019-08-11 15:27:52', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, '<p><span class=\"m_first-letter m_first-letter--flagged\">T</span>he monolithic statues of Rapa Nui (<a href=\"https://www.telegraph.co.uk/travel/destinations/south-america/easter-island/hotels/\" target=\"_blank\">Easter Island</a>) called moai are sublimely beautiful works of art. Tall figures carved out of volcanic rock between the 11th and 14th centuries by Polynesian settlers, they have long, unsmiling faces, elegant, hawk-like noses and brooding brows. They can seem alienating or enthralling, depending on the angle, the light, your mood and the weather.</p><p>Rapa Nui is a tiny triangle some 14 miles long on its base and about seven miles wide, making it roughly the size of Jersey. At each of its three corners stands an extinct volcano.</p><p>Some 2,300 miles from the coast of Chile, the island is one of the most isolated places on the planet. It is treeless, dotted with volcanoes and fringed with sandy beaches. High waves often lash its western shores.</p><p>This setting – and the 800 or so moai – have turned much of Rapa Nui into a Unesco World Heritage Site and a tourism magnet. Its permanent population is around 5,200, about half of whom are of Polynesian descent.</p><p>In 2012, 86,949 visitors came, most by plane from Chile, though some tourists fly in from Lima or from Australasia via Tahiti. Occasionally, cruises make stopovers.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(33, 12, 3, 1, 1, 1, 'ArticlePage', '2019-08-11 15:29:23', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(34, 12, 4, 1, 1, 1, 'ArticlePage', '2019-08-11 15:32:27', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(35, 11, 5, 1, 1, 1, 'ArticlePage', '2019-08-11 15:32:45', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, '<p><span class=\"m_first-letter m_first-letter--flagged\">If you only have a couple of days, a handful of essential sights shouldn’t be missed. The most important will be the ahu, the ceremonial platforms on which stand the moai. The figures originally had eyes of coral and obsidian; on the beach at Ahu Tahai near Hanga Roa, you will see how they looked thanks to a reconstruction.</span></p><p><span class=\"m_first-letter m_first-letter--flagged\">T</span>he monolithic statues of Rapa Nui (<a href=\"https://www.telegraph.co.uk/travel/destinations/south-america/easter-island/hotels/\" target=\"_blank\">Easter Island</a>) called moai are sublimely beautiful works of art. Tall figures carved out of volcanic rock between the 11th and 14th centuries by Polynesian settlers, they have long, unsmiling faces, elegant, hawk-like noses and brooding brows. They can seem alienating or enthralling, depending on the angle, the light, your mood and the weather.</p><p>Rapa Nui is a tiny triangle some 14 miles long on its base and about seven miles wide, making it roughly the size of Jersey. At each of its three corners stands an extinct volcano.</p><p>Some 2,300 miles from the coast of Chile, the island is one of the most isolated places on the planet. It is treeless, dotted with volcanoes and fringed with sandy beaches. High waves often lash its western shores.</p><p>This setting – and the 800 or so moai – have turned much of Rapa Nui into a Unesco World Heritage Site and a tourism magnet. Its permanent population is around 5,200, about half of whom are of Polynesian descent.</p><p>In 2012, 86,949 visitors came, most by plane from Chile, though some tourists fly in from Lima or from Australasia via Tahiti. Occasionally, cruises make stopovers.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(36, 10, 5, 1, 1, 1, 'ArticlePage', '2019-08-11 15:33:10', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(37, 10, 6, 1, 1, 1, 'ArticlePage', '2019-08-11 15:54:29', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(38, 12, 5, 1, 1, 1, 'ArticlePage', '2019-08-11 15:54:57', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(39, 12, 6, 1, 1, 1, 'ArticlePage', '2019-08-11 15:56:33', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(40, 12, 7, 1, 1, 1, 'ArticlePage', '2019-08-11 15:58:30', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(41, 10, 7, 1, 1, 1, 'ArticlePage', '2019-08-11 16:23:29', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, '<p><span>Here you can spot the Big Five (leopard, lion, rhino, elephant and buffalo) in its national parks, discover World Heritage–listed archaeological sites and stand in awe of one of the natural wonders of the world, Victoria Falls.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">Throughout its past two decades of governmental mismanagement, political violence and economic disaster, Zimbabwe continued to welcome visitors with the same grace and politeness that they were famed for. And as a result those who did travel here usually left insisting that that the country was hands down one of the safest, friendliest and most spectacular countries on the continent.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">In 2017 the post-Mugabe dawn that millions of Zimbabweans longed for finally arrived, and their excitement of what the future may hold is still palpable to all who visit.</span></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(42, 11, 6, 1, 1, 1, 'ArticlePage', '2019-08-11 16:23:42', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, '<p><span class=\"m_first-letter m_first-letter--flagged\">If you only have a couple of days, a handful of essential sights shouldn’t be missed. The most important will be the ahu, the ceremonial platforms on which stand the moai. The figures originally had eyes of coral and obsidian; on the beach at Ahu Tahai near Hanga Roa, you will see how they looked thanks to a reconstruction.</span></p><p><span class=\"m_first-letter m_first-letter--flagged\">T</span>he monolithic statues of Rapa Nui (<a href=\"https://www.telegraph.co.uk/travel/destinations/south-america/easter-island/hotels/\" target=\"_blank\">Easter Island</a>) called moai are sublimely beautiful works of art. Tall figures carved out of volcanic rock between the 11th and 14th centuries by Polynesian settlers, they have long, unsmiling faces, elegant, hawk-like noses and brooding brows. They can seem alienating or enthralling, depending on the angle, the light, your mood and the weather.</p><p>Rapa Nui is a tiny triangle some 14 miles long on its base and about seven miles wide, making it roughly the size of Jersey. At each of its three corners stands an extinct volcano.</p><p>Some 2,300 miles from the coast of Chile, the island is one of the most isolated places on the planet. It is treeless, dotted with volcanoes and fringed with sandy beaches. High waves often lash its western shores.</p><p>This setting – and the 800 or so moai – have turned much of Rapa Nui into a Unesco World Heritage Site and a tourism magnet. Its permanent population is around 5,200, about half of whom are of Polynesian descent.</p><p>In 2012, 86,949 visitors came, most by plane from Chile, though some tourists fly in from Lima or from Australasia via Tahiti. Occasionally, cruises make stopovers.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(43, 12, 8, 1, 1, 1, 'ArticlePage', '2019-08-11 16:23:51', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, '<p><span class=\"js-intro-narrative\">After Cairo, this sprawling metropolis is the second-driest world capital, rising above a long coastline of crumbling cliffs. To enjoy it, climb on the wave of chaos that spans high-rise condos built alongside pre-Columbian temples and fast Pacific breakers rolling toward noisy traffic snarl-ups. Think one part southern Cali doused with a heavy dose of America Latina.</span></p><p><span class=\"js-intro-narrative\">But Lima is also sophisticated, with a civilization that dates back millennia. Stately museums display sublime pottery; galleries debut edgy art; solemn religious processions recall the 18th century and crowded nightclubs dispense tropical beats. No visitor can miss the capital’s culinary genius, part of a gastronomic revolution more than 400 years in the making.</span></p><p class=\"intro-narrative__text\"><span class=\"js-intro-narrative\">This is Lima. Shrouded in history (and sometimes fog), gloriously messy and full of aesthetic delights. Don’t even think of missing it.</span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

CREATE TABLE `sitetree_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

CREATE TABLE `virtualpage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

CREATE TABLE `virtualpage_live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

CREATE TABLE `virtualpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articlepage`
--
ALTER TABLE `articlepage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `articlepage_live`
--
ALTER TABLE `articlepage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `articlepage_versions`
--
ALTER TABLE `articlepage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `errorpage`
--
ALTER TABLE `errorpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `group_roles`
--
ALTER TABLE `group_roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `loginattempt`
--
ALTER TABLE `loginattempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Surname` (`Surname`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `memberpassword`
--
ALTER TABLE `memberpassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrole`
--
ALTER TABLE `permissionrole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Title` (`Title`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree`
--
ALTER TABLE `sitetree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree_imagetracking`
--
ALTER TABLE `sitetree_imagetracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `sitetree_linktracking`
--
ALTER TABLE `sitetree_linktracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `virtualpage`
--
ALTER TABLE `virtualpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articlepage`
--
ALTER TABLE `articlepage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `articlepage_live`
--
ALTER TABLE `articlepage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `articlepage_versions`
--
ALTER TABLE `articlepage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `errorpage`
--
ALTER TABLE `errorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_roles`
--
ALTER TABLE `group_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginattempt`
--
ALTER TABLE `loginattempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memberpassword`
--
ALTER TABLE `memberpassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissionrole`
--
ALTER TABLE `permissionrole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig`
--
ALTER TABLE `siteconfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree`
--
ALTER TABLE `sitetree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_imagetracking`
--
ALTER TABLE `sitetree_imagetracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_linktracking`
--
ALTER TABLE `sitetree_linktracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage`
--
ALTER TABLE `virtualpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2019 at 09:46 AM
-- Server version: 8.0.15
-- PHP Version: 7.3.6

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
-- Table structure for table `errorpage`
--

CREATE TABLE `errorpage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
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
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
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
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
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
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `Content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2019-08-10 13:26:56', '2019-08-10 13:26:56', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2019-08-10 13:26:56', '2019-08-10 13:26:56', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ParentID` int(11) NOT NULL DEFAULT '0'
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
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
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
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE `loginattempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EmailHashed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginattempt`
--

INSERT INTO `loginattempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `EmailHashed`, `Status`, `IP`, `MemberID`) VALUES
(1, 'LoginAttempt', '2019-08-10 12:27:13', '2019-08-10 12:27:13', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Failure', '::1', 1),
(2, 'LoginAttempt', '2019-08-10 12:27:23', '2019-08-10 12:27:23', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Success', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2019-08-10 15:24:44', '2019-08-10 12:26:55', 'Default Admin', NULL, 'admin', '7a6a7238ca9cb8222570fb140864aee8be9c2d43', '2019-08-13 12:27:23', '$2y$10$244305c6c795033e90993O4cKjYtHR/XnGgQkjrGV48RFxZNPtfQa', '$2y$10$244305c6c795033e90993Ov2Z8oFSTqREWwvCHBkpyK87pMQQsP4.', 2, '2019-08-10 23:16:21', NULL, NULL, 'blowfish', '10$244305c6c795033e90993a', NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE `memberpassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
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
  `ClassName` enum('Permission') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
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
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE `permissionrolecode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

CREATE TABLE `redirectorpage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

CREATE TABLE `redirectorpage_live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

CREATE TABLE `redirectorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'LoggedInUsers'
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
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

CREATE TABLE `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

CREATE TABLE `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

CREATE TABLE `sitetree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `MetaDescription` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ExtraMeta` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2019-08-10 14:23:43', '2019-08-10 12:26:55', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2019-08-10 12:26:57', '2019-08-10 12:26:55', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2019-08-10 15:10:31', '2019-08-10 15:09:42', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(7, 'Page', '2019-08-10 15:11:36', '2019-08-10 15:11:07', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(8, 'Page', '2019-08-10 15:12:07', '2019-08-10 15:11:46', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(9, 'ArticleHolder', '2019-08-10 15:16:34', '2019-08-10 15:12:22', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(10, 'ArticlePage', '2019-08-10 15:15:20', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(11, 'ArticlePage', '2019-08-10 15:15:42', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(12, 'ArticlePage', '2019-08-10 15:17:01', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(13, 'ErrorPage', '2019-08-10 15:23:44', '2019-08-10 15:23:44', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(14, 'ErrorPage', '2019-08-10 15:38:35', '2019-08-10 15:38:35', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

CREATE TABLE `sitetree_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_imagetracking`
--

CREATE TABLE `sitetree_imagetracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_linktracking`
--

CREATE TABLE `sitetree_linktracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

CREATE TABLE `sitetree_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `MetaDescription` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ExtraMeta` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
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
(10, 'ArticlePage', '2019-08-10 15:15:20', '2019-08-10 15:15:07', 'zimbabwe', 'Zimbabwe', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(11, 'ArticlePage', '2019-08-10 15:15:42', '2019-08-10 15:15:29', 'easter-island', 'Easter Island', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(12, 'ArticlePage', '2019-08-10 15:17:02', '2019-08-10 15:16:51', 'lima', 'Lima', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(13, 'ErrorPage', '2019-08-10 15:23:44', '2019-08-10 15:23:44', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(14, 'ErrorPage', '2019-08-10 15:38:35', '2019-08-10 15:38:35', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

CREATE TABLE `sitetree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `MetaDescription` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ExtraMeta` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
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
(28, 14, 1, 1, 1, 1, 'ErrorPage', '2019-08-10 15:38:35', '2019-08-10 15:38:35', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

CREATE TABLE `sitetree_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

CREATE TABLE `virtualpage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

CREATE TABLE `virtualpage_live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

CREATE TABLE `virtualpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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

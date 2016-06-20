<bfSQL>
	<form_forms_version>1.1</form_forms_version>
	<form_layouts_version>0.2</form_layouts_version>
	<form_fields_version>1.0</form_fields_version>
	<form_actions_version>0.1</form_actions_version>
	<form_submission_trackings_version>0.1</form_submission_trackings_version>

	<form_forms>
		<![CDATA[
			CREATE TABLE IF NOT EXISTS `#__form_forms` (
			  `id` int(11) NOT NULL auto_increment,
			  `form_name` mediumtext collate utf8_bin NOT NULL,
			  `published` int(11) NOT NULL,
			  `access` int(11) NOT NULL,
			  `checked_out` int(11) NOT NULL,
			  `checked_out_time` datetime NOT NULL,
			  `publish_up` datetime NOT NULL,
			  `publish_down` datetime NOT NULL,
			  `accesssubmit` int(11) NOT NULL,
			  `introtext` mediumtext collate utf8_bin NOT NULL,
			  `submitbuttontext` mediumtext collate utf8_bin NOT NULL,
			  `resetbuttontext` mediumtext collate utf8_bin NOT NULL,
			  `showresetbutton` int(11) NOT NULL,
			  `showpreviewbutton` int(11) NOT NULL,
			  `showsubmitbutton` int(11) NOT NULL default '1',
			  `nextbuttontext` mediumtext collate utf8_bin NOT NULL,
			  `prevbuttontext` mediumtext collate utf8_bin NOT NULL,
			  `processorurl` mediumtext collate utf8_bin NOT NULL,
			  `onlyssl` int(11) NOT NULL,
			  `formtype` varchar(50) collate utf8_bin NOT NULL,
			  `method` varchar(5) collate utf8_bin NOT NULL,
			  `enctype` varchar(255) collate utf8_bin NOT NULL,
			  `accept-charset` mediumtext collate utf8_bin NOT NULL,
			  `classid` varchar(255) collate utf8_bin NOT NULL,
			  `target` varchar(255) collate utf8_bin NOT NULL,
			  `disablebuttons` int(11) NOT NULL,
			  `embedinmodules` int(11) NOT NULL,
			  `embedinplugins` int(11) NOT NULL,
			  `layout` varchar(255) collate utf8_bin NOT NULL,
			  `template` mediumtext collate utf8_bin NOT NULL,
			  `hasusertable` varchar(255) collate utf8_bin default '0',
			  `page_title` varchar(255) collate utf8_bin NOT NULL,
			  `showtitle` int(11) NOT NULL,
			  `created` datetime NOT NULL,
			  `created_by` int(11) NOT NULL,
			  `slug` varchar(255) collate utf8_bin NOT NULL,
			  `useblacklist` int(11) NOT NULL,
			  `maxsubmissionsperuser` int(11) default NULL,
			  `maxsubmissions` int(11) default NULL,
			  `count_spamsubmissions` int(11) NOT NULL,
			  `count_oksubmissions` int(11) NOT NULL,
			  `spam_akismet_key` varchar(255) collate utf8_bin NOT NULL,
			  `spam_akismet_author` varchar(255) collate utf8_bin NOT NULL,
			  `spam_akismet_email` varchar(255) collate utf8_bin NOT NULL,
			  `spam_akismet_website` varchar(255) collate utf8_bin NOT NULL,
			  `spam_akismet_body` varchar(255) collate utf8_bin NOT NULL,
			  `spam_mollom_privatekey` varchar(255) collate utf8_bin NOT NULL,
			  `spam_mollom_publickey` varchar(255) collate utf8_bin NOT NULL,
			  `spam_ipblacklist` mediumtext collate utf8_bin NOT NULL,
			  `spam_wordblacklist` mediumtext collate utf8_bin NOT NULL,
			  `spam_hiddenfield` varchar(255) collate utf8_bin NOT NULL,
			  `usecustomtemplate` int(11) NOT NULL,
			  `custom_smarty` mediumtext collate utf8_bin NOT NULL,
			  `custom_js` mediumtext collate utf8_bin NOT NULL,
			  `custom_css` mediumtext collate utf8_bin NOT NULL,
			  `allowpause` int(11) NOT NULL,
			  `allowownsubmissionedit` int(11) NOT NULL,
			  `allowownsubmissiondelete` int(11) NOT NULL,
			  `enableixedit` int(11) NOT NULL,
			  `enablejankomultipage` int(11) NOT NULL,
			  PRIMARY KEY  (`id`)
			) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
		]]>
	</form_forms>
	<form_layouts>
		<![CDATA[
			CREATE TABLE IF NOT EXISTS `#__form_layouts` (
			   `id` int(11) NOT NULL auto_increment,
		 	  `framework` int(11) NOT NULL,
			  `title` varchar(255) collate utf8_bin NOT NULL,
			  `filename` varchar(255) collate utf8_bin NOT NULL,
			  `appliesto` varchar(255) collate utf8_bin NOT NULL,
			  `desc` mediumtext collate utf8_bin NOT NULL,
			  `created` datetime NOT NULL,
			  `created_by` int(11) NOT NULL,
			  `checked_out_time` datetime NOT NULL,
			  `checked_out` int(11) NOT NULL,
			  `default` int(11) NOT NULL,
			  PRIMARY KEY  (`id`)
			) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3;
		]]>
	</form_layouts>
	<form_fields>
		<![CDATA[
		CREATE TABLE IF NOT EXISTS `#__form_fields` (
			  `id` int(11) NOT NULL auto_increment COMMENT 'Joomla Forms - Form Fields',
			  `form_id` int(11) NOT NULL default '0',
			  `plugin` varchar(255) collate utf8_bin NOT NULL,
			  `type` varchar(255) collate utf8_bin NOT NULL,
			  `title` mediumtext collate utf8_bin NOT NULL,
			  `publictitle` varchar(255) collate utf8_bin NOT NULL,
			  `slug` varchar(255) collate utf8_bin NOT NULL,
			  `desc` mediumtext collate utf8_bin NOT NULL,
			  `accept` mediumtext collate utf8_bin NOT NULL,
			  `checked` int(11) NOT NULL default '0',
			  `disabled` int(11) NOT NULL default '0',
			  `readonly` int(11) NOT NULL default '0',
			  `value` mediumtext collate utf8_bin NOT NULL,
			  `dir` mediumtext collate utf8_bin NOT NULL,
			  `lang` mediumtext collate utf8_bin NOT NULL,
			  `style` mediumtext collate utf8_bin NOT NULL,
			  `cssfile` varchar(255) collate utf8_bin NOT NULL,
			  `class` mediumtext collate utf8_bin NOT NULL,
			  `idattribute` mediumtext collate utf8_bin NOT NULL,
			  `accesskey` varchar(5) collate utf8_bin NOT NULL,
			  `size` varchar(255) collate utf8_bin NOT NULL default '',
			  `cols` varchar(10) collate utf8_bin NOT NULL,
			  `rows` varchar(10) collate utf8_bin NOT NULL,
			  `maxlength` varchar(255) collate utf8_bin NOT NULL default '',
			  `layoutoption` int(11) NOT NULL,
			  `params` mediumtext collate utf8_bin NOT NULL,
			  `onblur` mediumtext collate utf8_bin NOT NULL,
			  `ordering` float unsigned NOT NULL default '0',
			  `allowbyemail` int(11) NOT NULL default '1',
			  `required` int(11) NOT NULL default '0',
			  `published` int(11) NOT NULL default '0',
			  `access` int(11) NOT NULL default '0',
			  `checked_out` int(11) unsigned NOT NULL default '0',
			  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
			  `emsg` varchar(255) collate utf8_bin NOT NULL default '',
			  `allowsetbyget` int(11) NOT NULL,
			  `populatebysql` mediumtext collate utf8_bin NOT NULL,
			  `created` datetime NOT NULL,
			  `created_by` int(11) NOT NULL,
			  `showonsubmissionindex` int(11) NOT NULL,
			  `fileupload_destdir` mediumtext collate utf8_bin NOT NULL,
			  `fileupload_filenamemask` varchar(255) collate utf8_bin NOT NULL,
			  `fileupload_setvalueto` int(11) NOT NULL,
			  `filter_StringTrim` int(11) NOT NULL default '1',
			  `filter_StripTags` int(11) NOT NULL default '1',
			  `filter_Alnum` int(11) NOT NULL default '0',
			  `filter_Digits` int(11) NOT NULL default '0',
			  `filter_strtoupper` int(11) NOT NULL,
			  `filter_strtolower` int(11) NOT NULL,
			  `filter_a2z` int(11) NOT NULL,
			  `filter_ucwords` int(11) NOT NULL,
			  `verify_isemailaddress` int(11) NOT NULL,
			  `verify_isblank` int(11) NOT NULL,
			  `verify_isnotblank` int(11) NOT NULL,
			  `verify_isipaddress` int(11) NOT NULL,
			  `verify_isvalidukninumber` int(11) NOT NULL,
			  `verify_isvalidssn` int(11) NOT NULL,
			  `verify_isvaliduszip` int(11) NOT NULL,
			  `verify_isvalidukpostcode` int(11) NOT NULL,
			  `verify_isvalidcreditcardnumber` int(11) NOT NULL,
			  `verify_isvalidurl` int(11) NOT NULL,
			  `verify_isvalidvatnumber` int(11) NOT NULL,
			  `verify_isinteger` int(11) NOT NULL,
			  `verify_stringlengthgreaterthan` varchar(11) collate utf8_bin NOT NULL,
			  `verify_stringlengthlessthan` varchar(11) collate utf8_bin NOT NULL,
			  `verify_stringlengthequals` varchar(11) collate utf8_bin NOT NULL,
			  `verify_numbergreaterthan` varchar(11) collate utf8_bin NOT NULL,
			  `verify_numberlessthan` varchar(11) collate utf8_bin NOT NULL,
			  `verify_regex` varchar(255) collate utf8_bin NOT NULL,
			  `verify_numberequals` varchar(11) collate utf8_bin NOT NULL,
			  `verify_equalto` varchar(255) collate utf8_bin NOT NULL,
			  `verify_isinarray` mediumtext collate utf8_bin NOT NULL,
			  `verify_isexistingusername` int(11) NOT NULL,
			  `verify_isnotexistingusername` int(11) NOT NULL,
			  `verify_fileupload_extensions` mediumtext collate utf8_bin NOT NULL,
			  `verify_fileupload_maxsize` varchar(255) collate utf8_bin NOT NULL,
			  `verify_fileupload_overwritemode` int(11) NOT NULL,
			  `verify_brazil_cpf` int(11) NOT NULL,
			  `verify_brazil_cnpj` int(11) NOT NULL,
			  `verify_iban` int(11) NOT NULL,
			  `verify_isalloweddomain` mediumtext collate utf8_bin NOT NULL,
			  `verify_isdenieddomain` mediumtext collate utf8_bin NOT NULL,
			  `option1` varchar(255) collate utf8_bin NOT NULL,
			  `option2` varchar(255) collate utf8_bin NOT NULL,
			  `multiple` varchar(255) collate utf8_bin NOT NULL,
			  PRIMARY KEY  (`id`),
			  KEY `form_id` (`form_id`),
			  KEY `plugin` (`plugin`)
			) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
			]]>
		</form_fields>
		<form_actions>
			<![CDATA[
			CREATE TABLE IF NOT EXISTS `#__form_actions` (
			  `id` int(11) NOT NULL auto_increment,
			  `form_id` int(11) NOT NULL default '0',
			  `plugin` varchar(100) collate utf8_bin NOT NULL default '',
			  `title` varchar(255) collate utf8_bin NOT NULL,
			  `desc` mediumtext collate utf8_bin NOT NULL,
			  `published` int(11) NOT NULL default '0',
			  `access` int(11) NOT NULL default '0',
			  `dbtable` varchar(255) collate utf8_bin NOT NULL default '',
			  `emailfrom` varchar(255) collate utf8_bin NOT NULL default '',
			  `emailfromname` varchar(255) collate utf8_bin NOT NULL,
			  `emailto` mediumtext collate utf8_bin NOT NULL,
			  `emailsubject` varchar(255) collate utf8_bin NOT NULL default '',
			  `emailbcc` mediumtext collate utf8_bin NOT NULL,
			  `emailcc` mediumtext collate utf8_bin NOT NULL,
			  `emailplain` mediumtext collate utf8_bin NOT NULL,
			  `emailhtml` mediumtext collate utf8_bin NOT NULL,
			  `gpgpublickey` mediumtext collate utf8_bin NOT NULL,
			  `senduploadedfiles` int(11) NOT NULL,
			  `attachments` mediumtext collate utf8_bin NOT NULL,
			  `custom4` mediumtext collate utf8_bin NOT NULL,
			  `custom5` mediumtext collate utf8_bin NOT NULL,
			  `custom6` int(11) NOT NULL default '0',
			  `custom7` int(11) NOT NULL default '0',
			  `custom8` int(11) NOT NULL default '0',
			  `custom9` int(11) NOT NULL default '0',
			  `custom10` int(11) NOT NULL default '0',
			  `ordering` float unsigned NOT NULL default '0',
			  `checked_out` int(11) NOT NULL,
			  `checked_out_time` datetime NOT NULL,
			  `created` datetime NOT NULL,
			  `created_by` int(11) NOT NULL,
			  PRIMARY KEY  (`id`),
			  KEY `form_id` (`form_id`)
			) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
			]]>
	</form_actions>
	<form_submission_trackings>
		<![CDATA[
		CREATE TABLE IF NOT EXISTS `#__form_submission_trackings` (
			  `id` int(11) NOT NULL auto_increment,
			  `joomla_user_id` int(11) default NULL,
			  `form_id` int(11) default NULL,
			  `submission_id` int(11) default NULL,
			  `ipaddress` varchar(100) character set latin1 default NULL,
			  `useragent` mediumtext character set latin1,
			  `datetime` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
			  PRIMARY KEY  (`id`),
			  UNIQUE KEY `id` (`id`),
			  UNIQUE KEY `submission_id_form_id` (`form_id`,`submission_id`),
			  KEY `joomla_user_id` (`joomla_user_id`),
			  KEY `form_id` (`form_id`),
			  KEY `form_id_joomla_user_id` (`joomla_user_id`,`form_id`),
			  KEY `form_id_ipaddress` (`form_id`,`ipaddress`)
			) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
		]]>
	</form_submission_trackings>
</bfSQL>
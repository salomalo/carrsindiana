<?php
/**
 * @version $Id: mod_form.php 147 2009-07-14 20:20:18Z  $
 * @package Blue Flame Forms (bfForms)
 * @copyright Copyright (C) 2003,2004,2005,2006,2007,2008,2009 Blue Flame IT Ltd. All rights reserved.
 * @license GNU General Public License
 * @link http://www.blueflameit.ltd.uk
 * @author Phil Taylor / Blue Flame IT Ltd.
 *
 * This file is part of the package bfForms.
 *
 * bfForms is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * bfForms is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this package.  If not, see http://www.gnu.org/licenses/
 */
defined ( '_JEXEC' ) or die ();

/* check form id */
$form_id = ( int ) $params->get ( 'form_id' );
if (! $form_id)
	return;
	
/* check if this is a post */
if (count ( $_POST ) > 2)
	return;
	
/* define our components names */
$mainframe->set ( 'component', 'com_form' );
$mainframe->set ( 'component_shortname', 'form' );
$mainframe->set ( 'no_acronyms', 1 );

/* Pull in the bfFramework */
/* Set up our registry and namespace */
if (defined ( '_BF_BFFRAMEWORK_INLUDED' )) {
	$registry = bfRegistry::getInstance ( $mainframe->get ( 'component' ), $mainframe->get ( 'component' ) );
	$config = bfConfig::getInstance ( $mainframe->get ( 'component' ) );
	$session = bfSession::getInstance ( $mainframe->get ( 'component' ) );
	/* include the framework config */
	require_once (JPATH_ROOT . DS . 'components' . DS . $mainframe->get ( 'component' ) . DS . 'etc' . DS . 'framework.config.php');
} else {
	require_once (_BF_JPATH_BASE . DS . _PLUGIN_DIR_NAME . DS . 'system' . DS . 'blueflame' . DS . 'bfFramework.php');
}

/* Load this components stylesheet */
if (@! defined ( '_BF_INCLUDED_MOOTOOLS' )) {
	bfDocument::addScriptFromString ( 'var bf_live_site = "' . bfCompat::getLiveSite () . '";' );
	bfDocument::addScriptFromString ( 'var bf_js_options_useblanket = "' . $registry->getValue ( 'config.bf_js_options_useblanket' ) . '";' );
	bfDocument::addscript ( bfCompat::getLiveSite () . '/' . bfCompat::mambotsfoldername () . '/system/blueflame/bfCombine.php?type=js&c=' . $mainframe->get ( 'component_shortname' ) . '&f=mootools' );
	bfDocument::addscript ( bfCompat::getLiveSite () . '/' . bfCompat::mambotsfoldername () . '/system/blueflame/bfCombine.php?type=js&c=' . $mainframe->get ( 'component_shortname' ) . '&f=jquery,bffront_js,front_js' );
	bfDocument::addCSS ( bfCompat::getLiveSite () . '/' . bfCompat::mambotsfoldername () . '/system/blueflame/bfCombine.php?type=css&c=' . $mainframe->get ( 'component_shortname' ) . '&f=bffront_css,front_css' );
	define ( '_BF_INCLUDED_MOOTOOLS', true );
}

/* include our other framework libs */
bfLoad ( 'bfController' );
bfLoad ( 'bfModel' );
require_once $registry->getValue ( 'bfFramework_form.controller.front' );

bfRequest::setVar ( 'form_id', $form_id, 'GET', 'INT' );

$controller = new com_formControllerFront ( );

$controller->setArguments ( bfRequest::get ( 'REQUEST' ), false );

$controller->module ( ( int ) $form_id );

echo '<div id="com_form' . ( int ) $form_id . '">';

/* Get the view */
$view = $controller->getView ();

/* check the view */
if ($view == 'BF_ERROR') {
	/* might be above our access level */

//						bfError::raiseError ( '404', 'We dont have a view!!' );
//						return false;
} else {
	
	/* if no view set then set the view name the same as the task name */
	if (! isset ( $view )) {
		$view = $task;
		/* sef advance fix */
		$view = str_replace ( '/', '', $view );
	}
}

/* we need to echo it as the default is to just return the html */
if ($view != 'BF_ERROR')
	echo $controller->renderView ();

echo '</div>';

<?php
/**
* CHRONOFORMS version 4.0
* Copyright (c) 2006 - 2011 Chrono_Man, ChronoEngine.com. All rights reserved.
* Author: Chrono_Man (ChronoEngine.com)
* @license		GNU/GPL
* Visit http://www.ChronoEngine.com for regular updates and information.
**/
?>
<?php
	require_once(JPATH_SITE.DS."administrator".DS."components".DS."com_chronoforms".DS."helpers".DS."html_helper.php");
	$HtmlHelper = new HtmlHelper();
	$HtmlHelper->data = $form;
	$params = new JParameter('');
	if(!empty($form)){
		$params = new JParameter($form->params);
	}
	$mainframe = JFactory::getApplication();
	require_once(JPATH_SITE.DS."administrator".DS."components".DS."com_chronoforms".DS."helpers".DS."tabs_helper.php");
	$TabsHelper = new TabsHelper();
?>
<script type="text/javascript" src="<?php echo JURI::Base(); ?>components/com_chronoforms/js/tabs.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo JURI::Base(); ?>components/com_chronoforms/css/frontforms.css">
<link rel="stylesheet" type="text/css" href="<?php echo JURI::Base(); ?>components/com_chronoforms/css/tabs_style.css">
<script language="javascript" type="text/javascript">
	Joomla.submitbutton = function(pressbutton) {
		var form = document.adminForm;
		if(pressbutton == "cancel"){
			submitform(pressbutton);
			return;
		}
		var patt1 = new RegExp(/^[a-zA-Z0-9_-]+$/);
		if(!patt1.test($('chronoform_name').get('value').trim())){
			alert("Please enter a valid form name with alphanumeric characters, underscore_ or a dash -.");
			return false;
		}else{
			submitform(pressbutton);
		}
	}
</script>
<form action="index.php?option=com_chronoforms" method="post" name="adminForm" id="adminForm">
<h2 style='margin: 3px 0;'>
<?php
if(!empty($form)){
	echo $form->name;
}else{
	echo 'New Form...';
}
?>
</h2>
<?php echo $TabsHelper->Header(array('general' => 'General', 'code' => 'Code', 'jsval' => 'JS Validation')); ?>
	<?php echo $TabsHelper->tabStart('general'); ?>
		<?php echo $HtmlHelper->input('name', array('type' => 'text', 'id' => 'chronoform_name', 'label' => 'Form name', 'class' => 'medium_input', 'smalldesc' => 'Unique form name without spaces or any special characters, underscores _ or dashes -')); ?>
		<?php echo $HtmlHelper->input('published', array('type' => 'select', 'label' => 'Published', 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 1)); ?>
		<?php echo $HtmlHelper->input('params[form_mode]', array('type' => 'select', 'label' => 'Form Wizard Mode', 'value' => $params->get('form_mode', 'advanced'), 'options' => array('advanced' => 'Advanced (Default)', 'easy' => 'Easy'), 'default' => 'advanced', 'smalldesc' => 'Choose your form wizard mode, the advanced mode is the default one, you will have all the Chronoforms V4 tools enabled in the wizard, the Easy mode is easier to use though and is enough to build strong simple forms.')); ?>
		<?php echo $HtmlHelper->input('params[form_method]', array('type' => 'select', 'label' => 'Form method', 'value' => $params->get('form_method', 'post'), 'options' => array('post' => 'Post', 'get' => 'Get', 'file' => 'File'), 'default' => 'post', 'smalldesc' => 'Choose your form method, File is ncessary to get file uploads working.')); ?>
		<?php echo $HtmlHelper->input('params[auto_detect_settings]', array('type' => 'select', 'label' => 'Auto Detect Settings', 'value' => $params->get('auto_detect_settings', 1), 'options' => array(0 => 'No', 1 => 'Yes (Advised)'), 'default' => 1, 'smalldesc' => 'Should the form detect some settings and apply them automatically ? settings like validtaion and files uploading will be detected based on your form code.')); ?>
		<?php echo $HtmlHelper->input('params[load_files]', array('type' => 'select', 'label' => 'Load Chronoforms files', 'value' => $params->get('load_files', 1), 'options' => array(0 => 'Disable completely', 1 => 'Load necessary files', 2 => 'Load ALL files!'), 'default' => 1)); ?>
		<?php echo $HtmlHelper->input('params[action_url]', array('type' => 'text', 'label' => 'Submit URL', 'class' => 'big_input', 'value' => $params->get('action_url', ''), 'smalldesc' => 'Adding a submit URL will disable all the form "on submit" event functions.')); ?>
		<?php echo $HtmlHelper->input('params[form_tag_attach]', array('type' => 'text', 'label' => 'Form tag attachment', 'class' => 'big_input', 'value' => htmlspecialchars($params->get('form_tag_attach', '')), 'smalldesc' => 'Some data you may like to include into the < form .... > tag, e.g: onsubmit="someJSFunction();".')); ?>
		<?php echo $HtmlHelper->input('params[submit_action]', array('type' => 'select', 'label' => 'Submit action', 'value' => $params->get('submit_action', 'submit'), 'options' => array('submit' => 'Submit', 'self' => 'Self'), 'default' => 'submit', 'smalldesc' => 'Select wheather the form should be submitted to usual onSubmit event or to the same loading event.')); ?>
		<?php echo $HtmlHelper->input('params[add_form_tags]', array('type' => 'select', 'label' => 'Add form tags', 'value' => $params->get('add_form_tags', 1), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 1, 'smalldesc' => 'You may have a good reason to disable the form tags, but in this case your form will not be submittable.')); ?>
		<?php echo $HtmlHelper->input('params[relative_url]', array('type' => 'select', 'label' => 'Relative URL', 'value' => $params->get('relative_url', 1), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 1, 'smalldesc' => 'do you want the action url to be relative to the current loaded form url ? useful to make your form submit to the same page its currently loaded at, when its inside a content page or a module.')); ?>
		<?php //echo $HtmlHelper->input('params[handle_arrays]', array('type' => 'select', 'label' => 'Handle arrays', 'value' => $params->get('handle_arrays', 1), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 1, 'smalldesc' => 'Submitted values of type arrays (like checkboxes groups) will be concatenated into 1 string.')); ?>
		<?php //echo $HtmlHelper->input('params[handle_arrays_skipped]', array('type' => 'text', 'label' => 'Skipped array fields', 'class' => 'big_input', 'smalldesc' => 'List of fields names which may hold arrays and should be skipped of being handled, e.g: field1,field2,..etc')); ?>
		<?php //echo $HtmlHelper->input('params[debug]', array('type' => 'select', 'label' => 'Debug', 'value' => $params->get('debug', 0), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 0, 'smalldesc' => 'The debug should show some useful info about the form data and flow when loaded and/or submitted.')); ?>
		<?php echo $HtmlHelper->input('params[enable_plugins]', array('type' => 'select', 'label' => 'Enable Joomla plugins', 'value' => $params->get('enable_plugins', 0), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 0, 'smalldesc' => 'You can enable Joomla plugins inside your form, may cause unexpected results sometimes.')); ?>
		<?php echo $HtmlHelper->input('params[show_top_errors]', array('type' => 'select', 'label' => 'Show Top Errors', 'value' => $params->get('show_top_errors', 1), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 1, 'smalldesc' => 'Do you want any form errors to be listed above the form ?')); ?>
		
		<?php echo $HtmlHelper->input('params[datepicker_config]', array('type' => 'text', 'label' => 'DateTime Picker selector', 'class' => 'big_input', 'style' => 'width:700px;', 'maxlength' => 500, 'value' => $params->get('datepicker_config', ''), 'smalldesc' => 'Enter the class name assigned to the datetime picker fields, e.g: dateTimePicker OR datetime::{timePicker: true}|#|datetime2::{timePicker: false}')); ?>
		
	<?php echo $TabsHelper->tabEnd(); ?>
	<?php echo $TabsHelper->tabStart('code'); ?>
		<?php echo $HtmlHelper->input('form_type', array('type' => 'select', 'label' => 'Form type', 'options' => array(0 => 'Custom', 1 => 'Wizard'), 'default' => 0, 'smalldesc' => 'Custom forms HTML code will not be affected when using it in the wizard, Wizard forms code will be overwritten though.')); ?>
		<?php echo $HtmlHelper->input('content', array('type' => 'textarea', 'label' => 'HTML code', 'rows' => 30, 'cols' => 100, 'smalldesc' => 'May contain PHP code with tags', 'value' => ($form ? htmlspecialchars($form->content) : ''))); ?>
	<?php echo $TabsHelper->tabEnd(); ?>
	<?php echo $TabsHelper->tabStart('jsval'); ?>
		<?php echo $HtmlHelper->input('params[enable_jsvalidation]', array('type' => 'select', 'label' => 'Enable JS Validation', 'value' => $params->get('enable_jsvalidation', 0), 'options' => array(0 => 'No', 1 => 'Yes'), 'default' => 0)); ?>
		<?php echo $HtmlHelper->input('params[jsvalidation_errors]', array('type' => 'select', 'label' => 'Validation Errors', 'value' => $params->get('jsvalidation_errors', 1), 'options' => array(0 => 'Default', 1 => 'Fields Titles'), 'default' => 1, 'smalldesc' => 'Should the library use the field title as the error message if exists ? the Default option will ignore the fields titles and use the error messages in the language files.')); ?>
		<?php echo $HtmlHelper->input('params[jsvalidation_theme]', array('type' => 'select', 'label' => 'JS Validation Theme', 'value' => $params->get('jsvalidation_theme', 'classic'), 'options' => array('classic' => 'Classic', 'blue' => 'Blue', 'green' => 'Green', 'red' => 'Red', 'grey' => 'Grey', 'white' => 'White'), 'default' => 'classic')); ?>
		<?php echo $HtmlHelper->input('params[jsvalidation_lang]', array('type' => 'select', 'label' => 'JS Validation Language', 'value' => $params->get('jsvalidation_lang', 'en'), 'options' => array('en' => 'English', 'fr' => 'French', 'de' => 'Deutsch', 'nl' => 'Dutch', 'es' => 'Spanish', 'da' => 'Danish', 'it' => 'Italian', 'jp' => 'Japanese', 'ru' => 'Russain', 'pt' => 'Portugese', 'gr' => 'Greek', 'pl' => 'Polish', 'ro' => 'Romanian', 'fa' => 'Farsi'), 'default' => 'en')); ?>
	<?php echo $TabsHelper->tabEnd(); ?>
<?php echo $HtmlHelper->input('id', array('type' => 'hidden')); ?>
<input type="hidden" name="task" value="" />
<input type="hidden" name="option" value="com_chronoforms" />
</form>
<div id="bfTabs">
<ul>
	<li><a href="#fragment-1"><span><img src="{$LIB_IMG_URL}bullet-info.gif" align="absmiddle" />&nbsp;{bfText}General{/bfText}</span></a></li>
	<li><a href="#fragment-2"><span><img src="{$LIB_IMG_URL}bullet-wrench.gif" align="absmiddle" />&nbsp;{bfText}Options{/bfText}</span></a></li>
	<li><a href="#fragment-2a"><span><img src="{$LIB_IMG_URL}tick.gif" align="absmiddle" />&nbsp;{bfText}Validation{/bfText}</span></a></li>
	<li><a href="#fragment-2b"><span><img src="{$LIB_IMG_URL}arrow_divide.png" align="absmiddle" />&nbsp;{bfText}Filters{/bfText}</span></a></li>
	<li><a href="#fragment-3"><span><img src="{$LIB_IMG_URL}bullet-secure.gif" align="absmiddle" />&nbsp;{bfText}Permissions{/bfText}</span></a></li>
	<li><a href="#fragment-4"><span><img src="{$LIB_IMG_URL}style.png" align="absmiddle" />&nbsp;{bfText}Style{/bfText}</span></a></li>
</ul>
<div id="fragment-1">
<table class="bfadminlist">
	<tr>
		<td><b>{bfText}Friendly Title{/bfText}</b> <br />
		{bfText}This is an internal title and is never shown on the
		site{/bfText}</td>
		<td><input size="100" class="inputbox bfinputbox" type="text"
			value="{$TITLE}" name="title" id="title" /></td>
	</tr>
	<tr>
		<td><b>{bfText}Public Field Title{/bfText}</b> <br />
		{bfText}This is the public title and IS SHOWN on the site{/bfText}</td>
		<td><input size="100" class="inputbox bfinputbox" type="text"
			value="{$PUBLICTITLE}" name="publictitle" id="publictitle" /></td>
	</tr>
	<tr>
		<td><b>{bfText}HTML Field Name{/bfText}</b> <br />

		{bfText}This is the id/name value of the actual HTML element.{/bfText}<br />
		<b>{bfText}MUST NOT start with a number!{/bfText}</b></td>
		<td><input onblur="bf_form_admin.validateFieldSlug();" size="100"
			class="inputbox bfinputbox" type="text" value="{$SLUG}" name="slug"
			id="slug" /><br />
		<b>{bfText}This must be unique in this form, this means you cannot
		have two elements with the same system name!!!<br />
		You should also keep this quite short, for example:
		"lastname"{/bfText}</b></td>
	</tr>
	<tr>
		<td valign="top"><b>{bfText}Description/Instructions{/bfText}</b> <br />

		{bfText}This is used to convey instructions to the visitor{/bfText}</td>
		<td><textarea cols="60" rows="10" class="inputbox bfinputbox"
			name="desc" id="desc">{$DESC}</textarea><br />
		</td>
	</tr>
</table>
</div>
<div id="fragment-2">
<table class="bfadminlist">
	<tr>
		<td><b>{bfText}Radio Options{/bfText}</b> <br />
		{bfText}Enter the values for each Radio, one box per line, bar separated values.<br />
		Eg.:<br />
		VALUEIFCHECKED|DISPLAYTEXT<br />
		Fishing|Fishing<br />
		Hunting|Hunting<br />
		UP|Tick Me To Go Up<br />

		{/bfText}</td>
		<td><textarea cols="50" rows="7" class="inputbox bfinputbox"
			name="value" id="value">{$VALUE}</textarea></td>
	</tr>
	<tr>
		<td><b>{bfText}Default Value{/bfText}</b> <br />
		{bfText}Write the VALUE of the boxes you want checked by default, radio boxes only allow one to be selected so make sure you only put one :-){/bfText}</td>
		<td><input size="100" class="inputbox bfinputbox" type="text"
			value="{$MULTIPLE}" name="multiple" id="multiple" /></td>
	</tr>
	<tr>
		<td><b>{bfText}Allow default value to be overridden by var in the
		GET{/bfText}</b> <br />
		{bfText}If this is set to YES, then calling a form with a url
		containing &FIELDNAME=myvalue would set the default value to
		myvalue{/bfText}</td>
		<td>{$ALLOWSETBYGET}</td>
	</tr>
	<tr>
		<td><b>{bfText}Show Field As Disabled{/bfText}</b> <br />
		{bfText}Disable this field, disabled fields are not submitted{/bfText}</td>
		<td>{$DISABLED}</td>
	</tr>
	<tr>
		<td valign="top"><b>{bfText}Javascript onBlur Statement{/bfText}</b> <br />
		{bfText}Enter the Javascript onBlur statement here, the application
		will insert this in the onBlur="" attribute{/bfText}</td>
		<td><textarea id="onblur" name="onblur" class="inputbox bfinputbox"
			style="width: 400px; height: 100px;">{$ONBLUR}</textarea></td>
	</tr>
</table>

</div>
<div id="fragment-2a">
<h1>{bfText}Warning: Pay attention to the options here, setting all to
yes will make it impossible for this field to pass validation, some
rules will conflict with other rules! (i.e. input cannot be expected to
be an IP Address AND an email address!!!{/bfText}</h1>


<fieldset><legend>Basic Rules</legend>
<table class="bfadminlist">
	<tr>
		<td><b>{bfText}Required{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will force this field to be a required
		field{/bfText}</td>
		<td style="width:180px;">{$REQUIRED}</td>
	</tr>
</table>
</fieldset>

<fieldset><legend>Blank/Non Blank Rules</legend>
<table class="bfadminlist">
	<tr>
		<td><b>{bfText}Input MUST be left blank{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will force this field to only accept
		blank values{/bfText}</td>
		<td style="width:180px;">{$VERIFY_ISBLANK}</td>
	</tr>
	<tr>
		<td><b>{bfText}Input MUST NOT be left blank{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will force this field to only accept
		input{/bfText}</td>
		<td>{$VERIFY_ISNOTBLANK}</td>
	</tr>
</table>
</fieldset>
</div>
<div id="fragment-2b">
<table class="bfadminlist">
	<tr>
		<td><b>{bfText}Filter To Only A-Z{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will force this field to be a filtered
		to only a-z or A-Z chars{/bfText}</td>
		<td style="width:180px;">{$FILTER_A2Z} <br />
		<b>{bfText}Default: No{/bfText}<b></td>
	</tr>
	<tr>
		<td><b>{bfText}StripTags Filter{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will force this field to be a filtered
		removing all HTML Tags{/bfText}</td>
		<td>{$FILTER_STRIPTAGS} <br />
		<b>{bfText}Default: Yes{/bfText}<b></td>
	</tr>
	<tr>
		<td><b>{bfText}Trim Input{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will trim the preceeding and trailing
		whitespace from the submitted value{/bfText}
		
		
		<td>{$FILTER_STRINGTRIM} <br />
		<b>{bfText}Default: Yes{/bfText}<b></td>
	</tr>
	<tr>
		<td><b>{bfText}Alnum Filter{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will returns the value, removing all but
		alphabetic and digit characters.{/bfText}
		
		
		<td>{$FILTER_ALNUM} <br />
		<b>{bfText}Default: No{/bfText}<b></td>
	</tr>
	<tr>
		<td><b>{bfText}Digits Only{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will returns the value, removing all but
		digit characters.{/bfText}
		
		
		<td>{$FILTER_DIGITS} <br />
		<b>{bfText}Default: No{/bfText}<b></td>
	</tr>
	
	<tr>
		<td><b>{bfText}Force submitted value to UPPERCASE{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will return the value after it has been made uppercase{/bfText}
		<td>{$FILTER_STRTOUPPER} <br />
		<b>{bfText}Default: No{/bfText}<b></td>
	</tr>
	
	<tr>
		<td><b>{bfText}Force submitted value to lowercase{/bfText}</b> <br />
		{bfText}Setting this to "Yes" will return the value after it has been made lowercase{/bfText}
		<td>{$FILTER_STRTOLOWER} <br />
		<b>{bfText}Default: No{/bfText}<b></td>
	</tr>

</table>

</div>
<div id="fragment-3"><!--  Access -->
<table class="bfadminlist">
	<tr>
		<td><b>{bfText}Joomla Access Level{/bfText}</b> <br />
		{bfText}A visitor needs to be this level or below to see this
		field{/bfText}</td>
		<td>{$ACCESS} <br />
		<b>{bfText}Default: Public{/bfText}<b></td>
	</tr>
	<tr>
		<td><b>{bfText}Publish this field{/bfText}</b> <br />
		{bfText}Toggle this field published/unpublished{/bfText}</td>
		<td>{$PUBLISHED} <br />
		<b>{bfText}Default: Yes{/bfText}<b></td>
	</tr>
	<tr>
		<td><b>{bfText}Allow submitted value to be sent by email{/bfText}</b>
		<br />
		{bfText}If this field contains confidential text and you never want
		this to be sent by email then choose No, and we will only send *****'s
		by email instead{/bfText}</td>
		<td>{$ALLOWBYEMAIL} <br />
		<b>{bfText}Default: Yes{/bfText}<b></td>
	</tr>

</table>

</div>
<div id="fragment-4"><!--  Style -->
<table class="bfadminlist">
<tr>
		<td><b>{bfText}Layout Option.  Horizontal or vertical{/bfText}</b> <br />
		{bfText}Shoule we display the radio boxes vertical or horizontal{/bfText}</td>
		<td>{$LAYOUTOPTION}</td>
	</tr>
	<tr>
		<td><b>{bfText}When Horizontal layout - how many radio boxes per row?{/bfText}</b></td>
		<td><input size="100" class="inputbox bfinputbox" type="text"
			value="{$ROWS}" name="rows" id="rows" /></td>
	</tr>
	<tr>
		<td><b>{bfText}CSS Class{/bfText}</b> <br />
		{bfText}This css class attribute is applied to the HTML tag{/bfText}</td>
		<td><input size="100" class="inputbox bfinputbox" type="text"
			value="{$CLASS}" name="class" id="class" /></td>
	</tr>
	<tr>
		<td><b>{bfText}CSS Style{/bfText}</b> <br />
		{bfText}If you put css in the text box to the right, this will be put
		in a style="" attribute in the HTML tag{/bfText}</td>
		<td><input size="100" class="inputbox bfinputbox" type="text"
			value="{$STYLE}" name="style" id="style" /></td>
	</tr>
</table>
</div>
</div>

<input type="hidden" value="{$ID}" name="id" id="id" />
<input type="hidden" value="{$ORDERING}" name="ordering" id="ordering" />


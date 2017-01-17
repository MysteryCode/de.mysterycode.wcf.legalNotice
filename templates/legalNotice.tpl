{include file='documentHeader'}

<head>
	<title>{lang}wcf.legalNotice.title{/lang} - {PAGE_TITLE|language}</title>

	{include file='headInclude'}

	<link rel="canonical" href="{link controller='LegalNotice'}{/link}" />
</head>

<body id="tpl{$templateName|ucfirst}" data-template="{$templateName}" data-application="{$templateNameApplication}">

{include file='header'}

<header class="boxHeadline">
	<h1>{lang}wcf.legalNotice.title{/lang}</h1>
	<p>{lang}wcf.legalNotice.description{/lang}</p>
</header>

{include file='userNotice'}

<div class="container containerPadding marginTop">
	<fieldset>
		<legend>{lang}wcf.legalNotice.general{/lang}</legend>

		<dl>
			{if LEGAL_NOTICE_ADDRESS}
				<dt>{lang}wcf.legalNotice.address{/lang}</dt>
				<dd>{@LEGAL_NOTICE_ADDRESS|language|newlineToBreak}</dd>
			{/if}

			{if $encodedEmailAddress}
				<dt>{lang}wcf.legalNotice.emailAddress{/lang}</dt>
				<dd><a href="mailto:{@$encodedEmailAddress}">{@$encodedEmailAddress}</a></dd>
			{/if}

			{if LEGAL_NOTICE_EMAIL_ADDRESS_PGP}
				<dt>{lang}wcf.legalNotice.pgp{/lang}</dt>
				<dd><a href="{@LEGAL_NOTICE_EMAIL_ADDRESS_PGP}">{@LEGAL_NOTICE_EMAIL_ADDRESS_PGP}</a></dd>
			{/if}

			{if LEGAL_NOTICE_CONTACT_FORM}
				<dt>{lang}wcf.legalNotice.contactForm{/lang}</dt>
				<dd><a href="{@LEGAL_NOTICE_CONTACT_FORM}">{lang}wcf.legalNotice.contactForm.text{/lang}</a></dd>
			{/if}

			{if LEGAL_NOTICE_PHONE}
				<dt>{lang}wcf.legalNotice.phone{/lang}</dt>
				<dd>{LEGAL_NOTICE_PHONE}</dd>
			{/if}

			{if LEGAL_NOTICE_FAX}
				<dt>{lang}wcf.legalNotice.fax{/lang}</dt>
				<dd>{LEGAL_NOTICE_FAX}</dd>
			{/if}

			{if LEGAL_NOTICE_REPRESENTATIVE}
				<dt>{lang}wcf.legalNotice.representative{/lang}</dt>
				<dd>{LEGAL_NOTICE_REPRESENTATIVE}</dd>
			{/if}

			{if LEGAL_NOTICE_REGISTER}
				<dt>{lang}wcf.legalNotice.register{/lang}</dt>
				<dd>{LEGAL_NOTICE_REGISTER}</dd>
			{/if}

			{if LEGAL_NOTICE_VAT_ID}
				<dt>{lang}wcf.legalNotice.vatID{/lang}</dt>
				<dd>{LEGAL_NOTICE_VAT_ID}</dd>
			{/if}
		</dl>

		{event name='generalFields'}
	</fieldset>

	{if LEGAL_NOTICE_DISCLAIMER_GOOGLE_ANALYTICS}
		<fieldset>
			<legend>{lang}wcf.legalNotice.googleAnalytics.legend{/lang}</legend>

			{lang}wcf.legalNotice.googleAnalytics.text{/lang}
		</fieldset>
	{/if}

	{if LEGAL_NOTICE_DISCLAIMER_GOOGLE_PLUS}
		<fieldset>
			<legend>{lang}wcf.legalNotice.googlePlus.legend{/lang}</legend>

			{lang}wcf.legalNotice.googlePlus.text{/lang}
		</fieldset>
	{/if}

	{if LEGAL_NOTICE_DISCLAIMER_FACEBOOK_LIKE}
		<fieldset>
			<legend>{lang}wcf.legalNotice.facebookLike.legend{/lang}</legend>

			{lang}wcf.legalNotice.facebookLike.text{/lang}
		</fieldset>
	{/if}

	{if LEGAL_NOTICE_DISCLAIMER_TWITTER}
		<fieldset>
			<legend>{lang}wcf.legalNotice.twitter.legend{/lang}</legend>

			{lang}wcf.legalNotice.twitter.text{/lang}
		</fieldset>
	{/if}

	{if LEGAL_NOTICE_SHOW_ODR}
		<fieldset>
			<legend>{lang}wcf.legalNotice.odr.legend{/lang}</legend>

			{lang}wcf.legalNotice.odr.text{/lang}
		</fieldset>
	{/if}

	{if LEGAL_NOTICE_IMAGE_SOURCE}
		<fieldset>
			<legend>{lang}wcf.legalNotice.imageSource{/lang}</legend>

			{@LEGAL_NOTICE_IMAGE_SOURCE|newlineToBreak}
		</fieldset>
	{/if}

	{if LEGAL_NOTICE_ADDITIONAL_TEXT}
		<fieldset>
			<legend>{lang}wcf.legalNotice.additionalText{/lang}</legend>

			<div class="htmlContent">
				{if LEGAL_NOTICE_ADDITIONAL_TEXT_ENABLE_HTML}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language}{else}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language|newlineToBreak}{/if}
			</div>

			{event name='additionalTextFields'}
		</fieldset>
	{/if}

	{event name='fieldsets'}
</div>

{include file='footer'}

</body>
</html>

{capture assign='contentDescription'}{lang}wcf.legalNotice.description{/lang}{/capture}

{include file='header'}

<section class="section">
	<h2 class="sectionTitle">{lang}wcf.legalNotice.general{/lang}</h2>

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
</section>

{if LEGAL_NOTICE_DISCLAIMER_GOOGLE_ANALYTICS}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.googleAnalytics.legend{/lang}</h2>

		{lang}wcf.legalNotice.googleAnalytics.text{/lang}
	</section>
{/if}

{if LEGAL_NOTICE_DISCLAIMER_GOOGLE_PLUS}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.googlePlus.legend{/lang}</h2>

		{lang}wcf.legalNotice.googlePlus.text{/lang}
	</section>
{/if}

{if LEGAL_NOTICE_DISCLAIMER_FACEBOOK_LIKE}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.facebookLike.legend{/lang}</h2>

		{lang}wcf.legalNotice.facebookLike.text{/lang}
	</section>
{/if}

{if LEGAL_NOTICE_DISCLAIMER_TWITTER}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.twitter.legend{/lang}</h2>

		{lang}wcf.legalNotice.twitter.text{/lang}
	</section>
{/if}

{if LEGAL_NOTICE_SHOW_ODR}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.odr.legend{/lang}</h2>

		{lang}wcf.legalNotice.odr.text{/lang}
	</section>
{/if}

{if LEGAL_NOTICE_IMAGE_SOURCE}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.imageSource{/lang}</h2>

		{@LEGAL_NOTICE_IMAGE_SOURCE|newlineToBreak}
	</section>
{/if}

{if LEGAL_NOTICE_ADDITIONAL_TEXT}
	<section class="section">
		<h2 class="sectionTitle">{lang}wcf.legalNotice.additionalText{/lang}</h2>

		<div class="htmlContent">
			{if LEGAL_NOTICE_ADDITIONAL_TEXT_ENABLE_HTML}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language}{else}{@LEGAL_NOTICE_ADDITIONAL_TEXT|language|newlineToBreak}{/if}
		</div>

		{event name='additionalTextFields'}
	</section>
{/if}

{event name='sections'}

{include file='footer'}

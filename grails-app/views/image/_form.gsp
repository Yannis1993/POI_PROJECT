<%@ page import="fr.mbds.tpgrails.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="image.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${imageInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="image.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${imageInstance?.url}"/>

</div>


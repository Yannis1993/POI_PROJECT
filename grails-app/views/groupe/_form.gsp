<%@ page import="fr.mbds.tpgrails.Groupe" %>



<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="groupe.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${groupeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="groupe.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${groupeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="groupe.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${fr.mbds.tpgrails.User.list()}" optionKey="id" required="" value="${groupeInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="groupe.images.label" default="Images" />
		
	</label>
	<g:select name="images" from="${fr.mbds.tpgrails.Image.list()}" multiple="multiple" optionKey="id" size="5" value="${groupeInstance?.images*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'pois', 'error')} ">
	<label for="pois">
		<g:message code="groupe.pois.label" default="Pois" />
		
	</label>
	<g:select name="pois" from="${fr.mbds.tpgrails.Poi.list()}" multiple="multiple" optionKey="id" size="5" value="${groupeInstance?.pois*.id}" class="many-to-many"/>

</div>


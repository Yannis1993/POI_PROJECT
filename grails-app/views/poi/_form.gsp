<%@ page import="fr.mbds.tpgrails.Poi" %>



<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="poi.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${poiInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="poi.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="longitude" required="" value="${poiInstance?.longitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="poi.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="latitude" required="" value="${poiInstance?.latitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="poi.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${poiInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="poi.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${fr.mbds.tpgrails.User.list()}" optionKey="id" required="" value="${poiInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'groupes', 'error')} ">
	<label for="groupes">
		<g:message code="poi.groupes.label" default="Groupes" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="poi.images.label" default="Images" />
		
	</label>
	<g:select name="images" from="${fr.mbds.tpgrails.Image.list()}" multiple="multiple" optionKey="id" size="5" value="${poiInstance?.images*.id}" class="many-to-many"/>

</div>


<%@ include file="/WEB-INF/template/include.jsp" %>
<%@ include file="/WEB-INF/template/header.jsp" %>

<openmrs:htmlInclude file="/moduleResources/dhisconnector/dhisconnector.css"/>

<%@ include file="template/localHeader.jsp" %>

<h3><spring:message code="dhisconnector.uploadMapping"/></h3>
	<br /><spring:message code="dhisconnector.uploadMapping.message"/><br /><br />
	<div class="error-encountered">${failureWhileUploading}</div><br />
	<div class="success-encountered">${successWhileUploading}</div><br />
	<form method="POST" enctype="multipart/form-data">
        <spring:message code="dhisconnector.mappingToUpload"/> <input type="file" name="mapping"><br /><br />
        <input type="submit" value='<spring:message code="dhisconnector.uploadMapping.upload"/>'>
    </form>

<!-- Overrides /WEB-INF/template/footer.jsp -->
<%@ include file="jembiOpenMRSFooter.jsp" %>
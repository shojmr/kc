<%--
 Copyright 2005-2014 The Kuali Foundation
 
 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.osedu.org/licenses/ECL-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<c:set var="AUDIT_ERRORS" value="<%=org.kuali.kra.infrastructure.Constants.AUDIT_ERRORS%>" />
<c:set var="AUDIT_WARNINGS" value="<%=org.kuali.kra.infrastructure.Constants.AUDIT_WARNINGS%>" />

<kra:dataValidation auditActivated="${KualiForm.auditActivated}" topTab="true" categories="${AUDIT_ERRORS},${AUDIT_WARNINGS}" 
			     	helpParameterNamespace="KC-AWARD"  helpParameterDetailType="Document" helpParameterName="awardDataValidationHelpUrl">
                    <p>You can activate a Validation check to determine any errors or incomplete information. The following Validations types will be determined:</p>
                    <ul>
                      <li>errors that prevent submission into routing</li>
                      <li>warnings that serve as alerts to  possible data issues but will not prevent submission into routing</li>
                      <li>errors that prevent submission to grants.gov</li>
                    </ul>
</kra:dataValidation>

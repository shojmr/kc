/*
 * Copyright 2005-2013 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.award.budget.document.authorizer;

import org.kuali.coeus.sys.framework.auth.task.Task;
import org.kuali.coeus.sys.framework.kew.KcWorkflowService;
import org.kuali.kra.award.budget.document.AwardBudgetDocument;
import org.kuali.kra.award.budget.document.authorization.AwardBudgetTask;
import org.kuali.kra.budget.document.authorizer.BudgetAuthorizer;
import org.kuali.kra.infrastructure.AwardPermissionConstants;
import org.kuali.kra.infrastructure.Constants;

/**
 * The Budget Modify Authorizer checks to see if the user has 
 * the necessary permission to modify a specific budget.
 *
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class ModifyAwardBudgetAuthorizer extends BudgetAuthorizer {

    private KcWorkflowService kraWorkflowService;

    public boolean isAuthorized(String userId, Task task) {
            AwardBudgetTask budgetTask = (AwardBudgetTask) task;
            AwardBudgetDocument budgetDocument = budgetTask.getAwardBudgetDocument();
            return !budgetDocument.isViewOnly() && !kraWorkflowService.isInWorkflow(budgetDocument) && 
                    hasUnitPermission(userId, budgetDocument.getLeadUnitNumber(), Constants.MODULE_NAMESPACE_AWARD_BUDGET, AwardPermissionConstants.MODIFY_AWARD_BUDGET.getAwardPermission());
    }

    public KcWorkflowService getKraWorkflowService() {
        return kraWorkflowService;
    }

    public void setKraWorkflowService(KcWorkflowService kraWorkflowService) {
        this.kraWorkflowService = kraWorkflowService;
    }
}

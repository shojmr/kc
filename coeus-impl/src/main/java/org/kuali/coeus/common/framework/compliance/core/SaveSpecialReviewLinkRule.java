/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.coeus.common.framework.compliance.core;

import org.kuali.coeus.common.framework.compliance.exemption.SpecialReviewExemption;
import org.kuali.coeus.common.framework.ruleengine.KcEventMethod;
import org.kuali.coeus.sys.framework.rule.KcBusinessRule;

/**
 * Runs the rule processing for saving the Special Review links to the Protocol Funding Sources.
 * @param <T> The subclass of Special Review
 */
@org.kuali.coeus.common.framework.ruleengine.KcBusinessRule("saveSpecialReviewLinkRule")
public class SaveSpecialReviewLinkRule<T extends SpecialReview<? extends SpecialReviewExemption>> extends SpecialReviewRuleBase<T> 
    implements KcBusinessRule<SaveSpecialReviewLinkEvent<T>> {
    
    @Override
    @KcEventMethod
    public boolean processRules(SaveSpecialReviewLinkEvent<T> event) {
        return processSaveSpecialReviewLinkEvent(event);
    }

}
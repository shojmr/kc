/*
 * Copyright 2006-2008 The Kuali Foundation
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
package org.kuali.kra.meeting;

import java.util.ArrayList;
import java.util.List;

import org.kuali.rice.kns.lookup.keyvalues.KeyValuesBase;
import org.kuali.rice.kns.web.ui.KeyLabelPair;

public class AlternateForValuesFinder extends KeyValuesBase {
    private String absenteeList;

    /**
     * @see org.kuali.core.lookup.keyvalues.KeyValuesBase#getKeyValues()
     */
    public List getKeyValues() {
        
        List<KeyLabelPair> keyValues = new ArrayList<KeyLabelPair>();
        for(String idName : absenteeList.split("#m#")) {
            String [] valuePair = idName.split("#f#");
            keyValues.add(new KeyLabelPair(valuePair[0], valuePair[1]));
        }
        keyValues.add(0, new KeyLabelPair("", "select"));
        return keyValues;
    }

    public String getAbsenteeList() {
        return absenteeList;
    }

    public void setAbsenteeList(String absenteeList) {
        this.absenteeList = absenteeList;
    }

}

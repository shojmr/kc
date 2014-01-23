/*
 * Copyright 2005-2010 The Kuali Foundation
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
package org.kuali.kra.proposaldevelopment.lookup.keyvalue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.kuali.kra.bo.S2sRevisionType;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.rice.core.util.KeyLabelPair;
import org.kuali.rice.kns.lookup.keyvalues.KeyValuesBase;
import org.kuali.rice.kns.service.KeyValuesService;

public class S2sRevisionTypeValuesFinder extends KeyValuesBase {
    
    public List getKeyValues() {
        KeyValuesService keyValuesService = (KeyValuesService) KraServiceLocator.getService("keyValuesService");
        Collection s2sRevisionTypes = keyValuesService.findAll(S2sRevisionType.class);
        List<KeyLabelPair> keyValues = new ArrayList<KeyLabelPair>();        
        for (Iterator iter = s2sRevisionTypes.iterator(); iter.hasNext();) {
            S2sRevisionType s2sRevisionType = (S2sRevisionType) iter.next();
            keyValues.add(new KeyLabelPair(s2sRevisionType.getS2sRevisionTypeCode(), s2sRevisionType.getDescription()));
        }
        return keyValues;
    }
}
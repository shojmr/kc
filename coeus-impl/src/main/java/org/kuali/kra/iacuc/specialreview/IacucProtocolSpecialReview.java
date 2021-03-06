/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.kra.iacuc.specialreview;

import org.kuali.kra.iacuc.IacucProtocol;
import org.kuali.kra.protocol.specialreview.ProtocolSpecialReviewBase;
import org.kuali.kra.protocol.specialreview.ProtocolSpecialReviewExemption;

/**
 * Defines a Special Review for a Protocol.
 */
public class IacucProtocolSpecialReview extends ProtocolSpecialReviewBase {

    private static final long serialVersionUID = 8844844156781463843L;

    public IacucProtocol getSequenceOwner() {
        return (IacucProtocol) super.getSequenceOwner();
    }

    public void resetPersistenceState() {
        super.resetPersistenceState();
        for (ProtocolSpecialReviewExemption exemption : getSpecialReviewExemptions()) {
            exemption.setProtocolSpecialReviewExemptionId(null);
            exemption.setProtocolSpecialReviewId(null);
        }
    }

    public ProtocolSpecialReviewExemption createSpecialReviewExemption(String exemptionTypeCode) {
        IacucProtocolSpecialReviewExemption protocolSpecialReviewExemption = new IacucProtocolSpecialReviewExemption();
        protocolSpecialReviewExemption.setExemptionTypeCode(exemptionTypeCode);
        protocolSpecialReviewExemption.setProtocolSpecialReview(this);
        return protocolSpecialReviewExemption;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((getProtocolId() == null) ? 0 : getProtocolId().hashCode());
        result = prime * result + ((getProtocolSpecialReviewId() == null) ? 0 : getProtocolSpecialReviewId().hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        IacucProtocolSpecialReview other = (IacucProtocolSpecialReview) obj;
        if (getProtocolId() == null) {
            if (other.getProtocolId() != null) {
                return false;
            }
        } else if (!getProtocolId().equals(other.getProtocolId())) {
            return false;
        }
        if (getProtocolSpecialReviewId() == null) {
            if (other.getProtocolSpecialReviewId() != null) {
                return false;
            }
        } else if (!getProtocolSpecialReviewId().equals(other.getProtocolSpecialReviewId())) {
            return false;
        }
        return true;
    }
}

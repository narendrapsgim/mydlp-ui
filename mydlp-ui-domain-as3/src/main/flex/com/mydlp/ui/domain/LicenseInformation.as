/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package com.mydlp.ui.domain {

    [Managed]
    [RemoteClass(alias="com.mydlp.ui.domain.LicenseInformation")]
    public class LicenseInformation extends LicenseInformationBase {
		public static const COMMUNITY_LICENSE:String = "community";
		public static const ENTERPRISE_LICENSE:String = "enterprise";
		public static const TRIAL_LICENSE:String = "trial";
    }
}
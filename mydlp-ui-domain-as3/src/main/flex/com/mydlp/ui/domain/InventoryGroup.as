/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package com.mydlp.ui.domain {

    [Managed]
    [RemoteClass(alias="com.mydlp.ui.domain.InventoryGroup")]
    public class InventoryGroup extends InventoryGroupBase {
		public static const TYPE_ITYPE:String = "ITYPE";
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/triple_page.png")]
		public static const INFORMATION_TYPE_GROUP_ICON:Class;
		
		public var sortPriority:Number = 5;
		
		public function get icon(): Object
		{
			return INFORMATION_TYPE_GROUP_ICON;
		}
    }
}
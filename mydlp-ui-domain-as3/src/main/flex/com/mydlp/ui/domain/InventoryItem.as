/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package com.mydlp.ui.domain {

    [Managed]
    [RemoteClass(alias="com.mydlp.ui.domain.InventoryItem")]
    public class InventoryItem extends InventoryItemBase {
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/wired.png")]
		public static const ICON_NETWORK:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/workstation.png")]
		public static const ICON_HOSTNAME:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/shield.png")]
		public static const ICON_ENDPOINT_ITEM:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/page.png")]
		public static const ICON_INFORMATION_TYPE:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/email.png")]
		public static const ICON_DESTINATION_DOMAIN:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/user_static.png")]
		public static const ICON_RULE_USER_STATIC:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/folder_fs.png")]
		public static const ICON_DESTINATION_FILESYSTEM_DIRECTORY:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/computer.png")]
		public static const ICON_APPLICATION_NAME:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/remote_storage.png")]
		public static const REMOTE_STORAGE:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/remote_storage.png")]
		public static const WEB_DISCOVERY:Class;
		
		[Embed("../../../../../../../../mydlp-ui-flex/src/main/flex/assets/icons/16x16/windows_storage.png")]
		public static const WINDOWS_STORAGE:Class;
		
		public var sortPriority:Number = 7;
		
		private var _icon:Object = null;
		
		public function get icon(): Object
		{
			if (_icon == null)
			{
				if (this is InventoryItem)
				{
					var iitem:Item = (this as InventoryItem).item;
					
					if (iitem is InformationType)
						_icon = ICON_INFORMATION_TYPE;
					else if (iitem is Network)
						_icon = ICON_NETWORK;
					else if (iitem is Hostname)
						_icon = ICON_HOSTNAME;
					else if (iitem is EndpointItem)
						_icon = ICON_ENDPOINT_ITEM;
					else if (iitem is Domain)
						_icon = ICON_DESTINATION_DOMAIN;
					else if (iitem is FileSystemDirectory)
						_icon = ICON_DESTINATION_FILESYSTEM_DIRECTORY;
					else if (iitem is ApplicationName)
						_icon = ICON_APPLICATION_NAME;
					else if (iitem is RuleUserStatic)
						_icon = ICON_RULE_USER_STATIC;
					else if (iitem is RuleUserAD) {
						var ruser:RuleUserAD = iitem as RuleUserAD;
						if (ruser.domainItem is ADDomainOU)
							_icon = ADDomainOU.ICON_CLASS;
						else if (ruser.domainItem is ADDomainUser)
							_icon = ADDomainUser.ICON_CLASS;
						else if (ruser.domainItem is ADDomainGroup)
							_icon = ADDomainGroup.ICON_CLASS;
						else
							_icon = ADDomainGroup.ICON_CLASS;
					}
					else if(iitem is RemoteStorageSSHFS)
						_icon = REMOTE_STORAGE;
					else if(iitem is RemoteStorageFTPFS)
						_icon = REMOTE_STORAGE;
					else if(iitem is RemoteStorageNFS)
						_icon = REMOTE_STORAGE;
					else if(iitem is RemoteStorageWindowsShare)
						_icon = WINDOWS_STORAGE;
					else if(iitem is WebServer)
						_icon = WEB_DISCOVERY;
				}
			}
			return _icon;
		}
    }
}
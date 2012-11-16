package com.mydlp.ui.schema.granules;

import com.mydlp.ui.domain.Config;
import com.mydlp.ui.schema.AbstractGranule;

public class _001_00100_Config_Notification extends AbstractGranule {

	@Override
	protected void callback() {

		Config emailNotificationPage = new Config();	
		emailNotificationPage.setKey("email_notification_message");
		emailNotificationPage.setValue("Hello,\r\nThis is an auto-generated message. This message aims to inform you about some incidents that have been recently occurred and logged in your MyDLP system.\r\nYou are recieving this message because you have subscribed to be notified for incidents related to a rule in MyDLP.\r\nFor details, please log on to MyDLP Management Console and go to Logs screen.\r\nIf you do not want to recieve these emails, please contact to your system administrator.\r\nPlease do not reply this email.");

		getHibernateTemplate().saveOrUpdate(emailNotificationPage);	

	}

}

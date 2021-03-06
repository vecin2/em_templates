--{"is_new_perspective":"y","perspective_name":"GTX Admin","__is_new_context":"N","PERSPECTIVE_PROCESS":"PCCoreChannels.Implementation.PerspectiveProcess.PolicyInteractionPerspectiveProcess","config_kename":"AdminHome","USER_ADDABLE":"Y","RUN_DESKTOP_RULES":"Y","SHOW_SUGGESTIONS_PANEL":"","MAX_VISIBLE_SUGGESTIONS":"","profile_keyname":"BUSINESS_ADMIN","seq_no":"1"}
INSERT INTO FD_PERSPECTIVE (ID,ENV_ID,NAME,PERSPECTIVE_PROCESS,CONTEXT_CONFIG_ID,CONTEXT_CONFIG_ENV_ID,USER_ADDABLE,IS_DELETED,RELEASE_ID,CAN_MODIFY_DISPLAY_NAME,TENANT_ID,RUN_DESKTOP_RULES,SHOW_SUGGESTIONS_PANEL,MAX_VISIBLE_SUGGESTIONS) 
VALUES (@PPTIVE.GTXAdmin,--ID
	@ENV.Dflt,--ENV_ID
	'GTX Admin', --NAME
	'PCCoreChannels.Implementation.PerspectiveProcess.PolicyInteractionPerspectiveProcess', --PERSPECTIVE_PROCESS
	@CC.AdminHome,--CONTEXT_CONFIG_ID
	@ENV.Dflt, --CONTEXT_CONFIG_ENV_ID
	'Y', --USER_ADDABLE
	'N', --IS_DELETED
	@RELEASE.ID,   --RELEASE_ID
	'Y', --CAN_MODIFY_DISPLAY_NAME
	'default', --TENANT_ID
	'Y', --RUN_DESKTOP_RULES
	'N', --SHOW_SUGGESTIONS_PANEL
	5 --MAX_VISIBLE_SUGGESTIONS
);
INSERT INTO FD_PROFILE_TYPE_PERSPECTIVE (PROFILE_ID,PROFILE_ENV_ID,PERSPECTIVE_ID,PERSPECTIVE_ENV_ID,SEQ_NO,RELEASE_ID,TENANT_ID,CONTEXT_UPDATER_DEFAULT) VALUES (
	@PROFILE.BUSINESS_ADMIN, --PROFILE_ID
	@ENV.Dflt, --PROFILE_ENV_ID
	@PPTIVE.GTXAdmin, --PERSPECTIVE_ID
	@ENV.Dflt, --PERSPECTIVE_ENV_ID
	1, --SEQ_NO
	@RELEASE.ID, --RELEASE_ID
	'default', --TENANT_ID
	'N' --CONTEXT_UPDATER_DEFAULT
);


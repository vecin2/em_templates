--{"perspective_name":"Policy","__is_new_context":"Y","PERSPECTIVE_PROCESS":"PCCoreChannels.Implementation.PerspectiveProcess.PolicyInteractionPerspectiveProcess","USER_ADDABLE":"Y","RUN_DESKTOP_RULES":"Y","SHOW_SUGGESTIONS_PANEL":"","MAX_VISIBLE_SUGGESTIONS":""}
INSERT INTO EVA_CONTEXT_CONFIG (ID,ENV_ID,NAME,IS_DELETED,RELEASE_ID,TENANT_ID) VALUES (
	@CC.PolicyContext,
	@ENV.Dflt,
	'Policy Context',
	'N',
	@RELEASE.ID,
	'default'
);

INSERT INTO FD_PERSPECTIVE (ID,ENV_ID,NAME,PERSPECTIVE_PROCESS,CONTEXT_CONFIG_ID,CONTEXT_CONFIG_ENV_ID,USER_ADDABLE,IS_DELETED,RELEASE_ID,CAN_MODIFY_DISPLAY_NAME,TENANT_ID,RUN_DESKTOP_RULES,SHOW_SUGGESTIONS_PANEL,MAX_VISIBLE_SUGGESTIONS) 
VALUES (@PPTIVE.Policy,--ID
	@ENV.Dflt,--ENV_ID
	'Policy', --NAME
	'PCCoreChannels.Implementation.PerspectiveProcess.PolicyInteractionPerspectiveProcess', --PERSPECTIVE_PROCESS
	@CC.PolicyContext,--CONTEXT_CONFIG_ID
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

CREATE TABLE [dbo].[APP_AUDIT_LOG]  ( 
	[LOG_ID]     	int IDENTITY(1,1) NOT NULL,
	[ORGAN_ID]   	varchar(10) NULL,
	[DEPT_ID]    	varchar(12) NULL,
	[USER_ID]    	varchar(32) NULL,
	[OPER_TYPE]  	varchar(1) NULL,
	[OPER_MODULE]	varchar(1) NULL,
	[USER_NAME]  	varchar(50) NULL,
	[OPER_TIME]  	datetime NULL,
	CONSTRAINT [PK__APPLICAT__D91BE4752F650636] PRIMARY KEY CLUSTERED([LOG_ID])
)
GO

CREATE TABLE [dbo].[CORP_ANNL]  ( 
	[CORP_ANNL_ID] 	varchar(32) NOT NULL,
	[CORP_INFO_ID] 	varchar(20) NOT NULL,
	[ORGAN_CODE]   	varchar(10) NULL,
	[ENTITY_ID]    	varchar(21) NULL,
	[ANNL_RESULT]  	varchar(40) NULL,
	[ANNL_YEAR]    	varchar(10) NULL,
	[BUSI_UPD_TIME]	datetime NULL,
	[UPD_TIME]     	datetime NULL,
	[CORP_TYPE]    	varchar(8) NULL,
	CONSTRAINT [PK_CORP_ANNL_B20150909] PRIMARY KEY CLUSTERED([CORP_ANNL_ID])
)
GO

CREATE TABLE [dbo].[CORP_ASSESS]  ( 
	[corp_info_id]   	varchar(20) NULL,
	[assess_date]    	datetime NULL,
	[upd_time]       	datetime NULL,
	[organ_code]     	varchar(10) NULL,
	[taxpayers_code] 	varchar(20) NULL,
	[corp_assess_id] 	varchar(32) NOT NULL,
	[busi_upd_time]  	datetime NULL,
	[SYS_INSERT_TIME]	datetime NULL,
	CONSTRAINT [PK__CORP_ASS__B8F039F73BCADD1B] PRIMARY KEY CLUSTERED([corp_assess_id])
)
GO

CREATE TABLE [dbo].[CORP_INFO]  ( 
	[CORP_INFO_ID]               	varchar(20) NOT NULL,
	[ORGAN_CODE]                 	varchar(400) NULL,
	[ENTITY_ID]                  	varchar(100) NULL,
	[CORP_NAME]                  	varchar(400) NULL,
	[CORP_TYPE]                  	varchar(8) NOT NULL,
	[PERSON_NAME]                	varchar(60) NULL,
	[ADDRESS]                    	varchar(400) NULL,
	[AREA_CODE]                  	varchar(20) NULL,
	[ZIP]                        	varchar(6) NULL,
	[TELEPHONE]                  	varchar(400) NULL,
	[ESTABLISH_DATE]             	datetime2 NULL,
	[REG_CAPITAL]                	decimal(16,4) NULL,
	[CURRENCY]                   	varchar(10) NULL,
	[BUSINESS_SCOPE]             	varchar(2000) NULL,
	[PERSON_CERT_TYPE]           	varchar(40) NULL,
	[PERSON_CERT_CODE]           	varchar(30) NULL,
	[INDUSTRY_CODE]              	varchar(6) NULL,
	[ORGANIZERS]                 	varchar(150) NULL,
	[FUNDING_SRC]                	varchar(20) NULL,
	[REG_NO]                     	varchar(60) NULL,
	[RECEIVING_ORGAN]            	varchar(20) NULL,
	[REPEAL_REASON]              	varchar(400) NULL,
	[REPEAL_DATE]                	datetime2 NULL,
	[CHANGE_DATE]                	datetime2 NULL,
	[CHANGE_ITEM]                	varchar(400) NULL,
	[REPEAL_ORGAN]               	varchar(6) NULL,
	[BRANCH_NUM]                 	decimal(38,4) NULL,
	[REPRESENT_NUM]              	decimal(38,4) NULL,
	[REG_UPD_DATE]               	datetime2 NULL,
	[TAXPAYERS_CODE]             	varchar(20) NULL,
	[TAX_CODE]                   	varchar(20) NULL,
	[TAX_REG_DATE]               	datetime2 NULL,
	[TAX_CHGE_CONTENT]           	varchar(400) NULL,
	[TAX_CHGE_DATE]              	datetime2 NULL,
	[TAX_REPEAL_REASON]          	varchar(2) NULL,
	[TAX_REPEAL_DATE]            	datetime2 NULL,
	[TAX_REPEAL_ORGAN]           	varchar(20) NULL,
	[BUSINESS_ADDRESS]           	varchar(200) NULL,
	[TAX_UPD_DATE]               	datetime2 NULL,
	[ORGANCODE_DATE]             	datetime2 NULL,
	[ORGCODE_CHGDATE]            	datetime2 NULL,
	[ORGCODE_REPEALDATE]         	datetime2 NULL,
	[QS_UPD_DATE]                	datetime2 NULL,
	[BD_RESULT]                  	varchar(10) NULL,
	[QYK_ID]                     	varchar(40) NULL,
	[UPD_TIME]                   	datetime2 NULL,
	[FUNDS_CODE]                 	varchar(128) NULL,
	[FUNDS_OPEN_DATE]            	datetime2 NULL,
	[FUNDS_REPEAL_DATE]          	datetime2 NULL,
	[FUNDSADD_CODE]              	varchar(128) NULL,
	[FUNDSADD_OPEN_DATE]         	datetime2 NULL,
	[FUNDSADD_REPEAL_DATE]       	datetime2 NULL,
	[FUNDS_UPD_DATE]             	datetime2 NULL,
	[SOCIAL_SECURITY_CODE]       	varchar(128) NULL,
	[SOCIAL_SECURITY_UPD_DATE]   	datetime2 NULL,
	[SOCIAL_SECURITY_OPEN_DATE]  	datetime2 NULL,
	[FUNDSADD_UPD_DATE]          	datetime2 NULL,
	[SOCIAL_SECURITY_REPEAL_DATE]	datetime2 NULL,
	[LK_STATUS]                  	char(1) NULL,
	[IS_ZMQ]                     	varchar(5) NULL,
	[TRIM_CORP_NAME]             	varchar(300) NULL,
	[CORP_STATUS]                	varchar(10) NULL,
	[INSERT_TIME]                	datetime2 NULL,
	[IS_GSL]                     	char(1) NULL,
	[IS_RECENTLY_ZMQ]            	char(1) NULL,
	[IS_WEB_SEND]                	char(1) NULL,
	[UNI_SC_ID]                  	varchar(100) NULL 
	)
GO

CREATE TABLE [dbo].[CORP_LICENSE]  ( 
	[LICENSE_ID]                 	varchar(20) NOT NULL,
	[CORP_INFO_ID]               	varchar(20) NULL,
	[ORGAN_CODE]                 	varchar(50) NULL,
	[LICENSE_TYPE]               	varchar(6) NOT NULL,
	[UNIQUE_CODE]                	varchar(128) NULL,
	[BUREAU_CODE]                	varchar(10) NOT NULL,
	[LICENSE_STATUS]             	varchar(4) NULL,
	[LICENSE_CODE]               	varchar(128) NULL,
	[LICENSE_DATA]               	datetime NULL,
	[UNIT_NAME]                  	varchar(128) NULL,
	[START_DATE]                 	datetime NULL,
	[END_DATE]                   	datetime NULL,
	[PERSON_NAME]                	varchar(128) NULL,
	[BUSINESS_SCOPE]             	varchar(4000) NULL,
	[UNIT_ADDRESS]               	varchar(200) NULL,
	[ECONOMIC_NATURE]            	varchar(128) NULL,
	[TIME_LIMIT]                 	varchar(128) NULL,
	[ETPS_TYPE]                  	varchar(128) NULL,
	[BUSINESS_ADDRESS]           	varchar(200) NULL,
	[BUSINESS_METHOD]            	varchar(128) NULL,
	[REG_ADDRESS]                	varchar(200) NULL,
	[UNIT_PERSON]                	varchar(128) NULL,
	[WORK_SCOPE]                 	varchar(1500) NULL,
	[WORK_ADDRESS]               	varchar(200) NULL,
	[WORK_METHOD]                	varchar(1024) NULL,
	[PERMISSION_SCOPE]           	varchar(2500) NULL,
	[ESTABLISH_DATE]             	datetime NULL,
	[VALIDITY_AREA]              	varchar(128) NULL,
	[QUALI_LEVEL]                	varchar(128) NULL,
	[BUSINESS_CATEGORY]          	varchar(500) NULL,
	[MANAGE_ORGAN]               	varchar(128) NULL,
	[QUALITY_MANAGER]            	varchar(128) NULL,
	[BELONG_UNIT]                	varchar(128) NULL,
	[ETPS_ADDRESS]               	varchar(200) NULL,
	[WAREHOUSE_ADDR]             	varchar(1024) NULL,
	[REG_NO]                     	varchar(128) NULL,
	[REG_DATE]                   	datetime NULL,
	[CDO_CATEGORY]               	varchar(128) NULL,
	[BUSI_UPD_TIME]              	datetime NULL,
	[UPD_TIME]                   	datetime NULL CONSTRAINT [DF__CORP_LICE__UPD_T__7720AD13]  DEFAULT (getdate()),
	[UNIT_PROPERTY]              	varchar(128) NULL,
	[ISSUE_ORGAN]                	varchar(128) NULL,
	[PERMISSION_CONTEXT]         	text NULL,
	[PERSON_TITLE]               	varchar(128) NULL,
	[PERSON_TEL]                 	varchar(128) NULL,
	[UNIT_PERSON_TITLE]          	varchar(128) NULL,
	[UNIT_PERSON_TEL]            	varchar(40) NULL,
	[ZIP]                        	varchar(100) NULL,
	[OTHER_UNIT_NAME]            	varchar(100) NULL,
	[OTHER_ORGAN_CODE]           	varchar(100) NULL,
	[AREA_CODE]                  	varchar(20) NULL,
	[BD_RESULT]                  	varchar(10) NULL,
	[MATCH_RESULT]               	varchar(2) NULL,
	[DATA_UPLOAD_TYPE]           	varchar(4) NULL,
	[LK_STATUS]                  	char(1) NULL,
	[INSERT_TIME]                	datetime NULL CONSTRAINT [DF__CORP_LICE__INSER__7814D14C]  DEFAULT (getdate()),
	[LICENSE_BD_ID]              	decimal(15,5) NULL,
	[PERMISSION_DECISION_CONTEXT]	text NULL,
	[LICENSE_NAME]               	varchar(128) NULL,
	[PRODUCT_NAME]               	varchar(128) NULL,
	[PRODUCT_MODEL_NO]           	varchar(128) NULL,
	[PRODUCT_STANDARD]           	varchar(128) NULL,
	[PRODUCT_ACCURACY]           	varchar(128) NULL,
	[VALIDITY]                   	char(1) NULL,
	[UNI_SC_ID]                  	varchar(100) NULL,
	CONSTRAINT [PK__CORP_LIC__F3ACD543753864A1] PRIMARY KEY CLUSTERED([LICENSE_ID])
)
GO

CREATE TABLE [dbo].[CORP_ORGCODE_CHK]  ( 
	[corp_info_id]     	varchar(20) NULL,
	[orgcode_chkdate]  	datetime NULL,
	[upd_time]         	datetime NULL,
	[organ_code]       	varchar(10) NULL,
	[corp_codecheck_id]	varchar(32) NOT NULL,
	[busi_upd_time]    	date NULL,
	CONSTRAINT [PK__CORP_ORG__7F8336D34183B671] PRIMARY KEY CLUSTERED([corp_codecheck_id])
)
GO

CREATE TABLE [dbo].[CORP_RENEW_NORMAL]  ( 
	[corp_renew_id]   	varchar(32) NOT NULL,
	[corp_info_id]    	varchar(20) NULL,
	[tax_recover_date]	datetime NULL,
	[upd_time]        	datetime NULL,
	[organ_code]      	varchar(10) NULL,
	[taxpayers_code]  	varchar(20) NULL,
	[busi_upd_time]   	date NULL,
	CONSTRAINT [PK_CORP_RENEW] PRIMARY KEY CLUSTERED([corp_renew_id])
)
GO

CREATE TABLE [dbo].[CORP_REPEAL]  ( 
	[CORP_REPEAL_ID]	varchar(32) NOT NULL,
	[CORP_INFO_ID]  	varchar(20) NULL,
	[REPEAL_REASON] 	varchar(100) NULL,
	[REPEAL_DATE]   	datetime NULL,
	[UPD_TIME]      	datetime NULL,
	[CORP_TYPE]     	varchar(8) NULL,
	[ORGAN_CODE]    	varchar(10) NULL,
	[BUSI_UPD_TIME] 	datetime NULL,
	[ENTITY_ID]     	varchar(21) NULL,
	CONSTRAINT [PK__CORP_REP__FBDE881168D28DBC] PRIMARY KEY CLUSTERED([CORP_REPEAL_ID])
)
GO
CREATE TABLE [dbo].[CORP_TAX_LEVEL]  ( 
    [CORP_TAXLEVEL_ID]	varchar(32) NOT NULL,
    [CORP_INFO_ID]    	varchar(20) NULL,
    [TAX_CREDIT_LEVEL]	varchar(10) NULL,
    [TAX_ASSESS_DATE] 	datetime NULL,
    [UPD_TIME]        	datetime NULL,
    [ORGAN_CODE]      	varchar(10) NULL,
    [TAXPAYERS_CODE]  	varchar(20) NULL,
    [BUSI_UPD_TIME]   	datetime NULL,
    CONSTRAINT [PK__CORP_TAX__EDD34A87056ECC6A] PRIMARY KEY CLUSTERED([CORP_TAXLEVEL_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[CORP_TAX_PUNISH]  ( 
    [CORP_TAXPUNISH_ID]	varchar(32) NOT NULL,
    [CORP_INFO_ID]     	varchar(20) NULL,
    [TAX_PUNISH_CODE]  	varchar(40) NULL,
    [TAX_PUNISH_DATE]  	datetime NULL,
    [TAX_PUNISH_RESULT]	varchar(254) NULL,
    [TAX_ILLEGAL_INFO] 	varchar(254) NULL,
    [UPD_TIME]         	datetime NULL,
    [ORGAN_CODE]       	varchar(10) NULL,
    [TAXPAYERS_CODE]   	varchar(20) NULL,
    [BUSI_UPD_TIME]    	datetime NULL,
    CONSTRAINT [PK__CORP_TAX__A6A1474B093F5D4E] PRIMARY KEY CLUSTERED([CORP_TAXPUNISH_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_AREA]  ( 
    [CODE]         	varchar(100) NOT NULL,
    [NAME]         	varchar(255) NULL,
    [PARENT_CODE]  	varchar(100) NULL,
    [VALIDITY]     	int NULL,
    [USER_ID]      	numeric(18,0) NULL,
    [UPD_TIME]     	date NULL,
    [DISPLAY_ORDER]	int NULL CONSTRAINT [DF__DIC_AREA__DISPLA__1A69E950]  DEFAULT ((0)),
    [IS_LEAF]      	int NULL CONSTRAINT [DF__DIC_AREA__IS_LEA__1B5E0D89]  DEFAULT ((1)),
    [OLD_CODE]     	varchar(100) NULL,
    CONSTRAINT [PK__DIC_AREA__AA1D43781881A0DE] PRIMARY KEY CLUSTERED([CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_COLUMN_INFO]  ( 
    [TABLE_ID]       	char(5) NOT NULL,
    [COLUMN_NAME]    	varchar(30) NOT NULL,
    [COLUMN_DESC]    	varchar(100) NOT NULL,
    [IS_KEY]         	char(1) NOT NULL,
    [DATA_TYPE]      	char(2) NOT NULL,
    [COLUMN_LENGTH]  	int NOT NULL,
    [IF_NECESSARY]   	char(1) NOT NULL,
    [SEARCH_FLAG]    	char(1) NOT NULL,
    [EDIT_TYPE]      	char(2) NOT NULL,
    [DEFAULT_VALUE]  	varchar(20) NULL,
    [IS_READONLY]    	char(1) NOT NULL,
    [IS_VISIBLE]     	char(1) NULL,
    [RELATE_DIC_INFO]	varchar(255) NULL,
    [WIDTH]          	int NOT NULL,
    [SHOW_ORDER]     	int NULL,
    [SHOW_PRECISION] 	int NULL,
    [MENO]           	varchar(255) NULL,
    [VALID]          	char(1) NULL,
    CONSTRAINT [PK__DIC_COLU__55612A1F4DE98D56] PRIMARY KEY CLUSTERED([TABLE_ID],[COLUMN_NAME])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_CORP_TYPE]  ( 
    [CODE]         	varchar(100) NOT NULL,
    [NAME]         	varchar(255) NULL,
    [PARENT_CODE]  	varchar(100) NULL,
    [VALIDITY]     	int NULL,
    [USER_ID]      	numeric(18,0) NULL,
    [UPD_TIME]     	date NULL,
    [DISPLAY_ORDER]	int NULL CONSTRAINT [DF__DIC_CORP___DISPL__14B10FFA]  DEFAULT ((0)),
    [IS_LEAF]      	int NULL CONSTRAINT [DF__DIC_CORP___IS_LE__15A53433]  DEFAULT ((1)),
    [OLD_CODE]     	varchar(100) NULL,
    CONSTRAINT [PK__DIC_CORP__AA1D437812C8C788] PRIMARY KEY CLUSTERED([CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_DAP_VALUES]  ( 
    [DAP_ID]       	varchar(32) NOT NULL,
    [TABLE_ID]     	char(5) NOT NULL,
    [DIC_KEY]      	varchar(255) NOT NULL,
    [DIC_KEY_VALUE]	varchar(255) NOT NULL,
    [DIC_VALUE]    	varchar(2000) NOT NULL,
    [CREATE_USER]  	varchar(30) NULL,
    [CREATE_AT]    	datetime NULL,
    [UPDATE_AT]    	datetime NULL,
    [FLOW_UUID]    	varchar(32) NOT NULL,
    CONSTRAINT [PK__DIC_DAP___071B1CEB51BA1E3A] PRIMARY KEY CLUSTERED([DAP_ID],[TABLE_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_FLOW]  ( 
    [FLOW_ID]     	varchar(8) NOT NULL,
    [FLOW_VERSION]	varchar(4) NOT NULL,
    [FLOW_NAME]   	varchar(100) NULL,
    [DISPLAY_NAME]	varchar(100) NULL,
    [CREATE_USER] 	varchar(100) NULL,
    [CREATE_AT]   	datetime NULL,
    [UPDATE_USER] 	varchar(100) NULL,
    [UPDATE_AT]   	datetime NULL,
    [FL_STATUS]   	char(1) NULL,
    [LIST_NO]     	decimal(18,0) NULL,
    [DESCRIPTION] 	char(255) NULL,
    [FLG]         	char(1) NULL,
    [APP_ID]      	varchar(8) NULL,
    [UUID]        	varchar(36) NULL,
    CONSTRAINT [PK__DIC_FLOW__A4E5EEFB117F9D94] PRIMARY KEY CLUSTERED([FLOW_ID],[FLOW_VERSION])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_FLOW_DATA]  ( 
    [FLOW_ID]     	varchar(8) NOT NULL,
    [FLOW_VERSION]	varchar(4) NOT NULL,
    [FLOW_DATA]   	nvarchar(max) NULL,
    CONSTRAINT [PK__DIC_FLOW__A4E5EEFB0EA330E9] PRIMARY KEY CLUSTERED([FLOW_ID],[FLOW_VERSION])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_LICENSE_TYPE]  ( 
    [CODE]         	varchar(100) NOT NULL,
    [NAME]         	varchar(255) NULL,
    [ORGAN_CODE]   	varchar(100) NULL,
    [VALIDITY]     	int NULL,
    [USER_ID]      	numeric(18,0) NULL,
    [UPD_TIME]     	datetime NULL,
    [DISPLAY_ORDER]	int NULL CONSTRAINT [DF__DIC_LICEN__DISPL__2022C2A6]  DEFAULT ((0)),
    [IS_LEAF]      	int NULL CONSTRAINT [DF__DIC_LICEN__IS_LE__2116E6DF]  DEFAULT ((1)),
    [OLD_CODE]     	varchar(100) NULL,
    CONSTRAINT [PK__DIC_LICE__AA1D43781E3A7A34] PRIMARY KEY CLUSTERED([CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_LOAD_CONFIG]  ( 
    [DIC_ID]          	varchar(30) NOT NULL,
    [DIC_NAME]        	varchar(100) NULL,
    [DIC_TYPE]        	int NULL,
    [TABLE_NAME]      	varchar(30) NULL,
    [ITEM_KEY_COLUMN] 	varchar(30) NULL,
    [ITEM_NAME_COLUMN]	varchar(255) NULL,
    [APPEND_SQL]      	varchar(255) NULL,
    [VALUE_LIST]      	varchar(255) NULL,
    [DIC_DESC]        	varchar(255) NULL,
    CONSTRAINT [PK__DIC_LOAD__E40203F60BC6C43E] PRIMARY KEY CLUSTERED([DIC_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_PUNISH_TYPE]  ( 
    [CODE]         	varchar(100) NOT NULL,
    [NAME]         	varchar(255) NULL,
    [ORGAN_CODE]   	varchar(100) NULL,
    [VALIDITY]     	int NULL,
    [USER_ID]      	numeric(18,0) NULL,
    [UPD_TIME]     	datetime NULL,
    [DISPLAY_ORDER]	int NULL CONSTRAINT [DF__DIC_PUNIS__DISPL__26CFC035]  DEFAULT ((0)),
    [IS_LEAF]      	int NULL CONSTRAINT [DF__DIC_PUNIS__IS_LE__27C3E46E]  DEFAULT ((1)),
    [OLD_CODE]     	varchar(100) NULL,
    CONSTRAINT [PK__DIC_PUNI__AA1D437824E777C3] PRIMARY KEY CLUSTERED([CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_TABLE_INFO]  ( 
    [TABLE_ID]        	char(5) NOT NULL,
    [THREAD_ID]       	char(2) NOT NULL,
    [TABLE_DESC]      	varchar(100) NOT NULL,
    [DIC_NAME]        	varchar(100) NOT NULL,
    [TABLE_EFFICACY]  	varchar(20) NOT NULL,
    [EFFICACY_VALUE]  	char(1) NOT NULL,
    [INEFFICACY_VALUE]	char(1) NOT NULL,
    [MANAGE_CONDITION]	varchar(200) NULL,
    [MANAGE_GRADE]    	char(1) NOT NULL,
    [APPLY_URL]       	varchar(200) NULL,
    [AUDIT_URL]       	varchar(200) NULL,
    [CODING_RULE]     	char(1) NOT NULL,
    [MAX_INT]         	int NULL,
    [VALID]           	char(1) NOT NULL,
    [MEMO]            	varchar(1000) NULL,
    CONSTRAINT [PK__DIC_TABL__8530632460FC61CA] PRIMARY KEY CLUSTERED([TABLE_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[DIC_THREAD_INFO]  ( 
    [THREAD_ID]  	char(2) NOT NULL,
    [THREAD_NAME]	varchar(20) NOT NULL,
    [VALID]      	char(1) NOT NULL,
    [CREATE_USER]	varchar(30) NULL,
    [CREATE_AT]  	datetime NULL,
    [UPDATE_AT]  	datetime NULL,
    CONSTRAINT [PK__DIC_THRE__8645366A64CCF2AE] PRIMARY KEY CLUSTERED([THREAD_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_ACTIVITY]  ( 
    [ACTIVITY_ID]     	varchar(32) NOT NULL,
    [USER_ID]         	varchar(32) NOT NULL,
    [ACTIVITY_NAME]   	varchar(32) NOT NULL,
    [LOCATION]        	varchar(64) NULL,
    [START_DATE]      	datetime NOT NULL,
    [END_DATE]        	datetime NULL,
    [ALLDAY]          	char(1) NULL CONSTRAINT [DF__ESF_ACTIV__ALLDA__6A85CC04]  DEFAULT ((0)),
    [ACTIVITY_EXPLAIN]	varchar(128) NULL,
    [REPEAT_TYPE]     	char(2) NULL CONSTRAINT [DF__ESF_ACTIV__REPEA__6B79F03D]  DEFAULT ((0)),
    [WARN_TYPE]       	char(2) NULL CONSTRAINT [DF__ESF_ACTIV__WARN___6C6E1476]  DEFAULT ((0)),
    CONSTRAINT [PK__ESF_ACTI__8E43DA62689D8392] PRIMARY KEY CLUSTERED([ACTIVITY_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_LOGIN_WIDGET]  ( 
    [WIDGET_ID]  	varchar(32) NOT NULL,
    [WIDGET_NAME]	varchar(32) NULL,
    [WIDGET_URL] 	varchar(1024) NULL,
    [MORE_URL]   	varchar(1024) NULL,
    [DESCRIPTION]	varchar(1024) NULL,
    [SORTNO]     	int NULL CONSTRAINT [DF__ESF_LOGIN__SORTN__7132C993]  DEFAULT ((0)),
    [DISABLED]   	char(1) NULL CONSTRAINT [DF__ESF_LOGIN__DISAB__7226EDCC]  DEFAULT ('0'),
    [DETAIL_URL] 	varchar(1024) NULL,
    CONSTRAINT [PK__ESF_LOGI__0F698CF16F4A8121] PRIMARY KEY CLUSTERED([WIDGET_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_MENU_SHORTCUT]  ( 
    [SHORTCUT_ID] 	varchar(32) NOT NULL,
    [USER_ID]     	varchar(32) NULL,
    [MENU_ID]     	varchar(32) NULL,
    [ORDER_INT]   	int NULL,
    [OPERATE_TIME]	datetime NULL,
    [APP_CODE]    	char(4) NULL,
    CONSTRAINT [PK__ESF_MENU__D1DFA45E75035A77] PRIMARY KEY CLUSTERED([SHORTCUT_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_PERSONAL_CONFIG]  ( 
    [USER_ID]    	varchar(32) NOT NULL,
    [PROPERTY]   	varchar(255) NULL,
    [MODIFY_DATE]	datetime NULL,
    CONSTRAINT [PK__ESF_PERS__F3BEEBFF78D3EB5B] PRIMARY KEY CLUSTERED([USER_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_PORTAL_SETTING]  ( 
    [PORTAL_SETTING_ID]	varchar(32) NOT NULL,
    [SETTING_TYPE]     	char(2) NULL,
    [USER_ID]          	varchar(32) NULL,
    [STYLE_TYPE]       	char(1) NULL CONSTRAINT [DF__ESF_PORTA__STYLE__7E8CC4B1]  DEFAULT ('0'),
    [FONT_TYPE]        	char(1) NULL CONSTRAINT [DF__ESF_PORTA__FONT___7F80E8EA]  DEFAULT ('0'),
    [WIDGET_LAYOUT]    	varchar(1024) NULL,
    CONSTRAINT [PK__ESF_PORT__218CBF1B7CA47C3F] PRIMARY KEY CLUSTERED([PORTAL_SETTING_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_PUBLIC_NOTICE]  ( 
    [PID]          	varchar(32) NOT NULL,
    [TITLE]        	varchar(60) NULL,
    [CONTENT]      	varchar(2000) NULL,
    [PUB_TIME]     	datetime NULL,
    [PUB_USER_ID]  	varchar(32) NULL,
    [PUB_USER_NAME]	varchar(30) NULL,
    [APPENDIX_ADDR]	varchar(200) NULL,
    [APP_CODE]     	char(4) NULL,
    [NOTICE_RANGE] 	char(1) NULL,
    [NOTICE_LEVEL] 	varchar(12) NULL,
    [ORGAN_ID]     	varchar(9) NULL,
    [DEPT_ID]      	varchar(12) NULL,
    [DISABLED]     	char(1) NOT NULL CONSTRAINT [DF__ESF_PUBLI__DISAB__04459E07]  DEFAULT ('0'),
    [IS_TOP]       	char(1) NULL,
    CONSTRAINT [PK__ESF_PUBL__C5775520025D5595] PRIMARY KEY CLUSTERED([PID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_WIDGET]  ( 
    [WIDGET_ID]  	varchar(32) NOT NULL,
    [WIDGET_NAME]	varchar(32) NULL,
    [AUTH_ID]    	varchar(32) NULL,
    [WIDGET_URL] 	varchar(1024) NULL,
    [MORE_URL]   	varchar(1024) NULL,
    [SETTING_URL]	varchar(1024) NULL,
    [IMG_PATH]   	varchar(256) NULL,
    [DESCRIPTION]	varchar(1024) NULL,
    [SORTNO]     	int NULL CONSTRAINT [DF__ESF_WIDGE__SORTN__090A5324]  DEFAULT ((0)),
    [MOVABLE]    	char(1) NULL CONSTRAINT [DF__ESF_WIDGE__MOVAB__09FE775D]  DEFAULT ('1'),
    [REMOVABLE]  	char(1) NULL CONSTRAINT [DF__ESF_WIDGE__REMOV__0AF29B96]  DEFAULT ('1'),
    [ZOOMABLE]   	char(1) NULL CONSTRAINT [DF__ESF_WIDGE__ZOOMA__0BE6BFCF]  DEFAULT ('1'),
    [EDITABLE]   	char(1) NULL CONSTRAINT [DF__ESF_WIDGE__EDITA__0CDAE408]  DEFAULT ('1'),
    [DISABLED]   	char(1) NULL CONSTRAINT [DF__ESF_WIDGE__DISAB__0DCF0841]  DEFAULT ('0'),
    CONSTRAINT [PK__ESF_WIDG__0F698CF107220AB2] PRIMARY KEY CLUSTERED([WIDGET_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[ESF_WIDGET_SETTING]  ( 
    [WIDGET_SETTING_ID]	varchar(32) NOT NULL,
    [USER_ID]          	varchar(32) NOT NULL,
    [WIDGET_ID]        	varchar(32) NOT NULL,
    [WIDGET_SETTING]   	varchar(1024) NULL,
    CONSTRAINT [PK__ESF_WIDG__228DAA6010AB74EC] PRIMARY KEY CLUSTERED([WIDGET_SETTING_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT]  ( 
    [UUID]               	varchar(32) NOT NULL,
    [FLOW_UUID]          	varchar(32) NOT NULL,
    [ACTIVITY_ID]        	varchar(32) NOT NULL,
    [OPERATION_ID]       	varchar(32) NULL,
    [USER_ID]            	varchar(100) NULL,
    [FL_STATUS]          	char(1) NULL,
    [RETURN_UUID]        	varchar(32) NULL,
    [PRE_UUID]           	varchar(32) NULL,
    [CONDITION_NUMB]     	int NULL,
    [HAD_NUMB]           	int NULL,
    [WAITING_ACTIVITY_ID]	varchar(32) NULL,
    [RETURN_OPNN]        	char(1) NULL,
    [ACTIVITY_BZ]        	char(1) NULL,
    [OUT_FLOW_ID]        	varchar(32) NULL,
    [OUT_FLOW_VERSION]   	varchar(4) NULL,
    [CREATE_AT]          	datetime NULL,
    [START_AT]           	datetime NULL,
    [UPDATE_AT]          	datetime NULL,
    [OPINION]            	varchar(255) NULL,
    [INTERVAL_TIME]      	int NULL,
    [AUTHORITY]          	char(1) NULL,
    [USER_NAME]          	varchar(100) NULL,
    [DEPT_ID]            	varchar(100) NULL,
    [DEPT_NAME]          	varchar(100) NULL,
    [ORGAN_ID]           	varchar(100) NULL,
    [ORGAN_NAME]         	varchar(100) NULL,
    [STATUS_ID]          	varchar(32) NULL,
    [STATUS_NAME]        	varchar(100) NULL,
    CONSTRAINT [PK__FL_ACT__65A475E7147C05D0] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_AUTO]  ( 
    [UUID]        	varchar(32) NOT NULL,
    [ACTIVITY_ID] 	varchar(32) NULL,
    [OPERATION_ID]	varchar(32) NULL,
    [CREATE_AT]   	datetime NULL,
    [PLAN_AT]     	datetime NULL,
    [FINISH_AT]   	datetime NULL,
    [FL_STATUS]   	char(1) NULL,
    [USER_ID]     	varchar(100) NULL,
    [DESCRIPTION] 	varchar(255) NULL,
    CONSTRAINT [PK__FL_ACT_A__65A475E7184C96B4] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_DAYS]  ( 
    [UUID]             	varchar(32) NOT NULL,
    [FLOW_UUID]        	varchar(32) NULL,
    [START_ACTIVITY_ID]	varchar(32) NULL,
    [END_ACTIVITY_ID]  	varchar(32) NULL,
    [START_AT]         	datetime NULL,
    [END_AT]           	datetime NULL,
    [ALL_DAYS]         	int NULL,
    [EXTEND_ID]        	varchar(32) NULL,
    [DESCRIPTION]      	varchar(255) NULL,
    CONSTRAINT [PK__FL_ACT_D__65A475E71C1D2798] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_PARAMETER]  ( 
    [UUID]           	varchar(32) NOT NULL,
    [ACTIVITY_UUID]  	varchar(32) NOT NULL,
    [FLOW_UUID]      	varchar(32) NULL,
    [PARAMETER_ID]   	varchar(32) NOT NULL,
    [PARAMETER_VALUE]	varchar(255) NOT NULL,
    [DESCRIPTION]    	varchar(255) NULL,
    CONSTRAINT [PK__FL_ACT_P__65A475E71FEDB87C] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_RELATION]  ( 
    [UUID]         	varchar(32) NOT NULL,
    [ACTIVITY_UUID]	varchar(32) NOT NULL,
    [RETURN_UUID]  	varchar(32) NOT NULL,
    CONSTRAINT [PK__FL_ACT_R__65A475E723BE4960] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_SU]  ( 
    [UUID]               	varchar(32) NOT NULL,
    [FLOW_UUID]          	varchar(32) NOT NULL,
    [ACTIVITY_ID]        	varchar(32) NOT NULL,
    [OPERATION_ID]       	varchar(32) NULL,
    [USER_ID]            	varchar(100) NULL,
    [FL_STATUS]          	char(1) NULL,
    [RETURN_UUID]        	varchar(32) NULL,
    [PRE_UUID]           	varchar(32) NULL,
    [CONDITION_NUMB]     	int NULL,
    [HAD_NUMB]           	int NULL,
    [WAITING_ACTIVITY_ID]	varchar(32) NULL,
    [RETURN_OPNN]        	char(1) NULL,
    [ACTIVITY_BZ]        	char(1) NULL,
    [OUT_FLOW_ID]        	varchar(32) NULL,
    [OUT_FLOW_VERSION]   	varchar(4) NULL,
    [CREATE_AT]          	datetime NULL,
    [START_AT]           	datetime NULL,
    [UPDATE_AT]          	datetime NULL,
    [OPINION]            	varchar(255) NULL,
    [INTERVAL_TIME]      	int NULL,
    [AUTHORITY]          	char(1) NULL,
    [USER_NAME]          	varchar(100) NULL,
    [DEPT_ID]            	varchar(100) NULL,
    [DEPT_NAME]          	varchar(100) NULL,
    [ORGAN_ID]           	varchar(100) NULL,
    [ORGAN_NAME]         	varchar(100) NULL,
    [STATUS_ID]          	varchar(32) NULL,
    [STATUS_NAME]        	varchar(100) NULL,
    CONSTRAINT [PK__FL_ACT_S__65A475E7278EDA44] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_USER]  ( 
    [UUID]         	varchar(32) NOT NULL,
    [FLOW_UUID]    	varchar(32) NOT NULL,
    [ACTIVITY_UUID]	varchar(32) NULL,
    [USER_ID]      	varchar(100) NULL,
    [DEPT_ID]      	varchar(100) NULL,
    [ORGAN_ID]     	varchar(100) NULL,
    [USER_NAME]    	varchar(100) NULL,
    [DEPT_NAME]    	varchar(100) NULL,
    [ORGAN_NAME]   	varchar(100) NULL,
    CONSTRAINT [PK__FL_ACT_U__65A475E72B5F6B28] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_VIEW]  ( 
    [UUID]              	varchar(32) NOT NULL,
    [FLOW_UUID]         	varchar(32) NOT NULL,
    [ACTIVITY_ID]       	varchar(32) NOT NULL,
    [OPERATION_ID]      	varchar(32) NULL,
    [USER_ID]           	varchar(100) NULL,
    [CREATE_AT]         	datetime NULL,
    [UPDATE_AT]         	datetime NULL,
    [FL_STATUS]         	char(1) NULL,
    [OPINION]           	varchar(255) NULL,
    [POST_OBJECT]       	varchar(1000) NULL,
    [START_AT]          	datetime NULL,
    [AUTHORITY]         	char(1) NULL,
    [USER_NAME]         	varchar(100) NULL,
    [DEPT_ID]           	varchar(100) NULL,
    [DEPT_NAME]         	varchar(100) NULL,
    [ORGAN_ID]          	varchar(100) NULL,
    [ORGAN_NAME]        	varchar(100) NULL,
    [STATUS_ID]         	varchar(32) NULL,
    [STATUS_NAME]       	varchar(100) NULL,
    [SEARCH_CONDITION1] 	varchar(500) NULL,
    [SEARCH_CONDITION2] 	varchar(50) NULL,
    [SEARCH_CONDITION3] 	varchar(50) NULL,
    [SEARCH_CONDITION4] 	varchar(50) NULL,
    [SEARCH_CONDITION5] 	varchar(30) NULL,
    [SEARCH_CONDITION6] 	varchar(30) NULL,
    [SEARCH_CONDITION7] 	varchar(30) NULL,
    [SEARCH_CONDITION8] 	varchar(30) NULL,
    [SEARCH_CONDITION9] 	varchar(30) NULL,
    [SEARCH_CONDITION10]	varchar(30) NULL,
    CONSTRAINT [PK__FL_ACT_V__65A475E72F2FFC0C] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_ACT_VIEW_SU]  ( 
    [UUID]              	varchar(32) NOT NULL,
    [FLOW_UUID]         	varchar(32) NOT NULL,
    [ACTIVITY_ID]       	varchar(32) NOT NULL,
    [OPERATION_ID]      	varchar(32) NULL,
    [USER_ID]           	varchar(100) NULL,
    [CREATE_AT]         	datetime NULL,
    [UPDATE_AT]         	datetime NULL,
    [FL_STATUS]         	char(1) NULL,
    [OPINION]           	varchar(255) NULL,
    [POST_OBJECT]       	varchar(1000) NULL,
    [START_AT]          	datetime NULL,
    [AUTHORITY]         	char(1) NULL,
    [USER_NAME]         	varchar(100) NULL,
    [DEPT_ID]           	varchar(100) NULL,
    [DEPT_NAME]         	varchar(100) NULL,
    [ORGAN_ID]          	varchar(100) NULL,
    [ORGAN_NAME]        	varchar(100) NULL,
    [STATUS_ID]         	varchar(32) NULL,
    [STATUS_NAME]       	varchar(100) NULL,
    [SEARCH_CONDITION1] 	varchar(500) NULL,
    [SEARCH_CONDITION2] 	varchar(50) NULL,
    [SEARCH_CONDITION3] 	varchar(50) NULL,
    [SEARCH_CONDITION4] 	varchar(50) NULL,
    [SEARCH_CONDITION5] 	varchar(30) NULL,
    [SEARCH_CONDITION6] 	varchar(30) NULL,
    [SEARCH_CONDITION7] 	varchar(30) NULL,
    [SEARCH_CONDITION8] 	varchar(30) NULL,
    [SEARCH_CONDITION9] 	varchar(30) NULL,
    [SEARCH_CONDITION10]	varchar(30) NULL,
    CONSTRAINT [PK__FL_ACT_V__65A475E733008CF0] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_INST]  ( 
    [UUID]            	varchar(32) NOT NULL,
    [FLOW_ID]         	varchar(8) NULL,
    [FLOW_VERSION]    	varchar(4) NULL,
    [CREATE_USER]     	varchar(100) NULL,
    [CREATE_AT]       	datetime NULL,
    [UPDATE_USER]     	varchar(100) NULL,
    [UPDATE_AT]       	datetime NULL,
    [FL_STATUS]       	char(1) NULL,
    [DESCRIPTION]     	varchar(255) NULL,
    [PARENT_UUID]     	varchar(32) NULL,
    [FINISHED_AT]     	datetime NULL,
    [INTERVAL_TIME]   	int NULL,
    [INST_NAME]       	varchar(100) NULL,
    [CREATE_USER_NAME]	varchar(100) NULL,
    [FLOW_UUID]       	varchar(36) NOT NULL,
    CONSTRAINT [PK__FL_INST__65A475E736D11DD4] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_INST_CHANGE]  ( 
    [UUID]       	varchar(32) NOT NULL,
    [FLOW_UUID]  	varchar(32) NOT NULL,
    [USER_ID]    	varchar(100) NULL,
    [UPDATE_AT]  	datetime NULL,
    [OPERATE]    	varchar(50) NULL,
    [FROM_STATUS]	char(1) NULL,
    [TO_STATUS]  	char(1) NULL,
    [DESCRIPTION]	varchar(255) NULL,
    CONSTRAINT [PK__FL_INST___65A475E73AA1AEB8] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[FL_PARAMETER]  ( 
    [UUID]           	varchar(32) NOT NULL,
    [PARAMETER_ID]   	varchar(32) NOT NULL,
    [PARAMETER_VALUE]	varchar(255) NOT NULL,
    [DESCRIPTION]    	varchar(255) NULL,
    CONSTRAINT [PK__FL_PARAM__65A475E73E723F9C] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[MGR_COLUMN_INFO]  ( 
    [TABLE_ID]       	char(5) NOT NULL,
    [COLUMN_NAME]    	varchar(30) NOT NULL,
    [COLUMN_DESC]    	varchar(100) NOT NULL,
    [IS_KEY]         	char(1) NOT NULL,
    [DATA_TYPE]      	char(2) NOT NULL,
    [COLUMN_LENGTH]  	int NOT NULL,
    [IF_NECESSARY]   	char(1) NOT NULL,
    [SEARCH_FLAG]    	char(1) NOT NULL,
    [EDIT_TYPE]      	char(2) NOT NULL,
    [DEFAULT_VALUE]  	varchar(20) NULL,
    [IS_READONLY]    	char(1) NOT NULL,
    [IS_VISIBLE]     	char(1) NULL,
    [RELATE_DIC_INFO]	varchar(255) NULL,
    [WIDTH]          	int NOT NULL,
    [MEMO]           	varchar(255) NULL,
    [SHOW_ORDER]     	int NULL,
    [SHOW_PRECISION] 	int NULL,
    CONSTRAINT [PK__MGR_COLU__55612A1F4242D080] PRIMARY KEY CLUSTERED([TABLE_ID],[COLUMN_NAME])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[MGR_TABLE_INFO]  ( 
    [TABLE_ID]        	char(5) NOT NULL,
    [THREAD_ID]       	char(2) NOT NULL,
    [TABLE_DESC]      	varchar(100) NULL,
    [DIC_NAME]        	varchar(100) NOT NULL,
    [TABLE_EFFICACY]  	varchar(20) NULL,
    [EFFICACY_VALUE]  	char(1) NULL,
    [INEFFICACY_VALUE]	char(1) NULL,
    [MANAGE_CONDITION]	varchar(200) NULL,
    [MANAGE_GRADE]    	char(1) NOT NULL,
    [APPLY_URL]       	varchar(200) NULL,
    [AUDIT_URL]       	varchar(200) NULL,
    [CODING_RULE]     	char(1) NOT NULL,
    [MAX_INT]         	int NULL,
    [EFFICACY]        	char(1) NOT NULL,
    [MEMO]            	varchar(1000) NULL,
    CONSTRAINT [PK__MGR_TABL__8530632446136164] PRIMARY KEY CLUSTERED([TABLE_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[MGR_THREAD_INFO]  ( 
    [THREAD_ID]  	char(2) NOT NULL,
    [THREAD_NAME]	varchar(20) NOT NULL,
    [EFFICACY]   	char(1) NOT NULL,
    CONSTRAINT [PK__MGR_THRE__8645366A49E3F248] PRIMARY KEY CLUSTERED([THREAD_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[NET_USER]  ( 
    [USER_ID]                	char(32) NOT NULL,
    [LOGIN_NAME]             	varchar(100) NOT NULL,
    [PASSWORD]               	varchar(100) NULL,
    [USER_TYPE]              	char(1) NOT NULL,
    [NAME]                   	varchar(100) NULL,
    [REMOVED]                	char(1) NULL,
    [ID_CARD_TYPE]           	varchar(2) NULL,
    [ID_CARD_NO]             	varchar(18) NULL,
    [ENT_NAME]               	varchar(100) NULL,
    [TELEPHONE]              	varchar(30) NULL,
    [EMAIL]                  	varchar(50) NULL,
    [REG_DATE]               	datetime NULL,
    [LAST_LOGIN_SUCCESS_DATE]	datetime NULL,
    [LAST_LOGIN_FAILURE_DATE]	datetime NULL,
    [ETPS_ID]                	varchar(32) NULL,
    [UNIT]                   	varchar(100) NULL,
    [REG_NO]                 	varchar(100) NULL,
    [ORGAN_CODE]             	varchar(100) NULL,
    [ADDRESS]                	varchar(300) NULL,
    [PWD]                    	varchar(50) NULL,
    [PWD_QUESTION1]          	char(1) NULL,
    [PWD_ANSWER1]            	varchar(100) NULL,
    [PWD_QUESTION2]          	char(1) NULL,
    [PWD_ANSWER2]            	varchar(100) NULL,
    [ORGANCODE]              	varchar(100) NULL,
    [IF_NET]                 	char(1) NULL,
    [INIT_PWD]               	char(1) NULL,
    [IS_CA]                  	char(1) NULL,
    [EDIT_TYPE]              	char(1) NULL,
    CONSTRAINT [PK_NET_USER] PRIMARY KEY CLUSTERED([USER_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[PUNISH_NOTE_CORP_ENTY]  ( 
    [PUNISH_CORP_ID]	int IDENTITY(1,1) NOT NULL,
    [PUNISH_ENTY_ID]	int NULL,
    [CORP_INFO_ID]  	varchar(20) NULL,
    [CORP_NAME]     	varchar(400) NULL,
    [ORGAN_CODE]    	varchar(100) NULL,
    [REG_NO]        	varchar(60) NULL,
    [CORP_ADDRESS]  	varchar(400) NULL,
    [ZIP]           	varchar(6) NULL,
    [TELEPHONE]     	varchar(40) NULL,
    [PERSON_NAME]   	varchar(128) NULL,
    [PERSON_TITLE]  	varchar(128) NULL,
    [BUSI_REG_TIME] 	datetime NULL,
    [BUSI_UPD_TIME] 	datetime NULL,
    CONSTRAINT [PK__PUNISH_N__F87840122AA05119] PRIMARY KEY CLUSTERED([PUNISH_CORP_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[PUNISH_NOTE_ENTY]  ( 
    [PUNISH_ENTY_ID]   	int IDENTITY(1,1) NOT NULL,
    [PUNISH_CODE]      	varchar(128) NULL,
    [PUNISH_UNIT]      	varchar(400) NULL,
    [PUNISH_BASIS]     	varchar(1000) NULL,
    [PUNISH_MEASURES]  	varchar(1000) NULL,
    [PUNISH_LIMIT]     	varchar(400) NULL,
    [PUNISH_DATE]      	datetime NULL,
    [FROM_DEPT_ID]     	varchar(10) NULL,
    [BUSI_REG_TIME]    	datetime NULL,
    [BUSI_UPD_TIME]    	datetime NULL,
    [AREA_CODE]        	varchar(20) NULL,
    [ILLEGAL_ADDRESS]  	varchar(200) NULL,
    [ILLEGAL_DATE]     	datetime NULL,
    [VALIDITY]         	varchar(10) NULL,
    [ILLEGAL_CONTEXT]  	varchar(2000) NULL,
    [ILLEGAL_EVIDENCE] 	varchar(1000) NULL,
    [ILLEGAL_RULE]     	varchar(1000) NULL,
    [CORP_NAME]        	varchar(400) NULL,
    [ORGAN_CODE]       	varchar(200) NULL,
    [CORP_ADDRESS]     	varchar(1000) NULL,
    [ZIP]              	varchar(100) NULL,
    [TELEPHONE]        	varchar(200) NULL,
    [PERSON_NAME]      	varchar(400) NULL,
    [PERSON_TITLE]     	varchar(400) NULL,
    [REG_NO]           	varchar(200) NULL,
    [ENTITY_ID]        	varchar(128) NULL,
    [LK_STATUS]        	varchar(20) NULL,
    [PUNISH_NOTE_BD_ID]	int NULL,
    [INSERT_TIME]      	datetime NULL CONSTRAINT [DF__PUNISH_NO__INSER__725BF7F6]  DEFAULT (getdate()),
    [TEAM_NAME]        	varchar(400) NULL,
    [UNIT_PROPERTY]    	varchar(128) NULL,
    [TAX_CODE]         	varchar(20) NULL,
    [PUNISH_CONTENT]   	varchar(2000) NULL,
    [SPOT_TEST_TYPE]   	varchar(128) NULL,
    [ANNOUNCE_REASON]  	varchar(128) NULL,
    [UPD_TIME]         	datetime NULL,
    [UNI_SC_ID]        	varchar(100) NULL,
    CONSTRAINT [PK__PUNISH_N__7FCF45E67073AF84] PRIMARY KEY CLUSTERED([PUNISH_ENTY_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[PUNISH_NOTE_INFO_ENTY]  ( 
    [PUNISH_INFO_ID]  	int IDENTITY(1,1) NOT NULL,
    [PUNISH_ENTY_ID]  	int NULL,
    [PUNISH_TYPE]     	varchar(25) NULL,
    [ILLEGAL_CONTEXT] 	varchar(1000) NULL,
    [ILLEGAL_EVIDENCE]	varchar(1000) NULL,
    [ILLEGAL_RULE]    	varchar(1000) NULL,
    [BUSI_REG_TIME]   	datetime NULL,
    [BUSI_UPD_TIME]   	datetime NULL,
    [PUNISH_TYPE_NAME]	varchar(200) NULL,
    [PUNISH_LEVEL]    	varchar(128) NULL,
    [OWE_TAX_TYPE]    	varchar(20) NULL,
    [PRODUCT_NAME]    	varchar(400) NULL,
    [BRAND]           	varchar(128) NULL,
    [PRODUCT_MODEL_NO]	varchar(128) NULL,
    [PRODUCT_BATCH_NO]	varchar(128) NULL,
    [EXAM_RESULT]     	varchar(128) NULL,
    [OWE_TAX_AMT]     	int NULL,
    CONSTRAINT [PK__PUNISH_N__FB5BD7076CA31EA0] PRIMARY KEY CLUSTERED([PUNISH_INFO_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_APP_INFO]  ( 
    [APP_CODE]        	char(4) NOT NULL,
    [APP_NAME]        	varchar(50) NULL,
    [APP_URL]         	varchar(100) NULL,
    [MAIN_URL]        	varchar(100) NULL,
    [APP_STATUS]      	char(1) NULL,
    [MAIN_DEPT]       	varchar(30) NULL,
    [OTHER_DEPT]      	varchar(255) NULL,
    [APP_DESC]        	varchar(255) NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREATE_USER_NAME]	varchar(50) NULL,
    [CREATE_DATE]     	datetime NULL,
    [OPER_USER_ID]    	varchar(32) NULL,
    [OPER_USER_NAME]  	varchar(50) NULL,
    [OPER_DATE]       	datetime NULL,
    CONSTRAINT [PK__SPT_APP___C3CA9629536D5C82] PRIMARY KEY CLUSTERED([APP_CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_APP_INTEGRATE]  ( 
    [SERIAL_NO]   	varchar(32) NOT NULL,
    [APP_CODE]    	char(4) NULL,
    [APP_URL]     	varchar(100) NULL,
    [FTP_URL]     	varchar(50) NULL,
    [FTP_USER]    	varchar(50) NULL,
    [FTP_PASSWORD]	varchar(50) NULL,
    [FTP_PATH]    	varchar(200) NULL,
    [DIC_VERSION] 	varchar(32) NULL,
    [VALID]       	int NULL,
    [MIDDLEWARE]  	varchar(200) NULL,
    [MEMO]        	varchar(200) NULL,
    [HARDWARE]    	varchar(200) NULL,
    CONSTRAINT [PK__SPT_APP___2A5625AA573DED66] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_APP_VERSION]  ( 
    [SERIAL_NO]    	varchar(32) NOT NULL,
    [APP_CODE]     	char(4) NULL,
    [PUB_DATE]     	datetime NULL,
    [PUB_USER_ID]  	varchar(32) NULL,
    [PUB_USER_NAME]	varchar(32) NULL,
    [VERSION_DESC] 	varchar(255) NULL,
    [AVER_NO]      	varchar(10) NULL,
    [MVER_NO]      	varchar(10) NULL,
    [MODULE_ID]    	char(3) NULL,
    CONSTRAINT [PK__SPT_APP___2A5625AA5B0E7E4A] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_APPRAISE]  ( 
    [APPROVE_ID]       	varchar(32) NOT NULL,
    [PROBLEM_ID]       	varchar(32) NOT NULL,
    [CREATE_TIME]      	datetime NULL,
    [APPROVE_TYPE]     	char(1) NOT NULL,
    [APPROVE_CONTENT]  	varchar(250) NULL,
    [APPROVE_USER_ID]  	varchar(32) NULL,
    [APPROVE_USER_NAME]	varchar(50) NULL,
    CONSTRAINT [PK__SPT_APPR__140728504F9CCB9E] PRIMARY KEY CLUSTERED([APPROVE_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_ATTACHMENT]  ( 
    [ID]             	varchar(32) NOT NULL,
    [TYPE]           	char(1) NOT NULL,
    [FOREIGN_KEY]    	varchar(32) NOT NULL,
    [ORIGINAL_NAME]  	varchar(128) NULL,
    [SAVE_PATH]      	varchar(512) NULL,
    [EXPLAIN]        	varchar(1024) NULL,
    [CREATE_TIME]    	datetime NULL,
    [CREATER_ID]     	varchar(32) NULL,
    [CREATER_NAME]   	varchar(10) NULL,
    [CREATER_ORG_ID] 	varchar(16) NULL,
    [CREATER_ORG]    	varchar(100) NULL,
    [CREATER_DEPT_ID]	varchar(16) NULL,
    [CREATER_DEPT]   	varchar(100) NULL,
    [DISABLED]       	char(1) NULL CONSTRAINT [DF__SPT_ATTAC__DISAB__60C757A0]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_ATTA__3214EC275EDF0F2E] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUDIT_EVENT]  ( 
    [EVENT_CODE] 	char(8) NOT NULL,
    [EVENT_NAME] 	varchar(200) NULL,
    [EVENT_STATE]	char(1) NULL,
    [SOURCE_CODE]	char(4) NULL,
    [USER_ID]    	varchar(32) NULL,
    [USER_NAME]  	varchar(200) NULL,
    [UPDATE_DATE]	datetime NULL,
    [FUNC_ID]    	char(8) NULL,
    CONSTRAINT [PK__SPT_AUDI__689B7D0863A3C44B] PRIMARY KEY CLUSTERED([EVENT_CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUDIT_INFO]  ( 
    [ID]          	varchar(32) NOT NULL,
    [AUDIT_DATE]  	datetime NULL,
    [AUDIT_SOURCE]	char(4) NULL,
    [AUDIT_EVENT] 	char(8) NULL,
    [AUDIT_LEVEL] 	char(1) NULL,
    [ORGAN_ID]    	char(9) NULL,
    [ORGAN_NAME]  	varchar(100) NULL,
    [DEPT_ID]     	varchar(12) NULL,
    [DEPT_NAME]   	varchar(100) NULL,
    [USER_ID]     	varchar(32) NULL,
    [USER_NAME]   	varchar(30) NULL,
    [IP_ADDRESS]  	varchar(50) NULL,
    [MACHINE_NAME]	varchar(100) NULL,
    [VIEW_DESC]   	varchar(250) NULL,
    [AUDIT_INFO]  	varchar(250) NULL,
    CONSTRAINT [PK__SPT_AUDI__3214EC276774552F] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUDIT_RULE]  ( 
    [RULE_CODE]       	char(12) NOT NULL,
    [RULE_NAME]       	varchar(200) NULL,
    [RULE_STATE]      	char(1) NULL,
    [SOURCE_CODE]     	char(4) NULL,
    [EVENT_CODE]      	char(8) NULL,
    [AUDIT_LEVEL]     	char(1) NULL,
    [EXPRESSION_DESC] 	varchar(200) NULL,
    [EXPRESSION]      	varchar(200) NULL,
    [AUDIT_TYPE]      	char(1) NULL,
    [AUDIT_PERIODS]   	int NULL,
    [AUDIT_FREQUENCY] 	int NULL,
    [MAX_TIMES]       	int NULL,
    [GROUPBY_PROPERTY]	varchar(20) NULL,
    [EVALUATING_STATE]	char(1) NULL,
    [NEXT_RUNTIME]    	datetime NULL,
    [EVENT_RESULT]    	char(1) NULL,
    [ALARM_TYPE]      	varchar(20) NULL,
    [EMAIL_ADDRESS]   	varchar(50) NULL,
    [USER_ID]         	varchar(32) NULL,
    [USER_NAME]       	varchar(200) NULL,
    [UPDATE_DATE]     	datetime NULL,
    CONSTRAINT [PK__SPT_AUDI__D4C5E81B6B44E613] PRIMARY KEY CLUSTERED([RULE_CODE])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH]  ( 
    [AUTH_ID]    	varchar(32) NOT NULL,
    [AUTH_NAME]  	varchar(200) NULL,
    [VALID]      	char(1) NULL CONSTRAINT [DF__SPT_AUTH__VALID__70FDBF69]  DEFAULT ('1'),
    [APP_CODE]   	varchar(32) NOT NULL,
    [MODULE_ID]  	char(3) NULL,
    [FUNC_ID]    	char(8) NULL,
    [PARENT_ID]  	char(8) NULL,
    [DESCIRPTION]	varchar(255) NULL,
    [DISP_ORDER] 	varchar(32) NULL,
    [IS_APPEND]  	char(1) NULL,
    [AUTH_TYPE]  	char(1) NULL CONSTRAINT [DF__SPT_AUTH__AUTH_T__71F1E3A2]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_AUTH__843C02C56F1576F7] PRIMARY KEY CLUSTERED([AUTH_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH_AUTHG_MAPPING]  ( 
    [ID]           	varchar(32) NOT NULL,
    [AUTH_ID]      	varchar(32) NOT NULL,
    [AUTH_GROUP_ID]	varchar(32) NOT NULL,
    [OPER_USER_ID] 	varchar(32) NOT NULL,
    [OPER_TIME]    	datetime NOT NULL,
    [AUTHORISED]   	char(1) NULL CONSTRAINT [DF__SPT_AUTH___AUTHO__02284B6B]  DEFAULT ('0'),
    [DISABLED]     	char(1) NULL CONSTRAINT [DF__SPT_AUTH___DISAB__031C6FA4]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_AUTH__3214EC27004002F9] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH_ENTRUST]  ( 
    [ID]           	varchar(32) NOT NULL,
    [FROM_USER_ID] 	varchar(32) NULL,
    [TO_USER_ID]   	varchar(32) NULL,
    [ENTRUST_START]	datetime NULL,
    [ENTRUST_END]  	datetime NULL,
    [FROM_DEPT_ID] 	varchar(12) NULL,
    [TO_DEPT_ID]   	varchar(12) NULL,
    [OPER_USER_ID] 	varchar(32) NULL,
    [OPER_DEPT_ID] 	varchar(12) NULL,
    [OPER_TIME]    	datetime NULL,
    [VALID]        	char(1) NULL,
    CONSTRAINT [PK__SPT_AUTH__3214EC2705F8DC4F] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH_ENTRUST_DET]  ( 
    [AUTH_TYPE] 	char(1) NULL,
    [AUTH_ID]   	varchar(32) NULL,
    [ENTRUST_ID]	varchar(32) NULL,
    [DET_ID]    	varchar(32) NOT NULL,
    [APP_CODE]  	char(3) NULL,
    [MODULE_ID] 	varchar(32) NULL,
    CONSTRAINT [PK__SPT_AUTH__45161B9809C96D33] PRIMARY KEY CLUSTERED([DET_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH_GROUP]  ( 
    [AUTH_GROUP_ID]  	varchar(32) NOT NULL,
    [AUTH_GROUP_NAME]	varchar(64) NULL,
    [DESCRIPTION]    	varchar(256) NULL,
    [VALID]          	char(1) NULL CONSTRAINT [DF__SPT_AUTH___VALID__0F824689]  DEFAULT ('1'),
    [APP_CODE]       	varchar(32) NULL,
    [ORG_ID]         	varchar(32) NULL,
    [TYPE]           	char(1) NULL,
    [MODULE_ID]      	char(3) NULL,
    [DISP_ORDER]     	int NULL,
    CONSTRAINT [PK__SPT_AUTH__9F5DA4650D99FE17] PRIMARY KEY CLUSTERED([AUTH_GROUP_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH_LOG]  ( 
    [LOG_ID]       	varchar(32) NOT NULL,
    [OPER_TYPE]    	char(2) NOT NULL,
    [ID1]          	varchar(32) NOT NULL,
    [ID2]          	varchar(32) NOT NULL,
    [OPER_USER_ID] 	varchar(32) NOT NULL,
    [OPER_TIME]    	datetime NOT NULL,
    [OPER_NAME]    	varchar(32) NOT NULL,
    [AUTH_LOG_TYPE]	varchar(4) NOT NULL,
    CONSTRAINT [PK__SPT_AUTH__4364C882125EB334] PRIMARY KEY CLUSTERED([LOG_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTH_OBJECT]  ( 
    [AUTH_OBJECT_ID]	varchar(32) NOT NULL,
    [USER_ID]       	varchar(32) NULL,
    [DEPT_ID]       	varchar(32) NULL,
    [CREATE_TIME]   	datetime NULL CONSTRAINT [DF__SPT_AUTH___CREAT__18178C8A]  DEFAULT (getdate()),
    CONSTRAINT [PK__SPT_AUTH__BE188510162F4418] PRIMARY KEY CLUSTERED([AUTH_OBJECT_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTHG_USER_MAPPING]  ( 
    [ID]           	varchar(32) NOT NULL,
    [USER_ID]      	varchar(32) NOT NULL,
    [AUTH_GROUP_ID]	varchar(32) NOT NULL,
    [OPER_USER_ID] 	varchar(32) NOT NULL,
    [OPER_TIME]    	datetime NOT NULL,
    [AUTHORISED]   	char(1) NULL CONSTRAINT [DF__SPT_AUTHG__AUTHO__7C6F7215]  DEFAULT ('0'),
    [DISABLED]     	char(1) NULL CONSTRAINT [DF__SPT_AUTHG__DISAB__7D63964E]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_AUTH__3214EC277A8729A3] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_AUTHG_USERG_MAPPING]  ( 
    [ID]           	varchar(32) NOT NULL,
    [AUTH_GROUP_ID]	varchar(32) NOT NULL,
    [USER_GROUP_ID]	varchar(32) NOT NULL,
    [OPER_USER_ID] 	varchar(32) NOT NULL,
    [OPER_TIME]    	datetime NOT NULL,
    [AUTHORISED]   	char(1) NULL CONSTRAINT [DF__SPT_AUTHG__AUTHO__76B698BF]  DEFAULT ('0'),
    [DISABLED]     	char(1) NULL CONSTRAINT [DF__SPT_AUTHG__DISAB__77AABCF8]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_AUTH__3214EC2774CE504D] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_CHART_ITEM_RECORD]  ( 
    [ID]             	varchar(32) NOT NULL,
    [CHART_RECORD_ID]	varchar(32) NULL,
    [NAME]           	varchar(60) NULL,
    [VALUE]          	varchar(40) NULL,
    [LINK]           	varchar(120) NULL,
    [COLOR]          	char(6) NULL,
    [ORDER_NUM]      	int NULL CONSTRAINT [DF__SPT_CHART__ORDER__1CDC41A7]  DEFAULT ((0)),
    CONSTRAINT [PK__SPT_CHAR__3214EC271AF3F935] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_CHART_RECORD]  ( 
    [ID]                    	varchar(32) NOT NULL,
    [NAME]                  	varchar(100) NULL,
    [CAPTION]               	varchar(100) NULL,
    [X_AXIS_NAME]           	varchar(40) NULL,
    [Y_AXIS_NAME]           	varchar(40) NULL,
    [INT_PREFIX]            	varchar(10) NULL,
    [INT_SUFFIX]            	varchar(10) NULL,
    [DECIMAL_PRECISION]     	varchar(2) NULL,
    [FORMAT_INT]            	char(1) NULL,
    [BASE_FONT_SIZE]        	varchar(2) NULL,
    [OUT_CNV_BASE_FONT_SIZE]	varchar(2) NULL,
    [TYPE]                  	varchar(2) NULL,
    [ORG_ID]                	varchar(32) NULL,
    [ORG_NAME]              	varchar(100) NULL,
    CONSTRAINT [PK__SPT_CHAR__3214EC271FB8AE52] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_FILE_LOG]  ( 
    [ID]            	varchar(32) NOT NULL,
    [SERV_NAME]     	varchar(32) NULL,
    [SERV_TYPE]     	char(1) NULL,
    [SAVE_TIME]     	datetime NULL,
    [FILE_PATH]     	varchar(256) NULL,
    [FILE_DOWN_NAME]	varchar(64) NULL,
    [FTP_HOST]      	varchar(32) NULL,
    [FTP_PORT]      	int NULL,
    CONSTRAINT [PK__SPT_DATA__3214EC2723893F36] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_FTP_CFG]  ( 
    [ID]          	varchar(32) NOT NULL,
    [FTP_HOST]    	varchar(32) NULL,
    [FTP_PORT]    	int NULL,
    [FTP_USER]    	varchar(32) NULL,
    [FTP_PASSWORD]	varchar(32) NULL,
    CONSTRAINT [PK__SPT_DATA__3214EC272759D01A] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_SERV_CFG]  ( 
    [SERV_NAME]     	varchar(32) NOT NULL,
    [SERV_DESC]     	varchar(255) NULL,
    [DS_ID]         	varchar(32) NULL,
    [SERV_TYPE]     	char(1) NULL CONSTRAINT [DF__SPT_DATA___SERV___2D12A970]  DEFAULT ('1'),
    [COMMAND]       	varchar(1000) NULL,
    [COMMAND_TYPE]  	char(1) NULL CONSTRAINT [DF__SPT_DATA___COMMA__2E06CDA9]  DEFAULT ('1'),
    [PARAM_TYPE]    	varchar(32) NULL,
    [FTP_CFG_ID]    	varchar(32) NULL,
    [FILE_PATH]     	varchar(256) NULL,
    [FILE_DOWN_NAME]	varchar(64) NULL,
    [MAX_THREAD]    	int NULL CONSTRAINT [DF__SPT_DATA___MAX_T__2EFAF1E2]  DEFAULT ((0)),
    [MAX_COUNT]     	int NULL CONSTRAINT [DF__SPT_DATA___MAX_C__2FEF161B]  DEFAULT ((0)),
    [DISABLED]      	char(1) NOT NULL CONSTRAINT [DF__SPT_DATA___DISAB__30E33A54]  DEFAULT ('0'),
    [NEED_LOG]      	char(1) NOT NULL CONSTRAINT [DF__SPT_DATA___NEED___31D75E8D]  DEFAULT ('0'),
    [AUTO_RUN]      	char(1) NOT NULL CONSTRAINT [DF__SPT_DATA___AUTO___32CB82C6]  DEFAULT ('0'),
    [TIMER_EXP]     	varchar(32) NULL,
    CONSTRAINT [PK__SPT_DATA__826435612B2A60FE] PRIMARY KEY CLUSTERED([SERV_NAME])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_SERV_COLUMN]  ( 
    [COLUMN_ID]     	varchar(32) NOT NULL,
    [COLUMN_NAME]   	varchar(32) NULL,
    [SERV_NAME]     	varchar(32) NULL,
    [PATTERN]       	char(1) NULL,
    [DATE_FORMAT]   	varchar(255) NULL,
    [DIC_ID]        	varchar(32) NULL,
    [SHOW_FLAG]     	char(1) NULL,
    [VALID]         	char(1) NULL,
    [RESULT_COL_ORD]	int NULL,
    [ORDER_FLAG]    	char(1) NULL,
    [PHY_COL_NAME]  	varchar(50) NULL,
    CONSTRAINT [PK__SPT_DATA__D6F5749335A7EF71] PRIMARY KEY CLUSTERED([COLUMN_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_SERV_CONDITION]  ( 
    [CONDITION_ID]  	varchar(32) NOT NULL,
    [SERV_NAME]     	varchar(32) NOT NULL,
    [CONDITION_NAME]	varchar(240) NOT NULL,
    [CONDITION_DESC]	varchar(1000) NULL,
    [DATA_TYPE]     	char(1) NOT NULL,
    [INPUT_MODE]    	char(1) NOT NULL,
    [DATE_FORMAT]   	varchar(255) NULL,
    [DIC_ID]        	varchar(32) NULL,
    [VALID]         	char(1) NOT NULL,
    [DISP_ORDER]    	char(5) NOT NULL,
    [REQUIRED]      	char(1) NOT NULL,
    [PHY_COL_NAME]  	varchar(255) NULL,
    [OMIT_IF_EMPTY] 	char(1) NOT NULL,
    [MIN_LENGTH]    	int NULL,
    [MAX_LENGTH]    	int NULL,
    [OPER_TYPE]     	varchar(10) NOT NULL,
    [LIKE_MODE]     	char(2) NULL,
    [INPUT_NAME]    	varchar(240) NOT NULL,
    CONSTRAINT [PK__SPT_DATA__9B33784739788055] PRIMARY KEY CLUSTERED([CONDITION_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_SERV_LOG]  ( 
    [ID]          	varchar(32) NOT NULL,
    [SERV_NAME]   	varchar(32) NULL,
    [CALL_TIME]   	datetime NULL,
    [EXEC_PARAM]  	varchar(255) NULL,
    [RUNTIME]     	int NULL CONSTRAINT [DF__SPT_DATA___RUNTI__3F3159AB]  DEFAULT ((0)),
    [REQUEST_IP]  	varchar(15) NULL,
    [RESULT_COUNT]	int NULL CONSTRAINT [DF__SPT_DATA___RESUL__40257DE4]  DEFAULT ((0)),
    CONSTRAINT [PK__SPT_DATA__3214EC273D491139] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_SERV_ORDER_COL]  ( 
    [ORDER_COL_ID]	varchar(32) NOT NULL,
    [SERV_NAME]   	varchar(32) NOT NULL,
    [PHY_COL_NAME]	varchar(255) NOT NULL,
    [DISP_ORDER]  	int NOT NULL,
    [ASC_OR_DESC] 	char(1) NOT NULL,
    CONSTRAINT [PK__SPT_DATA__C85587D84301EA8F] PRIMARY KEY CLUSTERED([ORDER_COL_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DATA_SOURCE_CFG]  ( 
    [ID]         	varchar(32) NOT NULL,
    [DS_TYPE]    	char(1) NULL,
    [JNDI]       	varchar(32) NULL,
    [DRIVER_TYPE]	char(1) NULL,
    [DB_URL]     	varchar(128) NULL,
    [DB_USER]    	varchar(32) NULL,
    [DB_PASSWORD]	varchar(32) NULL,
    CONSTRAINT [PK__SPT_DATA__3214EC2746D27B73] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DEPT]  ( 
    [DEPT_ID]         	varchar(12) NOT NULL,
    [DEPT_NAME]       	varchar(100) NOT NULL,
    [ORGAN_ID]        	char(9) NULL,
    [DEPT_TYPE]       	char(1) NULL,
    [VALID]           	char(1) NULL,
    [DESCRIPTION]     	varchar(255) NULL,
    [FULL_NAME]       	varchar(60) NULL,
    [SHORT_NAME]      	varchar(50) NULL,
    [DISP_ORDER]      	int NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREATE_USER_NAME]	varchar(50) NULL,
    [CREATE_DATE]     	datetime NULL,
    [OPER_USER_ID]    	varchar(32) NULL,
    [OPER_USER_NAME]  	varchar(50) NULL,
    [OPER_DATE]       	datetime NULL,
    [PARENT_DEPT_ID]  	varchar(12) NULL,
    [TELEPHONE]       	varchar(30) NULL,
    [OUT_ID]          	varchar(32) NULL,
    [BUSINESS_TYPE]   	char(1) NULL,
    CONSTRAINT [PK__SPT_DEPT__512A59AC4AA30C57] PRIMARY KEY CLUSTERED([DEPT_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DEPT_HIS]  ( 
    [SERIAL_NO]     	varchar(32) NOT NULL,
    [OPER_USER_ID]  	varchar(32) NULL,
    [OPER_USER_NAME]	varchar(50) NULL,
    [OPER_DATE]     	datetime NULL,
    [OPER_TYPE]     	char(1) NULL,
    [DEPT_ID]       	varchar(12) NULL,
    [DEPT_NAME]     	varchar(255) NULL,
    [ORGAN_ID]      	char(9) NULL,
    [DEPT_TYPE]     	char(1) NULL,
    [VALID]         	char(1) NULL,
    [DESCRIPTION]   	varchar(255) NULL,
    [FULL_NAME]     	varchar(60) NULL,
    [SHORT_NAME]    	varchar(50) NULL,
    [DISP_ORDER]    	int NULL,
    CONSTRAINT [PK__SPT_DEPT__2A5625AA4E739D3B] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DEPT_USER]  ( 
    [SERIAL_NO]       	varchar(32) NOT NULL,
    [DEPT_ID]         	varchar(12) NOT NULL,
    [USER_ID]         	varchar(32) NOT NULL,
    [MAIN_FLAG]       	int NULL,
    [DISP_ORDER]      	int NULL CONSTRAINT [DF__SPT_DEPT___DISP___542C7691]  DEFAULT ((9999)),
    [START_VALID_DATE]	datetime NULL,
    [END_VALID_DATE]  	datetime NULL,
    [POSITION]        	varchar(4) NULL,
    [APPOINT_STATUS]  	char(2) NULL,
    CONSTRAINT [PK__SPT_DEPT__2A5625AA52442E1F] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_DEPT_USER_HIS]  ( 
    [SERIAL_NO]       	varchar(32) NOT NULL,
    [OPER_USER_ID]    	varchar(32) NULL,
    [OPER_USER_NAME]  	varchar(50) NULL,
    [OPER_DATE]       	datetime NULL,
    [OPER_TYPE]       	char(1) NULL,
    [DEPT_ID]         	varchar(12) NULL,
    [USER_ID]         	varchar(32) NULL,
    [MAIN_FLAG]       	int NULL,
    [DISP_ORDER]      	int NULL,
    [START_VALID_DATE]	datetime NULL,
    [END_VALID_DATE]  	datetime NULL,
    [POSITION]        	varchar(4) NULL,
    [APPOINT_STATUS]  	char(2) NULL,
    CONSTRAINT [PK__SPT_DEPT__2A5625AA5708E33C] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_EQ_SURE]  ( 
    [ID]                	varchar(32) NOT NULL,
    [EQ_ID]             	varchar(32) NOT NULL,
    [REPAIR_DEPT_ID]    	varchar(32) NULL,
    [REPAIR_DEPT_NAME]  	varchar(200) NULL,
    [REPAIR_USER_ID]    	varchar(32) NULL,
    [REPAIR_USER_NAME]  	varchar(200) NULL,
    [ACCOMPLISH_TIME]   	datetime NULL,
    [REPAIR_RESULT]     	varchar(200) NULL,
    [OPER_USER_ID]      	varchar(32) NULL,
    [OPER_USER_NAME]    	varchar(32) NULL,
    [OPER_USER_ORGAN_ID]	varchar(32) NULL,
    [OPER_USER_DEPT_ID] 	varchar(32) NULL,
    [OPER_TIME]         	datetime NULL,
    CONSTRAINT [PK__SPT_EQ_S__3214EC275EAA0504] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_EQUIPMENT]  ( 
    [EQ_ID]         	varchar(32) NOT NULL,
    [EQ_NAME]       	varchar(32) NOT NULL,
    [EQ_MODEL]      	varchar(200) NULL,
    [EQ_DEPT_ID]    	varchar(32) NULL,
    [EQ_DEPT_NAME]  	varchar(32) NOT NULL,
    [EQ_ROOM]       	varchar(32) NOT NULL,
    [EQ_USER_ID]    	varchar(32) NOT NULL,
    [EQ_USER_NAME]  	varchar(32) NOT NULL,
    [EQ_DESCRIPTION]	varchar(200) NULL,
    [OPER_USER_ID]  	varchar(32) NULL,
    [OPER_USER_NAME]	varchar(32) NULL,
    [OPER_ORGAN_ID] 	varchar(32) NULL,
    [OPER_DEPT_ID]  	varchar(32) NULL,
    [OPER_TIME]     	datetime NULL,
    [EQ_STATE]      	char(1) NULL,
    [TEL]           	varchar(20) NULL,
    CONSTRAINT [PK__SPT_EQUI__9A09C14E5AD97420] PRIMARY KEY CLUSTERED([EQ_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_FAQ]  ( 
    [FAQ_ID]      	varchar(32) NOT NULL,
    [PROBLEM_ID]  	varchar(32) NOT NULL,
    [VALID]       	char(1) NULL,
    [OPER_USER_ID]	varchar(32) NULL,
    [OPER_TIME]   	datetime NULL,
    CONSTRAINT [PK__SPT_FAQ__838154B4627A95E8] PRIMARY KEY CLUSTERED([FAQ_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_FRONT_FUNC]  ( 
    [FF_ID]      	varchar(20) NOT NULL,
    [MODULE_ID]  	char(3) NULL,
    [FUNC_ID]    	char(8) NULL,
    [APP_CODE]   	char(4) NULL,
    [PARENT_ID]  	varchar(20) NULL,
    [FUNC_NAME]  	varchar(100) NULL,
    [DESCRIPTION]	varchar(255) NULL,
    [DISP_ORDER] 	int NULL,
    [VALID]      	char(1) NULL,
    [LOG_FLAG]   	char(1) NULL,
    [AUDIT_FLAG] 	char(1) NULL,
    CONSTRAINT [PK__SPT_FRON__AEF0FF64664B26CC] PRIMARY KEY CLUSTERED([FF_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_FUNC]  ( 
    [FUNC_ID]   	varchar(8) NOT NULL,
    [FUNC_NAME] 	varchar(100) NOT NULL,
    [APP_CODE]  	char(4) NOT NULL,
    [FUNC_DESC] 	varchar(255) NULL,
    [DISP_ORDER]	int NULL,
    [VALID]     	char(1) NULL,
    [LINK_PATH] 	varchar(255) NULL,
    CONSTRAINT [PK__SPT_FUNC__68DC74266A1BB7B0] PRIMARY KEY CLUSTERED([FUNC_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_FUNC_HELP]  ( 
    [FUNC_ID]	varchar(8) NOT NULL,
    [HELP_ID]	varchar(32) NOT NULL,
    CONSTRAINT [PK__SPT_FUNC__3B50CE9E6DEC4894] PRIMARY KEY CLUSTERED([FUNC_ID],[HELP_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_HELP]  ( 
    [HELP_ID]   	varchar(32) NOT NULL,
    [HELP_TITLE]	varchar(255) NULL,
    [HELP_TXT]  	text NULL,
    CONSTRAINT [PK__SPT_HELP__38CBAB8471BCD978] PRIMARY KEY CLUSTERED([HELP_ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_KA_MANAGE]  ( 
    [KA_ID]              	varchar(32) NOT NULL,
    [KA_TITLE]           	varchar(100) NOT NULL,
    [KA_TYPE]            	varchar(32) NULL,
    [KA_TYPE_NAME]       	varchar(100) NULL,
    [KA_KEY_WORDS]       	varchar(200) NULL,
    [KA_CONTENT_ABSTRACT]	varchar(500) NULL,
    [KA_OBJECT_RANGE]    	varchar(32) NULL,
    [ATTACHMENT]         	varchar(1000) NULL,
    [KA_USER_ID]         	varchar(32) NULL,
    [KA_USER_NAME]       	varchar(32) NULL,
    [KA_DEPT_ID]         	varchar(32) NULL,
    [KA_DEPT_NAME]       	varchar(32) NULL,
    [KA_ORGAN_ID]        	varchar(32) NULL,
    [KA_ORGAN_NAME]      	varchar(32) NULL,
    [KA_CREATE_TIME]     	datetime NULL,
    [LAST_OPER_TIME]     	datetime NULL,
    [VALID]              	char(1) NULL,
    [CLICK_COUNT]        	int NOT NULL CONSTRAINT [DF__SPT_KA_MA__CLICK__7775B2CE]  DEFAULT ((0)),
    [DOWNLOAD_COUNT]     	int NOT NULL CONSTRAINT [DF__SPT_KA_MA__DOWNL__7869D707]  DEFAULT ((0)),
    CONSTRAINT [PK__SPT_KA_M__EE0711A0758D6A5C] PRIMARY KEY CLUSTERED([KA_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_KA_RECORDS]  ( 
    [ID]                 	varchar(32) NOT NULL,
    [KA_ID]              	varchar(32) NOT NULL,
    [KA_TITLE]           	varchar(100) NULL,
    [KA_TYPE]            	varchar(32) NULL,
    [KA_TYPE_NAME]       	varchar(100) NULL,
    [KA_OBJECT_RANGE]    	varchar(32) NULL,
    [KA_KEY_WORDS]       	varchar(200) NULL,
    [KA_CONTENT_ABSTRACT]	varchar(500) NULL,
    [ATTACHMENT]         	varchar(200) NULL,
    [CREATE_USER_ID]     	varchar(32) NULL,
    [CREATE_USER_NAME]   	varchar(32) NULL,
    [CREATE_TIME]        	datetime NULL,
    CONSTRAINT [PK__SPT_KA_R__3214EC277B4643B2] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_LOG]  ( 
    [ID]             	varchar(32) NOT NULL,
    [OPER_DATE]      	datetime NULL,
    [OPER_TYPE]      	char(1) NULL,
    [OPER_LEVEL]     	char(1) NULL,
    [OPER_ID]        	char(10) NULL,
    [FUNC_ID]        	char(8) NULL,
    [APP_CODE]       	char(4) NULL,
    [ORGAN_ID]       	char(9) NULL,
    [ORGAN_NAME]     	varchar(100) NULL,
    [DEPT_ID]        	varchar(12) NULL,
    [DEPT_NAME]      	varchar(100) NULL,
    [USER_ID]        	varchar(32) NULL,
    [USER_NAME]      	varchar(30) NULL,
    [IP_ADDRE]       	varchar(15) NULL,
    [MACHINE_NAME]   	varchar(100) NULL,
    [OPER_INFO]      	varchar(255) NULL,
    [DEPT_DISP_ORDER]	int NULL,
    [USER_DISP_ORDER]	int NULL,
    CONSTRAINT [PK__SPT_LOG__3214EC277F16D496] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_MENU]  ( 
    [MENU_ID]    	varchar(20) NOT NULL,
    [MENU_NAME]  	varchar(100) NULL,
    [PARENT_ID]  	varchar(20) NULL,
    [LINK_PATH]  	varchar(255) NULL,
    [APP_CODE]   	char(4) NULL,
    [DISP_ORDER] 	int NULL,
    [DESCRIPTION]	varchar(255) NULL,
    [MENU_IMAGE] 	varchar(100) NULL,
    [VALID]      	int NULL,
    [AUTH_ID]    	varchar(8) NULL,
    [MODULE_ID]  	char(3) NULL,
    [FUNC_ID]    	char(8) NULL,
    CONSTRAINT [PK__SPT_MENU__6C47297908EA5793] PRIMARY KEY CLUSTERED([MENU_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_MODULE]  ( 
    [MODULE_ID]        	char(3) NOT NULL,
    [MODULE_NAME]      	varchar(100) NULL,
    [DISP_ORDER]       	int NULL,
    [PARENT_MODULE_IDS]	varchar(255) NULL,
    CONSTRAINT [PK__SPT_MODU__238A824606B7F65E] PRIMARY KEY CLUSTERED([MODULE_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_MODULE_MENU]  ( 
    [UUID]      	varchar(32) NOT NULL,
    [MODULE_ID] 	varchar(32) NULL,
    [MENU_ID]   	varchar(60) NULL,
    [VALID]     	char(1) NULL,
    [DISP_ORDER]	int NULL,
    [MEMO]      	varchar(40) NULL,
    CONSTRAINT [PK__SPT_MODU__65A475E7060DEAE8] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_OPER]  ( 
    [OPER_ID]       	char(10) NOT NULL,
    [OPER_NAME]     	varchar(100) NULL,
    [OPER_LEVEL]    	char(1) NULL,
    [FUNC_ID]       	char(8) NULL,
    [APP_CODE]      	char(4) NULL,
    [OPER_URL]      	varchar(255) NULL,
    [OPER_METHOD]   	varchar(255) NULL,
    [OPER_INFO_MODE]	varchar(255) NULL,
    [LOG_FLAG]      	char(1) NULL,
    [IS_MANUAL]     	char(1) NULL,
    CONSTRAINT [PK__SPT_OPER__738AC7860E591826] PRIMARY KEY CLUSTERED([OPER_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_ORGAN]  ( 
    [ORGAN_ID]        	varchar(10) NOT NULL,
    [ORGAN_NAME]      	varchar(100) NOT NULL,
    [RANK]            	char(1) NULL,
    [VALID]           	char(1) NULL,
    [DESCRIPTION]     	varchar(255) NULL,
    [FULL_NAME]       	varchar(60) NULL,
    [SHORT_NAME]      	varchar(10) NULL,
    [SHORT_PY]        	varchar(10) NULL,
    [GB_CODE]         	varchar(20) NULL,
    [DISP_ORDER]      	int NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREATE_USER_NAME]	varchar(50) NULL,
    [CREATE_DATE]     	datetime NULL,
    [OPER_USER_ID]    	varchar(32) NULL,
    [OPER_USER_NAME]  	varchar(50) NULL,
    [OPER_DATE]       	datetime NULL,
    [TELEPHONE]       	varchar(30) NULL,
    [OUT_ID]          	varchar(32) NULL,
    [RANK_APP1]       	char(1) NULL,
    [RANK_APP2]       	char(1) NULL,
    [RANK_APP3]       	char(1) NULL,
    [PARENT_ORGAN_ID] 	char(9) NULL,
    CONSTRAINT [PK__SPT_ORGA__0FD8F0A31229A90A] PRIMARY KEY CLUSTERED([ORGAN_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_ORGAN_HIS]  ( 
    [SERIAL_NO]      	varchar(32) NOT NULL,
    [OPER_USER_ID]   	varchar(32) NULL,
    [OPER_USER_NAME] 	varchar(50) NULL,
    [OPER_DATE]      	datetime NULL,
    [OPER_TYPE]      	char(1) NULL,
    [ORGAN_ID]       	char(9) NULL,
    [ORGAN_NAME]     	varchar(100) NULL,
    [RANK]           	char(1) NULL,
    [VALID]          	char(1) NULL,
    [DESCRIPTION]    	varchar(255) NULL,
    [FULL_NAME]      	varchar(60) NULL,
    [SHORT_NAME]     	varchar(10) NULL,
    [SHORT_PY]       	varchar(10) NULL,
    [GB_CODE]        	varchar(20) NULL,
    [DISP_ORDER]     	int NULL,
    [TELEPHONE]      	varchar(30) NULL,
    [OUT_ID]         	varchar(32) NULL,
    [RANK_APP1]      	char(1) NULL,
    [RANK_APP2]      	char(1) NULL,
    [RANK_APP3]      	char(1) NULL,
    [PARENT_ORGAN_ID]	varchar(10) NULL,
    CONSTRAINT [PK__SPT_ORGA__2A5625AA15FA39EE] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_PAGE_ITEM]  ( 
    [ID]         	varchar(32) NOT NULL,
    [TITLE]      	varchar(32) NULL,
    [TOOL_TIPS]  	varchar(128) NULL,
    [LINK]       	varchar(128) NULL,
    [REGION_ID]  	varchar(32) NULL,
    [SORTNO]     	int NULL CONSTRAINT [DF__SPT_PAGE___SORTN__1BB31344]  DEFAULT ((0)),
    [DISABLED]   	char(1) NOT NULL CONSTRAINT [DF__SPT_PAGE___DISAB__1CA7377D]  DEFAULT ('0'),
    [UPDATE_TIME]	datetime NULL,
    CONSTRAINT [PK__SPT_PAGE__3214EC2719CACAD2] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_PAGE_REGION]  ( 
    [ID]      	varchar(32) NOT NULL,
    [NAME]    	varchar(64) NULL,
    [LINK]    	varchar(128) NULL,
    [DISABLED]	char(1) NOT NULL CONSTRAINT [DF__SPT_PAGE___DISAB__216BEC9A]  DEFAULT ('0'),
    [RESERVED]	char(1) NOT NULL CONSTRAINT [DF__SPT_PAGE___RESER__226010D3]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_PAGE__3214EC271F83A428] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_PROBLEMS]  ( 
    [PROBLEM_ID]      	varchar(32) NOT NULL,
    [APP_CODE]        	varchar(32) NULL,
    [MODULE_ID]       	varchar(32) NULL,
    [MODULE_NAME]     	varchar(500) NULL,
    [PROBLEM_TYPE_ID] 	char(1) NULL,
    [TITLE]           	varchar(500) NULL,
    [DESCRIPTION]     	varchar(4000) NULL,
    [PROBLEM_SEVERITY]	char(1) NULL CONSTRAINT [DF__SPT_PROBL__PROBL__2724C5F0]  DEFAULT ('3'),
    [PROBLEM_PRIORITY]	char(1) NULL,
    [PROBLEM_STATE]   	char(1) NULL,
    [ATTACHMENT]      	varchar(200) NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREAT_USER_NAME] 	varchar(32) NULL,
    [CREATE_TIME]     	datetime NULL,
    [CONTACTS]        	varchar(50) NULL,
    [TELEPHONE]       	varchar(25) NULL,
    [CLOSE_TIME]      	datetime NULL,
    [LAST_OPER_TIME]  	datetime NULL,
    [FREQUENT]        	char(1) NULL,
    [VERSION]         	varchar(32) NULL,
    [ORGAN_ID]        	varchar(32) NULL,
    [ORGAN_NAME]      	varchar(100) NULL,
    [DEPT_ID]         	varchar(32) NULL,
    [DEPT_NAME]       	varchar(32) NULL,
    [OUT_TIME]        	char(1) NULL,
    [DONE_DAYS]       	int NULL,
    [APPROVE_TYPE]    	char(1) NULL,
    [APPROVE_CONTENT] 	varchar(500) NULL,
    [APPROVE_TIME]    	datetime NULL,
    [APPLY_TYPE]      	char(1) NULL,
    [TO_DEPT_ID]      	varchar(32) NULL,
    [TO_DEPT_NAME]    	varchar(50) NULL,
    [OPER_CONTAIN]    	varchar(500) NULL,
    [ERROR_MESS]      	varchar(4000) NULL,
    [PROCESSED_DAYS]  	int NULL CONSTRAINT [DF__SPT_PROBL__PROCE__2818EA29]  DEFAULT ((0)),
    [NEW_REPLY]       	char(1) NULL CONSTRAINT [DF__SPT_PROBL__NEW_R__290D0E62]  DEFAULT ('0'),
    [UPDATE_FLAG]     	int NULL CONSTRAINT [DF__SPT_PROBL__UPDAT__2A01329B]  DEFAULT ((0)),
    [PROBLEM_NO]      	varchar(40) NULL,
    [PARENT_PATH]     	varchar(150) NULL,
    [PROBLEM_TYPE_ID2]	char(1) NULL,
    [IS_REPEAT]       	char(1) NULL,
    CONSTRAINT [PK__SPT_PROB__601A1206253C7D7E] PRIMARY KEY CLUSTERED([PROBLEM_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_PROBLEMS_BAK]  ( 
    [PROBLEM_ID]      	varchar(32) NOT NULL,
    [APP_CODE]        	varchar(32) NULL,
    [MODULE_ID]       	varchar(32) NULL,
    [MODULE_NAME]     	varchar(500) NULL,
    [PROBLEM_TYPE_ID] 	char(1) NULL,
    [TITLE]           	varchar(500) NULL,
    [DESCRIPTION]     	varchar(4000) NULL,
    [PROBLEM_SEVERITY]	char(1) NULL CONSTRAINT [DF__SPT_PROBL__PROBL__2EC5E7B8]  DEFAULT ('3'),
    [PROBLEM_PRIORITY]	char(1) NULL,
    [PROBLEM_STATE]   	char(1) NULL,
    [ATTACHMENT]      	varchar(200) NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREAT_USER_NAME] 	varchar(32) NULL,
    [CREATE_TIME]     	datetime NULL,
    [CONTACTS]        	varchar(50) NULL,
    [TELEPHONE]       	varchar(25) NULL,
    [CLOSE_TIME]      	datetime NULL,
    [LAST_OPER_TIME]  	datetime NULL,
    [FREQUENT]        	char(1) NULL,
    [VERSION]         	varchar(32) NULL,
    [ORGAN_ID]        	varchar(32) NULL,
    [ORGAN_NAME]      	varchar(100) NULL,
    [DEPT_ID]         	varchar(32) NULL,
    [DEPT_NAME]       	varchar(32) NULL,
    [OUT_TIME]        	char(1) NULL,
    [DONE_DAYS]       	int NULL,
    [APPROVE_TYPE]    	char(1) NULL,
    [APPROVE_CONTENT] 	varchar(500) NULL,
    [APPROVE_TIME]    	datetime NULL,
    [APPLY_TYPE]      	char(1) NULL,
    [TO_DEPT_ID]      	varchar(32) NULL,
    [TO_DEPT_NAME]    	varchar(50) NULL,
    [OPER_CONTAIN]    	varchar(500) NULL,
    [ERROR_MESS]      	varchar(4000) NULL,
    [PROCESSED_DAYS]  	int NULL CONSTRAINT [DF__SPT_PROBL__PROCE__2FBA0BF1]  DEFAULT ((0)),
    [NEW_REPLY]       	char(1) NULL CONSTRAINT [DF__SPT_PROBL__NEW_R__30AE302A]  DEFAULT ('0'),
    [UPDATE_FLAG]     	int NULL CONSTRAINT [DF__SPT_PROBL__UPDAT__31A25463]  DEFAULT ((0)),
    [PROBLEM_NO]      	varchar(40) NULL,
    [PARENT_PATH]     	varchar(150) NULL,
    [PROBLEM_TYPE_ID2]	char(1) NULL,
    [IS_REPEAT]       	char(1) NULL,
    CONSTRAINT [PK__SPT_PROB__601A12062CDD9F46] PRIMARY KEY CLUSTERED([PROBLEM_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_PROBLEMS_TMP]  ( 
    [PROBLEM_ID]      	varchar(32) NOT NULL,
    [APP_CODE]        	varchar(32) NULL,
    [MODULE_ID]       	varchar(32) NULL,
    [MODULE_NAME]     	varchar(500) NULL,
    [PROBLEM_TYPE_ID] 	char(1) NULL,
    [TITLE]           	varchar(500) NULL,
    [DESCRIPTION]     	varchar(4000) NULL,
    [PROBLEM_SEVERITY]	char(1) NULL CONSTRAINT [DF__SPT_PROBL__PROBL__36670980]  DEFAULT ('3'),
    [PROBLEM_PRIORITY]	char(1) NULL,
    [PROBLEM_STATE]   	char(1) NULL,
    [ATTACHMENT]      	varchar(200) NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREAT_USER_NAME] 	varchar(32) NULL,
    [CREATE_TIME]     	datetime NULL,
    [CONTACTS]        	varchar(50) NULL,
    [TELEPHONE]       	varchar(25) NULL,
    [CLOSE_TIME]      	datetime NULL,
    [LAST_OPER_TIME]  	datetime NULL,
    [FREQUENT]        	char(1) NULL,
    [VERSION]         	varchar(32) NULL,
    [ORGAN_ID]        	varchar(32) NULL,
    [ORGAN_NAME]      	varchar(100) NULL,
    [DEPT_ID]         	varchar(32) NULL,
    [DEPT_NAME]       	varchar(32) NULL,
    [OUT_TIME]        	char(1) NULL,
    [DONE_DAYS]       	int NULL,
    [APPROVE_TYPE]    	char(1) NULL,
    [APPROVE_CONTENT] 	varchar(500) NULL,
    [APPROVE_TIME]    	datetime NULL,
    [APPLY_TYPE]      	char(1) NULL,
    [TO_DEPT_ID]      	varchar(32) NULL,
    [TO_DEPT_NAME]    	varchar(50) NULL,
    [OPER_CONTAIN]    	varchar(500) NULL,
    [ERROR_MESS]      	varchar(4000) NULL,
    [PROCESSED_DAYS]  	int NULL CONSTRAINT [DF__SPT_PROBL__PROCE__375B2DB9]  DEFAULT ((0)),
    [NEW_REPLY]       	char(1) NULL CONSTRAINT [DF__SPT_PROBL__NEW_R__384F51F2]  DEFAULT ('0'),
    [UPDATE_FLAG]     	int NULL CONSTRAINT [DF__SPT_PROBL__UPDAT__3943762B]  DEFAULT ((0)),
    [PROBLEM_NO]      	varchar(40) NULL,
    [PARENT_PATH]     	varchar(150) NULL,
    [PROBLEM_TYPE_ID2]	char(1) NULL,
    [IS_REPEAT]       	char(1) NULL,
    CONSTRAINT [PK__SPT_PROB__601A1206347EC10E] PRIMARY KEY CLUSTERED([PROBLEM_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_RECORDS]  ( 
    [RECORD_ID]        	varchar(32) NOT NULL,
    [PROBLEM_ID]       	varchar(32) NOT NULL,
    [CREATE_USER_ID]   	varchar(32) NOT NULL,
    [CREATE_USER_NAME] 	varchar(32) NOT NULL,
    [CREATE_TIME]      	datetime NOT NULL,
    [RECORD_TYPE]      	char(1) NOT NULL,
    [PRESENT_USER_ID]  	varchar(32) NULL,
    [PRESENT_USER_NAME]	varchar(32) NULL,
    [TITLE]            	varchar(250) NOT NULL,
    [DESCRIPTIUON]     	varchar(2000) NULL,
    [RESULTS]          	varchar(2000) NULL,
    [ATTACHMENT]       	varchar(100) NULL,
    [PARENT_RECORD_ID] 	varchar(32) NULL,
    CONSTRAINT [PK__SPT_RECO__E2DA602F3C1FE2D6] PRIMARY KEY CLUSTERED([RECORD_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_RECORDS_BAK]  ( 
    [RECORD_ID]        	varchar(32) NOT NULL,
    [PROBLEM_ID]       	varchar(32) NOT NULL,
    [CREATE_USER_ID]   	varchar(32) NOT NULL,
    [CREATE_USER_NAME] 	varchar(32) NOT NULL,
    [CREATE_TIME]      	datetime NOT NULL,
    [RECORD_TYPE]      	char(1) NOT NULL,
    [PRESENT_USER_ID]  	varchar(32) NULL,
    [PRESENT_USER_NAME]	varchar(32) NULL,
    [TITLE]            	varchar(250) NOT NULL,
    [DESCRIPTIUON]     	varchar(2000) NULL,
    [RESULTS]          	varchar(2000) NULL,
    [ATTACHMENT]       	varchar(100) NULL,
    [PARENT_RECORD_ID] 	varchar(32) NULL,
    CONSTRAINT [PK__SPT_RECO__E2DA602F3FF073BA] PRIMARY KEY CLUSTERED([RECORD_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_RECORDS_TMP]  ( 
    [RECORD_ID]        	varchar(32) NOT NULL,
    [PROBLEM_ID]       	varchar(32) NOT NULL,
    [CREATE_USER_ID]   	varchar(32) NOT NULL,
    [CREATE_USER_NAME] 	varchar(32) NOT NULL,
    [CREATE_TIME]      	datetime NOT NULL,
    [RECORD_TYPE]      	char(1) NOT NULL,
    [PRESENT_USER_ID]  	varchar(32) NULL,
    [PRESENT_USER_NAME]	varchar(32) NULL,
    [TITLE]            	varchar(250) NOT NULL,
    [DESCRIPTIUON]     	varchar(2000) NULL,
    [RESULTS]          	varchar(2000) NULL,
    [ATTACHMENT]       	varchar(100) NULL,
    [PARENT_RECORD_ID] 	varchar(32) NULL,
    CONSTRAINT [PK__SPT_RECO__E2DA602F43C1049E] PRIMARY KEY CLUSTERED([RECORD_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_SERIAL_INT]  ( 
    [INT_ID]          	varchar(32) NOT NULL,
    [INT_NAME]        	varchar(50) NULL,
    [INT_FORMAT]      	varchar(60) NULL,
    [MIN_VALUE]       	int NULL,
    [MAX_VALUE]       	int NULL,
    [INCREAT_STEP]    	int NULL,
    [LAST_UPDATE]     	datetime NULL,
    [UPDATE_FREQUENCY]	char(1) NULL,
    [IS_FILLIN]       	char(1) NULL,
    CONSTRAINT [PK__SPT_SERI__781DEB0632E0915F] PRIMARY KEY CLUSTERED([INT_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_SERIAL_INT_ITEM]  ( 
    [ITEM_ID]         	varchar(32) NOT NULL,
    [INT_ID]          	varchar(32) NULL,
    [CURR_VALUE]      	int NULL,
    [LAST_UPDATE_TIME]	datetime NULL,
    [ITEM_CODE]       	varchar(20) NULL,
    CONSTRAINT [PK__SPT_SERI__ADFD89A04B622666] PRIMARY KEY CLUSTERED([ITEM_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_SERIAL_NUMBER]  ( 
    [NUMBER_ID]       	varchar(32) NOT NULL,
    [NUMBER_NAME]     	varchar(50) NULL,
    [NUMBER_FORMAT]   	varchar(60) NULL,
    [MIN_VALUE]       	int NULL,
    [MAX_VALUE]       	int NULL,
    [INCREAT_STEP]    	int NULL,
    [LAST_UPDATE]     	datetime NULL,
    [UPDATE_FREQUENCY]	char(1) NULL,
    [IS_FILLIN]       	char(1) NULL,
    CONSTRAINT [PK__SPT_SERI__FD04E9AD36B12243] PRIMARY KEY CLUSTERED([NUMBER_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_SERIAL_NUMBER_ITEM]  ( 
    [ITEM_ID]         	varchar(32) NOT NULL,
    [NUMBER_ID]       	varchar(32) NULL,
    [CURR_VALUE]      	int NULL,
    [LAST_UPDATE_TIME]	datetime NULL,
    [ITEM_CODE]       	varchar(20) NULL,
    CONSTRAINT [PK__SPT_SERI__ADFD89A03A81B327] PRIMARY KEY CLUSTERED([ITEM_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_TODO_CFG]  ( 
    [TODO_ID]    	varchar(20) NOT NULL,
    [MODULE_ID]  	char(3) NULL,
    [APP_CODE]   	char(4) NULL,
    [PARENT_ID]  	varchar(20) NULL,
    [TODO_NAME]  	varchar(100) NULL,
    [DESCRIPTION]	varchar(255) NULL,
    [SORTNO]     	varchar(8) NULL,
    [VALID]      	char(1) NULL,
    [URL]        	varchar(255) NULL,
    CONSTRAINT [PK__SPT_TODO__9BD5F6D44F32B74A] PRIMARY KEY CLUSTERED([TODO_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_TODO_MESSAGE]  ( 
    [UUID]         	char(32) NOT NULL,
    [APP_CODE]     	varchar(4) NULL,
    [TITLE]        	varchar(100) NULL,
    [FLOW_ID]      	varchar(8) NULL,
    [ACTIVITY_ID]  	varchar(32) NULL,
    [TARGET_OBJECT]	varchar(32) NULL,
    [CREATE_ORGAN] 	varchar(9) NULL,
    [CREATE_DEPT]  	varchar(12) NULL,
    [CREATE_USER]  	varchar(32) NULL,
    [CREATE_DATE]  	datetime NULL,
    [READ_FLAG]    	char(1) NULL,
    [FLA_UUID]     	varchar(32) NULL,
    CONSTRAINT [PK__SPT_TODO__65A475E75303482E] PRIMARY KEY CLUSTERED([UUID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_TRANSFER_FILE]  ( 
    [ID]          	varchar(32) NOT NULL,
    [TITLE]       	varchar(128) NULL,
    [REMARK]      	varchar(512) NULL,
    [FILE_NAME]   	varchar(128) NULL,
    [FILE_PATH]   	varchar(256) NULL,
    [CREATE_TIME] 	datetime NULL,
    [CREATER_ID]  	varchar(32) NULL,
    [CREATER_NAME]	varchar(10) NULL,
    [DISABLED]    	char(1) NULL,
    CONSTRAINT [PK__SPT_TRAN__3214EC2756D3D912] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER]  ( 
    [USER_ID]         	varchar(32) NOT NULL,
    [USER_NAME]       	varchar(50) NULL,
    [LOGIN_NAME]      	varchar(30) NULL,
    [PASSWORD]        	varchar(128) NULL,
    [VALID]           	char(1) NULL,
    [USER_TYPE]       	char(1) NULL,
    [SEX]             	char(1) NULL,
    [WORK_ID]         	varchar(12) NULL,
    [EMAIL]           	varchar(30) NULL,
    [RESET_PASSWORD]  	int NULL,
    [MAIN_DEPT_ID]    	varchar(12) NULL,
    [TELEPHONE]       	varchar(25) NULL,
    [VALID_DATE_START]	datetime NULL,
    [VALID_DATE_END]  	datetime NULL,
    [OUT_ID]          	varchar(50) NULL,
    [CREATE_USER_ID]  	varchar(32) NULL,
    [CREATE_USER_NAME]	varchar(50) NULL,
    [CREATE_DATE]     	datetime NULL,
    [OPER_USER_ID]    	varchar(32) NULL,
    [OPER_USER_NAME]  	varchar(50) NULL,
    [OPER_DATE]       	datetime NULL,
    [POSITION]        	char(1) NULL,
    [MOBILEPHONE]     	varchar(30) NULL,
    [CERT_NO]         	varchar(30) NULL,
    [DISP_ORDER]      	int NULL,
    [INIT_PASSWORD]   	char(1) NULL CONSTRAINT [DF__SPT_USER__INIT_P__5C8CB268]  DEFAULT ('1'),
    [USER_CLASS]      	char(1) NULL,
    [IS_CHANGE]       	char(1) NULL,
    CONSTRAINT [PK__SPT_USER__F3BEEBFF5AA469F6] PRIMARY KEY CLUSTERED([USER_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_AUTH_CACHE]  ( 
    [USER_ID]         	varchar(32) NOT NULL,
    [DEPT_ID]         	varchar(32) NOT NULL,
    [AUTH_ID]         	text NULL,
    [LAST_UPDATE_TIME]	datetime NULL,
    [UPDATE_NOW]      	char(1) NULL CONSTRAINT [DF__SPT_USER___UPDAT__670A40DB]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_USER__26AC4E656521F869] PRIMARY KEY CLUSTERED([USER_ID],[DEPT_ID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_AUTH_MAPPING]  ( 
    [ID]          	varchar(32) NOT NULL,
    [USER_ID]     	varchar(32) NOT NULL,
    [AUTH_ID]     	varchar(32) NOT NULL,
    [OPER_USER_ID]	varchar(32) NOT NULL,
    [OPER_TIME]   	datetime NOT NULL,
    [AUTHORISED]  	char(1) NULL CONSTRAINT [DF__SPT_USER___AUTHO__6BCEF5F8]  DEFAULT ('0'),
    [DISABLED]    	char(1) NULL CONSTRAINT [DF__SPT_USER___DISAB__6CC31A31]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_USER__3214EC2769E6AD86] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_EXTEND]  ( 
    [USER_ID]            	varchar(32) NOT NULL,
    [ENTERPRISE_NAME]    	varchar(255) NOT NULL,
    [RESIDENCE]          	varchar(255) NOT NULL,
    [PRODUCTION_ADDRESS] 	varchar(255) NOT NULL,
    [CONTACT_ADDRESS]    	varchar(255) NOT NULL,
    [POSTAL_CODE]        	varchar(32) NOT NULL,
    [TELEPHONE]          	varchar(32) NOT NULL,
    [FAX]                	varchar(32) NULL,
    [EMAIL]              	varchar(32) NULL,
    [ORGANIZATION_CODE]  	varchar(255) NULL,
    [ECONOMIC_TYPE]      	varchar(255) NULL,
    [REGISTER_AGENCY]    	varchar(255) NULL,
    [LICENSE_ID]         	varchar(255) NULL,
    [FOUND_DATE]         	datetime NULL,
    [OPERATE_PERIOD]     	varchar(32) NULL,
    [FIXED_ASSETS]       	varchar(32) NULL,
    [REGISTER_CAPITAL]   	varchar(32) NULL,
    [ANNUAL_OUTPUT]      	varchar(32) NULL,
    [ANNUAL_SALES]       	varchar(32) NULL,
    [ANNUAL_TAX]         	varchar(32) NULL,
    [ANNUAL_PROFIT]      	varchar(32) NULL,
    [LEGAL_REPRESENT]    	varchar(32) NULL,
    [LEGAL_REPRESENT_ID] 	varchar(32) NULL,
    [LEGAL_REPRESENT_TEL]	varchar(32) NULL,
    [LEGAL_REPRESENT_JOB]	varchar(32) NULL,
    [CONTACT]            	varchar(32) NOT NULL,
    [CONTACT_ID]         	varchar(32) NOT NULL,
    [CONTACT_TEL]        	varchar(32) NOT NULL,
    [CONTACT_JOB]        	varchar(32) NOT NULL,
    [EMPLOYEE_TOTAL]     	varchar(32) NULL,
    [PROFESSIONAL_TOTAL] 	varchar(32) NULL,
    CONSTRAINT [PK__SPT_USER__F3BEEBFF6F9F86DC] PRIMARY KEY CLUSTERED([USER_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_FILE_MAPPING]  ( 
    [ID]              	varchar(32) NOT NULL,
    [TRANSFER_FILE_ID]	varchar(32) NULL,
    [RECEIVER_ID]     	varchar(32) NULL,
    [RECEIVER_NAME]   	varchar(10) NULL,
    [RECEIVED]        	char(1) NULL,
    [RECEIVE_TIME]    	datetime NULL,
    [DISABLED]        	char(1) NOT NULL CONSTRAINT [DF__SPT_USER___DISAB__75586032]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_USER__3214EC27737017C0] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_GROUP]  ( 
    [USER_GROUP_ID]  	varchar(32) NOT NULL,
    [USER_GROUP_NAME]	varchar(64) NULL,
    [USER_GROUP_TYPE]	char(1) NULL CONSTRAINT [DF__SPT_USER___USER___7A1D154F]  DEFAULT ('0'),
    [VALID]          	char(1) NULL CONSTRAINT [DF__SPT_USER___VALID__7B113988]  DEFAULT ('1'),
    [ORGAN_ID]       	varchar(32) NOT NULL,
    [DEPT_ID]        	varchar(32) NULL,
    [DESCRIPTION]    	varchar(256) NULL,
    [OPER_USER_ID]   	varchar(32) NOT NULL,
    [OPER_USER_NAME] 	varchar(32) NOT NULL,
    [OPER_TIME]      	datetime NOT NULL,
    CONSTRAINT [PK__SPT_USER__CA84561B7834CCDD] PRIMARY KEY CLUSTERED([USER_GROUP_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_HIS]  ( 
    [SERIAL_NO]       	varchar(32) NOT NULL,
    [OPER_USER_ID]    	varchar(32) NULL,
    [OPER_USER_NAME]  	varchar(50) NULL,
    [OPER_DATE]       	datetime NULL,
    [OPER_TYPE]       	varchar(20) NULL,
    [USER_ID]         	varchar(32) NULL,
    [USER_NAME]       	varchar(50) NULL,
    [LOGIN_NAME]      	varchar(30) NULL,
    [PASSWORD]        	varchar(128) NULL,
    [VALID]           	char(1) NULL,
    [USER_TYPE]       	char(1) NULL,
    [SEX]             	char(1) NULL,
    [WORK_ID]         	varchar(12) NULL,
    [EMAIL]           	varchar(30) NULL,
    [RESET_PASSWORD]  	int NULL,
    [MAIN_DEPT_ID]    	varchar(12) NULL,
    [TELEPHONE]       	varchar(25) NULL,
    [VALID_DATE_START]	datetime NULL,
    [VALID_DATE_END]  	datetime NULL,
    [OUT_ID]          	varchar(50) NULL,
    CONSTRAINT [PK__SPT_USER__2A5625AA7DEDA633] PRIMARY KEY CLUSTERED([SERIAL_NO])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_PAGE_ITEM]  ( 
    [ID]         	varchar(32) NOT NULL,
    [USER_ID]    	varchar(32) NOT NULL,
    [DEPT_ID]    	varchar(32) NOT NULL,
    [TITLE]      	varchar(32) NULL,
    [TOOL_TIPS]  	varchar(128) NULL,
    [LINK]       	varchar(128) NULL,
    [REGION_ID]  	varchar(32) NULL,
    [TYPE]       	int NULL CONSTRAINT [DF__SPT_USER_P__TYPE__03A67F89]  DEFAULT ((0)),
    [SORTNO]     	int NULL CONSTRAINT [DF__SPT_USER___SORTN__049AA3C2]  DEFAULT ((0)),
    [DISABLED]   	char(1) NOT NULL CONSTRAINT [DF__SPT_USER___DISAB__058EC7FB]  DEFAULT ('0'),
    [UPDATE_TIME]	datetime NULL,
    CONSTRAINT [PK__SPT_USER__3214EC2701BE3717] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USER_USERG_MAPPING]  ( 
    [ID]           	varchar(32) NOT NULL,
    [USER_ID]      	varchar(32) NOT NULL,
    [USER_GROUP_ID]	varchar(32) NOT NULL,
    [OPER_USER_ID] 	varchar(32) NOT NULL,
    [OPER_TIME]    	datetime NOT NULL,
    CONSTRAINT [PK__SPT_USER__3214EC27086B34A6] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_USERG_AUTH_MAPPING]  ( 
    [ID]           	varchar(32) NOT NULL,
    [USER_GROUP_ID]	varchar(32) NOT NULL,
    [AUTH_ID]      	varchar(32) NOT NULL,
    [OPER_USER_ID] 	varchar(32) NOT NULL,
    [OPER_TIME]    	datetime NOT NULL,
    [AUTHORISED]   	char(1) NULL CONSTRAINT [DF__SPT_USERG__AUTHO__61516785]  DEFAULT ('0'),
    [DISABLED]     	char(1) NULL CONSTRAINT [DF__SPT_USERG__DISAB__62458BBE]  DEFAULT ('0'),
    CONSTRAINT [PK__SPT_USER__3214EC275F691F13] PRIMARY KEY CLUSTERED([ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SPT_WORKDAY]  ( 
    [SERIAL_ID]     	varchar(32) NOT NULL,
    [WORKDAY]       	datetime NULL,
    [WORKDAY_TYPE]  	char(1) NULL,
    [OPER_USER_ID]  	varchar(32) NULL,
    [OPER_USER_NAME]	varchar(50) NULL,
    [OPER_DATE]     	datetime NULL,
    CONSTRAINT [PK__SPT_WORK__2A56FC390C3BC58A] PRIMARY KEY CLUSTERED([SERIAL_ID])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[SYS_CONFIG]  ( 
    [PROPERTY_NAME] 	varchar(50) NOT NULL,
    [PROPERTY_VALUE]	varchar(250) NULL,
    CONSTRAINT [PK__SYS_CONF__FE781699145C0A3F] PRIMARY KEY CLUSTERED([PROPERTY_NAME])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[xu_corp_assess]  ( 
    [CORP_INFO_ID]  	varchar(20) NULL,
    [ASSESS_DATE]   	date NULL,
    [UPD_TIME]      	date NULL,
    [ORGAN_CODE]    	varchar(10) NULL,
    [TAXPAYERS_CODE]	varchar(20) NULL,
    [CORP_ASSESS_ID]	float NOT NULL,
    [BUSI_UPD_TIME] 	date NULL 
    )
ON [PRIMARY]
GO



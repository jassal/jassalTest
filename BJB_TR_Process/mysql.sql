CREATE TABLE tr_config_bjbadmin (
	id INT NOT NULL AUTO_INCREMENT,
	staffid VARCHAR(45) NOT NULL,
	role VARCHAR(45) NOT NULL,
	app VARCHAR(45),
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_audit_email (
	BPID VARCHAR(250),
	EMAIL_DATE_TIME DATETIME,
	EMAIL_TO VARCHAR(250),
	EMAIL_CC VARCHAR(250),
	EMAIL_BCC VARCHAR(250),
	EMAIL_SUBJECT VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_transaction_type_map (
	TR_TRANSACTION_TYPE_CODE VARCHAR(30) NOT NULL,
	SVC_TRANSACTION_TYPE_CODE VARCHAR(50) NOT NULL,
	PRIMARY KEY (TR_TRANSACTION_TYPE_CODE,SVC_TRANSACTION_TYPE_CODE)
) ENGINE=InnoDB;

CREATE TABLE tr_config_sub_reason (
	CODE VARCHAR(30),
	SUB_REASON VARCHAR(100),
	SUB_REASON_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_request_detail (
	BPID VARCHAR(250),
	ITER INT,
	UID VARCHAR(250),
	UNAME VARCHAR(250),
	SUPERIOR_UID VARCHAR(250),
	TEAM_ID VARCHAR(250),
	ROLE_ID BIT,
	ISRM BIT,
	TXN_TYPE VARCHAR(250),
	BOOKING_CENTER VARCHAR(250),
	REQ_DATE_TIME DATETIME,
	END_DATE_TIME DATETIME,
	ISFRONTOFFICE BIT,
	TEAM_NAME VARCHAR(50),
	ROLE_CODE VARCHAR(45),
	processing_iter INT
) ENGINE=InnoDB;

CREATE TABLE tr_config_bookingcenter (
	CODE VARCHAR(30),
	BOOKINGCENTER VARCHAR(30),
	BOOKINGCENTER_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_admin_core (
	id INT NOT NULL AUTO_INCREMENT,
	table_name VARCHAR(45),
	display_name VARCHAR(45),
	sql_query VARCHAR(200),
	disp_order INT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_request_mm_info (
	BPID VARCHAR(250),
	PEN_CCY VARCHAR(250),
	PEN_AMT DECIMAL(10 , 6),
	PEN_CR VARCHAR(250),
	PARTY_CCY VARCHAR(250),
	PARTY_AMT DECIMAL(10 , 6),
	PARTY_CR VARCHAR(250),
	REV_FEE_CCY VARCHAR(250),
	REV_FEE_AMT DECIMAL(10 , 6),
	REV_FEE_CR VARCHAR(250),
	mm_type VARCHAR(45),
	ITER VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_config_reln_role_transaction (
	role_code VARCHAR(30),
	transaction_type_code VARCHAR(30),
	id INT NOT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM;

CREATE TABLE tr_config_reconcile (
	ID INT,
	WS_FROMDT DATETIME,
	RECON_RUNDT DATETIME,
	RUN_INTERVAL VARCHAR(250),
	DB_RANGE INT,
	WS_TODT DATETIME
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_iafs_team_info (
	BPID VARCHAR(30),
	TEAM_NO VARCHAR(30),
	TEAM_NAME VARCHAR(100),
	TEAM_ROLE VARCHAR(100),
	TEAM_EMAIL_ID VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE tr_request_txn_details (
	BPID VARCHAR(250),
	TXN_NUM VARCHAR(250),
	SECURITY_TYPE VARCHAR(250),
	SECURITY_TYPE_DESC VARCHAR(250),
	TXN_DESC VARCHAR(250),
	VALUE_DATE VARCHAR(250),
	EXECUTE_DATE VARCHAR(250),
	CURRENCY VARCHAR(250),
	VALUE_AMT VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_config_transaction_approval (
	TRANSACTION_TYPE VARCHAR(250),
	APPROVAL_LEVEL INT,
	APPROVER_TYPE VARCHAR(250),
	APPROVER VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_activity (
	CODE VARCHAR(30),
	ACTIVITY VARCHAR(30),
	ACTIVITY_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_reln_txn_field (
	transaction_code VARCHAR(30),
	field_code VARCHAR(30),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_txn_email (
	EMAIL_CODE VARCHAR(250),
	TXN_TYPE VARCHAR(250),
	SEND_FLAG BIT
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_approval_role_info (
	BPID VARCHAR(250),
	LEVEL INT,
	TASK_USER_OWNER VARCHAR(250),
	TASK_ROLE_OWNER VARCHAR(250),
	TASK_OWNER_NAMES VARCHAR(250),
	TASK_TO_EMAILS VARCHAR(250),
	TASK_CC_EMAILS VARCHAR(250),
	TASK_TEAM_NUM VARCHAR(250)
) ENGINE=MyISAM;

CREATE TABLE tr_config_role (
	CODE VARCHAR(30),
	ROLE VARCHAR(30),
	ROLE_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_system_param (
	PARAM_NAME VARCHAR(250),
	PARAM_VALUE VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_role_info (
	BPID VARCHAR(250),
	ROLE_NAME VARCHAR(250)
) ENGINE=MyISAM;

CREATE TABLE tr_request_attachment_info (
	BPID VARCHAR(250),
	ATTACHMENT_DATE_TIME DATETIME,
	ATTACHMENT_COUNT VARCHAR(250),
	PAYLOAD_URL VARCHAR(250),
	ATTACHED_BY VARCHAR(250),
	ACTIVITY VARCHAR(250),
	ATTACHED_TYPE VARCHAR(250),
	FILE_NAME VARCHAR(250),
	ATTACHMENT_TITLE VARCHAR(250),
	ATTACHMENT_DESC VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_request_comments (
	BPID VARCHAR(250),
	COMMENT_DATE_TIME DATETIME,
	COMMENTS VARCHAR(1000),
	COMMENTS_BY VARCHAR(250),
	ACTIVITY VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE tr_recon_seqs (
	RUNID VARCHAR(250),
	CURRENT_NUM INT
) ENGINE=InnoDB;

CREATE TABLE tr_config_attachement (
	BPID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	FILENAME VARCHAR(45) NOT NULL,
	URL VARCHAR(45) NOT NULL,
	PRIMARY KEY (BPID)
) ENGINE=InnoDB;

CREATE TABLE tr_config_reln_txn_auth_role (
	transaction_type_code VARCHAR(30),
	role_code VARCHAR(30),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_currency (
	CODE VARCHAR(30),
	CURRENCY_SHORT VARCHAR(30),
	CURRENCY_LONG VARCHAR(50),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_reln_txn_proc_role (
	transaction_type_code VARCHAR(30),
	role_code VARCHAR(30),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_admin_validation (
	id INT NOT NULL AUTO_INCREMENT,
	table_name VARCHAR(45),
	column_name VARCHAR(45),
	mandatory VARCHAR(45),
	conditions VARCHAR(45),
	message VARCHAR(45),
	ref_type VARCHAR(1),
	ref_table_name VARCHAR(45),
	ref_column_name VARCHAR(45),
	ref_disp_column_name VARCHAR(45),
	srv_validation_qry VARCHAR(250),
	srv_validation_param VARCHAR(100),
	srv_validation_msg VARCHAR(100),
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE process_info (
	BPID VARCHAR(250),
	STATE VARCHAR(250),
	STATUS VARCHAR(250),
	ITER INT,
	STATUS_DESC VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_config_reln_reason_sub_reason (
	reason_code VARCHAR(30),
	sub_reason_code VARCHAR(30),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_user_info (
	BPID VARCHAR(250),
	UID VARCHAR(250),
	NAME VARCHAR(250),
	superior_uid VARCHAR(45),
	superior_name VARCHAR(45),
	team_no VARCHAR(45),
	team_name VARCHAR(45),
	role VARCHAR(45)
) ENGINE=InnoDB;

CREATE TABLE tr_config_field_type (
	CODE VARCHAR(30),
	FIELD_TYPE VARCHAR(30),
	FIELD_TYPE_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_config_team (
	CODE VARCHAR(30),
	TEAM VARCHAR(30),
	TEAM_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_transaction_type_oly_code_map (
	oly_transaction_type_code VARCHAR(30) NOT NULL,
	tr_transaction_type_code VARCHAR(50) NOT NULL,
	PRIMARY KEY (oly_transaction_type_code,tr_transaction_type_code)
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_processing_role_info (
	BPID VARCHAR(250),
	TASK_ROLE_OWNER VARCHAR(250),
	TASK_TEAMS VARCHAR(250),
	TASK_TEAMS_EMAIL VARCHAR(250),
	TASK_TEAM_NAMES VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_attachment_info (
	BPID VARCHAR(250),
	U_TOKEN_ID VARCHAR(250),
	LAST_TASK_ID VARCHAR(250)
) ENGINE=MyISAM;

CREATE TABLE tr_tmp_status_view (
	_requestId VARCHAR(250),
	_requestDate DATETIME,
	_requestStatus VARCHAR(250),
	userId VARCHAR(250),
	roleId VARCHAR(250)
);

CREATE TABLE tr_config_source (
	CODE VARCHAR(30),
	SOURCE VARCHAR(30),
	SOURCE_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_request_addl_info (
	BPID VARCHAR(250),
	REASON_CODE VARCHAR(250),
	SUB_REASON_CODE VARCHAR(250),
	SOURCE VARCHAR(250),
	PERSON_RESP VARCHAR(250),
	FX_IMPACT BIT,
	FX_RATE DECIMAL(10 , 0),
	ITER INT,
	COMMENTS VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_daily_txn_count (
	DATE VARCHAR(8) NOT NULL,
	COUNT INT DEFAULT 1 NOT NULL,
	PRIMARY KEY (DATE)
) ENGINE=InnoDB;

CREATE TABLE tr_tmp_activity_info (
	BPID VARCHAR(250),
	CURRENT_ACTIVITY_TYPE VARCHAR(250),
	CURRENT_ACTIVITY_LEVEL INT,
	CURRENT_ACTIVITY_UID VARCHAR(250),
	LAST_ACTIVITY_TYPE VARCHAR(250),
	LAST_ACTIVITY_LEVEL INT,
	LAST_ACTIVITY_UID VARCHAR(250),
	CURRENT_ACTIVITY_START DATETIME,
	CURRENT_ACTIVITY_END DATETIME,
	LAST_ACTIVITY_START DATETIME,
	LAST_ACTIVITY_END DATETIME,
	NEXT_ACTIVITY_START DATETIME
) ENGINE=InnoDB;

CREATE TABLE tr_request_txn (
	BPID VARCHAR(250),
	ITER INT,
	TXN_NUM VARCHAR(250),
	TXN_ACCT VARCHAR(250),
	ACCT_RM VARCHAR(250),
	NEW_TXN_NUM VARCHAR(250),
	IS_RECON BIT,
	STATUS VARCHAR(250),
	no_action BIT,
	status_desc VARCHAR(250),
	is_client_acct BIT,
	system_txn_num VARCHAR(250),
	counter_party_name VARCHAR(250),
	security_type_name VARCHAR(250),
	security_type_code VARCHAR(250),
	system_date VARCHAR(250),
	operator_id VARCHAR(250),
	controller_id VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_request_fields_change (
	BPID VARCHAR(250),
	ITER VARCHAR(250),
	FIELD VARCHAR(250),
	OLD_VALUE VARCHAR(250),
	NEW_VALUE VARCHAR(250)
) ENGINE=InnoDB;

CREATE TABLE tr_request_activity_details (
	BPID VARCHAR(30),
	APRV_CNT INT,
	APRV_L1_UID VARCHAR(30),
	APRV_L1_UNAME VARCHAR(30),
	APRV_L1_ACT_UID VARCHAR(30),
	APRV_L1_ACT_UNAME VARCHAR(30),
	APRV_L1_TIMESTAMP DATETIME,
	APRV_L2_UID VARCHAR(30),
	APRV_L2_UNAME VARCHAR(30),
	APRV_L2_ACT_UID VARCHAR(30),
	APRV_L2_ACT_UNAME VARCHAR(30),
	APRV_L2_TIMESTAMP DATETIME,
	APRV_L3_UID VARCHAR(30),
	APRV_L3_UNAME VARCHAR(30),
	APRV_L3_ACT_UID VARCHAR(30),
	APRV_L3_ACT_UNAME VARCHAR(30),
	APRV_L3_TIMESTAMP DATETIME,
	PROCESSOR_UID VARCHAR(30),
	PROCESSOR_UNAME VARCHAR(30),
	PROCESOR_TIMESTAMP DATETIME,
	AUTHORISER_UID VARCHAR(30),
	AUTHORISER_UNAME VARCHAR(30),
	AUTHORISER_TIMESTAMP DATETIME,
	processor_dept VARCHAR(50),
	authoriser_dept VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE tr_request_pnl_info (
	BPID VARCHAR(250),
	ITER VARCHAR(250),
	APX_PL_CCY VARCHAR(250),
	APX_PL_AMT DECIMAL(10 , 6),
	FORM_RAISED VARCHAR(250),
	POSN_SQUARED VARCHAR(250),
	PL_TYPE VARCHAR(45)
) ENGINE=InnoDB;

CREATE TABLE tr_config_reason (
	CODE VARCHAR(30),
	REASON VARCHAR(30),
	REASON_INFO VARCHAR(250),
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE tr_recon_exception (
	ID INT,
	TXNREFNO VARCHAR(250),
	REVERSEDTXNREFNO VARCHAR(250),
	REVERSED BIT,
	TXNTYPE VARCHAR(250),
	COUNTERPARTYNAME VARCHAR(250),
	SECURITYTYPENAME VARCHAR(250),
	SECURITYTYPECODE VARCHAR(250),
	SYSTEMDATE DATE,
	OPERATORID VARCHAR(250),
	CONTROLLERID VARCHAR(250),
	ACCOUNTNO VARCHAR(250),
	LOCATION VARCHAR(250),
	REQUESTOR_NAME VARCHAR(250),
	RECONDT DATETIME
) ENGINE=InnoDB;

CREATE TABLE tr_config_transaction_type (
	CODE VARCHAR(30),
	TRASNACTION_TYPE VARCHAR(30),
	TRANSACTION_INFO VARCHAR(250),
	TRANSACTION_APPROVAL_LEVEL_COUNT INT,
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE INDEX tr_config_txn_email_KEYS ON tr_config_txn_email (EMAIL_CODE ASC, TXN_TYPE ASC);

CREATE INDEX tr_audit_email_KEYS ON tr_audit_email (BPID ASC, EMAIL_DATE_TIME ASC);

CREATE INDEX TR_Config_Activity_KEYS ON tr_config_activity (CODE ASC);

CREATE INDEX TR_Config_Role_KEYS ON tr_config_role (CODE ASC);

CREATE INDEX tr_tmp_attachment_info_KEYS ON tr_tmp_attachment_info (BPID ASC);

CREATE INDEX TR_Tmp_IAFS_Team_Info_KEYS ON tr_tmp_iafs_team_info (BPID ASC, TEAM_NO ASC);

CREATE INDEX TR_Request_Addl_Info_KEYS ON tr_request_addl_info (BPID ASC);

CREATE INDEX Process_Info_KEYS ON process_info (BPID ASC);

CREATE INDEX TR_Config_System_Param_KEYS ON tr_config_system_param (PARAM_NAME ASC);

CREATE INDEX tr_recon_seqs_KEYS ON tr_recon_seqs (RUNID ASC);

CREATE INDEX TR_Config_BookingCenter_KEYS ON tr_config_bookingcenter (CODE ASC);

CREATE INDEX TR_Tmp_User_Info_KEYS ON tr_tmp_user_info (BPID ASC, UID ASC);

CREATE INDEX tr_request_attachment_info_KEYS ON tr_request_attachment_info (BPID ASC, ATTACHMENT_DATE_TIME ASC, ATTACHMENT_COUNT ASC);

CREATE INDEX TR_Request_Fields_Change_KEYS ON tr_request_fields_change (BPID ASC, ITER ASC);

CREATE INDEX TR_Config_Team_KEYS ON tr_config_team (CODE ASC);

CREATE INDEX TR_Config_Reason_KEYS ON tr_config_reason (CODE ASC);

CREATE INDEX tr_config_reconcile_KEYS ON tr_config_reconcile (ID ASC);

CREATE INDEX TR_Config_Transaction_Approval_KEYS ON tr_config_transaction_approval (TRANSACTION_TYPE ASC, APPROVAL_LEVEL ASC);

CREATE INDEX tr_tmp_processing_role_info_KEYS ON tr_tmp_processing_role_info (BPID ASC);

CREATE INDEX TR_Tmp_Activity_Info_KEYS ON tr_tmp_activity_info (BPID ASC);

CREATE INDEX TR_Request_Activity_Details_KEYS ON tr_request_activity_details (BPID ASC);

CREATE INDEX tr_request_txn_details_KEYS ON tr_request_txn_details (BPID ASC, TXN_NUM ASC);

CREATE INDEX tr_request_mm_info_KEYS ON tr_request_mm_info (BPID ASC, ITER ASC);

CREATE INDEX TR_Daily_Txn_Count_KEYS ON tr_daily_txn_count (DATE ASC);

CREATE INDEX TR_Config_Source_KEYS ON tr_config_source (CODE ASC);

CREATE INDEX TR_Config_Sub_Reason_KEYS ON tr_config_sub_reason (CODE ASC);

CREATE INDEX tr_recon_exception_KEYS ON tr_recon_exception (ID ASC, TXNREFNO ASC);

CREATE INDEX TR_Config_Field_Type_KEYS ON tr_config_field_type (CODE ASC);

CREATE INDEX TR_Request_PnL_Info_KEYS ON tr_request_pnl_info (BPID ASC, ITER ASC);

CREATE INDEX tr_tmp_approval_role_info_KEYS ON tr_tmp_approval_role_info (BPID ASC, LEVEL ASC);

CREATE INDEX TR_Request_Comments_KEYS ON tr_request_comments (BPID ASC);

CREATE INDEX TR_Config_Currency_KEYS ON tr_config_currency (CODE ASC);

CREATE INDEX TR_Config_Transaction_Type_KEYS ON tr_config_transaction_type (CODE ASC);

CREATE INDEX tr_tmp_role_info_KEYS ON tr_tmp_role_info (BPID ASC);

CREATE INDEX TR_Request_Detail_KEYS ON tr_request_detail (BPID ASC, ITER ASC);

CREATE INDEX TR_Request_Txn_KEYS ON tr_request_txn (BPID ASC, ITER ASC, TXN_NUM ASC);


insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-adm','cli_instr',1);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-adm','ccntr_py_instr',2);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-adm','ch_o_ba',3);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-pro_err','incor_instr',4);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-pro_err','incor_intp_instr',5);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-pro_err','wrg_dat_ent',6);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-pro_err','miss_instr',7);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-pro_err','dup_ent',8);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-tech','sys_lim',9);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-tech','incor_setp',10);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-tech','dup_trxn',11);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-tech','bug',12);
insert into `tr_config_reln_reason_sub_reason`(`reason_code`,`sub_reason_code`,`id`) values ('res-pro_err','incor_inter_instr',13);


insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','fx_wss',1);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','fx_trade',2);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','cor_act_cash',3);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','cor_act_sec',4);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','pay',5);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','sec_trf',6);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','mm_loan',7);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','mm_dep',8);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACM','sec_exe',9);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','fx_wss',10);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','fx_trade',11);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','cor_act_cash',12);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','cor_act_sec',13);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','pay',14);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','sec_trf',15);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','mm_loan',16);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','mm_dep',17);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ACU','sec_exe',18);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','fx_wss',19);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','fx_trade',20);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','cor_act_cash',21);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','cor_act_sec',22);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','pay',23);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','sec_trf',24);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','mm_loan',25);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','mm_dep',26);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Administrator','sec_exe',27);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ALM','mm_loan',34);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ALM','mm_dep',35);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','fx_wss',37);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','fx_trade',38);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','cor_act_cash',39);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','cor_act_sec',40);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','pay',41);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','sec_trf',42);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','mm_loan',43);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','mm_dep',44);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BCO','sec_exe',45);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','fx_wss',46);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','fx_trade',47);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','cor_act_cash',48);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','cor_act_sec',49);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','pay',50);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','sec_trf',51);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','mm_loan',52);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','mm_dep',53);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BIZDEV','sec_exe',54);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','fx_wss',55);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','fx_trade',56);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','cor_act_cash',57);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','cor_act_sec',58);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','pay',59);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','sec_trf',60);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','mm_loan',61);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','mm_dep',62);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('BRM','sec_exe',63);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CA','cor_act_cash',64);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CA','cor_act_sec',65);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','fx_wss',66);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','fx_trade',67);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','cor_act_cash',68);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','cor_act_sec',69);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','pay',70);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','sec_trf',71);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','mm_loan',72);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','mm_dep',73);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CD','sec_exe',74);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','fx_wss',75);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','fx_trade',76);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','cor_act_cash',77);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','cor_act_sec',78);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','pay',79);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','sec_trf',80);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','mm_loan',81);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','mm_dep',82);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CEO','sec_exe',83);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','fx_wss',84);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','fx_trade',85);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','cor_act_cash',86);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','cor_act_sec',87);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','pay',88);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','sec_trf',89);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','mm_loan',90);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','mm_dep',91);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IF','sec_exe',92);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','fx_wss',93);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','fx_trade',94);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','cor_act_cash',95);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','cor_act_sec',96);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','pay',97);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','sec_trf',98);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','mm_loan',99);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','mm_dep',100);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('COO','sec_exe',101);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','fx_wss',102);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','fx_trade',103);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','cor_act_cash',104);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','cor_act_sec',105);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','pay',106);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','sec_trf',107);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','mm_loan',108);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','mm_dep',109);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Credit','sec_exe',110);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','fx_wss',111);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','fx_trade',112);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','cor_act_cash',113);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','cor_act_sec',114);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','pay',115);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','sec_trf',116);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','mm_loan',117);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','mm_dep',118);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CRO','sec_exe',119);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','fx_wss',120);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','fx_trade',121);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','cor_act_cash',122);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','cor_act_sec',123);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','pay',124);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','sec_trf',125);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','mm_loan',126);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','mm_dep',127);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('CSS','sec_exe',128);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','fx_wss',129);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','fx_trade',130);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','cor_act_cash',131);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','cor_act_sec',132);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','pay',133);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','sec_trf',134);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','mm_loan',135);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','mm_dep',136);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('DDM','sec_exe',137);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Execution_Desk','sec_exe',138);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','fx_wss',139);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','fx_trade',140);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','cor_act_cash',141);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','cor_act_sec',142);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','pay',143);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','sec_trf',144);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','mm_loan',145);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','mm_dep',146);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Finance','sec_exe',147);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('FX_Desk','fx_wss',148);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','fx_wss',149);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','fx_trade',150);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','cor_act_cash',151);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','cor_act_sec',152);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','pay',153);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','sec_trf',154);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','mm_loan',155);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','mm_dep',156);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('HR','sec_exe',157);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','fx_wss',158);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','fx_trade',159);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','cor_act_cash',160);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','cor_act_sec',161);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','pay',162);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','sec_trf',163);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','mm_loan',164);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','mm_dep',165);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IA','sec_exe',166);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','fx_wss',167);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','fx_trade',168);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','cor_act_cash',169);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','cor_act_sec',170);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','pay',171);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','sec_trf',172);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','mm_loan',173);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','mm_dep',174);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Internal_Audit','sec_exe',175);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','fx_wss',176);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','fx_trade',177);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','cor_act_cash',178);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','cor_act_sec',179);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','pay',180);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','sec_trf',181);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','mm_loan',182);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','mm_dep',183);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('IT','sec_exe',184);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','fx_wss',185);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','fx_trade',186);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','cor_act_cash',187);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','cor_act_sec',188);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','pay',189);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','sec_trf',190);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','mm_loan',191);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','mm_dep',192);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('LC','sec_exe',193);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','fx_wss',194);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','fx_trade',195);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','cor_act_cash',196);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','cor_act_sec',197);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','pay',198);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','sec_trf',199);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','mm_loan',200);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','mm_dep',201);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MarCom','sec_exe',202);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','fx_wss',203);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','fx_trade',204);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','cor_act_cash',205);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','cor_act_sec',206);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','pay',207);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','sec_trf',208);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','mm_loan',209);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','mm_dep',210);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets','sec_exe',211);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Markets_Support','fx_trade',212);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MP','pay',213);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MP','mm_loan',214);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MP','mm_dep',215);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','fx_wss',216);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','fx_trade',217);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','cor_act_cash',218);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','cor_act_sec',219);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','pay',220);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','sec_trf',221);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','mm_loan',222);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','mm_dep',223);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Operations','sec_exe',224);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','fx_wss',225);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','fx_trade',226);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','cor_act_cash',227);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','cor_act_sec',228);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','pay',229);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','sec_trf',230);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','mm_loan',231);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','mm_dep',232);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ORC','sec_exe',233);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','fx_wss',234);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','fx_trade',235);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','cor_act_cash',236);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','cor_act_sec',237);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','pay',238);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','sec_trf',239);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','mm_loan',240);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','mm_dep',241);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PE','sec_exe',242);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','fx_wss',243);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','fx_trade',244);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','cor_act_cash',245);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','cor_act_sec',246);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','pay',247);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','sec_trf',248);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','mm_loan',249);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','mm_dep',250);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('PM','sec_exe',251);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','fx_wss',252);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','fx_trade',253);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','cor_act_cash',254);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','cor_act_sec',255);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','pay',256);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','sec_trf',257);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','mm_loan',258);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','mm_dep',259);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Products','sec_exe',260);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','fx_wss',261);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','fx_trade',262);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','cor_act_cash',263);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','cor_act_sec',264);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','pay',265);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','sec_trf',266);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','mm_loan',267);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','mm_dep',268);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Recon','sec_exe',269);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','fx_wss',270);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','fx_trade',271);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','cor_act_cash',272);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','cor_act_sec',273);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','pay',274);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','sec_trf',275);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','mm_loan',276);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','mm_dep',277);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('Research','sec_exe',278);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','fx_wss',279);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','fx_trade',280);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','cor_act_cash',281);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','cor_act_sec',282);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','pay',283);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','sec_trf',284);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','mm_loan',285);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','mm_dep',286);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('RM','sec_exe',287);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','fx_wss',288);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','fx_trade',289);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','cor_act_cash',290);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','cor_act_sec',291);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','pay',292);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','sec_trf',293);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','mm_loan',294);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','mm_dep',295);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('MA','sec_exe',296);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','fx_wss',297);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','fx_trade',298);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','cor_act_cash',299);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','cor_act_sec',300);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','pay',301);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','sec_trf',302);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','mm_loan',303);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','mm_dep',304);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('ARM','sec_exe',305);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','fx_wss',306);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','fx_trade',307);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','cor_act_cash',308);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','cor_act_sec',309);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','pay',310);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','sec_trf',311);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','mm_loan',312);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','mm_dep',313);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SMP','sec_exe',314);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','fx_wss',315);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','fx_trade',316);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','cor_act_cash',317);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','cor_act_sec',318);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','pay',319);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','sec_trf',320);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','mm_loan',321);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','mm_dep',322);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SP_Desk','sec_exe',323);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','fx_wss',324);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','fx_trade',325);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','cor_act_cash',326);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','cor_act_sec',327);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','pay',328);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','sec_trf',329);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','mm_loan',330);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','mm_dep',331);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SS','sec_exe',332);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SST','sec_trf',333);
insert into `tr_config_reln_role_transaction`(`role_code`,`transaction_type_code`,`id`) values ('SST','sec_exe',334);


insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('sec_exe','SST',1);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('sec_trf','SST',2);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('fx_wss','FX_Desk',3);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('fx_trade','Markets_Support',4);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('cor_act_cash','CA',5);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('cor_act_sec','CA',6);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('pay','MP',7);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('mm_loan','MP',8);
insert into `tr_config_reln_txn_auth_role`(`transaction_type_code`,`role_code`,`id`) values ('mm_dep','MP',9);


insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Accountnumber',1);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Securities',2);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Executeddate',3);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Valuedate',4);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Paymentdate',5);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Exdate',6);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Recorddate',7);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Ratio',8);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Currency',9);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Settlementcurrency',10);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Amount',11);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Exchangerate',12);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Quantity',13);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Rate',14);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Tax',15);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Fees',16);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Accountnumber',17);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Securities',18);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Executeddate',19);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Valuedate',20);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Paymentdate',21);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Exdate',22);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Recorddate',23);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Ratio',24);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Currency',25);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Settlementcurrency',26);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Amount',27);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Exchangerate',28);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Quantity',29);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Rate',30);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Tax',31);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Fees',32);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Price',34);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Amount',35);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Currency',36);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','ISIN',37);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Accountnumber',38);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Accuredinterest',39);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Localbrokerage',40);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Thirdpartyfees',41);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Foreginbrokerage',42);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Stampduty',43);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','Quantity',44);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_trf','Quantity',45);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_trf','ISIN',46);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_trf','Accountnumber',47);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_trf','Localbrokerage',48);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Amount',49);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Currency',50);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Valuedate',51);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Debitaccountnumber',52);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Creditaccountnumber',53);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Communicationmode',54);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Payee',55);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Payeebank',56);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Orderer',57);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','ValuedateforDebitaccount',58);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','ValuedateforCreditaccount',59);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','ChargestoPayee',60);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','ChargestoOrderer',61);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Intermediarybank',62);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Communicationtopayee',63);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Charges',64);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Fees',65);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Debitadvise',66);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Creditadvise',67);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Receiverofmessage',68);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Receivingbank',69);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','Interbankcommunication',70);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','Spotrate',71);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','Amount',72);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','Currency1',73);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','Currency2',74);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','Accountnumber',75);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','Valuedate',76);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','Spotrate',79);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','Amount',80);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','Currency1',81);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','Currency2',82);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','Accountnumber',83);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','Valuedate',86);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Amount',87);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Currency',88);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Accountnumber',89);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Treasuryrate',90);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Clientrate',91);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Amount',92);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Currency',93);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Accountnumber',94);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Treasuryrate',95);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Clientrate',96);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Maturitydate',97);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Maturitydate',98);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','Valuedate',99);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','Valuedate',100);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','Charges',101);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_cash','No Field Change',102);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_loan','No Field Change',103);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('mm_dep','No Field Change',104);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_wss','No Field Change',105);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('fx_trade','No Field Change',106);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('pay','No Field Change',107);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_trf','No Field Change',108);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('sec_exe','No Field Change',109);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','Charges',112);
insert into `tr_config_reln_txn_field`(`transaction_code`,`field_code`,`id`) values ('cor_act_sec','No Field Change',113);


insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('sec_exe','SST',1);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('sec_trf','SST',2);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('fx_wss','FX_Desk',3);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('fx_trade','Markets_Support',4);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('cor_act_cash','CA',5);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('cor_act_sec','CA',6);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('pay','MP',7);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('mm_loan','MP',8);
insert into `tr_config_reln_txn_proc_role`(`transaction_type_code`,`role_code`,`id`) values ('mm_dep','MP',9);


insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('ACM','ACM',null,1);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('ACU','ACU',null,2);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Administrator','Administrator',null,3);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('ALM','ALM',null,4);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('BCO','BCO',null,5);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('BIZDEV','BIZDEV',null,6);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('BRM','BRM',null,7);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('CA','CA',null,8);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('CD','CD',null,9);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('CEO','CEO',null,10);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('IF','IF',null,11);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('COO','COO',null,12);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Credit','Credit',null,13);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('CRO','CRO',null,14);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('CSS','CSS',null,15);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('DDM','DDM',null,16);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Execution_Desk','Execution_Desk',null,17);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Finance','Finance',null,18);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('FX_Desk','FX_Desk',null,19);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('HR','HR',null,20);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('IA','IA',null,21);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Internal_Audit','Internal_Audit',null,22);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('IT','IT',null,23);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('LC','LC',null,24);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('MarCom','MarCom',null,25);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Markets','Markets',null,26);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Markets_Support','Markets_Support',null,27);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('MP','MP',null,28);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Operations','Operations',null,29);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('ORC','ORC',null,30);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('PE','PE',null,31);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('PM','PM',null,32);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Products','Products',null,33);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Recon','Recon',null,34);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('Research','Research',null,35);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('RM','RM',null,36);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('MA','MA',null,37);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('ARM','ARM',null,38);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('SMP','SMP',null,39);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('SP_Desk','SP_Desk',null,40);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('SS','SS',null,41);
insert into `tr_config_role`(`CODE`,`ROLE`,`ROLE_INFO`,`id`) values ('SST','SST',null,42);


insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('cli_instr','Client Instructions',null,1);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('ccntr_py_instr','Counterparty instructions',null,2);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('ch_o_ba','Change of business case',null,3);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('incor_instr','Incorrect instructions',null,4);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('wrg_dat_ent','Wrong data entry',null,6);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('miss_instr','Missed instructions',null,7);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('dup_ent','Duplicate entry',null,8);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('sys_lim','System Limitation',null,9);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('incor_setp','Incorrect set up',null,10);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('dup_trxn','Duplicate transactions',null,11);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('bug','Bug',null,12);
insert into `tr_config_sub_reason`(`CODE`,`SUB_REASON`,`SUB_REASON_INFO`,`id`) values ('incor_inter_instr','Incorrect interpretation of instructions','null',13);


insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('SECURITY_REALM','intalio/',1);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('CLOSED_LOOP_DELAY','5',2);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('TRA_EMAIL_ID','tra',3);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('HK_FINANCE_TEAM_ID','111157100000',4);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('SG_FINANCE_TEAM_ID','1111593B0000',5);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('HK_BRM_TEAM_ID','1111F7320000',6);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('SG_BRM_TEAM_ID','1111F7311000',7);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('TRA_EMAIL_ID','TRA',8);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('BJB_EMAIL_DOMAIN','@juliusbaer.com',9);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('TRA_APP_URL','http://bpm-uat.sin.juliusbaer.com:8080/ui-fw',10);
insert into `tr_config_system_param`(`PARAM_NAME`,`PARAM_VALUE`,`id`) values ('AUTO_CANCEL_DURATION','100H',11);


insert into `tr_config_team`(`CODE`,`TEAM`,`TEAM_INFO`,`id`) values ('sec_set','examples\employee','Securities Settlement',1);
insert into `tr_config_team`(`CODE`,`TEAM`,`TEAM_INFO`,`id`) values ('sec_trf','examples\employee','Securities Transfer',2);
insert into `tr_config_team`(`CODE`,`TEAM`,`TEAM_INFO`,`id`) values ('cor_act','examples\employee','Corporate Actions',3);
insert into `tr_config_team`(`CODE`,`TEAM`,`TEAM_INFO`,`id`) values ('mny_proc','examples\employee','Money Processing',4);
insert into `tr_config_team`(`CODE`,`TEAM`,`TEAM_INFO`,`id`) values ('mkt_sup','examples\employee','Markets Support',5);
insert into `tr_config_team`(`CODE`,`TEAM`,`TEAM_INFO`,`id`) values ('fx_desk','examples\employee','FX Desk',6);


insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('sec_exe',1,'SUPERIOR','admin',1);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('sec_trf',1,'SUPERIOR','admin',2);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('cor_act_cash',1,'SUPERIOR','admin',3);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('cor_act_sec',1,'SUPERIOR','admin',4);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('pay',1,'SUPERIOR','admin',5);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('mm_loan',1,'SUPERIOR','admin',6);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('mm_dep',1,'SUPERIOR','admin',7);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('fx_trade',1,'SUPERIOR','admin',8);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('fx_wss',1,'SUPERIOR','admin',9);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('mm_dep',2,'ROLE','ALM',11);
insert into `tr_config_transaction_approval`(`TRANSACTION_TYPE`,`APPROVAL_LEVEL`,`APPROVER_TYPE`,`APPROVER`,`id`) values ('mm_loan',2,'ROLE','ALM',12);


insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('sec_exe','Securities Execution',null,1,1);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('sec_trf','Securities Transfer',null,1,2);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('cor_act_cash','Corporate Actions - Cash',null,1,3);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('pay','Payments',null,1,4);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('mm_loan','Money Market - Loans',null,2,5);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('mm_dep','Money Market - Deposits',null,2,6);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('fx_trade','Forex - FX trader','null',1,7);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('fx_wss','Forex - WSS','null',1,8);
insert into `tr_config_transaction_type`(`CODE`,`TRASNACTION_TYPE`,`TRANSACTION_INFO`,`TRANSACTION_APPROVAL_LEVEL_COUNT`,`id`) values ('cor_act_sec','Corporate Actions - Securities',null,1,9);


insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','sec_exe',0);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','sec_trf',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','cor_act_cash',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','pay',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','mm_loan',0);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','mm_dep',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','fx_trade',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','fx_wss',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_EMAIL','cor_act_sec',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','sec_exe',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','sec_trf',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','cor_act_cash',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','pay',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','mm_loan',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','mm_dep',0);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','fx_trade',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','fx_wss',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('PROCESSOR_BACK_TO_REQUESTER','cor_act_sec',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','sec_exe',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','sec_trf',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','cor_act_cash',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','pay',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','mm_loan',0);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','mm_dep',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','fx_trade',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','fx_wss',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('CLOSE_LOOP_FAILURE','cor_act_sec',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','sec_exe',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','sec_trf',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','cor_act_cash',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','pay',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','mm_loan',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','mm_dep',0);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','fx_trade',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','fx_wss',1);
insert into `tr_config_txn_email`(`EMAIL_CODE`,`TXN_TYPE`,`SEND_FLAG`) values ('EOD_FAILURE','cor_act_sec',1);


insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('cor_act_cash','CORPORATE ACTION - CASH');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('cor_act_sec','BUY');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('cor_act_sec','CORPORATE ACTION - SECURITIES');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('cor_act_sec','SELL');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_trade','BUY');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_trade','DERIVATIVE');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_trade','FOREX');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_trade','SELL');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_wss','BUY');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_wss','DERIVATIVE');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_wss','FOREX');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('fx_wss','SELL');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('mm_dep','CONTRACT');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('mm_loan','CONTRACT');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('pay','PAYMENT');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('sec_exe','BUY');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('sec_exe','DERIVATIVE');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('sec_exe','SELL');
insert into `tr_transaction_type_map`(`TR_TRANSACTION_TYPE_CODE`,`SVC_TRANSACTION_TYPE_CODE`) values ('sec_trf','TRANSFER');


insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('005','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('010','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('011','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('021','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('022','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('100','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('102','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('103','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('104','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('105','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('106','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('108','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('110','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('111','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('119','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('120','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('121','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('125','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('130','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('134','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('135','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('139','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('141','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('142','pay');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('200','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('200','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('201','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('201','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('210','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('210','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('220','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('220','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('221','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('221','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('400','mm_dep');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('401','mm_dep');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('402','mm_loan');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('405','mm_loan');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('407','mm_loan');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('410','mm_dep');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('420','mm_dep');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('421','mm_dep');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ABD','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ABD','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ABD','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ACT','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ACT','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AFC','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AFC','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AFC','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AFO','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AFO','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AFO','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AOC','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AOC','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AOC','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AOO','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AOO','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('AOO','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CAG','cor_act_cash');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CAP','cor_act_cash');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CDE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CDS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CNE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CNS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('CPS','cor_act_cash');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('DIE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('DIS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('DIV','cor_act_cash');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ECE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('ECS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EDE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EDS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EXY','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EXY','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EXY','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EXZ','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EXZ','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('EXZ','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('LPM','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('RBT','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('RCE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('RCS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('RPM','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('SFI','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('SFI','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('SPE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('SRP','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('SRP','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('STE','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('STS','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('TRC','sec_trf');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('TRE','sec_trf');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('TRS','sec_trf');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VCT','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VCT','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFC','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFC','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFC','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFI','cor_act_sec');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFI','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFO','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFO','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VFO','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VOC','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VOC','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VOC','sec_exe');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VOO','fx_trade');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VOO','fx_wss');
insert into `tr_transaction_type_oly_code_map`(`oly_transaction_type_code`,`tr_transaction_type_code`) values ('VOO','sec_exe');

insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (1,'tr_config_bookingcenter','Booking Center',null,1);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (2,'tr_config_transaction_type','Transaction Type',null,2);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (3,'tr_config_field_type','Field Type',null,3);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (4,'tr_config_reln_txn_field','Relation Transaction Field',null,4);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (5,'tr_config_reason','Reason',null,5);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (6,'tr_config_sub_reason','Sub Reason',null,6);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (7,'tr_config_reln_reason_sub_reason','Relation Reason Sub-Reason',null,7);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (8,'tr_config_source','Source',null,8);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (9,'tr_config_currency','Currency',null,9);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (10,'tr_config_team','Team',null,10);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (12,'tr_config_activity','Activity',null,11);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (14,'tr_config_transaction_approval','Transaction Approval',null,12);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (16,'tr_config_role','Role',null,13);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (17,'tr_config_reln_role_transaction','Relation Role Transaction',null,14);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (18,'tr_config_reln_txn_auth_role','Relation Transaction Auth Role',null,15);
insert into `tr_config_admin_core`(`id`,`table_name`,`display_name`,`sql_query`,`disp_order`) values (19,'tr_config_reln_txn_proc_role','Relation Transaction Proc Role',null,16);

insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (1,'tr_config_reln_txn_field','field_code','Y','','Please enter the Code','Y','tr_config_field_type','CODE','FIELD_TYPE','select count(*) from tr_config_reln_txn_field where transaction_code=? and field_code=?','XFIELD_transaction_code,XFIELD_field_code','N-Transaction Code and Field code already exist');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (2,'tr_config_reln_reason_sub_reason','reason_code','Y','','Please enter the Reason Code','Y','tr_config_reason','CODE','REASON','select count(*) from tr_config_reln_reason_sub_reason where reason_code=? and sub_reason_code=?','XFIELD_reason_code,XFIELD_sub_reason_code','N-Reason Code and SubReason Code already exist');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (3,'tr_config_reln_reason_sub_reason','sub_reason_code','Y','','Please enter the Sub-Reason Code','Y','tr_config_sub_reason','CODE','SUB_REASON','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (5,'tr_config_reln_team_transaction','TEAM_CODE','N','','','Y','tr_config_team','CODE','TEAM','select count(*) from tr_config_reln_team_transaction where Team_Code=? and Transaction_Code=?','XFIELD_TEAM_CODE,XFIELD_TRANSACTION_CODE','N-Team Code and Transaction Code alreasy exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (6,'tr_config_reln_team_transaction','TRANSACTION_CODE','N','','','Y','tr_config_transaction_type','CODE','TRANSACTION_TYPE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (7,'tr_config_reln_activity_team','ACTIVITY_CODE','N','','','Y','tr_config_activity','CODE','ACTIVITY','select count(*) from tr_config_reln_activity_team where Activity_Code=? and Team_Code=?','XFIELD_ACTIVITY_CODE,XFIELD_TEAM_CODE','N-Activity Code and Tram Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (8,'tr_config_reln_activity_team','TEAM_CODE','N','','','Y','tr_config_team','CODE','TEAM','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (9,'tr_config_transaction_approval','TRANSACTION_TYPE','Y','','','Y','tr_config_transaction_type','CODE','TRASNACTION_TYPE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (14,'tr_config_bookingcenter','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_bookingcenter where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (15,'tr_config_transaction_type','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_transaction_type where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (16,'tr_config_field_type','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_field_type where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (17,'tr_config_reln_txn_field','transaction_code','Y','','Please enter the Transaction Code','Y','tr_config_transaction_type','CODE','TRASNACTION_TYPE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (18,'tr_config_reason','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_reason where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (19,'tr_config_sub_reason','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_sub_reason where Code=? and Sub_Reason=?','XFIELD_CODE,XFIELD_SUB_REASON','N-Code and SubReason already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (20,'tr_config_source','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_source where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (21,'tr_config_currency','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_currency where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (22,'tr_config_team','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_team where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (23,'tr_config_activity','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_activity where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (25,'tr_config_approver_type','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_approver_type where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (26,'tr_config_role','CODE','Y','','Please enter the Code','N','','','','select count(*) from tr_config_role where code=?','XFIELD_CODE','N-Code already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (27,'tr_config_reln_role_transaction','role_code','Y','','Please enter the Role Code','Y','tr_config_role','CODE','ROLE','select count(*) from tr_config_reln_role_transaction where role_code=? and transaction_type_code=?','XFIELD_role_code,XFIELD_transaction_type_code','N-Role Code and Transaction Type already exists');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (28,'tr_config_reln_role_transaction','transaction_type_code','Y','','Please enter the Transaction Type','Y','tr_config_transaction_type','CODE','TRASNACTION_TYPE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (29,'tr_config_reln_txn_auth_role','transaction_type_code','Y','','Please enter the Transaction Type','Y','tr_config_transaction_type','CODE','TRASNACTION_TYPE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (30,'tr_config_reln_txn_auth_role','role_code','Y','','Please enter the Role Code','Y','tr_config_role','CODE','ROLE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (31,'tr_config_reln_txn_proc_role','transaction_type_code','Y','','Please enter the Transaction Type','Y','tr_config_transaction_type','CODE','TRASNACTION_TYPE','','','');
insert into `tr_config_admin_validation`(`id`,`table_name`,`column_name`,`mandatory`,`conditions`,`message`,`ref_type`,`ref_table_name`,`ref_column_name`,`ref_disp_column_name`,`srv_validation_qry`,`srv_validation_param`,`srv_validation_msg`) values (32,'tr_config_reln_txn_proc_role','role_code','Y','','Please enter the Role Code','Y','tr_config_role','CODE','ROLE','','','');

insert into `tr_config_bjbadmin`(`id`,`staffid`,`role`,`app`) values (1,'u23999','Admin','BJB');
insert into `tr_config_bjbadmin`(`id`,`staffid`,`role`,`app`) values (2,'u26382','Admin','BJB');
insert into `tr_config_bjbadmin`(`id`,`staffid`,`role`,`app`) values (3,'u26404','Admin','BJB');
insert into `tr_config_bjbadmin`(`id`,`staffid`,`role`,`app`) values (4,'u25652','Admin','BJB');
insert into `tr_config_bjbadmin`(`id`,`staffid`,`role`,`app`) values (5,'u25019','Admin','BJB');

insert into `tr_config_bookingcenter`(`CODE`,`BOOKINGCENTER`,`BOOKINGCENTER_INFO`,`id`) values ('SG','Singapore',null,1);
insert into `tr_config_bookingcenter`(`CODE`,`BOOKINGCENTER`,`BOOKINGCENTER_INFO`,`id`) values ('HK','Hong Kong',null,2);

insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('USD','US Dollar','USD-US Dollar',1);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('SGD','Singapore Dollar','SGD-Singapore Dollar',2);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('HKD','Hong Kong Dollar','HKD-Hong Kong Dollar',3);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('CHF','Swiss Franc','CHF-Swiss Franc',4);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('GBP','Great Britian Pound','GBP-Great Britian Pound',5);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('EUR','Euro','EUR-Euro',6);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('MYR','Malaysia Ringgit','MYR-Malaysia Ringgit',7);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('IDR','Indian Rupee','IDR-Indian Rupee',8);
insert into `tr_config_currency`(`CODE`,`CURRENCY_SHORT`,`CURRENCY_LONG`,`id`) values ('AUD','Australian Dollar','AUD-Australian Dollar',9);

insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Accountnumber','Account number',null,1);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Securities','Securities',null,2);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Executeddate','Executed date',null,3);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Valuedate','Value date',null,4);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Paymentdate','Payment date',null,5);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Exdate','Ex date',null,6);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Recorddate','Record date',null,7);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Ratio','Ratio',null,8);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Currency','Currency',null,9);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Settlementcurrency','Settlement currency',null,10);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Amount','Amount',null,11);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Exchangerate','Exchange rate',null,12);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Quantity','Quantity',null,13);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Rate','Rate',null,14);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Tax','Tax',null,15);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Fees','Fees',null,16);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Charges','Charges',null,17);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Price','Price',null,18);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('ISIN','ISIN',null,19);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Accuredinterest','Accured interest',null,20);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Localbrokerage','Local brokerage',null,21);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Thirdpartyfees','Third party fees',null,22);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Foreginbrokerage','Foregin brokerage',null,23);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Stampduty','Stamp duty',null,24);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Debitaccountnumber','Debit account number',null,27);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Creditaccountnumber','Credit account number',null,28);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Communicationmode','Communication mode',null,29);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Payee','Payee',null,30);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Payeebank','Payee bank',null,31);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Orderer','Orderer',null,32);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('ValuedateforDebitaccount','Value date for Debit account',null,33);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('ValuedateforCreditaccount','Value date for Credit account',null,34);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('ChargestoPayee','Charges to Payee',null,35);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('ChargestoOrderer','Charges to Orderer',null,36);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Intermediarybank','Intermediary bank',null,37);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Communicationtopayee','Communication to payee',null,38);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Debitadvise','Debit advise',null,39);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Creditadvise','Credit advise',null,40);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Receiverofmessage','Receiver of message',null,41);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Receivingbank','Receiving bank',null,42);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Interbankcommunication','Interbank communication',null,43);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Spotrate','Spot rate',null,44);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Currency1','Currency 1',null,45);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Currency2','Currency 2',null,46);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Maturitydate','Maturity date',null,47);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Treasuryrate','Treasury rate',null,48);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('Clientrate','Client rate',null,49);
insert into `tr_config_field_type`(`CODE`,`FIELD_TYPE`,`FIELD_TYPE_INFO`,`id`) values ('No Field Change','No Field Change',null,50);

insert into `tr_config_reason`(`CODE`,`REASON`,`REASON_INFO`,`id`) values ('res-adm','Amendments',null,1);
insert into `tr_config_reason`(`CODE`,`REASON`,`REASON_INFO`,`id`) values ('res-pro_err','Processing Error',null,2);
insert into `tr_config_reason`(`CODE`,`REASON`,`REASON_INFO`,`id`) values ('res-tech','Technical',null,3);

insert into `tr_config_reconcile`(`ID`,`WS_FROMDT`,`RECON_RUNDT`,`RUN_INTERVAL`,`DB_RANGE`,`WS_TODT`) values (1,'2011-11-04 15:44:49','2011-11-14 15:44:49','5H',90,null);



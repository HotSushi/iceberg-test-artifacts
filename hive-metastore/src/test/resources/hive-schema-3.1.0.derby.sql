-- Timestamp: 2011-09-22 15:32:02.024
-- Source database is: /home/carl/Work/repos/hive1/metastore/scripts/upgrade/derby/mdb
-- Connection URL is: jdbc:derby:/home/carl/Work/repos/hive1/metastore/scripts/upgrade/derby/mdb
-- Specified schema is: APP
-- appendLogs: false

-- ----------------------------------------------
-- DDL Statements for functions
-- ----------------------------------------------

CREATE FUNCTION "APP"."NUCLEUS_ASCII" (C CHAR(1)) RETURNS INTEGER LANGUAGE JAVA PARAMETER STYLE JAVA READS SQL DATA CALLED ON NULL INPUT EXTERNAL NAME 'org.datanucleus.store.rdbms.adapter.DerbySQLFunction.ascii' ;

CREATE FUNCTION "APP"."NUCLEUS_MATCHES" (TEXT VARCHAR(8000),PATTERN VARCHAR(8000)) RETURNS INTEGER LANGUAGE JAVA PARAMETER STYLE JAVA READS SQL DATA CALLED ON NULL INPUT EXTERNAL NAME 'org.datanucleus.store.rdbms.adapter.DerbySQLFunction.matches' ;

-- ----------------------------------------------
-- DDL Statements for tables
-- ----------------------------------------------
CREATE TABLE "APP"."DBS" (
  "DB_ID" BIGINT NOT NULL,
  "DESC" VARCHAR(4000),
  "DB_LOCATION_URI" VARCHAR(4000) NOT NULL,
  "NAME" VARCHAR(128),
  "OWNER_NAME" VARCHAR(128),
  "OWNER_TYPE" VARCHAR(10),
  "CTLG_NAME" VARCHAR(256)
);

CREATE TABLE "APP"."TBL_PRIVS" ("TBL_GRANT_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "TBL_PRIV" VARCHAR(128), "TBL_ID" BIGINT, "AUTHORIZER" VARCHAR(128));

CREATE TABLE "APP"."DATABASE_PARAMS" ("DB_ID" BIGINT NOT NULL, "PARAM_KEY" VARCHAR(180) NOT NULL, "PARAM_VALUE" VARCHAR(4000));

CREATE TABLE "APP"."TBL_COL_PRIVS" ("TBL_COLUMN_GRANT_ID" BIGINT NOT NULL, "COLUMN_NAME" VARCHAR(767), "CREATE_TIME" INTEGER NOT NULL, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "TBL_COL_PRIV" VARCHAR(128), "TBL_ID" BIGINT, "AUTHORIZER" VARCHAR(128));

CREATE TABLE "APP"."SERDE_PARAMS" ("SERDE_ID" BIGINT NOT NULL, "PARAM_KEY" VARCHAR(256) NOT NULL, "PARAM_VALUE" CLOB);

CREATE TABLE "APP"."COLUMNS_V2" ("CD_ID" BIGINT NOT NULL, "COMMENT" VARCHAR(4000), "COLUMN_NAME" VARCHAR(767) NOT NULL, "TYPE_NAME" CLOB, "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."SORT_COLS" ("SD_ID" BIGINT NOT NULL, "COLUMN_NAME" VARCHAR(767), "ORDER" INTEGER NOT NULL, "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."CDS" ("CD_ID" BIGINT NOT NULL);

CREATE TABLE "APP"."PARTITION_KEY_VALS" ("PART_ID" BIGINT NOT NULL, "PART_KEY_VAL" VARCHAR(256), "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."DB_PRIVS" ("DB_GRANT_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "DB_ID" BIGINT, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "DB_PRIV" VARCHAR(128), "AUTHORIZER" VARCHAR(128));

CREATE TABLE "APP"."IDXS" ("INDEX_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "DEFERRED_REBUILD" CHAR(1) NOT NULL, "INDEX_HANDLER_CLASS" VARCHAR(4000), "INDEX_NAME" VARCHAR(128), "INDEX_TBL_ID" BIGINT, "LAST_ACCESS_TIME" INTEGER NOT NULL, "ORIG_TBL_ID" BIGINT, "SD_ID" BIGINT);

CREATE TABLE "APP"."INDEX_PARAMS" ("INDEX_ID" BIGINT NOT NULL, "PARAM_KEY" VARCHAR(256) NOT NULL, "PARAM_VALUE" VARCHAR(4000));

CREATE TABLE "APP"."PARTITIONS" ("PART_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "LAST_ACCESS_TIME" INTEGER NOT NULL, "PART_NAME" VARCHAR(767), "SD_ID" BIGINT, "TBL_ID" BIGINT);

CREATE TABLE "APP"."SERDES" ("SERDE_ID" BIGINT NOT NULL, "NAME" VARCHAR(128), "SLIB" VARCHAR(4000), "DESCRIPTION" VARCHAR(4000), "SERIALIZER_CLASS" VARCHAR(4000), "DESERIALIZER_CLASS" VARCHAR(4000), SERDE_TYPE INTEGER);

CREATE TABLE "APP"."PART_PRIVS" ("PART_GRANT_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PART_ID" BIGINT, "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "PART_PRIV" VARCHAR(128), "AUTHORIZER" VARCHAR(128));

CREATE TABLE "APP"."ROLE_MAP" ("ROLE_GRANT_ID" BIGINT NOT NULL, "ADD_TIME" INTEGER NOT NULL, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "ROLE_ID" BIGINT);

CREATE TABLE "APP"."TYPES" ("TYPES_ID" BIGINT NOT NULL, "TYPE_NAME" VARCHAR(128), "TYPE1" VARCHAR(767), "TYPE2" VARCHAR(767));

CREATE TABLE "APP"."GLOBAL_PRIVS" ("USER_GRANT_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "USER_PRIV" VARCHAR(128), "AUTHORIZER" VARCHAR(128));

CREATE TABLE "APP"."PARTITION_PARAMS" ("PART_ID" BIGINT NOT NULL, "PARAM_KEY" VARCHAR(256) NOT NULL, "PARAM_VALUE" VARCHAR(4000));

CREATE TABLE "APP"."PARTITION_EVENTS" (
    "PART_NAME_ID" BIGINT NOT NULL,
    "CAT_NAME" VARCHAR(256),
    "DB_NAME" VARCHAR(128),
    "EVENT_TIME" BIGINT NOT NULL,
    "EVENT_TYPE" INTEGER NOT NULL,
    "PARTITION_NAME" VARCHAR(767),
    "TBL_NAME" VARCHAR(256)
);

CREATE TABLE "APP"."COLUMNS" ("SD_ID" BIGINT NOT NULL, "COMMENT" VARCHAR(256), "COLUMN_NAME" VARCHAR(128) NOT NULL, "TYPE_NAME" VARCHAR(4000) NOT NULL, "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."ROLES" ("ROLE_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "OWNER_NAME" VARCHAR(128), "ROLE_NAME" VARCHAR(128));

CREATE TABLE "APP"."TBLS" ("TBL_ID" BIGINT NOT NULL, "CREATE_TIME" INTEGER NOT NULL, "DB_ID" BIGINT, "LAST_ACCESS_TIME" INTEGER NOT NULL, "OWNER" VARCHAR(767), "OWNER_TYPE" VARCHAR(10), "RETENTION" INTEGER NOT NULL, "SD_ID" BIGINT, "TBL_NAME" VARCHAR(256), "TBL_TYPE" VARCHAR(128), "VIEW_EXPANDED_TEXT" CLOB, "VIEW_ORIGINAL_TEXT" CLOB, "IS_REWRITE_ENABLED" CHAR(1) NOT NULL DEFAULT 'N');

CREATE TABLE "APP"."PARTITION_KEYS" ("TBL_ID" BIGINT NOT NULL, "PKEY_COMMENT" VARCHAR(4000), "PKEY_NAME" VARCHAR(128) NOT NULL, "PKEY_TYPE" VARCHAR(767) NOT NULL, "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."PART_COL_PRIVS" ("PART_COLUMN_GRANT_ID" BIGINT NOT NULL, "COLUMN_NAME" VARCHAR(767), "CREATE_TIME" INTEGER NOT NULL, "GRANT_OPTION" SMALLINT NOT NULL, "GRANTOR" VARCHAR(128), "GRANTOR_TYPE" VARCHAR(128), "PART_ID" BIGINT, "PRINCIPAL_NAME" VARCHAR(128), "PRINCIPAL_TYPE" VARCHAR(128), "PART_COL_PRIV" VARCHAR(128), "AUTHORIZER" VARCHAR(128));

CREATE TABLE "APP"."SDS" ("SD_ID" BIGINT NOT NULL, "INPUT_FORMAT" VARCHAR(4000), "IS_COMPRESSED" CHAR(1) NOT NULL, "LOCATION" VARCHAR(4000), "NUM_BUCKETS" INTEGER NOT NULL, "OUTPUT_FORMAT" VARCHAR(4000), "SERDE_ID" BIGINT, "CD_ID" BIGINT, "IS_STOREDASSUBDIRECTORIES" CHAR(1) NOT NULL);

CREATE TABLE "APP"."SEQUENCE_TABLE" ("SEQUENCE_NAME" VARCHAR(256) NOT NULL, "NEXT_VAL" BIGINT NOT NULL);

CREATE TABLE "APP"."TAB_COL_STATS"(
    "CAT_NAME" VARCHAR(256) NOT NULL,
    "DB_NAME" VARCHAR(128) NOT NULL,
    "TABLE_NAME" VARCHAR(256) NOT NULL,
    "COLUMN_NAME" VARCHAR(767) NOT NULL,
    "COLUMN_TYPE" VARCHAR(128) NOT NULL,
    "LONG_LOW_VALUE" BIGINT,
    "LONG_HIGH_VALUE" BIGINT,
    "DOUBLE_LOW_VALUE" DOUBLE,
    "DOUBLE_HIGH_VALUE" DOUBLE,
    "BIG_DECIMAL_LOW_VALUE" VARCHAR(4000),
    "BIG_DECIMAL_HIGH_VALUE" VARCHAR(4000),
    "NUM_DISTINCTS" BIGINT,
    "NUM_NULLS" BIGINT NOT NULL,
    "AVG_COL_LEN" DOUBLE,
    "MAX_COL_LEN" BIGINT,
    "NUM_TRUES" BIGINT,
    "NUM_FALSES" BIGINT,
    "LAST_ANALYZED" BIGINT,
    "CS_ID" BIGINT NOT NULL,
    "TBL_ID" BIGINT NOT NULL,
    "BIT_VECTOR" BLOB
);

CREATE TABLE "APP"."TABLE_PARAMS" ("TBL_ID" BIGINT NOT NULL, "PARAM_KEY" VARCHAR(256) NOT NULL, "PARAM_VALUE" CLOB);

CREATE TABLE "APP"."BUCKETING_COLS" ("SD_ID" BIGINT NOT NULL, "BUCKET_COL_NAME" VARCHAR(256), "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."TYPE_FIELDS" ("TYPE_NAME" BIGINT NOT NULL, "COMMENT" VARCHAR(256), "FIELD_NAME" VARCHAR(128) NOT NULL, "FIELD_TYPE" VARCHAR(767) NOT NULL, "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."NUCLEUS_TABLES" ("CLASS_NAME" VARCHAR(128) NOT NULL, "TABLE_NAME" VARCHAR(128) NOT NULL, "TYPE" VARCHAR(4) NOT NULL, "OWNER" VARCHAR(2) NOT NULL, "VERSION" VARCHAR(20) NOT NULL, "INTERFACE_NAME" VARCHAR(256) DEFAULT NULL);

CREATE TABLE "APP"."SD_PARAMS" ("SD_ID" BIGINT NOT NULL, "PARAM_KEY" VARCHAR(256) NOT NULL, "PARAM_VALUE" CLOB);

CREATE TABLE "APP"."SKEWED_STRING_LIST" ("STRING_LIST_ID" BIGINT NOT NULL);

CREATE TABLE "APP"."SKEWED_STRING_LIST_VALUES" ("STRING_LIST_ID" BIGINT NOT NULL, "STRING_LIST_VALUE" VARCHAR(256), "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."SKEWED_COL_NAMES" ("SD_ID" BIGINT NOT NULL, "SKEWED_COL_NAME" VARCHAR(256), "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."SKEWED_COL_VALUE_LOC_MAP" ("SD_ID" BIGINT NOT NULL, "STRING_LIST_ID_KID" BIGINT NOT NULL, "LOCATION" VARCHAR(4000));

CREATE TABLE "APP"."SKEWED_VALUES" ("SD_ID_OID" BIGINT NOT NULL, "STRING_LIST_ID_EID" BIGINT NOT NULL, "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."MASTER_KEYS" ("KEY_ID" INTEGER NOT NULL generated always as identity (start with 1), "MASTER_KEY" VARCHAR(767));

CREATE TABLE "APP"."DELEGATION_TOKENS" ( "TOKEN_IDENT" VARCHAR(767) NOT NULL, "TOKEN" VARCHAR(767));

CREATE TABLE "APP"."PART_COL_STATS"(
    "CAT_NAME" VARCHAR(256) NOT NULL,
    "DB_NAME" VARCHAR(128) NOT NULL,
    "TABLE_NAME" VARCHAR(256) NOT NULL,
    "PARTITION_NAME" VARCHAR(767) NOT NULL,
    "COLUMN_NAME" VARCHAR(767) NOT NULL,
    "COLUMN_TYPE" VARCHAR(128) NOT NULL,
    "LONG_LOW_VALUE" BIGINT,
    "LONG_HIGH_VALUE" BIGINT,
    "DOUBLE_LOW_VALUE" DOUBLE,
    "DOUBLE_HIGH_VALUE" DOUBLE,
    "BIG_DECIMAL_LOW_VALUE" VARCHAR(4000),
    "BIG_DECIMAL_HIGH_VALUE" VARCHAR(4000),
    "NUM_DISTINCTS" BIGINT,
    "BIT_VECTOR" BLOB,
    "NUM_NULLS" BIGINT NOT NULL,
    "AVG_COL_LEN" DOUBLE,
    "MAX_COL_LEN" BIGINT,
    "NUM_TRUES" BIGINT,
    "NUM_FALSES" BIGINT,
    "LAST_ANALYZED" BIGINT,
    "CS_ID" BIGINT NOT NULL,
    "PART_ID" BIGINT NOT NULL
);

CREATE TABLE "APP"."VERSION" ("VER_ID" BIGINT NOT NULL, "SCHEMA_VERSION" VARCHAR(127) NOT NULL, "VERSION_COMMENT" VARCHAR(255));

CREATE TABLE "APP"."FUNCS" ("FUNC_ID" BIGINT NOT NULL, "CLASS_NAME" VARCHAR(4000), "CREATE_TIME" INTEGER NOT NULL, "DB_ID" BIGINT, "FUNC_NAME" VARCHAR(128), "FUNC_TYPE" INTEGER NOT NULL, "OWNER_NAME" VARCHAR(128), "OWNER_TYPE" VARCHAR(10));

CREATE TABLE "APP"."FUNC_RU" ("FUNC_ID" BIGINT NOT NULL, "RESOURCE_TYPE" INTEGER NOT NULL, "RESOURCE_URI" VARCHAR(4000), "INTEGER_IDX" INTEGER NOT NULL);

CREATE TABLE "APP"."NOTIFICATION_LOG" (
    "NL_ID" BIGINT NOT NULL,
    "CAT_NAME" VARCHAR(256),
    "DB_NAME" VARCHAR(128),
    "EVENT_ID" BIGINT NOT NULL,
    "EVENT_TIME" INTEGER NOT NULL,
    "EVENT_TYPE" VARCHAR(32) NOT NULL,
    "MESSAGE" CLOB,
    "TBL_NAME" VARCHAR(256),
    "MESSAGE_FORMAT" VARCHAR(16)
);

CREATE TABLE "APP"."NOTIFICATION_SEQUENCE" ("NNI_ID" BIGINT NOT NULL, "NEXT_EVENT_ID" BIGINT NOT NULL);

CREATE TABLE "APP"."KEY_CONSTRAINTS" ("CHILD_CD_ID" BIGINT, "CHILD_INTEGER_IDX" INTEGER, "CHILD_TBL_ID" BIGINT, "PARENT_CD_ID" BIGINT , "PARENT_INTEGER_IDX" INTEGER, "PARENT_TBL_ID" BIGINT NOT NULL,  "POSITION" BIGINT NOT NULL, "CONSTRAINT_NAME" VARCHAR(400) NOT NULL, "CONSTRAINT_TYPE" SMALLINT NOT NULL, "UPDATE_RULE" SMALLINT, "DELETE_RULE" SMALLINT, "ENABLE_VALIDATE_RELY" SMALLINT NOT NULL, "DEFAULT_VALUE" VARCHAR(400));

CREATE TABLE "APP"."METASTORE_DB_PROPERTIES" ("PROPERTY_KEY" VARCHAR(255) NOT NULL, "PROPERTY_VALUE" VARCHAR(1000) NOT NULL, "DESCRIPTION" VARCHAR(1000));

CREATE TABLE "APP"."WM_RESOURCEPLAN" (RP_ID BIGINT NOT NULL, NAME VARCHAR(128) NOT NULL, QUERY_PARALLELISM INTEGER, STATUS VARCHAR(20) NOT NULL, DEFAULT_POOL_ID BIGINT);

CREATE TABLE "APP"."WM_POOL" (POOL_ID BIGINT NOT NULL, RP_ID BIGINT NOT NULL, PATH VARCHAR(1024) NOT NULL, ALLOC_FRACTION DOUBLE, QUERY_PARALLELISM INTEGER, SCHEDULING_POLICY VARCHAR(1024));

CREATE TABLE "APP"."WM_TRIGGER" (TRIGGER_ID BIGINT NOT NULL, RP_ID BIGINT NOT NULL, NAME VARCHAR(128) NOT NULL, TRIGGER_EXPRESSION VARCHAR(1024), ACTION_EXPRESSION VARCHAR(1024), IS_IN_UNMANAGED INTEGER NOT NULL DEFAULT 0);

CREATE TABLE "APP"."WM_POOL_TO_TRIGGER"  (POOL_ID BIGINT NOT NULL, TRIGGER_ID BIGINT NOT NULL);

CREATE TABLE "APP"."WM_MAPPING" (MAPPING_ID BIGINT NOT NULL, RP_ID BIGINT NOT NULL, ENTITY_TYPE VARCHAR(128) NOT NULL, ENTITY_NAME VARCHAR(128) NOT NULL, POOL_ID BIGINT, ORDERING INTEGER);

CREATE TABLE "APP"."MV_CREATION_METADATA" (
  "MV_CREATION_METADATA_ID" BIGINT NOT NULL,
  "CAT_NAME" VARCHAR(256) NOT NULL,
  "DB_NAME" VARCHAR(128) NOT NULL,
  "TBL_NAME" VARCHAR(256) NOT NULL,
  "TXN_LIST" CLOB,
  "MATERIALIZATION_TIME" BIGINT NOT NULL
);

CREATE TABLE "APP"."MV_TABLES_USED" (
  "MV_CREATION_METADATA_ID" BIGINT NOT NULL,
  "TBL_ID" BIGINT NOT NULL
);

CREATE TABLE "APP"."CTLGS" (
    "CTLG_ID" BIGINT NOT NULL,
    "NAME" VARCHAR(256) UNIQUE,
    "DESC" VARCHAR(4000),
    "LOCATION_URI" VARCHAR(4000) NOT NULL);

-- ----------------------------------------------
-- DML Statements
-- ----------------------------------------------

INSERT INTO "APP"."NOTIFICATION_SEQUENCE" ("NNI_ID", "NEXT_EVENT_ID") SELECT * FROM (VALUES (1,1)) tmp_table WHERE NOT EXISTS ( SELECT "NEXT_EVENT_ID" FROM "APP"."NOTIFICATION_SEQUENCE");

INSERT INTO "APP"."SEQUENCE_TABLE" ("SEQUENCE_NAME", "NEXT_VAL") SELECT * FROM (VALUES ('org.apache.hadoop.hive.metastore.model.MNotificationLog', 1)) tmp_table WHERE NOT EXISTS ( SELECT "NEXT_VAL" FROM "APP"."SEQUENCE_TABLE" WHERE "SEQUENCE_NAME" = 'org.apache.hadoop.hive.metastore.model.MNotificationLog');

-- ----------------------------------------------
-- DDL Statements for indexes
-- ----------------------------------------------

CREATE UNIQUE INDEX "APP"."UNIQUEINDEX" ON "APP"."IDXS" ("INDEX_NAME", "ORIG_TBL_ID");

CREATE INDEX "APP"."TABLECOLUMNPRIVILEGEINDEX" ON "APP"."TBL_COL_PRIVS" ("AUTHORIZER", "TBL_ID", "COLUMN_NAME", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "TBL_COL_PRIV", "GRANTOR", "GRANTOR_TYPE");

CREATE UNIQUE INDEX "APP"."DBPRIVILEGEINDEX" ON "APP"."DB_PRIVS" ("AUTHORIZER", "DB_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "DB_PRIV", "GRANTOR", "GRANTOR_TYPE");

CREATE INDEX "APP"."PCS_STATS_IDX" ON "APP"."PART_COL_STATS" ("CAT_NAME", "DB_NAME","TABLE_NAME","COLUMN_NAME","PARTITION_NAME");

CREATE INDEX "APP"."TAB_COL_STATS_IDX" ON "APP"."TAB_COL_STATS" ("CAT_NAME", "DB_NAME", "TABLE_NAME", "COLUMN_NAME");

CREATE INDEX "APP"."PARTPRIVILEGEINDEX" ON "APP"."PART_PRIVS" ("AUTHORIZER", "PART_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "PART_PRIV", "GRANTOR", "GRANTOR_TYPE");

CREATE UNIQUE INDEX "APP"."ROLEENTITYINDEX" ON "APP"."ROLES" ("ROLE_NAME");

CREATE INDEX "APP"."TABLEPRIVILEGEINDEX" ON "APP"."TBL_PRIVS" ("AUTHORIZER", "TBL_ID", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "TBL_PRIV", "GRANTOR", "GRANTOR_TYPE");

CREATE UNIQUE INDEX "APP"."UNIQUETABLE" ON "APP"."TBLS" ("TBL_NAME", "DB_ID");

CREATE UNIQUE INDEX "APP"."UNIQUE_DATABASE" ON "APP"."DBS" ("NAME", "CTLG_NAME");

CREATE UNIQUE INDEX "APP"."USERROLEMAPINDEX" ON "APP"."ROLE_MAP" ("PRINCIPAL_NAME", "ROLE_ID", "GRANTOR", "GRANTOR_TYPE");

CREATE UNIQUE INDEX "APP"."GLOBALPRIVILEGEINDEX" ON "APP"."GLOBAL_PRIVS" ("AUTHORIZER", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "USER_PRIV", "GRANTOR", "GRANTOR_TYPE");

CREATE UNIQUE INDEX "APP"."UNIQUE_TYPE" ON "APP"."TYPES" ("TYPE_NAME");

CREATE INDEX "APP"."PARTITIONCOLUMNPRIVILEGEINDEX" ON "APP"."PART_COL_PRIVS" ("AUTHORIZER", "PART_ID", "COLUMN_NAME", "PRINCIPAL_NAME", "PRINCIPAL_TYPE", "PART_COL_PRIV", "GRANTOR", "GRANTOR_TYPE");

CREATE UNIQUE INDEX "APP"."UNIQUEPARTITION" ON "APP"."PARTITIONS" ("PART_NAME", "TBL_ID");

CREATE UNIQUE INDEX "APP"."UNIQUEFUNCTION" ON "APP"."FUNCS" ("FUNC_NAME", "DB_ID");

CREATE INDEX "APP"."FUNCS_N49" ON "APP"."FUNCS" ("DB_ID");

CREATE INDEX "APP"."FUNC_RU_N49" ON "APP"."FUNC_RU" ("FUNC_ID");

CREATE INDEX "APP"."CONSTRAINTS_PARENT_TBL_ID_INDEX" ON "APP"."KEY_CONSTRAINTS"("PARENT_TBL_ID");

CREATE INDEX "APP"."CONSTRAINTS_CONSTRAINT_TYPE_INDEX" ON "APP"."KEY_CONSTRAINTS"("CONSTRAINT_TYPE");

CREATE UNIQUE INDEX "APP"."UNIQUE_WM_RESOURCEPLAN" ON "APP"."WM_RESOURCEPLAN" ("NAME");

CREATE UNIQUE INDEX "APP"."UNIQUE_WM_POOL" ON "APP"."WM_POOL" ("RP_ID", "PATH");

CREATE UNIQUE INDEX "APP"."UNIQUE_WM_TRIGGER" ON "APP"."WM_TRIGGER" ("RP_ID", "NAME");

CREATE UNIQUE INDEX "APP"."UNIQUE_WM_MAPPING" ON "APP"."WM_MAPPING" ("RP_ID", "ENTITY_TYPE", "ENTITY_NAME");

CREATE UNIQUE INDEX "APP"."MV_UNIQUE_TABLE" ON "APP"."MV_CREATION_METADATA" ("TBL_NAME", "DB_NAME");

CREATE UNIQUE INDEX "APP"."UNIQUE_CATALOG" ON "APP"."CTLGS" ("NAME");


-- ----------------------------------------------
-- DDL Statements for keys
-- ----------------------------------------------

-- primary/unique
ALTER TABLE "APP"."IDXS" ADD CONSTRAINT "IDXS_PK" PRIMARY KEY ("INDEX_ID");

ALTER TABLE "APP"."TBL_COL_PRIVS" ADD CONSTRAINT "TBL_COL_PRIVS_PK" PRIMARY KEY ("TBL_COLUMN_GRANT_ID");

ALTER TABLE "APP"."CDS" ADD CONSTRAINT "SQL110922153006460" PRIMARY KEY ("CD_ID");

ALTER TABLE "APP"."DB_PRIVS" ADD CONSTRAINT "DB_PRIVS_PK" PRIMARY KEY ("DB_GRANT_ID");

ALTER TABLE "APP"."INDEX_PARAMS" ADD CONSTRAINT "INDEX_PARAMS_PK" PRIMARY KEY ("INDEX_ID", "PARAM_KEY");

ALTER TABLE "APP"."PARTITION_KEYS" ADD CONSTRAINT "PARTITION_KEY_PK" PRIMARY KEY ("TBL_ID", "PKEY_NAME");

ALTER TABLE "APP"."SEQUENCE_TABLE" ADD CONSTRAINT "SEQUENCE_TABLE_PK" PRIMARY KEY ("SEQUENCE_NAME");

ALTER TABLE "APP"."PART_PRIVS" ADD CONSTRAINT "PART_PRIVS_PK" PRIMARY KEY ("PART_GRANT_ID");

ALTER TABLE "APP"."SDS" ADD CONSTRAINT "SDS_PK" PRIMARY KEY ("SD_ID");

ALTER TABLE "APP"."SERDES" ADD CONSTRAINT "SERDES_PK" PRIMARY KEY ("SERDE_ID");

ALTER TABLE "APP"."COLUMNS" ADD CONSTRAINT "COLUMNS_PK" PRIMARY KEY ("SD_ID", "COLUMN_NAME");

ALTER TABLE "APP"."PARTITION_EVENTS" ADD CONSTRAINT "PARTITION_EVENTS_PK" PRIMARY KEY ("PART_NAME_ID");

ALTER TABLE "APP"."TYPE_FIELDS" ADD CONSTRAINT "TYPE_FIELDS_PK" PRIMARY KEY ("TYPE_NAME", "FIELD_NAME");

ALTER TABLE "APP"."ROLES" ADD CONSTRAINT "ROLES_PK" PRIMARY KEY ("ROLE_ID");

ALTER TABLE "APP"."TBL_PRIVS" ADD CONSTRAINT "TBL_PRIVS_PK" PRIMARY KEY ("TBL_GRANT_ID");

ALTER TABLE "APP"."SERDE_PARAMS" ADD CONSTRAINT "SERDE_PARAMS_PK" PRIMARY KEY ("SERDE_ID", "PARAM_KEY");

ALTER TABLE "APP"."NUCLEUS_TABLES" ADD CONSTRAINT "NUCLEUS_TABLES_PK" PRIMARY KEY ("CLASS_NAME");

ALTER TABLE "APP"."TBLS" ADD CONSTRAINT "TBLS_PK" PRIMARY KEY ("TBL_ID");

ALTER TABLE "APP"."SD_PARAMS" ADD CONSTRAINT "SD_PARAMS_PK" PRIMARY KEY ("SD_ID", "PARAM_KEY");

ALTER TABLE "APP"."DATABASE_PARAMS" ADD CONSTRAINT "DATABASE_PARAMS_PK" PRIMARY KEY ("DB_ID", "PARAM_KEY");

ALTER TABLE "APP"."DBS" ADD CONSTRAINT "DBS_PK" PRIMARY KEY ("DB_ID");

ALTER TABLE "APP"."ROLE_MAP" ADD CONSTRAINT "ROLE_MAP_PK" PRIMARY KEY ("ROLE_GRANT_ID");

ALTER TABLE "APP"."GLOBAL_PRIVS" ADD CONSTRAINT "GLOBAL_PRIVS_PK" PRIMARY KEY ("USER_GRANT_ID");

ALTER TABLE "APP"."BUCKETING_COLS" ADD CONSTRAINT "BUCKETING_COLS_PK" PRIMARY KEY ("SD_ID", "INTEGER_IDX");

ALTER TABLE "APP"."SORT_COLS" ADD CONSTRAINT "SORT_COLS_PK" PRIMARY KEY ("SD_ID", "INTEGER_IDX");

ALTER TABLE "APP"."PARTITION_KEY_VALS" ADD CONSTRAINT "PARTITION_KEY_VALS_PK" PRIMARY KEY ("PART_ID", "INTEGER_IDX");

ALTER TABLE "APP"."TYPES" ADD CONSTRAINT "TYPES_PK" PRIMARY KEY ("TYPES_ID");

ALTER TABLE "APP"."COLUMNS_V2" ADD CONSTRAINT "SQL110922153006740" PRIMARY KEY ("CD_ID", "COLUMN_NAME");

ALTER TABLE "APP"."PART_COL_PRIVS" ADD CONSTRAINT "PART_COL_PRIVS_PK" PRIMARY KEY ("PART_COLUMN_GRANT_ID");

ALTER TABLE "APP"."PARTITION_PARAMS" ADD CONSTRAINT "PARTITION_PARAMS_PK" PRIMARY KEY ("PART_ID", "PARAM_KEY");

ALTER TABLE "APP"."PARTITIONS" ADD CONSTRAINT "PARTITIONS_PK" PRIMARY KEY ("PART_ID");

ALTER TABLE "APP"."TABLE_PARAMS" ADD CONSTRAINT "TABLE_PARAMS_PK" PRIMARY KEY ("TBL_ID", "PARAM_KEY");

ALTER TABLE "APP"."SKEWED_STRING_LIST" ADD CONSTRAINT "SKEWED_STRING_LIST_PK" PRIMARY KEY ("STRING_LIST_ID");

ALTER TABLE "APP"."SKEWED_STRING_LIST_VALUES" ADD CONSTRAINT "SKEWED_STRING_LIST_VALUES_PK" PRIMARY KEY ("STRING_LIST_ID", "INTEGER_IDX");

ALTER TABLE "APP"."SKEWED_COL_NAMES" ADD CONSTRAINT "SKEWED_COL_NAMES_PK" PRIMARY KEY ("SD_ID", "INTEGER_IDX");

ALTER TABLE "APP"."SKEWED_COL_VALUE_LOC_MAP" ADD CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_PK" PRIMARY KEY ("SD_ID", "STRING_LIST_ID_KID");

ALTER TABLE "APP"."SKEWED_VALUES" ADD CONSTRAINT "SKEWED_VALUES_PK" PRIMARY KEY ("SD_ID_OID", "INTEGER_IDX");

ALTER TABLE "APP"."TAB_COL_STATS" ADD CONSTRAINT "TAB_COL_STATS_PK" PRIMARY KEY ("CS_ID");

ALTER TABLE "APP"."PART_COL_STATS" ADD CONSTRAINT "PART_COL_STATS_PK" PRIMARY KEY ("CS_ID");

ALTER TABLE "APP"."FUNCS" ADD CONSTRAINT "FUNCS_PK" PRIMARY KEY ("FUNC_ID");

ALTER TABLE "APP"."FUNC_RU" ADD CONSTRAINT "FUNC_RU_PK" PRIMARY KEY ("FUNC_ID", "INTEGER_IDX");

ALTER TABLE "APP"."NOTIFICATION_LOG" ADD CONSTRAINT "NOTIFICATION_LOG_PK" PRIMARY KEY ("NL_ID");

ALTER TABLE "APP"."NOTIFICATION_SEQUENCE" ADD CONSTRAINT "NOTIFICATION_SEQUENCE_PK" PRIMARY KEY ("NNI_ID");

ALTER TABLE "APP"."KEY_CONSTRAINTS" ADD CONSTRAINT "CONSTRAINTS_PK" PRIMARY KEY ("CONSTRAINT_NAME", "POSITION");

ALTER TABLE "APP"."METASTORE_DB_PROPERTIES" ADD CONSTRAINT "PROPERTY_KEY_PK" PRIMARY KEY ("PROPERTY_KEY");

ALTER TABLE "APP"."MV_CREATION_METADATA" ADD CONSTRAINT "MV_CREATION_METADATA_PK" PRIMARY KEY ("MV_CREATION_METADATA_ID");

ALTER TABLE "APP"."CTLGS" ADD CONSTRAINT "CTLG_PK" PRIMARY KEY ("CTLG_ID");


-- foreign
ALTER TABLE "APP"."IDXS" ADD CONSTRAINT "IDXS_FK1" FOREIGN KEY ("ORIG_TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."IDXS" ADD CONSTRAINT "IDXS_FK2" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."IDXS" ADD CONSTRAINT "IDXS_FK3" FOREIGN KEY ("INDEX_TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TBL_COL_PRIVS" ADD CONSTRAINT "TBL_COL_PRIVS_FK1" FOREIGN KEY ("TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."DB_PRIVS" ADD CONSTRAINT "DB_PRIVS_FK1" FOREIGN KEY ("DB_ID") REFERENCES "APP"."DBS" ("DB_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."INDEX_PARAMS" ADD CONSTRAINT "INDEX_PARAMS_FK1" FOREIGN KEY ("INDEX_ID") REFERENCES "APP"."IDXS" ("INDEX_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PARTITION_KEYS" ADD CONSTRAINT "PARTITION_KEYS_FK1" FOREIGN KEY ("TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PART_PRIVS" ADD CONSTRAINT "PART_PRIVS_FK1" FOREIGN KEY ("PART_ID") REFERENCES "APP"."PARTITIONS" ("PART_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SDS" ADD CONSTRAINT "SDS_FK1" FOREIGN KEY ("SERDE_ID") REFERENCES "APP"."SERDES" ("SERDE_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SDS" ADD CONSTRAINT "SDS_FK2" FOREIGN KEY ("CD_ID") REFERENCES "APP"."CDS" ("CD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."COLUMNS" ADD CONSTRAINT "COLUMNS_FK1" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TYPE_FIELDS" ADD CONSTRAINT "TYPE_FIELDS_FK1" FOREIGN KEY ("TYPE_NAME") REFERENCES "APP"."TYPES" ("TYPES_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TBL_PRIVS" ADD CONSTRAINT "TBL_PRIVS_FK1" FOREIGN KEY ("TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SERDE_PARAMS" ADD CONSTRAINT "SERDE_PARAMS_FK1" FOREIGN KEY ("SERDE_ID") REFERENCES "APP"."SERDES" ("SERDE_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TBLS" ADD CONSTRAINT "TBLS_FK2" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TBLS" ADD CONSTRAINT "TBLS_FK1" FOREIGN KEY ("DB_ID") REFERENCES "APP"."DBS" ("DB_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."DBS" ADD CONSTRAINT "DBS_FK1" FOREIGN KEY ("CTLG_NAME") REFERENCES "APP"."CTLGS" ("NAME") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SD_PARAMS" ADD CONSTRAINT "SD_PARAMS_FK1" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."DATABASE_PARAMS" ADD CONSTRAINT "DATABASE_PARAMS_FK1" FOREIGN KEY ("DB_ID") REFERENCES "APP"."DBS" ("DB_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."ROLE_MAP" ADD CONSTRAINT "ROLE_MAP_FK1" FOREIGN KEY ("ROLE_ID") REFERENCES "APP"."ROLES" ("ROLE_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."BUCKETING_COLS" ADD CONSTRAINT "BUCKETING_COLS_FK1" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SORT_COLS" ADD CONSTRAINT "SORT_COLS_FK1" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PARTITION_KEY_VALS" ADD CONSTRAINT "PARTITION_KEY_VALS_FK1" FOREIGN KEY ("PART_ID") REFERENCES "APP"."PARTITIONS" ("PART_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."COLUMNS_V2" ADD CONSTRAINT "COLUMNS_V2_FK1" FOREIGN KEY ("CD_ID") REFERENCES "APP"."CDS" ("CD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PART_COL_PRIVS" ADD CONSTRAINT "PART_COL_PRIVS_FK1" FOREIGN KEY ("PART_ID") REFERENCES "APP"."PARTITIONS" ("PART_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PARTITION_PARAMS" ADD CONSTRAINT "PARTITION_PARAMS_FK1" FOREIGN KEY ("PART_ID") REFERENCES "APP"."PARTITIONS" ("PART_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PARTITIONS" ADD CONSTRAINT "PARTITIONS_FK1" FOREIGN KEY ("TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PARTITIONS" ADD CONSTRAINT "PARTITIONS_FK2" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TABLE_PARAMS" ADD CONSTRAINT "TABLE_PARAMS_FK1" FOREIGN KEY ("TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SKEWED_STRING_LIST_VALUES" ADD CONSTRAINT "SKEWED_STRING_LIST_VALUES_FK1" FOREIGN KEY ("STRING_LIST_ID") REFERENCES "APP"."SKEWED_STRING_LIST" ("STRING_LIST_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SKEWED_COL_NAMES" ADD CONSTRAINT "SKEWED_COL_NAMES_FK1" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SKEWED_COL_VALUE_LOC_MAP" ADD CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_FK1" FOREIGN KEY ("SD_ID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SKEWED_COL_VALUE_LOC_MAP" ADD CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_FK2" FOREIGN KEY ("STRING_LIST_ID_KID") REFERENCES "APP"."SKEWED_STRING_LIST" ("STRING_LIST_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SKEWED_VALUES" ADD CONSTRAINT "SKEWED_VALUES_FK1" FOREIGN KEY ("SD_ID_OID") REFERENCES "APP"."SDS" ("SD_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."SKEWED_VALUES" ADD CONSTRAINT "SKEWED_VALUES_FK2" FOREIGN KEY ("STRING_LIST_ID_EID") REFERENCES "APP"."SKEWED_STRING_LIST" ("STRING_LIST_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."TAB_COL_STATS" ADD CONSTRAINT "TAB_COL_STATS_FK" FOREIGN KEY ("TBL_ID") REFERENCES TBLS("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."PART_COL_STATS" ADD CONSTRAINT "PART_COL_STATS_FK" FOREIGN KEY ("PART_ID") REFERENCES PARTITIONS("PART_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."VERSION" ADD CONSTRAINT "VERSION_PK" PRIMARY KEY ("VER_ID");

ALTER TABLE "APP"."FUNCS" ADD CONSTRAINT "FUNCS_FK1" FOREIGN KEY ("DB_ID") REFERENCES "APP"."DBS" ("DB_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."FUNC_RU" ADD CONSTRAINT "FUNC_RU_FK1" FOREIGN KEY ("FUNC_ID") REFERENCES "APP"."FUNCS" ("FUNC_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_RESOURCEPLAN" ADD CONSTRAINT "WM_RESOURCEPLAN_PK" PRIMARY KEY ("RP_ID");

ALTER TABLE "APP"."WM_POOL" ADD CONSTRAINT "WM_POOL_PK" PRIMARY KEY ("POOL_ID");

ALTER TABLE "APP"."WM_POOL" ADD CONSTRAINT "WM_POOL_FK1" FOREIGN KEY ("RP_ID") REFERENCES "APP"."WM_RESOURCEPLAN" ("RP_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_RESOURCEPLAN" ADD CONSTRAINT "WM_RESOURCEPLAN_FK1" FOREIGN KEY ("DEFAULT_POOL_ID") REFERENCES "APP"."WM_POOL" ("POOL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_TRIGGER" ADD CONSTRAINT "WM_TRIGGER_PK" PRIMARY KEY ("TRIGGER_ID");

ALTER TABLE "APP"."WM_TRIGGER" ADD CONSTRAINT "WM_TRIGGER_FK1" FOREIGN KEY ("RP_ID") REFERENCES "APP"."WM_RESOURCEPLAN" ("RP_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_POOL_TO_TRIGGER" ADD CONSTRAINT "WM_POOL_TO_TRIGGER_FK1" FOREIGN KEY ("POOL_ID") REFERENCES "APP"."WM_POOL" ("POOL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_POOL_TO_TRIGGER" ADD CONSTRAINT "WM_POOL_TO_TRIGGER_FK2" FOREIGN KEY ("TRIGGER_ID") REFERENCES "APP"."WM_TRIGGER" ("TRIGGER_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_MAPPING" ADD CONSTRAINT "WM_MAPPING_PK" PRIMARY KEY ("MAPPING_ID");

ALTER TABLE "APP"."WM_MAPPING" ADD CONSTRAINT "WM_MAPPING_FK1" FOREIGN KEY ("RP_ID") REFERENCES "APP"."WM_RESOURCEPLAN" ("RP_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."WM_MAPPING" ADD CONSTRAINT "WM_MAPPING_FK2" FOREIGN KEY ("POOL_ID") REFERENCES "APP"."WM_POOL" ("POOL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."MV_TABLES_USED" ADD CONSTRAINT "MV_TABLES_USED_FK1" FOREIGN KEY ("MV_CREATION_METADATA_ID") REFERENCES "APP"."MV_CREATION_METADATA" ("MV_CREATION_METADATA_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."MV_TABLES_USED" ADD CONSTRAINT "MV_TABLES_USED_FK2" FOREIGN KEY ("TBL_ID") REFERENCES "APP"."TBLS" ("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "APP"."DBS" ADD CONSTRAINT "DBS_CTLG_FK" FOREIGN KEY ("CTLG_NAME") REFERENCES "APP"."CTLGS" ("NAME") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------------------------
-- DDL Statements for checks
-- ----------------------------------------------

ALTER TABLE "APP"."IDXS" ADD CONSTRAINT "SQL110318025504980" CHECK (DEFERRED_REBUILD IN ('Y','N'));

ALTER TABLE "APP"."SDS" ADD CONSTRAINT "SQL110318025505550" CHECK (IS_COMPRESSED IN ('Y','N'));

-- ----------------------------
-- Transaction and Lock Tables
-- ----------------------------
CREATE TABLE TXNS (
  TXN_ID bigint PRIMARY KEY,
  TXN_STATE char(1) NOT NULL,
  TXN_STARTED bigint NOT NULL,
  TXN_LAST_HEARTBEAT bigint NOT NULL,
  TXN_USER varchar(128) NOT NULL,
  TXN_HOST varchar(128) NOT NULL,
  TXN_AGENT_INFO varchar(128),
  TXN_META_INFO varchar(128),
  TXN_HEARTBEAT_COUNT integer,
  TXN_TYPE integer
);

CREATE TABLE TXN_COMPONENTS (
  TC_TXNID bigint NOT NULL REFERENCES TXNS (TXN_ID),
  TC_DATABASE varchar(128) NOT NULL,
  TC_TABLE varchar(128),
  TC_PARTITION varchar(767),
  TC_OPERATION_TYPE char(1) NOT NULL,
  TC_WRITEID bigint
);

CREATE INDEX TC_TXNID_INDEX ON TXN_COMPONENTS (TC_TXNID);

CREATE TABLE COMPLETED_TXN_COMPONENTS (
  CTC_TXNID bigint NOT NULL,
  CTC_DATABASE varchar(128) NOT NULL,
  CTC_TABLE varchar(256),
  CTC_PARTITION varchar(767),
  CTC_TIMESTAMP timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  CTC_WRITEID bigint,
  CTC_UPDATE_DELETE char(1) NOT NULL
);

CREATE INDEX COMPLETED_TXN_COMPONENTS_IDX ON COMPLETED_TXN_COMPONENTS (CTC_DATABASE, CTC_TABLE, CTC_PARTITION);

CREATE TABLE NEXT_TXN_ID (
  NTXN_NEXT bigint NOT NULL
);
INSERT INTO NEXT_TXN_ID VALUES(1);

CREATE TABLE HIVE_LOCKS (
  HL_LOCK_EXT_ID bigint NOT NULL,
  HL_LOCK_INT_ID bigint NOT NULL,
  HL_TXNID bigint NOT NULL,
  HL_DB varchar(128) NOT NULL,
  HL_TABLE varchar(128),
  HL_PARTITION varchar(767),
  HL_LOCK_STATE char(1) NOT NULL,
  HL_LOCK_TYPE char(1) NOT NULL,
  HL_LAST_HEARTBEAT bigint NOT NULL,
  HL_ACQUIRED_AT bigint,
  HL_USER varchar(128) NOT NULL,
  HL_HOST varchar(128) NOT NULL,
  HL_HEARTBEAT_COUNT integer,
  HL_AGENT_INFO varchar(128),
  HL_BLOCKEDBY_EXT_ID bigint,
  HL_BLOCKEDBY_INT_ID bigint,
  PRIMARY KEY(HL_LOCK_EXT_ID, HL_LOCK_INT_ID)
);

CREATE INDEX HL_TXNID_INDEX ON HIVE_LOCKS (HL_TXNID);

CREATE TABLE NEXT_LOCK_ID (
  NL_NEXT bigint NOT NULL
);
INSERT INTO NEXT_LOCK_ID VALUES(1);

CREATE TABLE COMPACTION_QUEUE (
  CQ_ID bigint PRIMARY KEY,
  CQ_DATABASE varchar(128) NOT NULL,
  CQ_TABLE varchar(128) NOT NULL,
  CQ_PARTITION varchar(767),
  CQ_STATE char(1) NOT NULL,
  CQ_TYPE char(1) NOT NULL,
  CQ_TBLPROPERTIES varchar(2048),
  CQ_WORKER_ID varchar(128),
  CQ_START bigint,
  CQ_RUN_AS varchar(128),
  CQ_HIGHEST_WRITE_ID bigint,
  CQ_META_INFO varchar(2048) for bit data,
  CQ_HADOOP_JOB_ID varchar(32)
);

CREATE TABLE NEXT_COMPACTION_QUEUE_ID (
  NCQ_NEXT bigint NOT NULL
);
INSERT INTO NEXT_COMPACTION_QUEUE_ID VALUES(1);

CREATE TABLE COMPLETED_COMPACTIONS (
  CC_ID bigint PRIMARY KEY,
  CC_DATABASE varchar(128) NOT NULL,
  CC_TABLE varchar(128) NOT NULL,
  CC_PARTITION varchar(767),
  CC_STATE char(1) NOT NULL,
  CC_TYPE char(1) NOT NULL,
  CC_TBLPROPERTIES varchar(2048),
  CC_WORKER_ID varchar(128),
  CC_START bigint,
  CC_END bigint,
  CC_RUN_AS varchar(128),
  CC_HIGHEST_WRITE_ID bigint,
  CC_META_INFO varchar(2048) for bit data,
  CC_HADOOP_JOB_ID varchar(32)
);

CREATE TABLE AUX_TABLE (
  MT_KEY1 varchar(128) NOT NULL,
  MT_KEY2 bigint NOT NULL,
  MT_COMMENT varchar(255),
  PRIMARY KEY(MT_KEY1, MT_KEY2)
);

--1st 4 cols make up a PK but since WS_PARTITION is nullable we can't declare such PK
--This is a good candidate for Index orgainzed table
CREATE TABLE WRITE_SET (
  WS_DATABASE varchar(128) NOT NULL,
  WS_TABLE varchar(128) NOT NULL,
  WS_PARTITION varchar(767),
  WS_TXNID bigint NOT NULL,
  WS_COMMIT_ID bigint NOT NULL,
  WS_OPERATION_TYPE char(1) NOT NULL
);

CREATE TABLE TXN_TO_WRITE_ID (
  T2W_TXNID bigint NOT NULL,
  T2W_DATABASE varchar(128) NOT NULL,
  T2W_TABLE varchar(256) NOT NULL,
  T2W_WRITEID bigint NOT NULL
);

CREATE UNIQUE INDEX TBL_TO_TXN_ID_IDX ON TXN_TO_WRITE_ID (T2W_DATABASE, T2W_TABLE, T2W_TXNID);
CREATE UNIQUE INDEX TBL_TO_WRITE_ID_IDX ON TXN_TO_WRITE_ID (T2W_DATABASE, T2W_TABLE, T2W_WRITEID);

CREATE TABLE NEXT_WRITE_ID (
  NWI_DATABASE varchar(128) NOT NULL,
  NWI_TABLE varchar(256) NOT NULL,
  NWI_NEXT bigint NOT NULL
);

CREATE UNIQUE INDEX NEXT_WRITE_ID_IDX ON NEXT_WRITE_ID (NWI_DATABASE, NWI_TABLE);

CREATE TABLE MIN_HISTORY_LEVEL (
  MHL_TXNID bigint NOT NULL,
  MHL_MIN_OPEN_TXNID bigint NOT NULL,
  PRIMARY KEY(MHL_TXNID)
);

CREATE INDEX MIN_HISTORY_LEVEL_IDX ON MIN_HISTORY_LEVEL (MHL_MIN_OPEN_TXNID);

CREATE TABLE MATERIALIZATION_REBUILD_LOCKS (
  MRL_TXN_ID BIGINT NOT NULL,
  MRL_DB_NAME VARCHAR(128) NOT NULL,
  MRL_TBL_NAME VARCHAR(256) NOT NULL,
  MRL_LAST_HEARTBEAT BIGINT NOT NULL,
  PRIMARY KEY(MRL_TXN_ID)
);

CREATE TABLE "APP"."I_SCHEMA" (
  "SCHEMA_ID" bigint primary key,
  "SCHEMA_TYPE" integer not null,
  "NAME" varchar(256) unique,
  "DB_ID" bigint references "APP"."DBS" ("DB_ID"),
  "COMPATIBILITY" integer not null,
  "VALIDATION_LEVEL" integer not null,
  "CAN_EVOLVE" char(1) not null,
  "SCHEMA_GROUP" varchar(256),
  "DESCRIPTION" varchar(4000)
);

CREATE TABLE "APP"."SCHEMA_VERSION" (
  "SCHEMA_VERSION_ID" bigint primary key,
  "SCHEMA_ID" bigint references "APP"."I_SCHEMA" ("SCHEMA_ID"),
  "VERSION" integer not null,
  "CREATED_AT" bigint not null,
  "CD_ID" bigint references "APP"."CDS" ("CD_ID"),
  "STATE" integer not null,
  "DESCRIPTION" varchar(4000),
  "SCHEMA_TEXT" clob,
  "FINGERPRINT" varchar(256),
  "SCHEMA_VERSION_NAME" varchar(256),
  "SERDE_ID" bigint references "APP"."SERDES" ("SERDE_ID")
);

CREATE UNIQUE INDEX "APP"."UNIQUE_SCHEMA_VERSION" ON "APP"."SCHEMA_VERSION" ("SCHEMA_ID", "VERSION");

CREATE TABLE REPL_TXN_MAP (
  RTM_REPL_POLICY varchar(256) NOT NULL,
  RTM_SRC_TXN_ID bigint NOT NULL,
  RTM_TARGET_TXN_ID bigint NOT NULL,
  PRIMARY KEY (RTM_REPL_POLICY, RTM_SRC_TXN_ID)
);

CREATE TABLE "APP"."RUNTIME_STATS" (
  "RS_ID" bigint primary key,
  "CREATE_TIME" integer not null,
  "WEIGHT" integer not null,
  "PAYLOAD" BLOB
);

CREATE INDEX IDX_RUNTIME_STATS_CREATE_TIME ON RUNTIME_STATS(CREATE_TIME);

-- -----------------------------------------------------------------
-- Record schema version. Should be the last step in the init script
-- -----------------------------------------------------------------
INSERT INTO "APP"."VERSION" (VER_ID, SCHEMA_VERSION, VERSION_COMMENT) VALUES (1, '3.1.0', 'Hive release version 3.1.0');


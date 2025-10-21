/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.0.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: MetabaseDB
-- ------------------------------------------------------
-- Server version	12.0.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;
USE `MetabaseDB`;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL,
  UNIQUE KEY `idx_databasechangelog_id_author_filename` (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `DATABASECHANGELOG` VALUES
('v00.00-000','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',1,'EXECUTED','9:cecb4c73745e92033c738dbf3d6e747e','sqlFile path=initialization/metabase_postgres.sql; sqlFile path=initialization/metabase_mysql.sql; sqlFile path=initialization/metabase_h2.sql','Initialze metabase',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-001','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',2,'EXECUTED','9:24324f06a65a9bb339c735f02cbfb47f','createTable tableName=action','Added 0.44.0 - writeback',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-002','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',3,'EXECUTED','9:d2c9f50f5a29947a07e4808957d63ab6','createTable tableName=query_action','Added 0.44.0 - writeback',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-003','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',4,'EXECUTED','9:dafaaf7c9f0efbf92670ea93c001f7a1','addPrimaryKey constraintName=pk_query_action, tableName=query_action','Added 0.44.0 - writeback',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-011','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',5,'EXECUTED','9:c539f152aa1c2287c5b602c7a395f9e8','addColumn tableName=report_card','Added 0.44.0 - writeback',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-012','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',6,'EXECUTED','9:4b66ab5561933821db3a68d21ce43b6b','createTable tableName=http_action','Added 0.44.0 - writeback',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-013','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',7,'EXECUTED','9:54c5d6a9659b7ae62e8c42f60f9620d2','addPrimaryKey constraintName=pk_http_action, tableName=http_action','Added 0.44.0 - writeback',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-022','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',8,'EXECUTED','9:4f00f51af294ccdd99b6029b7a023643','createTable tableName=app','Added 0.45.0 - add app container',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-023','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',9,'EXECUTED','9:082d296233ee6dbbf2871b9d93c3a6a4','addForeignKeyConstraint baseTableName=app, constraintName=fk_app_ref_dashboard_id, referencedTableName=report_dashboard','Added 0.45.0 - add app container',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-025','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',10,'EXECUTED','9:2214b0d71acc8a8cf90781a2aca98664','addColumn tableName=report_dashboard','Added 0.45.0 - mark app pages',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-026','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',11,'EXECUTED','9:9f2ce2d2d79d0dce365ddf3464d1f648','addColumn tableName=report_dashboardcard','Added 0.45.0 - apps add action_id to report_dashboardcard',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-027','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',12,'EXECUTED','9:73718f7b7c3fb4ef30f71dc6e6170528','addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_report_dashboardcard_ref_action_id, referencedTableName=action','Added 0.45.0 - apps add fk for action_id to report_dashboardcard',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-028','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',13,'EXECUTED','9:883315d70f3fc10b07858aa0e48ed9da','renameColumn newColumnName=size_x, oldColumnName=sizeX, tableName=report_dashboardcard','Added 0.45.0 -- rename DashboardCard sizeX to size_x. See https://github.com/metabase/metabase/issues/16344',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-029','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:35',14,'EXECUTED','9:fe3b8aca811ef5b541f922a83c7ded8c','renameColumn newColumnName=size_y, oldColumnName=sizeY, tableName=report_dashboardcard','Added 0.45.0 -- rename DashboardCard size_y to size_y. See https://github.com/metabase/metabase/issues/16344',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-030','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',15,'EXECUTED','9:63da8f2f82baf396ad30f3fd451c501d','addDefaultValue columnName=size_x, tableName=report_dashboardcard','Added 0.45.0 -- add default value to DashboardCard size_x -- this was previously done by Toucan',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-031','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',16,'EXECUTED','9:3628c1c692bec0f7258ea983b18340b5','addDefaultValue columnName=size_y, tableName=report_dashboardcard','Added 0.45.0 -- add default value to DashboardCard size_y -- this was previously done by Toucan',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-033','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',17,'EXECUTED','9:b93dab321e4a1fcaeb74d12b52867fd4','sql','Added 0.45.0 -- add default value for DashboardCard created_at (MySQL/MariaDB)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-035','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',18,'EXECUTED','9:207984e21c44681a6135592cab3d0f3f','sql','Added 0.45.0 -- add default value for DashboardCard updated_at (MySQL/MariaDB)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-036','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',19,'EXECUTED','9:1c5db47da78b69f2540542243b529e65','createTable tableName=model_action','Added 0.45.0 - add model action table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-037','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',20,'EXECUTED','9:6600702fb0cc9dcd8628fca8df9c0b39','addUniqueConstraint constraintName=unique_model_action_card_id_slug, tableName=model_action','Added 0.45.0 - model action',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-039','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',21,'EXECUTED','9:7b331f47a0260218275c58fa21fdcc60','sql','Added 0.45.0 -- add default value for Database created_at (MySQL/MariaDB)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-041','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',22,'EXECUTED','9:84d479472b81809b8067f72b28934954','sql','Added 0.45.0 -- add default value for Database updated_at (MySQL/MariaDB)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-042','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',23,'EXECUTED','9:f600f2e052bf44938d081165c8d87364','sql','Added 0.45.0 -- add default value for Database with NULL details',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-043','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',24,'EXECUTED','9:daa8b1249027fa4c9ea07f1acb8ee889','addNotNullConstraint columnName=details, tableName=metabase_database','Added 0.45.0 -- make Database details NOT NULL',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-044','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',25,'EXECUTED','9:39c664afe6e6c6598576c7575931b106','createTable tableName=app_permission_graph_revision','Added 0.45.0 -- create app permission graph revision table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-048','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',26,'EXECUTED','9:122ebd5e3f3b30b61b66bfad0e9ab1b0','addColumn tableName=collection','Added 0.45.0 -- add created_at to Collection',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-049','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',27,'EXECUTED','9:50ef9cbb0f9958bd4e8a1e6364fd6038','sql; sql; sql','Added 0.45.0 -- set Collection.created_at to User.date_joined for Personal Collections',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-050','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',28,'EXECUTED','9:e5af01b22e40f1ce3dc0cbbddf131f58','sql; sql; sql','Added 0.45.0 -- seed Collection.created_at with value of oldest item for non-Personal Collections',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-051','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',29,'EXECUTED','9:caa34704f55850f5f8f15ef5eb7a758e','modifyDataType columnName=after, tableName=collection_permission_graph_revision','Added 0.45.0 - modify type of collection_permission_graph_revision.after from text to longtext on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-052','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',30,'EXECUTED','9:c397d1eaf5e2cbfb90319014b9ebdfad','modifyDataType columnName=before, tableName=collection_permission_graph_revision','Added 0.45.0 - modify type of collection_permission_graph_revision.before from text to longtext on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-053','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',31,'EXECUTED','9:44242218dd4f217ef03dde5ac8b1ea7e','modifyDataType columnName=remark, tableName=collection_permission_graph_revision','Added 0.45.0 - modify type of collection_permission_graph_revision.remark from text to longtext on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-054','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',32,'EXECUTED','9:3356706563854978e668538752e58242','modifyDataType columnName=after, tableName=permissions_revision','Added 0.45.0 - modify type of permissions_revision.after from text to longtext on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-055','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',33,'EXECUTED','9:1b764e3ac4c6a41f1a83ea19a2464782','modifyDataType columnName=before, tableName=permissions_revision','Added 0.45.0 - modify type of permissions_revision.before from text to longtext on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-056','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',34,'EXECUTED','9:db0f77fe782f392241d0fe911b8890a2','modifyDataType columnName=remark, tableName=permissions_revision','Added 0.45.0 - modify type of permissions_revision.remark from text to longtext on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v45.00-057','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',35,'EXECUTED','9:d1125daee3e40f7a316c59c6b7a0fb1b','modifyDataType columnName=value, tableName=secret','Added 0.45.0 - modify type of secret.value from blob to longblob on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-000','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',36,'EXECUTED','9:1fac9d1658592106303e67a591966565','createTable tableName=implicit_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-001','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',37,'EXECUTED','9:9a3a543cd836c34d8131b6c929061425','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-002','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',38,'EXECUTED','9:a352e46d75236605148308fc7e95cfe6','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-003','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',39,'EXECUTED','9:5fcf2126624707dc3b84c4673ca8064e','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-004','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',40,'EXECUTED','9:2845510b38cd14b0fb864be9996216a0','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-005','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',41,'EXECUTED','9:7bfb368ddb611bb4e34a9e91b6273a57','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-006','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',42,'EXECUTED','9:343162b0798092bdd0c4b3a896bfae0c','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-007','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',43,'EXECUTED','9:604733020cb8d94b0b21728393b9227a','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_model_id, referencedTableName=report_card','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-008','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',44,'EXECUTED','9:24adc5d36405f95e479157afa6ac7090','addColumn tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-009','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',45,'EXECUTED','9:fb691dd38898c7e55813a6fb1ba2883f','addColumn tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-010','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',46,'EXECUTED','9:17661d9a15cea0e046aa22bbe05f8ca9','addForeignKeyConstraint baseTableName=query_action, constraintName=fk_query_action_database_id, referencedTableName=metabase_database','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-011','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',47,'EXECUTED','9:305af61cd201d6c9366c9e9d7d0a3551','sql; sql; sql','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-012','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',48,'EXECUTED','9:f5e43052660cb6fd61dca7385a41690f','dropNotNullConstraint columnName=card_id, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-013','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',49,'EXECUTED','9:12bf37b0e6732f2f09122f76cb8b59b5','sql','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-014','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',50,'EXECUTED','9:f5856fab23b69dbc669c354d5cb14d36','dropForeignKeyConstraint baseTableName=query_action, constraintName=fk_query_action_ref_card_id','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-015','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',51,'EXECUTED','9:1ef231990b57b1f8496070f5f63f4579','dropColumn columnName=card_id, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-016','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',52,'EXECUTED','9:cf5ae825070bb05fd046b0a22f299403','sql','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-017','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',53,'EXECUTED','9:7428779ccdce61097d0fe5e761e05b18','dropColumn columnName=name, tableName=http_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-018','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',54,'EXECUTED','9:1ae9ab13080fc2dd4df6ccdeb28baf72','dropColumn columnName=description, tableName=http_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-019','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',55,'EXECUTED','9:ffa18e1fb9a06d0a673a1d6aab1edfbc','dropColumn columnName=is_write, tableName=report_card','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-020','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',56,'EXECUTED','9:f96413cb1260923de7be41fd0a665543','addNotNullConstraint columnName=database_id, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-021','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',57,'EXECUTED','9:4096f22cba83bce61efb299867d96d85','addNotNullConstraint columnName=dataset_query, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-022','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',58,'EXECUTED','9:4096f22cba83bce61efb299867d96d85','addNotNullConstraint columnName=dataset_query, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-023','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',59,'EXECUTED','9:072dea52b8b04cbb2829741c8523d768','addNotNullConstraint columnName=model_id, tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-024','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',60,'EXECUTED','9:92798789cb9756596896f74e7055988d','addNotNullConstraint columnName=name, tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-025','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',61,'EXECUTED','9:cedeeebf30271f749b77f79609b197ba','dropTable tableName=model_action','Added 0.46.0 - Unify action representation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-026','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',62,'EXECUTED','9:0b495131821e8ac0a2bc562f688ccca7','addColumn tableName=metabase_database','Added 0.46.0 -- add field for tracking DBMS versions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-027','snoe','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',63,'EXECUTED','9:74894629391fee2263064bfca9e3afa9','addColumn tableName=metabase_fieldvalues','Added 0.46.0 -- add last_used_at to FieldValues',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-028','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',64,'EXECUTED','9:b512cb7ec893db1f41c5f05ca6801b56','createTable tableName=parameter_card','Added 0.46.0 -- Join table connecting cards to dashboards/cards\'s parameters that need custom filter values from the card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-029','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',65,'EXECUTED','9:c95d07d656ec9c2d06e9d83ab14e5170','dropUniqueConstraint constraintName=unique_dimension_field_id_name, tableName=dimension','Make Dimension <=> Field a 1t1 relationship. Drop unique constraint on field_id + name. (1/3)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-030','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',66,'EXECUTED','9:3342b8ad5e8160325705f4df619c1416','sql','Make Dimension <=> Field a 1t1 relationship. Delete duplicate entries. (2/3)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-031','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',67,'EXECUTED','9:5822fde920ae9c048d75e951674c6570','addUniqueConstraint constraintName=unique_dimension_field_id, tableName=dimension','Make Dimension <=> Field a 1t1 relationship. Add unique constraint on field_id. (3/3)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-032','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',68,'EXECUTED','9:2e882eb92ce78edf23d417dcbc7c4f03','addUniqueConstraint constraintName=unique_parameterized_object_card_parameter, tableName=parameter_card','Added 0.46.0 -- Unique parameter_card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-033','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',69,'EXECUTED','9:2ca24580b18e8a0736cc1c0b463d43a6','createIndex indexName=idx_parameter_card_parameterized_object_id, tableName=parameter_card','Added 0.46.0 -- parameter_card index on connected object',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-034','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',70,'EXECUTED','9:654f10ff8db9163f27f87fc7da686912','createIndex indexName=idx_parameter_card_card_id, tableName=parameter_card','Added 0.46.0 -- parameter_card index on connected card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-035','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',71,'EXECUTED','9:54d48bc5d1b60faa10ba000c3409c973','addForeignKeyConstraint baseTableName=parameter_card, constraintName=fk_parameter_card_ref_card_id, referencedTableName=report_card','Added 0.46.0 - parameter_card.card_id foreign key',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-036','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',72,'EXECUTED','9:5e155b0c1edc895bddf0e5de96def85e','dropTable tableName=app_permission_graph_revision','App containers are removed in 0.46.0',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-037','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',73,'EXECUTED','9:ba61742e04377180572fb011d5ad3263','dropColumn columnName=is_app_page, tableName=report_dashboard','App pages are removed in 0.46.0',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-038','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',74,'EXECUTED','9:a45d7cfa18714cd1d536bd17b927e3ac','dropTable tableName=app','App containers are removed in 0.46.0',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-039','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',75,'EXECUTED','9:a850f5255ad1f2abb52d4a7c93fa68a0','addColumn tableName=parameter_card','Added 0.46.0 - add entity_id to parameter_card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-040','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',76,'EXECUTED','9:400fe00b6e522509e4949a71cc12e196','addDefaultValue columnName=size_x, tableName=report_dashboardcard','Added 0.46.0 -- Bump default dashcard size to 4x4',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-041','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',77,'EXECUTED','9:0f7635baf2acb131464865f2a94a17ed','addDefaultValue columnName=size_y, tableName=report_dashboardcard','Added 0.46.0 -- Bump default dashcard size to 4x4',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-042','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:36',78,'EXECUTED','9:6b99f953adbc8c3f536c7d729ef780a2','createIndex indexName=idx_query_execution_executor_id, tableName=query_execution','Added 0.46.0 -- index query_execution.executor_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-043','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',79,'EXECUTED','9:6fd04070a9c19ac34c15a5cbe27def47','createIndex indexName=idx_query_execution_context, tableName=query_execution','Added 0.46.0 -- index query_execution.context',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-045','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',80,'EXECUTED','9:1f61e64d7ce15c315ff530ef8a2dc7f3','addColumn tableName=action','Added 0.46.0 -- add public_uuid to action.',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-051','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',81,'EXECUTED','9:7f54a26b4edf1aa4bc86b95f9c316dea','dropDefaultValue columnName=row, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-052','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',82,'EXECUTED','9:4fc7e45d19ab28e91bd27325d23afd83','dropDefaultValue columnName=col, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-053','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',83,'EXECUTED','9:2d2836a1c76d1c5db400219364aa070e','dropDefaultValue columnName=size_x, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-054','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',84,'EXECUTED','9:60b7a066e6ca1826efcb8b562b33f331','dropDefaultValue columnName=size_y, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-055','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',85,'EXECUTED','9:5b583b1b5eac915914f40a27163263b3','addColumn tableName=action','Added 0.46.0 -- add made_public_by_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-056','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',86,'EXECUTED','9:9e37acc40f5685ec3992dff91bbfa618','createIndex indexName=idx_action_public_uuid, tableName=action','Added 0.46.0 -- add public_uuid and made_public_by_id to action. public_uuid is indexed',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-057','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',87,'EXECUTED','9:86b2d39951f748b94abd2e1c7b68144a','modifyDataType columnName=parameter_id, tableName=parameter_card','Added 0.46.0 -- parameter_card.parameter_id long enough to hold a uuid',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-058','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',88,'EXECUTED','9:7458ddbf194a385219df05900d78185d','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_made_public_by_id, referencedTableName=core_user','Added 0.46.0 -- add FK constraint for action.made_public_by_id with core_user.id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-059','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',89,'EXECUTED','9:55a077fb646639308046b80c3f64267e','addColumn tableName=action','Added 0.46.0 -- add actions.creator_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-060','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',90,'EXECUTED','9:a0726ea2ef7c354af8b60a8ab37d24bd','createIndex indexName=idx_action_creator_id, tableName=action','Added 0.46.0 -- action.creator_id index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-061','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',91,'EXECUTED','9:7497cc10ea1fdad211179b36d53bde6a','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_creator_id, referencedTableName=core_user','Added 0.46.0 -- action.creator_id index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-062','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',92,'EXECUTED','9:35cc67731bc19abd498bcdbb0aeb688e','addColumn tableName=action','Added 0.46.0 -- add actions.archived',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-064','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',93,'EXECUTED','9:a73357bb088af23043336f048172a1f3','renameTable newTableName=sandboxes, oldTableName=group_table_access_policy','Added 0.46.0 -- rename `group_table_access_policy` to `sandboxes`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-065','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',94,'EXECUTED','9:b5b5d61c3e6f7daa528acce1a52b6f75','addColumn tableName=sandboxes','Added 0.46.0 -- add `permission_id` to `sandboxes`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-070','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',95,'EXECUTED','9:e52174e49aa14e61eb922ba200cfc002','addColumn tableName=action','Added 0.46.0 - add entity_id column to action',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-074','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',96,'EXECUTED','9:29c6090a889f466de44d68a70207e10d','modifyDataType columnName=updated_at, tableName=report_card','Added 0.46.0 -- increase precision of updated_at of report_card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-079','john-metabase','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',97,'EXECUTED','9:e5ce98dd7ac26fb102db98625e10dfab','sql','Added 0.46.0 -- migrates Databases using deprecated and removed presto driver to presto-jdbc',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-080','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',98,'EXECUTED','9:4a3b3941c8be8321c8ebbed956c5126e','customChange','Migrate data permission paths from v1 to v2 (splitting them into separate data and query permissions)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-084','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',99,'EXECUTED','9:ec26e53892d1293ef822005b0e2d5d0d','dropForeignKeyConstraint baseTableName=action, constraintName=fk_action_model_id','Added 0.46.0 - CASCADE delete for action.model_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-085','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',100,'EXECUTED','9:013d55806a3c819a2e94ff2d5cb71df2','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_model_id, referencedTableName=report_card','Added 0.46.0 - CASCADE delete for action.model_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-086','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',101,'EXECUTED','9:d40adacb9a31e783395e41cb0aac404c','customChange','Added 0.46.0 - Delete the abandonment email task',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-088','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',102,'EXECUTED','9:c38b799746664b436dc8c63f2c6214c6','sql','Added 0.46.5 -- backfill `permission_id` values in `sandboxes`. This is a fixed verison of v46.00-066 which has been removed, since it had a bug that blocked a customer from upgrading.',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-089','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',103,'EXECUTED','9:7a7761ef80cae24914abb65143fb0503','sql','Added 0.46.5 -- remove orphaned entries in `sandboxes`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v46.00-090','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',104,'EXECUTED','9:d17eaed2e43c5589332682c53e4a6458','addForeignKeyConstraint baseTableName=sandboxes, constraintName=fk_sandboxes_ref_permissions, referencedTableName=permissions','Add foreign key constraint on sandboxes.permission_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-001','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',105,'EXECUTED','9:b655eb44da8863f3021bd71dc14e69b3','sql','Added 0.47.0 -- set base-type to type/JSON for JSON database-types for postgres and mysql',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-002','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',106,'EXECUTED','9:1983e3e2e005932513c2146770aa7f37','addColumn tableName=metabase_field','Added 0.47.0 - Add json_unfolding column to metabase_field',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-003','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',107,'EXECUTED','9:a3cdc062588a6c5c4459d48dc1b76519','sql','Added 0.47.0 - Populate metabase_field.json_unfolding based on base_type',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-004','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',108,'EXECUTED','9:9457f62a9c6533da79c4881ca21d727f','addColumn tableName=metabase_field','Added 0.47.0 - Add auto_incremented to metabase_field',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-005','winlost','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',109,'EXECUTED','9:afc9309217305117e3b9e88018c5437e','addColumn tableName=report_dashboard','Added 0.47.0 - Add auto_apply_filters to dashboard',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-006','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',110,'EXECUTED','9:268558b59e388f5d130befc2cc48a506','createTable tableName=dashboard_tab','Added 0.47.0 - Add dashboard_tab table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-007','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',111,'EXECUTED','9:7e6c0250df2957d89875cd0d14d271ee','addColumn tableName=report_dashboardcard','Added 0.47.0 -- add report_dashboardcard.dashboard_tab_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-008','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',112,'EXECUTED','9:606ece18373d1e534db0714add1c41e8','addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_report_dashboardcard_ref_dashboard_tab_id, referencedTableName=dashboard_tab','Added 0.47.0 -- add report_dashboardcard.dashboard_tab_id fk constraint',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-009','qwef','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',113,'EXECUTED','9:738a13b99f62269ff366f57c09652ebc','sql','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-010','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',114,'EXECUTED','9:5d9a509a79dedadff743042b6f82ddbe','modifyDataType columnName=name, tableName=metabase_table','Added 0.47.0 - Make metabase_table.name long enough for H2 names',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-011','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',115,'EXECUTED','9:7a6a06886b1428bf54d5105d1d4fcf0a','modifyDataType columnName=display_name, tableName=metabase_table','Added 0.47.0 - Make metabase_table.display_name long enough for H2 names',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-012','qwef','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',116,'EXECUTED','9:42ca291fec3fb0a7bdd74dd17d03339a','dropColumn columnName=google_auth, tableName=core_user','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-013','qwef','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',117,'EXECUTED','9:fcc22e7f3fd2f6e52739a8b9778f8e50','sql','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-014','qwef','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',118,'EXECUTED','9:e8309c65ac1f122f944e64d702409377','dropColumn columnName=ldap_auth, tableName=core_user','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-015','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',119,'EXECUTED','9:a05fe66edd2512f17a9fc7f9ff122669','addColumn tableName=metabase_database','added 0.47.0 - Add is_audit to metabase_database',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-016','calherres','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',120,'EXECUTED','9:dd0ac245534f31be5a5e0fdab821b13a','customChange','Added 0.47.0 - Migrate the report_card.visualization_settings.column_settings field refs from legacy format',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-018','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',121,'EXECUTED','9:3019a2f90c2a6d8c060afc7b3e5d35a5','createTable tableName=model_index','Indexed Entities information table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-019','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',122,'EXECUTED','9:c94ce89ec2a7f334bc2357a31427c561','createTable tableName=model_index_value','Indexed Entities values table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-020','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',123,'EXECUTED','9:96991ffa2c754f2f70d61928c7574e31','addUniqueConstraint constraintName=unique_model_index_value_model_index_id_model_pk, tableName=model_index_value','Add unique constraint on index_id and pk',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-023','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',124,'EXECUTED','9:ab9a7a030405fc844b36f10d77fef039','createIndex indexName=idx_model_index_model_id, tableName=model_index','Added 0.47.0 -- model_index index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-024','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',125,'EXECUTED','9:ab4cd02348503fcaa7cedd49d11d217d','addForeignKeyConstraint baseTableName=model_index, constraintName=fk_model_index_model_id, referencedTableName=report_card','Added 0.47.0 -- model_index foriegn key to report_card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-025','dpsutton','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',126,'EXECUTED','9:e002aab419bb327f68a09b604eb24fa5','addForeignKeyConstraint baseTableName=model_index_value, constraintName=fk_model_index_value_model_id, referencedTableName=model_index','Added 0.47.0 -- model_index_value foriegn key to model_index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-026','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',127,'EXECUTED','9:81eed341cad343495635a2071229e322','createTable tableName=connection_impersonations','Added 0.47.0 - New table for connection impersonation policies',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-027','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',128,'EXECUTED','9:2b9534d1485ac7c4bab9cfeac872f776','customChange','Added 0.47.0 - Migrate field_ref in report_card.result_metadata from legacy format',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-028','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',129,'EXECUTED','9:8a9ca6be7a4f074502a913a051985318','customChange','Added 0.47.0 - Add join-alias to the report_card.visualization_settings.column_settings field refs',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-029','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',130,'EXECUTED','9:25837e14eb0e553622b20851e5cb954a','customChange','Added 0.47.0 - Stack cards vertically for dashboard with tabs on downgrade',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-030','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',131,'EXECUTED','9:e6d3c56859e8c41a5c5f6b7ebcc489d7','addColumn tableName=collection','Added 0.47.0 - Type column for collections for instance-analytics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-031','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',132,'EXECUTED','9:6c0047955d2fc52cd25e4e4aabdc7143','sql; sql','Added 0.47.0 - migrate dashboard grid size from 18 to 24',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-032','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',133,'EXECUTED','9:3399199c033cc5a8ab6559e1512e5fbe','customChange','Added 0.47.0 - migrate dashboard grid size from 18 to 24 for revisions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-033','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',134,'EXECUTED','9:5c9a0260b3f214164e1b7ca9ec524495','customChange','Added 0.47.0 - Migrate field refs in visualization_settings.column_settings keys from legacy format',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-034','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',135,'EXECUTED','9:b921f870f56cd34a549755271a4718e3','customChange','Added 0.47.0 - Add join-alias to the visualization_settings.column_settings field refs in card revisions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-035','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',136,'EXECUTED','9:57f53ab4caba81bea788f23487b6888a','dropForeignKeyConstraint baseTableName=implicit_action, constraintName=fk_implicit_action_action_id','Added 0.47.0 - Drop foreign key constraint on implicit_action.action_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-036','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',137,'EXECUTED','9:c45b0246a2068f7bed037662a25e52c0','addPrimaryKey constraintName=pk_implicit_action, tableName=implicit_action','Added 0.47.0 - Set primary key to action_id for implicit_action table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-037','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',138,'EXECUTED','9:8a7a6c51a3f52acb8b69bf10782e3a6e','addForeignKeyConstraint baseTableName=implicit_action, constraintName=fk_implicit_action_action_id, referencedTableName=action','Added 0.47.0 - Add foreign key constraint on implicit_action.action_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-043','calherres','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',139,'EXECUTED','9:820503d14d203559f58234c66db5f610','customChange','Added 0.47.0 - Migrate report_dashboardcard.visualization_settings.column_settings field refs from legacy format',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-044','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',140,'EXECUTED','9:ff858068d377ee154148e56b5870adeb','customChange','Added 0.47.0 - Add join-alias to the report_dashboardcard.visualization_settings.column_settings field refs',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-045','calherres','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',141,'EXECUTED','9:41e0fe44ff4fd6fc2ae37afab452dcf6','customChange','Added 0.47.0 - Migrate dashboard revision dashboard cards\' visualization_settings.column_settings field refs from legacy format',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-046','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',142,'EXECUTED','9:f16adf1926c20795e41ffe1d7448d0d2','customChange','Added 0.47.0 - Add join-alias to dashboard revision dashboard cards\' visualization_settings.column_settings field refs',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-050','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',143,'EXECUTED','9:8e9aad6950c3b6f4799f51f0a7277457','addColumn tableName=metabase_table','Added 0.47.0 - table.is_upload',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-051','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',144,'EXECUTED','9:ec914ed2458e64fdd021bc6ca19e85c1','dropForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_db_id','Added 0.47.0 - Drop foreign key constraint on connection_impersonations.db_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-052','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',145,'EXECUTED','9:9dc7bed69c542749be182f5d76233488','dropForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_group_id','Added 0.47.0 - Drop foreign key constraint on connection_impersonations.group_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-053','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',146,'EXECUTED','9:91a175d49e28b1653ac8a7bad2a8204f','createIndex indexName=idx_conn_impersonations_db_id, tableName=connection_impersonations','Added 0.47.0 -- connection_impersonations index for db_id column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-054','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:37',147,'EXECUTED','9:5245b1f06e5d1ae3a4c929f6cfcde9d4','createIndex indexName=idx_conn_impersonations_group_id, tableName=connection_impersonations','Added 0.47.0 -- connection_impersonations index for group_id column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-055','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',148,'EXECUTED','9:aef0d48122a09e653a9683d3b7074165','addUniqueConstraint constraintName=conn_impersonation_unique_group_id_db_id, tableName=connection_impersonations','Added 0.47.0 - unique constraint for connection impersonations',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-056','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',149,'EXECUTED','9:bac4590e83ce8522e9fad8703aa88295','addForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_db_id, referencedTableName=metabase_database','Added 0.47.0 - re-add foreign key constraint on connection_impersonations.db_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-057','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',150,'EXECUTED','9:21e3b2ee3c1ae91f35c7c1fbd0f82dac','addForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_group_id, referencedTableName=permissions_group','Added 0.47.0 - re-add foreign key constraint on connection_impersonations.group_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-058','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',151,'EXECUTED','9:d268796eef28773e767c286904f50cee','dropColumn columnName=entity_id, tableName=parameter_card','Drop parameter_card.entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v47.00-059','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',152,'EXECUTED','9:087e632c348027aeb01bc49bb428f67a','dropNotNullConstraint columnName=entity_id, tableName=dashboard_tab','Drops not null from dashboard_tab.entity_id since it breaks drop-entity-ids command',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-001','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',153,'EXECUTED','9:64e0c0145956960241a861c72375ffa0','customChange','Added 0.47.0 - Migrate database.options to database.settings',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-002','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',154,'EXECUTED','9:7a9312346a8d041d62726cd99d27e02b','dropColumn columnName=options, tableName=metabase_database','Added 0.47.0 - drop metabase_database.options',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-003','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',155,'EXECUTED','9:b623ee408e368c53ef1865af15a5edac','dropTable tableName=computation_job_result','Added 0.48.0 - drop computation_job_result table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-004','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',156,'EXECUTED','9:e9bdc7a7ca09fe29d5b3479d9925bbd7','dropTable tableName=computation_job','Added 0.48.0 - drop computation_job table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-005','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',157,'EXECUTED','9:46dbd09ead2298f0e37d28f011b8986e','addColumn tableName=query_execution','Added 0.48.0 - Add query_execution.action_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-006','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',158,'EXECUTED','9:87cb5019893ddcb08ce06856825f1e6a','createIndex indexName=idx_query_execution_action_id, tableName=query_execution','Added 0.48.0 - Index query_execution.action_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-007','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',159,'EXECUTED','9:efa5dcca04d3887bca0eafc95754b9ee','addColumn tableName=revision','Added 0.48.0 - Add revision.most_recent',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-008','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',160,'EXECUTED','9:427285b2ac59a9b5a4c7c51f0f7140a6','sql; sql','Set revision.most_recent = true for latest revisions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-009','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',161,'EXECUTED','9:4243d81311d2dc265d687e4b665215dc','createTable tableName=table_privileges','Added 0.48.0 - Create table_privileges table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-010','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',162,'EXECUTED','9:79908afdc739c3e9dbdddd1e29a20e5d','sql','Remove ON UPDATE for revision.timestamp on mysql, mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-011','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',163,'EXECUTED','9:2da4950057f3a912cd044bd95a189087','createIndex indexName=idx_revision_most_recent, tableName=revision','Index revision.most_recent',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-013','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',164,'MARK_RAN','9:9478b5f507bc34df51aaa4d719fc1c37','sql','Index unindexed FKs for postgres',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-014','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',165,'MARK_RAN','9:f22e8ba6b47eaa27344835a6f5069c7f','createIndex indexName=idx_table_privileges_table_id, tableName=table_privileges','Added 0.48.0 - Create table_privileges.table_id index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-015','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',166,'EXECUTED','9:7ce7965ef94006d568d2298c4e5e007c','createIndex indexName=idx_table_privileges_role, tableName=table_privileges','Added 0.48.0 - Create table_privileges.role index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-016','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',167,'EXECUTED','9:99bac12bbd1ff64b35f0c48f5f9bf824','modifyDataType columnName=slug, tableName=collection','Added 0.48.0 - Change the type of collection.slug to varchar(510)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-018','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',168,'EXECUTED','9:7e190e044ea31c175d382aa6eb2b80c4','createTable tableName=recent_views','Add new recent_views table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-019','nemanjaglumac','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',169,'EXECUTED','9:3af8327e2dab1b5344292966c4e1d8e0','dropColumn columnName=color, tableName=collection','Collection color is removed in 0.48.0',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-020','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',170,'EXECUTED','9:53aa607fc4b962053bffbca4e4283391','createIndex indexName=idx_recent_views_user_id, tableName=recent_views','Added 0.48.0 - Create recent_views.user_id index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-021','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',171,'EXECUTED','9:8fd8b97bfbae458ea7eb91e117cabc33','addColumn tableName=report_card','Cards store Metabase version used to create them',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-022','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',172,'EXECUTED','9:d9575843d1ca7eae790d3649f77099de','customChange','Migrate migrate-click-through to a custom migration',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-023','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',173,'EXECUTED','9:566cb69d3c93ac8f7d9aaa3d8355c873','customChange','Data migration migrate-remove-admin-from-group-mapping-if-needed',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-024','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',174,'EXECUTED','9:87ed320552869766323c1d12f7969b17','dropTable tableName=data_migrations','All data migrations were transferred to custom_migrations!',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-025','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',175,'EXECUTED','9:0e54628ce18964128e827ad05ab2a448','addColumn tableName=revision','Revisions store Metabase version used to create them',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-026','lbrdnk','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',176,'EXECUTED','9:d1ce706fe25d39767a77089171859856','update tableName=metabase_field','Set semantic_type with value type/Number to null (#18754)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-027','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',177,'EXECUTED','9:0a7ed49c904abc7110aa09324b49f106','sql','No op migration',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-028','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',178,'EXECUTED','9:545c671b45a6bdf0f8dc7aa8ddfaaf29','createTable tableName=audit_log','Add new audit_log table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-029','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',179,'EXECUTED','9:bd1054ea8483f51d43701ba42d29768a','sqlFile path=instance_analytics_views/audit_log/v1/postgres-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v1/mysql-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v1/h2-audit_log.sql','Added 0.48.0 - new view v_audit_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-030','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',180,'EXECUTED','9:9dece66e24100146348152445f3ba47c','sqlFile path=instance_analytics_views/content/v1/postgres-content.sql; sqlFile path=instance_analytics_views/content/v1/mysql-content.sql; sqlFile path=instance_analytics_views/content/v1/h2-content.sql','Added 0.48.0 - new view v_content',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-031','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',181,'EXECUTED','9:4493c1a05ff71a8cf629c2e469e63b29','sqlFile path=instance_analytics_views/dashboardcard/v1/dashboardcard.sql','Added 0.48.0 - new view v_dashboardcard',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-032','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',182,'EXECUTED','9:c73d37997ac7c32b730b761bd1a7ecc0','sqlFile path=instance_analytics_views/group_members/v1/group_members.sql','Added 0.48.0 - new view v_group_members',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-033','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',183,'EXECUTED','9:793875adb62366f96ba5e97c3d86f6ad','sqlFile path=instance_analytics_views/subscriptions/v1/postgres-subscriptions.sql; sqlFile path=instance_analytics_views/subscriptions/v1/mysql-subscriptions.sql; sqlFile path=instance_analytics_views/subscriptions/v1/h2-subscriptions.sql','Added 0.48.0 - new view v_subscriptions for postgres',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-034','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',184,'EXECUTED','9:b3d39890db507464674fffaa4be3111c','sqlFile path=instance_analytics_views/users/v1/postgres-users.sql; sqlFile path=instance_analytics_views/users/v1/mysql-users.sql; sqlFile path=instance_analytics_views/users/v1/h2-users.sql','Added 0.48.0 - new view v_users',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-035','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',185,'EXECUTED','9:1600b802494a0077a24dbb4e4f6de5b2','sqlFile path=instance_analytics_views/alerts/v1/postgres-alerts.sql; sqlFile path=instance_analytics_views/alerts/v1/mysql-alerts.sql; sqlFile path=instance_analytics_views/alerts/v1/h2-alerts.sql','Added 0.48.0 - new view v_alerts',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-036','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',186,'EXECUTED','9:4a4b8b9d1d537618546664e041121858','sqlFile path=instance_analytics_views/databases/v1/databases.sql','Added 0.48.0 - new view v_databases',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-037','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',187,'EXECUTED','9:950273e8f27d0143e1ba26ff298da5c7','sqlFile path=instance_analytics_views/fields/v1/postgres-fields.sql; sqlFile path=instance_analytics_views/fields/v1/mysql-fields.sql; sqlFile path=instance_analytics_views/fields/v1/h2-fields.sql','Added 0.48.0 - new view v_fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-038','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',188,'EXECUTED','9:c7824fdfc6386073f53d490c9e25b3f4','sqlFile path=instance_analytics_views/query_log/v1/postgres-query_log.sql; sqlFile path=instance_analytics_views/query_log/v1/mysql-query_log.sql; sqlFile path=instance_analytics_views/query_log/v1/h2-query_log.sql','Added 0.48.0 - new view v_query_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-039','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',189,'EXECUTED','9:3d4eb8c983f42c45f9b55d401648ea73','sqlFile path=instance_analytics_views/tables/v1/postgres-tables.sql; sqlFile path=instance_analytics_views/tables/v1/mysql-tables.sql; sqlFile path=instance_analytics_views/tables/v1/h2-tables.sql','Added 0.48.0 - new view v_tables',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-040','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',190,'EXECUTED','9:b81e37d0a48f4fb40bf4a594b0ad5178','sqlFile path=instance_analytics_views/view_log/v1/postgres-view_log.sql; sqlFile path=instance_analytics_views/view_log/v1/mysql-view_log.sql; sqlFile path=instance_analytics_views/view_log/v1/h2-view_log.sql','Added 0.48.0 - new view v_view_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-045','qwef','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',191,'EXECUTED','9:3a8a23ac9c57ddb43351c8a0d57edbb7','addColumn tableName=query_execution','Added 0.48.0 - add is_sandboxed to query_execution',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-046','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',192,'EXECUTED','9:73b6afd4e8f8ac0cd1dbe3f58738001a','sqlFile path=instance_analytics_views/indexes/v1/postgres-indexes.sql; sqlFile path=instance_analytics_views/indexes/v1/mysql-indexes.sql; sqlFile path=instance_analytics_views/indexes/v1/mariadb-indexes.sql; sqlFile path=instance_analytics_views/...','Added 0.48.0 - new indexes to optimize audit v2 queries',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-047','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',193,'EXECUTED','9:83099e323661cb585639e5ee8d48d7bf','dropForeignKeyConstraint baseTableName=recent_views, constraintName=fk_recent_views_ref_user_id','Drop foreign key on recent_views so that it can be recreated with onDelete policy',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-048','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',194,'EXECUTED','9:1ccb1544d732d0c6944ee1c4ac998801','addForeignKeyConstraint baseTableName=recent_views, constraintName=fk_recent_views_ref_user_id, referencedTableName=core_user','Add foreign key on recent_views with onDelete CASCADE',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-049','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',195,'EXECUTED','9:05df92e2ee338322a94403ba1ca24659','sql; sql; sql','Migrate data from activity to audit_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-050','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',196,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','Added 0.48.0 - no-op migration to remove audit DB and collection on downgrade',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-051','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',197,'EXECUTED','9:cf285be2d9566f078ecabe8c01b1a896','sql; sql','Migrate metabase_field when the fk target field is inactive',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-053','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',198,'EXECUTED','9:7997563ebc2f57b53a1f19679d89b3b7','modifyDataType columnName=model, tableName=activity','Increase length of `activity.model` to fit longer model names',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-054','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',199,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','Added 0.48.0 - no-op migration to remove Internal Metabase User on downgrade',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-055','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',200,'EXECUTED','9:753e49c8ca5d240edaea75a82af76e16','sqlFile path=instance_analytics_views/tasks/v1/postgres-tasks.sql; sqlFile path=instance_analytics_views/tasks/v1/mysql-tasks.sql; sqlFile path=instance_analytics_views/tasks/v1/h2-tasks.sql','Added 0.48.0 - new view v_tasks',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-056','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',201,'EXECUTED','9:cd66e7282ad1d92ae91d2694906f8762','addColumn tableName=view_log','Adjust view_log schema for Audit Log v2',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-057','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',202,'EXECUTED','9:24967224f6153a884f8f588772dfaf7d','addColumn tableName=view_log','Adjust view_log schema for Audit Log v2',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-059','qwef','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',203,'EXECUTED','9:aac112e35358d50dd099737f32e491bc','sql','Update the namespace of any audit collections that are already loaded',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-060','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',204,'EXECUTED','9:97dc864df6ae5bca6e14ff4b1a455030','createIndex indexName=idx_task_history_started_at, tableName=task_history','Added 0.48.0 - task_history.started_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-061','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',205,'EXECUTED','9:87e8b08479ad84f843df319cc837b450','addColumn tableName=query_execution','Adds query_execution.cache_hash -> query_cache.query_hash',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v48.00-067','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',206,'EXECUTED','9:d898510812a4024d10b9f731242ce883','addUniqueConstraint constraintName=idx_databasechangelog_id_author_filename, tableName=DATABASECHANGELOG','Add unique constraint idx_databasechangelog_id_author_filename',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-000','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',207,'EXECUTED','9:a6eaedb204bd70b999a7b7ed7524b904','sql','Remove leagcy pulses',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-003','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',208,'EXECUTED','9:6c49190e041265b22255a447302236b8','addColumn tableName=core_user','Add a `type` to users',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-004','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',209,'EXECUTED','9:910cb52c64c9c2432dbe19d487710723','createTable tableName=api_key','Add a table for API keys',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-005','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',210,'EXECUTED','9:790e75675265f53ca11f32994b9d1d12','createIndex indexName=idx_api_key_created_by, tableName=api_key','Add an index on `api_key.created_by`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-006','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',211,'EXECUTED','9:46cfb5a9bab696272d0211d7f34870ef','createIndex indexName=idx_api_key_user_id, tableName=api_key','Add an index on `api_key.user_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-007','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',212,'EXECUTED','9:638a7394870315abd52742b739ee49ff','sql','Set the `type` of the internal user',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-008','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',213,'EXECUTED','9:381669dee234455e2d6e975afb9e95b0','addColumn tableName=metabase_field','Add metabase_field.database_indexed',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-009','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',214,'EXECUTED','9:9cc276d895ef96a7d9e4b9c9b033a91f','sql; sql','Migrate pulse_card.include_csv to \'true\' when the joined card.display is \'table\'',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-010','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',215,'EXECUTED','9:c618fafea8561e66c97ac5d9a56106f3','addColumn tableName=api_key','Add a name to API Keys',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-011','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',216,'EXECUTED','9:9dae0a3606d63cc6c47ec94f181d203c','addColumn tableName=metabase_table','Add metabase_table.database_require_filter',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-012','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',217,'EXECUTED','9:129b215b73fec358adbd3cf9ba478515','addColumn tableName=metabase_field','Add metabase_field.database_partitioned',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-013','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',218,'EXECUTED','9:fd99fac43bba1d45dfa8f17cd635e55b','addColumn tableName=api_key','Add `api_key.updated_by_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-014','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',219,'EXECUTED','9:ab6ff0fa8e1088222e01466c38295012','createIndex indexName=idx_api_key_updated_by_id, tableName=api_key','Add an index on `api_key.updated_by_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-015','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',220,'EXECUTED','9:85e3063c4b008044fe6729789af4d2d0','renameColumn newColumnName=creator_id, oldColumnName=created_by, tableName=api_key','Rename `created_by` to `creator_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-016','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',221,'EXECUTED','9:3af524e7d0a5451fa0b3664c73909654','modifyDataType columnName=archived, tableName=action','Added 0.49.0 - modify type of action.archived from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-017','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',222,'EXECUTED','9:d6f038eb9f5cd269af61920e84b7843b','addNotNullConstraint columnName=archived, tableName=action','Add NOT NULL constraint to action.archived',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-018','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',223,'EXECUTED','9:dfa7799dd05f439f01c646f35810d37a','addDefaultValue columnName=archived, tableName=action','Add default value to action.archived',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-019','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:38',224,'EXECUTED','9:6670e06ad4f9cae59d8030a0bd188e8d','modifyDataType columnName=json_unfolding, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.json_unfolding from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-020','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',225,'EXECUTED','9:471354d5a2a892d7fff8dda434167e42','addNotNullConstraint columnName=json_unfolding, tableName=metabase_field','Add NOT NULL constraint to metabase_field.json_unfolding',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-021','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',226,'EXECUTED','9:eda3e041b4def2f0c9188b131330a743','addDefaultValue columnName=json_unfolding, tableName=metabase_field','Add default value to metabase_field.json_unfolding',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-022','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',227,'EXECUTED','9:f55c82c9150267f7af4105cfd040ea92','modifyDataType columnName=database_is_auto_increment, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.database_is_auto_increment from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-023','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',228,'EXECUTED','9:1c23e1a62c2c8b909285bd74f7babeb6','addNotNullConstraint columnName=database_is_auto_increment, tableName=metabase_field','Add NOT NULL constraint to metabase_field.database_is_auto_increment',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-024','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',229,'EXECUTED','9:438a77b956692c7e3703d96b913e5566','addDefaultValue columnName=database_is_auto_increment, tableName=metabase_field','Add default value to metabase_field.database_is_auto_increment',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-025','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',230,'EXECUTED','9:e71efa66f18a81d725397af1430e17cc','modifyDataType columnName=auto_apply_filters, tableName=report_dashboard','Added 0.49.0 - modify type of report_dashboard.auto_apply_filters from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-026','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',231,'EXECUTED','9:f48932fb7dbb00b5dd6eed779538d57f','addNotNullConstraint columnName=auto_apply_filters, tableName=report_dashboard','Add NOT NULL constraint to report_dashboard.auto_apply_filters',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-027','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',232,'EXECUTED','9:e8e27cec1e1cb5801ddfca828e3404a2','addDefaultValue columnName=auto_apply_filters, tableName=report_dashboard','Add default value to report_dashboard.auto_apply_filters',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-028','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',233,'EXECUTED','9:cc433fbe4fc7c63120f47c21f8dd4876','modifyDataType columnName=is_audit, tableName=metabase_database','Added 0.49.0 - modify type of metabase_database.is_audit from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-029','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',234,'EXECUTED','9:508f95400f30625332612492fc0d390f','addNotNullConstraint columnName=is_audit, tableName=metabase_database','Add NOT NULL constraint to metabase_database.is_audit',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-030','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',235,'EXECUTED','9:93140751149cec3fdf7a186e6bac564a','addDefaultValue columnName=is_audit, tableName=metabase_database','Add default value to metabase_database.is_audit',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-031','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',236,'EXECUTED','9:ee9d6badebbaad529947c18acab19f33','modifyDataType columnName=is_upload, tableName=metabase_table','Added 0.49.0 - modify type of metabase_table.is_upload from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-032','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',237,'EXECUTED','9:5db2a4a8512493aaeea8317c3bb97a0a','addNotNullConstraint columnName=is_upload, tableName=metabase_table','Add NOT NULL constraint to metabase_table.is_upload',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-033','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',238,'EXECUTED','9:75f535cee2ac99c5eabfd8d23007cec5','addDefaultValue columnName=is_upload, tableName=metabase_table','Add default value to metabase_table.is_upload',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-034','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',239,'EXECUTED','9:e0a9e7d1363fa5ab69571a9613d06c7f','modifyDataType columnName=most_recent, tableName=revision','Added 0.49.0 - modify type of revision.most_recent from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-035','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',240,'EXECUTED','9:e0a9e7d1363fa5ab69571a9613d06c7f','modifyDataType columnName=most_recent, tableName=revision','Added 0.49.0 - modify type of revision.most_recent from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-036','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',241,'EXECUTED','9:d4d5506cb138538496bfcc597dea0ed7','addNotNullConstraint columnName=most_recent, tableName=revision','Add NOT NULL constraint to revision.most_recent',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-037','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',242,'EXECUTED','9:ddaf7704e565f42c3599823018f7f0cd','addDefaultValue columnName=most_recent, tableName=revision','Add default value to revision.most_recent',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-038','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',243,'EXECUTED','9:764da803a4253e28e188705a0a54db7d','modifyDataType columnName=select, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.select from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-039','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',244,'EXECUTED','9:3ad298c9d5b09735eca58fa0e36145e6','addNotNullConstraint columnName=select, tableName=table_privileges','Add NOT NULL constraint to table_privileges.select',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-040','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',245,'EXECUTED','9:a429c76f53ca1f6e40cb97e10f5bbb13','addDefaultValue columnName=select, tableName=table_privileges','Add default value to table_privileges.select',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-041','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',246,'EXECUTED','9:b805a294a82be70036c9691bb6f8add6','modifyDataType columnName=update, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.update from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-042','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',247,'EXECUTED','9:a058ac5e70061fac23d649c51de38b4a','addNotNullConstraint columnName=update, tableName=table_privileges','Add NOT NULL constraint to table_privileges.update',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-043','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',248,'EXECUTED','9:1a18955a2d01bb8fb1b7edfc74f5d976','addDefaultValue columnName=update, tableName=table_privileges','Add default value to table_privileges.update',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-044','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',249,'EXECUTED','9:624c6ca0e36c7772bb253e5b145a0be6','modifyDataType columnName=insert, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.insert from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-045','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',250,'EXECUTED','9:a4e9d3e1b3ac0544d36da7fcf6e296a3','addNotNullConstraint columnName=insert, tableName=table_privileges','Add NOT NULL constraint to table_privileges.insert',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-046','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',251,'EXECUTED','9:32c3a206904e45e4d6b3d639a2477d4e','addDefaultValue columnName=insert, tableName=table_privileges','Add default value to table_privileges.insert',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-047','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',252,'EXECUTED','9:a49c32d40d1a70fa2388760363ed5626','modifyDataType columnName=delete, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.delete from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-048','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',253,'EXECUTED','9:ea9d63a09f6fbf06841c9e23d885d065','addNotNullConstraint columnName=delete, tableName=table_privileges','Add NOT NULL constraint to table_privileges.delete',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-049','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',254,'EXECUTED','9:fa6e7cafdbbf7880ddd8eef9b1cd33c9','addDefaultValue columnName=delete, tableName=table_privileges','Add default value to table_privileges.delete',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-050','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',255,'EXECUTED','9:5b2c42dcb037b8f34161182f1252f5a7','modifyDataType columnName=is_sandboxed, tableName=query_execution','Added 0.49.0 - modify type of query_execution.is_sandboxed from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-051','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',256,'EXECUTED','9:932ff410b31a5312bd59bb4af1051b91','modifyDataType columnName=has_access, tableName=view_log','Added 0.49.0 - modify type of view_log.has_access from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-052','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',257,'EXECUTED','9:ee005c2e466f51fdb7e6609e6604fbc7','modifyDataType columnName=database_indexed, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.database_indexed from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-053','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:39',258,'EXECUTED','9:63c99fa4f61b45384d24d65dd2b785dd','modifyDataType columnName=database_require_filter, tableName=metabase_table','Added 0.49.0 - modify type of metabase_table.database_require_filter from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-059','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',259,'EXECUTED','9:c1257d472c4cdc7cbf4584b1ebca9bc5','customChange','Added 0.49.0 - unify type of time columns',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.00-060','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',260,'EXECUTED','9:bfa847d943e2a99d363bf56ac5f31b88','modifyDataType columnName=database_partitioned, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.database_partitioned from boolean to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-22T11:50:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',261,'EXECUTED','9:643a028e650ad7fcd6789a702249a179','addColumn tableName=report_card','Add `report_card.type`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-22T11:51:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',262,'EXECUTED','9:6e53593c40c63e38d6c1ffd0331753c5','sql','Backfill `report_card.type`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-22T11:52:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',263,'EXECUTED','9:e4dcaf72feb0bffee2e0383fd4403a2a','customChange','Backfill `report_card.type`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-29T19:26:40','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',264,'EXECUTED','9:04671d8b09ff919ab5154604377ba247','addColumn tableName=report_dashboard','Add width setting to Dashboards',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-29T19:30:00','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',265,'EXECUTED','9:856b864c837cd25b3de595691f2b5712','update tableName=report_dashboard','Update existing report_dashboard width values to full',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-29T19:56:40','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',266,'EXECUTED','9:c092ab859ee6994fcd3b4719872abb97','addNotNullConstraint columnName=width, tableName=report_dashboard','Dashboard width setting must have a value',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-01-29T19:59:12','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',267,'EXECUTED','9:663770b688f1ec9aee90d067d789ddbe','addDefaultValue columnName=width, tableName=report_dashboard','Add default value to report_dashboard.width for mysql and mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-02T11:27:49','oisincoveney','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',268,'EXECUTED','9:c67f2804eeabd9937bb4d10d93160a9e','addColumn tableName=report_card','Add report_card.initially_published_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-02T11:28:36','oisincoveney','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',269,'EXECUTED','9:a789a7122bdeb83603486f84a2024a62','addColumn tableName=report_dashboard','Add report_dashboard.initially_published_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-07T21:52:01','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',270,'EXECUTED','9:da7a00eb2ed39a840975e50c93a5805a','sqlFile path=instance_analytics_views/view_log/v2/postgres-view_log.sql; sqlFile path=instance_analytics_views/view_log/v2/mysql-view_log.sql; sqlFile path=instance_analytics_views/view_log/v2/h2-view_log.sql','Added 0.49.0 - updated view v_view_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-07T21:52:02','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',271,'EXECUTED','9:bfad7cbbaf23a408a427ad13fe6ca61a','sqlFile path=instance_analytics_views/audit_log/v2/postgres-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v2/mysql-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v2/h2-audit_log.sql','Added 0.49.0 - updated view v_audit_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-07T21:52:03','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',272,'EXECUTED','9:9072a2d1352e44778ba6ecda18ba2177','sqlFile path=instance_analytics_views/group_members/v2/group_members.sql','Added 0.49.0 - updated view v_group_members',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-07T21:52:04','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',273,'EXECUTED','9:8a38c37ebaa7737254f1cbcca2ee9a05','sqlFile path=instance_analytics_views/query_log/v2/postgres-query_log.sql; sqlFile path=instance_analytics_views/query_log/v2/mysql-query_log.sql; sqlFile path=instance_analytics_views/query_log/v2/h2-query_log.sql','Added 0.49.0 - updated view v_query_log',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-07T21:52:05','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',274,'EXECUTED','9:5c6dc68180512127abcbefb3c1905b6e','sqlFile path=instance_analytics_views/users/v2/postgres-users.sql; sqlFile path=instance_analytics_views/users/v2/mysql-users.sql; sqlFile path=instance_analytics_views/users/v2/h2-users.sql','Added 0.49.0 - updated view v_users',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-02-09T13:55:26','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',275,'MARK_RAN','9:c5913529bf32922a42106be35fa5cb0f','sql; sql; sql','Set default value for enable-public-sharing to `false` for existing instances with users, if not already set',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-03-26T10:23:12','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',276,'EXECUTED','9:2e7a0bc202e12b0ece4365d253b46bff','addColumn tableName=pulse_card','Add pulse_card.format_rows',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-04-09T10:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',277,'EXECUTED','9:0584ae323d98a60f80b433bedab2a0a2','dropNotNullConstraint columnName=cache_field_values_schedule, tableName=metabase_database','Drop not null constraint on metabase_database.cache_field_values_schedule',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-04-09T10:00:01','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',278,'EXECUTED','9:68341c448ecdca425eae019974b64c09','dropDefaultValue columnName=cache_field_values_schedule, tableName=metabase_database','Drop default value on metabase_database.cache_field_values_schedule',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-04-09T10:00:02','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',279,'EXECUTED','9:adb15f2d80ea2b037b44d1eb2dbcb3c5','addDefaultValue columnName=cache_field_values_schedule, tableName=metabase_database','Add null as default value for metabase_database.cache_field_values_schedule',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-04-09T10:00:03','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',280,'EXECUTED','9:545f9bcd04fac375b93292acf524e149','customChange','This clears the schedule for caching field values for databases with period scanning disabled.',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-07T10:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',281,'EXECUTED','9:60df23f2bae0b7c52fcb29845cb911e5','sql','Set revision.most_recent = true to latest revision and false to others. A redo of v48.00-008 for mysql',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-20T19:10:34','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',282,'EXECUTED','9:37e8337a7760488c44efb9eb336827a8','modifyDataType columnName=collection_preview, tableName=report_card','Modify type of report_card.collection_preview to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-20T20:37:55','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',283,'EXECUTED','9:cd3c79ed1edfc118dabbdb1f0aa63df7','addNotNullConstraint columnName=collection_preview, tableName=report_card','Add NOT NULL constraint to report_card.collection_preview',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-20T20:38:34','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',284,'EXECUTED','9:4915c63aed5f55151a7fe470a040862f','addDefaultValue columnName=collection_preview, tableName=report_card','Add default value to report_card.collection_preview',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-29T09:26:20','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',285,'EXECUTED','9:801a8f1afe7dd59ef03f68036830e85d','modifyDataType columnName=dataset, tableName=report_card','Modify type of report_card.dataset to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-29T09:27:15','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',286,'EXECUTED','9:cc966e564c858127530e7f7716b02e36','addNotNullConstraint columnName=dataset, tableName=report_card','Add NOT NULL constraint to report_card.dataset',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-05-29T09:28:25','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',287,'EXECUTED','9:38c354239c1ccad066b233ebe80b2dcf','addDefaultValue columnName=dataset, tableName=report_card','Add default value to report_card.dataset',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:01:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',288,'EXECUTED','9:1d1c91b9c7cead23b159896420c79af4','modifyDataType columnName=is_datasetnewb, tableName=core_user','Modify type of core_user.is_datasetnewb to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:01:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',289,'EXECUTED','9:82b9f72cf8b697d5e91c287e8a758b08','addNotNullConstraint columnName=is_datasetnewb, tableName=core_user','Add NOT NULL constraint to core_user.is_datasetnewb on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:01:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',290,'EXECUTED','9:041a7090bfadac7f338a20fd67c83b58','addDefaultValue columnName=is_datasetnewb, tableName=core_user','Add default value to core_user.is_datasetnewb on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:02:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',291,'EXECUTED','9:f5326345adab0353084b60af1b073636','modifyDataType columnName=database_required, tableName=metabase_field','Modify type of metabase_field.database_required to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:02:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',292,'EXECUTED','9:21bc6332032c73f4639fec4bd030dcd6','addNotNullConstraint columnName=database_required, tableName=metabase_field','Add NOT NULL constraint to metabase_field.database_required on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:02:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',293,'EXECUTED','9:7befa4ce0f5c42bd64b28fa452dc8170','addDefaultValue columnName=database_required, tableName=metabase_field','Add default value to metabase_field.database_required on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:03:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',294,'EXECUTED','9:09f828eca1dfb7853a2725ae596d66c6','modifyDataType columnName=has_more_values, tableName=metabase_fieldvalues','Modify type of metabase_fieldvalues.has_more_values to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:03:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',295,'EXECUTED','9:16349a8c50f6af8e85890d42794e1bbc','addDefaultValue columnName=has_more_values, tableName=metabase_fieldvalues','Add default value to metabase_fieldvalues.has_more_values on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:04:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',296,'EXECUTED','9:8e9d653bb983f8383bf71ff8596faf7d','modifyDataType columnName=is_group_manager, tableName=permissions_group_membership','Modify type of permissions_group_membership.is_group_manager to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:04:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',297,'EXECUTED','9:4cec16bfde7501060d4aa50c45a5a921','addNotNullConstraint columnName=is_group_manager, tableName=permissions_group_membership','Add NOT NULL constraint to permissions_group_membership.is_group_manager on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:04:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',298,'EXECUTED','9:9b5ba285cc8b148637929bbe77fe9c42','addDefaultValue columnName=is_group_manager, tableName=permissions_group_membership','Add default value to permissions_group_membership.is_group_manager on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:05:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',299,'EXECUTED','9:018e98f8ad3ad67589c2f3c40e7d19d3','modifyDataType columnName=active, tableName=persisted_info','Modify type of persisted_info.active to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:05:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:40',300,'EXECUTED','9:96f6bebaad7cb9b01b2984881e65334b','addNotNullConstraint columnName=active, tableName=persisted_info','Add NOT NULL constraint to persisted_info.active on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:05:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',301,'EXECUTED','9:f48d7fe3f66e550d41337c8d1d30dac3','addDefaultValue columnName=active, tableName=persisted_info','Add default value to persisted_info.active on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:06:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',302,'EXECUTED','9:801a8f1afe7dd59ef03f68036830e85d','modifyDataType columnName=dataset, tableName=report_card','Modify type of report_card.dataset to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:06:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',303,'EXECUTED','9:cc966e564c858127530e7f7716b02e36','addNotNullConstraint columnName=dataset, tableName=report_card','Add NOT NULL constraint to report_card.dataset on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:06:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',304,'EXECUTED','9:38c354239c1ccad066b233ebe80b2dcf','addDefaultValue columnName=dataset, tableName=report_card','Add default value to report_card.dataset on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:07:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',305,'EXECUTED','9:d3b401736be71c429234be8cd4a0674a','modifyDataType columnName=archived, tableName=timeline','Modify type of timeline.archived to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:07:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',306,'EXECUTED','9:3670bc7ab905d2b0ef5e43fa32b61549','addNotNullConstraint columnName=archived, tableName=timeline','Add NOT NULL constraint to timeline.archived on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:07:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',307,'EXECUTED','9:5c719513bc741dbbf32c775ba01d9ad5','addDefaultValue columnName=archived, tableName=timeline','Add default value to timeline.archived on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:08:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',308,'EXECUTED','9:3359f45e3702535ed528e77a16c468de','modifyDataType columnName=default, tableName=timeline','Modify type of timeline.default to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:08:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',309,'EXECUTED','9:6f5e4229d5daebda415a2e3222252ff1','addNotNullConstraint columnName=default, tableName=timeline','Add NOT NULL constraint to timeline.default on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:08:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',310,'EXECUTED','9:b8c9b0a2ea7421499dea66e1f5b5aaec','addDefaultValue columnName=default, tableName=timeline','Add default value to timeline.default on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:09:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',311,'EXECUTED','9:0f66de0e773ce3a17da9d4d32d54fe8e','modifyDataType columnName=archived, tableName=timeline_event','Modify type of timeline_event.archived to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:09:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',312,'EXECUTED','9:c3f3668fb388e7cfafd1491e0a18a63f','addNotNullConstraint columnName=archived, tableName=timeline_event','Add NOT NULL constraint to timeline_event.archived on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:09:03','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',313,'EXECUTED','9:273829584cdadb47cdb01659369930d0','addDefaultValue columnName=archived, tableName=timeline_event','Add default value to timeline_event.archived on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:10:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',314,'EXECUTED','9:3a56364d180c24ad5a5d9c5f3f5df962','modifyDataType columnName=time_matters, tableName=timeline_event','Modify type of timeline_event.time_matters to bit(1) on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-05T09:10:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',315,'EXECUTED','9:2f04eba0f574e8c7808acbbc1e3b1f45','addNotNullConstraint columnName=time_matters, tableName=timeline_event','Add NOT NULL constraint to timeline_event.time_matters on mysql,mariadb',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:00','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',316,'EXECUTED','9:8a8a85d66fe8e1aa272df4b12bed1e0e','sql','Make metabase_field.name use case-sensitive collation for MySQL',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:01','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',317,'EXECUTED','9:bf334359dc9444090b7bb49772ee1a74','addColumn tableName=metabase_field','Add metabase_field.is_defective_duplicate',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:02','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',318,'EXECUTED','9:9d3b1c2007b08d7402efe98271fbcaef','sql','Populate metabase_field.is_defective_duplicate',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:03','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',319,'EXECUTED','9:d166164210dfba735d35cf1cf6a71d85','dropForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_parent_ref_field_id','Drop fk_field_parent_ref_field_id constraint with ON DELETE CASCADE',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:04','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',320,'EXECUTED','9:56cfef6f3dddd565bd73be1070aa3921','addForeignKeyConstraint baseTableName=metabase_field, constraintName=fk_field_parent_ref_field_id, referencedTableName=metabase_field','Add fk_field_parent_ref_field_id constraint with ON DELETE RESTRICT',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:05','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',321,'EXECUTED','9:cee4715af87ae02cb79994fc3a7ad40c','dropUniqueConstraint constraintName=idx_uniq_field_table_id_parent_id_name, tableName=metabase_field','Remove idx_uniq_field_table_id_parent_id_name because it is redundant with idx_unique_field',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:07','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',322,'EXECUTED','9:5f40eed249599100ec3b9f3ec5d9bc4e','sql; sql; sql','Add unique_field_helper column to metabase_field',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:08','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',323,'EXECUTED','9:0efceff63ef2b44d93a3fcfb711eb98c','addUniqueConstraint constraintName=idx_unique_field, tableName=metabase_field','Add unique constraint on metabase_field\'s (name, table_id, unique_field_helper)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-06-27T00:00:09','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',324,'EXECUTED','9:d66ae3a729bdd398b10aa7be445cadd9','sql','Set is_defective_duplicate=TRUE fields that shouldn\'t exist to have active=FALSE',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:06','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',325,'EXECUTED','9:35745c7f87264b09ec446c0d4f3dd46a','addColumn tableName=permissions','Add permissions.perm_value',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:07','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',326,'EXECUTED','9:1e7b54f510eee51883629cfe9e760797','addColumn tableName=permissions','Add permissions.perm_type',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:08','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',327,'EXECUTED','9:53e92d719e8b8fc966f44c363fe27824','addColumn tableName=permissions','Add permissions.collection_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:09','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',328,'EXECUTED','9:a4c48a8ffd78b6da4bbb04ab5c851164','addForeignKeyConstraint baseTableName=permissions, constraintName=fk_permissions_ref_collection_id, referencedTableName=collection','Add `permissions.collection_id` foreign key constraint',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:10','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',329,'EXECUTED','9:f8ecf423657a19a549507a15c0af9e24','sqlFile path=permissions/collection-access.sql; sqlFile path=permissions/collection-access-mariadb.sql; sqlFile path=permissions/collection-access-h2.sql','Populate `perm_value`, `perm_type`, and `collection_id` on permissions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:11','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',330,'EXECUTED','9:1e2373045bcce712290f2dcf59401058','createIndex indexName=idx_permissions_collection_id, tableName=permissions','Create index on `permissions.collection_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:12','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',331,'EXECUTED','9:5c4358566479a8281ba0b85f4469e748','createIndex indexName=idx_permissions_perm_type, tableName=permissions','Index on `permissions.perm_type`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v49.2024-08-21T08:33:13','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',332,'EXECUTED','9:19a96d64a8a5018e8de14f4bc7cc9484','createIndex indexName=idx_permissions_perm_value, tableName=permissions','Index on `permissions.perm_value`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-04T13:52:51','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',333,'EXECUTED','9:19f8b6614c4fe95ff71b42830785df04','createTable tableName=data_permissions','Data permissions table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-09T13:52:21','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',334,'EXECUTED','9:3c438c9a400361ed3dedc2818c7ed4b8','createIndex indexName=idx_data_permissions_table_id, tableName=data_permissions','Index on data_permissions.table_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-09T13:53:50','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',335,'EXECUTED','9:21ad67aa43df73593d4e86492afdfb4e','createIndex indexName=idx_data_permissions_db_id, tableName=data_permissions','Index on data_permissions.db_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-09T13:53:54','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',336,'EXECUTED','9:34a2e61c8298c84b18f7a7c7bf5d2119','createIndex indexName=idx_data_permissions_group_id, tableName=data_permissions','Index on data_permissions.group_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:20','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',337,'EXECUTED','9:3782ad195d61d69321cd79d962806e8c','sql; sql','Analyze permissions table in preparation for subsequent migrations',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:29','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',338,'EXECUTED','9:a8c8b1c823344ea148826e9772c2b9b7','dropForeignKeyConstraint baseTableName=sandboxes, constraintName=fk_sandboxes_ref_permissions','Drop foreign key constraint on sandboxes.permissions_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:30','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',339,'EXECUTED','9:83f3ec9d5f5ce60e6711ede32b2ec68d','sqlFile path=permissions/data_access.sql; sqlFile path=permissions/h2_data_access.sql; sqlFile path=permissions/mysql_data_access.sql','Migrate data-access permissions from `permissions` to `data_permissions`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:31','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',340,'EXECUTED','9:4ea632c5ef082ebf005d923bd5527be3','sqlFile path=permissions/native_query_editing.sql','Migrate native-query-editing permissions from `permissions` to `data_permissions`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:32','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',341,'EXECUTED','9:7a7b426b9f535a5428d1dbc1e9d0fb1f','sqlFile path=permissions/download_results.sql; sqlFile path=permissions/h2_download_results.sql; sqlFile path=permissions/mysql_download_results.sql','Migrate download-results permissions from `permissions` to `data_permissions`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:33','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',342,'EXECUTED','9:f9b15920be323df5e444281b47160987','sqlFile path=permissions/manage_table_metadata.sql; sqlFile path=permissions/h2_manage_table_metadata.sql; sqlFile path=permissions/mysql_manage_table_metadata.sql','Migrate manage-data-metadata permissions from `permissions` to `data_permissions`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-01-10T03:27:34','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',343,'EXECUTED','9:9c37edf4ba12133ce298fb806af1a9cb','sqlFile path=permissions/manage_database.sql','Migrate manage-database permissions from `permissions` to `data_permissions`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-19T21:32:04','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',344,'EXECUTED','9:2a02ffb8f60532c88e645d2cd9053d95','sql','Clear data permission paths',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-20T19:21:04','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',345,'EXECUTED','9:32e06eedee74b10b4f03aa0c64e5f19c','sql','Drop v1 version of v_content view since it references report_card.dataset which we are dropping in next migration',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-20T19:25:40','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',346,'EXECUTED','9:1a0d14160b0a4e346ffe38d0e1009b7e','dropColumn columnName=dataset, tableName=report_card','Remove report_card.dataset (indicated whether Card was a Model; migrated to report_card.type in 49)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-20T19:26:38','camsaul','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',347,'EXECUTED','9:e3a9aeb9609c7d2709fed4dcafff645d','sqlFile path=instance_analytics_views/content/v2/postgres-content.sql; sqlFile path=instance_analytics_views/content/v2/mysql-content.sql; sqlFile path=instance_analytics_views/content/v2/h2-content.sql','Add new v2 version of v_content view which uses report_card.type instead of report_card.dataset (removed in previous migration)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-26T22:15:52','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',348,'EXECUTED','9:0dd3ee7f997da7aade6eb65457498940','createIndex indexName=idx_data_permissions_group_id_db_id_perm_value, tableName=data_permissions','Add index on data_permissions(group_id, db_id, perm_value)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-26T22:15:53','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',349,'EXECUTED','9:7889e4fa3befded2340d040eebbf664e','createIndex indexName=idx_data_permissions_group_id_db_id_table_id_perm_value, tableName=data_permissions','Add index on data_permissions(group_id, db_id, table_id, perm_value)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-26T22:15:54','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',350,'EXECUTED','9:29e840f2e163f8795c220faee8201c81','sqlFile path=permissions/view_data.sql; sqlFile path=permissions/mysql_view_data.sql','New `view-data` permission',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-26T22:15:55','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',351,'EXECUTED','9:b1f5769daebdad03a65681cc8c1d0475','sqlFile path=permissions/create_queries.sql','New `create_queries` permission',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-29T15:06:43','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',352,'EXECUTED','9:bf61f630cb8d21a16ef6566d842a8b46','createTable tableName=query_field','Add the query_field join table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-29T15:07:43','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',353,'EXECUTED','9:0abc329e07ca6746b3e3da79a1bb4fdb','createIndex indexName=idx_query_field_card_id, tableName=query_field','Index query_field.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-02-29T15:08:43','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',354,'EXECUTED','9:27ce36c055a2b252a6c6e52d5f5f1d76','createIndex indexName=idx_query_field_field_id, tableName=query_field','Index query_field.field_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-12T17:16:38','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',355,'EXECUTED','9:ee42f814c124ba84636b9b5fd1c34bdf','dropTable tableName=activity','Drops the `activity` table which is now unused',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-18T16:00:00','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',356,'EXECUTED','9:b659196c654af3fcd883659a23050456','createTable tableName=cache_config','Effective caching #36847',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-18T16:00:01','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',357,'EXECUTED','9:5007337d4de322587ce6056e0b9eac9b','addUniqueConstraint constraintName=idx_cache_config_unique_model, tableName=cache_config','Effective caching #36847',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-21T17:41:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',358,'EXECUTED','9:ecace972ee38bae5dd02e23ff91e2794','addColumn tableName=metabase_table','Add metabase_table.estimated_row_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-22T00:38:28','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',359,'EXECUTED','9:35b509c5f84505752ce3bce23ac9fe7e','createTable tableName=field_usage','Add field_usage table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-22T00:39:28','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',360,'EXECUTED','9:c94534b092f89579385156f18faee569','createIndex indexName=idx_field_usage_field_id, tableName=field_usage','Index field_usage.field_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-24T19:34:11','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',361,'EXECUTED','9:ceac2712d4c61fbbafa21b905ee7cf35','sql','Clean up deprecated view-data and native-query-editing permissions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-25T14:53:00','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',362,'EXECUTED','9:af3b97471147a095314b82f495a76355','addColumn tableName=query_field','Add query_field.direct_reference',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-28T16:30:35','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:41',363,'EXECUTED','9:80c6dcbbfcbfb87727a77bbe98c2e971','customChange','Create internal user',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-03-29T10:00:00','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',364,'EXECUTED','9:abd6ed632eb666eef7c7af2fd4516e4b','addColumn tableName=report_card','Granular cache invalidation',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-09T15:55:19','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',365,'EXECUTED','9:73939d8738beb345395b00486e8be036','addColumn tableName=collection','Add collection.is_sample column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-15T16:30:35','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',366,'EXECUTED','9:ca6732d415696c00b248da78cd63f581','addColumn tableName=report_card','Add report_card.last_used_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-19T17:04:04','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',367,'EXECUTED','9:ceac2712d4c61fbbafa21b905ee7cf35','sql','Clean up deprecated view-data and native-query-editing permissions (again)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T01:04:05','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',368,'EXECUTED','9:3d90e6850923466e481a0d87760652cd','customChange','Delete the old SendPulses job and trigger',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T01:04:06','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',369,'EXECUTED','9:40d0cd8bfa17201ce2a44cf59c2b9c36','customChange','Delete SendPulse Job on downgrade',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T01:04:07','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',370,'EXECUTED','9:5e415a9ca3bb4262eca08aac288b1df2','customChange','Delete InitSendPulseTriggers Job on downgrade',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T03:15:01','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',371,'EXECUTED','9:669daa77b4a7c048fbb8bfb4fee54df0','addColumn tableName=core_user','Add entity_id to core_user',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T03:15:02','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',372,'EXECUTED','9:477fd6e94e5b5bcd818b811928af19ff','addColumn tableName=permissions_group','Add entity_id to permissions_group',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T16:29:31','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',373,'EXECUTED','9:8241c6c3caca2f4eeccfdd157063da58','addColumn tableName=report_card','Add report_card.view_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T16:29:32','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',374,'EXECUTED','9:2df1fd211edddb6c4fdf3a8ba460096d','sql; sql','Populate report_card.view_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T16:29:33','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',375,'EXECUTED','9:c443c22fa32cc1e0dbee3669ef0398ee','addColumn tableName=report_dashboard','Add report_dashboard.view_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T16:29:34','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',376,'EXECUTED','9:0ef640abf0344e1e8a7dd65cf12b2c36','sql; sql','Populate report_dashboard.view_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T16:29:35','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',377,'EXECUTED','9:5873cdd28eb07ce7ea60ab44e9646338','addColumn tableName=metabase_table','Add metabase_table.view_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-25T16:29:36','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',378,'EXECUTED','9:0d5b1e573bfe8924deba0d9bd3fbd8b2','sql; sql','Populate metabase_table.view_count',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-26T09:19:00','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',379,'EXECUTED','9:66c6d4c7d07af47f035b9f5ec8bd4ef8','createTable tableName=user_parameter_value','Added 0.50.0 - Per-user Dashboard Parameter values table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-26T09:25:00','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',380,'EXECUTED','9:2af6f33e022984b2abd41fb0a6820b92','createIndex indexName=idx_user_parameter_value_user_id, tableName=user_parameter_value','Index user_parameter_value.user_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-30T23:57:23','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',381,'EXECUTED','9:19d659847dc567d1abd78734b8672ea9','addColumn tableName=api_key','Add `scope` column to api_key to support SCIM authentication',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-04-30T23:58:24','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',382,'EXECUTED','9:a6914c25365739b16b573067fae3a383','dropNotNullConstraint columnName=user_id, tableName=api_key','Drop NOT NULL constraint on api_key.user_id to support SCIM-scoped API keys',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',383,'EXECUTED','9:e28d26db534e046b411c8fe176c1c0e0','addColumn tableName=task_history','Add task_history.status',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:01','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',384,'EXECUTED','9:c8df0ec666d8c736f83bdb85e446fed1','dropDefaultValue columnName=status, tableName=task_history','Drop default value task_history.status',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:02','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',385,'EXECUTED','9:c9cd34125a3c9445f4d7076527b95589','addDefaultValue columnName=status, tableName=task_history','Add \"started\" as default value for task_history.status, now that backfill is done.',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:03','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',386,'EXECUTED','9:ae3f0bf31f031acc16b351bbaec0a1bf','dropNotNullConstraint columnName=ended_at, tableName=task_history','Drop not null constraint for task_history.ended_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:04','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',387,'EXECUTED','9:20c322e8ee6d62c43ae49d8891f81f89','dropNotNullConstraint columnName=duration, tableName=task_history','Drop not null constraint for task_history.duration',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:05','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',388,'EXECUTED','9:b02406ab39b905df65acccf4bdc82ee1','dropDefaultValue columnName=ended_at, tableName=task_history','Drop default value task_history.ended_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-08T09:00:06','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',389,'EXECUTED','9:7ab667ce198a98ccb03ec77b2f1b3655','addDefaultValue columnName=ended_at, tableName=task_history','Add null as default value for task_history.ended_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-13T16:00:00','filipesilva','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',390,'EXECUTED','9:0a8fee67ae6fe965f6f6824c8e9cb627','createTable tableName=cloud_migration','Create cloud migration',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-14T12:42:42','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',391,'EXECUTED','9:f31e7cb92753232e89fd9ec9cb1d43d5','sql','Create the Trash collection',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-15T13:13:13','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',392,'EXECUTED','9:dd7ad300d978b6eb2a3c7358bfc764cc','customChange','Fix visualization settings for stacked area/bar/combo displays',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-17T19:54:23','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',393,'EXECUTED','9:35cb1f14fe0c01a1eaaa660251c4478c','addColumn tableName=metabase_database','Add metabase_database.uploads_enabled column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-17T19:54:24','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',394,'EXECUTED','9:207fad1b6ed06979a9ca087c8407b881','addColumn tableName=metabase_database','Add metabase_database.uploads_schema_name column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-17T19:54:25','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',395,'EXECUTED','9:5a02e26118488635ae682325df5d74af','addColumn tableName=metabase_database','Add metabase_database.uploads_table_prefix column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-17T19:54:26','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',396,'EXECUTED','9:0838cd63ef7f761cce715c3b6678c799','customChange','Update metabase_database.uploads_enabled value',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-27T15:55:22','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',397,'EXECUTED','9:b533da0f7b26c932cc98ed75a03b96a9','customChange','Create sample content',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-29T14:04:47','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',398,'EXECUTED','9:57ea20d4a4242340845ade618849ab0b','addColumn tableName=report_dashboard','Add `report_dashboard.archived_directly`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-29T14:04:53','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',399,'EXECUTED','9:f2d49221bc5a38267ea6fd5ba8e13820','addColumn tableName=report_card','Add `report_card.archived_directly`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-29T14:04:58','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',400,'EXECUTED','9:cf08bbe2e766f4c5cb1ed3f4ece92691','addColumn tableName=collection','Add `collection.archive_operation_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-29T14:05:01','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',401,'EXECUTED','9:fa5c7371dcbe68f4196f9c64e01fc8cb','addColumn tableName=collection','Add `collection.archived_directly`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-29T18:42:15','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',402,'EXECUTED','9:bfa6f61908025846bcb2e000735d8ff1','sqlFile path=trash/mariadb.sql','Populate `archived_directly` and `archive_operation_id` (MariaDB)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-05-30T16:04:20','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',403,'EXECUTED','9:fffd69cbe22b3b1188733113096c8587','addColumn tableName=recent_views','Add context to recent views table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-06-12T12:33:07','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',404,'EXECUTED','9:de043e7fcb03e940c95f83500364e352','customChange','Decrypt some settings so the next migration runs well',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-06-12T12:33:08','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',405,'EXECUTED','9:0f061ca90d5b37996ce5bb90abcd1b57','sqlFile path=custom_sql/fill_cache_config.pg.sql; sqlFile path=custom_sql/fill_cache_config.my.sql; sqlFile path=custom_sql/fill_cache_config.h2.sql','Copy old cache configurations to cache_config table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-06-12T12:33:09','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',406,'EXECUTED','9:511b3a05a32fd96c296d395fde10ef98','sqlFile path=custom_sql/fill_cache_config_root_fix.my.sql','Fix root cache config for mysql if it is wrong',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-06-20T13:21:30','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',407,'EXECUTED','9:701f958ad945cb61470a790b6ad9481e','dropColumn columnName=permission_id, tableName=sandboxes','Drop permission_id column on sandboxes table to fix down migrations',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-06-28T12:35:50','piranha','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',408,'EXECUTED','9:fd86cac3c83f46ed4daf6fc5fa00ef30','sql','Clean databasechangelog table of migration that was once deleted',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-02T16:48:21','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',409,'EXECUTED','9:28ce5b6d202041ef717ac5947bc4fb35','delete tableName=user_parameter_value','Remove existing user_parameter_value entries as we want to add dashboard_id, and can\'t easily backfill',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-02T16:49:29','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',410,'EXECUTED','9:cc1bfd2b0ce61840000e0e0bad08611b','addColumn tableName=user_parameter_value','Add dashboard_id column to user_parameter_value to keep values unique per dashboard',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-02T16:55:42','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',411,'EXECUTED','9:6238ea514bbc0857c6b48275c43d5247','addForeignKeyConstraint baseTableName=user_parameter_value, constraintName=fk_user_parameter_value_dashboard_id, referencedTableName=report_dashboard','Add fk constraint to user_parameter_value.dashboard_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-02T17:07:15','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',412,'EXECUTED','9:c38bc08b0a03785a33f0276843295750','createIndex indexName=idx_user_parameter_value_dashboard_id, tableName=user_parameter_value','Index user_parameter_value.dashboard_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-09T20:04:00','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',413,'EXECUTED','9:f2facd84bc264990ba214829927027c2','sql','Populate default value for report_card.last_used_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-09T20:04:02','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',414,'EXECUTED','9:8b921a08c6ff86fecae26466b5069b00','addNotNullConstraint columnName=last_used_at, tableName=report_card','Add not null constraint for report_card.last_used_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-07-09T20:04:03','calherries','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',415,'EXECUTED','9:64d09b5ce4c918bba397f5a22ae2d685','sql; sql','Set default for report_card.last_used_at',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-08-08T20:04:03','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',416,'EXECUTED','9:fcb72fa663833a502c30715c318ac51d','createIndex indexName=idx_user_parameter_value_user_id_dashboard_id_parameter_id, tableName=user_parameter_value','Added 0.50.0 - Add index on user_parameter_value(user_id, parameter_id, dashboard_id)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v50.2024-08-27T00:00:00','devurandom','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',417,'EXECUTED','9:e5b5cbec19f0d891adc4fc6953d6f96b','addColumn tableName=metabase_database','Add is_attached_dwh to metabase_database',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-05-13T15:30:57','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',418,'EXECUTED','9:5d7b086700af16eafc23aa7f3612ad2f','addColumn tableName=report_card','Backup of dataset_query rewritten by the metrics v2 migration',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-05-13T16:00:00','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',419,'EXECUTED','9:56d15753f43da998042d2dd8083142c0','customChange','Migrate v1 metrics to v2 metrics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-06-07T12:37:36','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',420,'EXECUTED','9:c609d45bd9a0abf36f42913524a1d9f1','renameColumn newColumnName=explicit_reference, oldColumnName=direct_reference, tableName=query_field','Rename query_field.direct_reference to query_field.indirect_reference',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-06-12T18:53:02','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',421,'EXECUTED','9:127d78800f11c155afc7e849e3f61947','dropIndex indexName=idx_user_id_device_id, tableName=login_history','Drop incorrect index on login_history',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-06-12T18:53:03','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',422,'EXECUTED','9:5354a54455609ea9c038f050004fa33d','createIndex indexName=idx_user_id_device_id, tableName=login_history','Create index on login_history (user_id, device_id)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-08T10:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',423,'EXECUTED','9:7ec2dfbe63acd690ea5f6934f342f775','createTable tableName=channel','Create channel table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-08T10:00:01','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',424,'EXECUTED','9:0d1902196f3e7a14a203f7715d118a23','addColumn tableName=pulse_channel','Create pulse_channel.channel_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-08T10:00:02','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',425,'EXECUTED','9:36ee221d5275e40b776c1fa7cc497b6a','addForeignKeyConstraint baseTableName=pulse_channel, constraintName=fk_pulse_channel_channel_id, referencedTableName=channel','Add fk constraint to pulse_channel.channel_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-09T17:15:43','tsmacdonald','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',426,'EXECUTED','9:8398e415b5f999602b20e9adf5d8cd06','addDefaultValue columnName=explicit_reference, tableName=query_field','Fix default boolean value for query_field.explicit_reference',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-10T12:28:10','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',427,'EXECUTED','9:7da24d94af23ee8e97b07475de39b0fb','addColumn tableName=report_dashboard','Add `last_viewed_at` to dashboards',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-22T15:49:37','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',428,'EXECUTED','9:efa16c248d4954850f0d21e5a0956bb3','addColumn tableName=query_execution','Add embedding_client column to query_execution for metabase embedding SDK analytics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-22T15:49:38','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',429,'EXECUTED','9:2c2159b9f26d2309efe17af96e5fb0ca','addColumn tableName=query_execution','Add embedding_version column to query_execution for metabase embedding SDK analytics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-22T15:49:39','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',430,'EXECUTED','9:faf798a97e07f5dd56fe0da0d20e482d','addColumn tableName=view_log','Add embedding_client column to view_log for metabase embedding SDK analytics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-22T15:49:40','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',431,'EXECUTED','9:d0eadbcc223aecbeb1392f14655b278d','addColumn tableName=view_log','Add embedding_version column to view_log for metabase embedding SDK analytics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-25T11:56:27','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',432,'EXECUTED','9:93c9e40363e38834bb416e220528f79c','delete tableName=query_field','Wipe stale query fields, so we can add new non-nullable columns',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-25T11:57:27','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',433,'EXECUTED','9:98a60b35940430bad5de2a4530c6289f','addColumn tableName=query_field','Add `column` column to query fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-25T11:58:27','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',434,'EXECUTED','9:902020d5c41e4129ef80b8a0e3a9022e','addColumn tableName=query_field','Add `table` column to query fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-25T12:02:21','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',435,'EXECUTED','9:2a2843719eda91b32dfdac226874fe70','dropNotNullConstraint columnName=field_id, tableName=query_field','Make `field_id` nullable on query fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-26T11:56:27','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',436,'EXECUTED','9:ee8dd764f89b82a1363f22fcab6b5a30','addColumn tableName=query_field','Add `table_id` column to query fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T09:22:12','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',437,'EXECUTED','9:477cafdd410ded3b6ea5a11251f1a2ab','createTable tableName=query_analysis','Add the query_analysis table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T09:23:12','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',438,'EXECUTED','9:fc67e2d6e3a63df08b50ac7883a75f9d','createIndex indexName=idx_query_analysis_card_id, tableName=query_analysis','Index query_analysis.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T09:24:13','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:42',439,'EXECUTED','9:afe0238f708b1c60269b7f454048180d','createTable tableName=query_table','Add the query_table join table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T09:25:13','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',440,'EXECUTED','9:19ea369d0ed744e15e35b59144135847','createIndex indexName=idx_query_table_card_id, tableName=query_table','Index query_table.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T09:25:14','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',441,'EXECUTED','9:9fc98c5d14def60d9534c00385b2c2d6','createIndex indexName=idx_query_table_analysis_id, tableName=query_table','Index query_table.analysis_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T09:25:15','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',442,'EXECUTED','9:4e4a1f16e79095dc5876acb214ab3f02','createIndex indexName=idx_query_table_table_id, tableName=query_table','Index query_table.table_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T10:03:27','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',443,'EXECUTED','9:93c9e40363e38834bb416e220528f79c','delete tableName=query_field','Wipe stale query fields, so we can add new non-nullable columns',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T10:04:13','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',444,'EXECUTED','9:d09cafce1250670b401e787667c80b24','addColumn tableName=query_field','Put Query Fields under a parent Query Analysis record',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-07-29T11:25:13','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',445,'EXECUTED','9:381fece783b9009b1fb444a912c63146','createIndex indexName=idx_query_field_analysis_id, tableName=query_field','Index query_field.analysis_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-02T11:56:27','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',446,'EXECUTED','9:d2ae89beeb0a9d68d763b6c50a6c997d','addColumn tableName=query_field','Add `schema` column to query fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-02T12:02:21','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',447,'EXECUTED','9:43aed92161d42e1046f0f239f35a6fb2','dropNotNullConstraint columnName=table, tableName=query_field','Make `table` nullable on query fields',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-05T16:00:00','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',448,'EXECUTED','9:9f6b8171972d8edc7d2595d2b1f0b32d','addColumn tableName=report_card','Add source card reference to report_card to support metrics based models and questions',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-05T16:00:01','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',449,'EXECUTED','9:a53d92e2841fb100bbe0209d2e3d1fd2','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_source_card_id_ref_report_card_id, referencedTableName=report_card','Add FK constraint to report_card.source_card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-05T16:00:02','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',450,'EXECUTED','9:925fbff8568f735824d8e8911d0322a4','createIndex indexName=idx_report_card_source_card_id, tableName=report_card','Index report_card.source_card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-07T10:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',451,'EXECUTED','9:40fa7076a79c309d740fc8229dc4bba9','customChange','Remove field refs from report_card.visualization_settings.column_settings',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-07T11:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',452,'EXECUTED','9:d9f2dba0d4e4407cfe499595e709e6d5','customChange','Remove field refs from report_dashboardcard.visualization_settings.column_settings',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-08-26T08:53:46','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',453,'EXECUTED','9:430d21609a88dd82dd6c426d8eceef52','addColumn tableName=query_analysis','Add a status column to track the progress and outcome of query analysis',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-09-03T16:54:18','adam-james','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',454,'EXECUTED','9:7f8ca08105a9125d2fe9a8e205ef5812','addColumn tableName=pulse_card','Add pivot_results to pulse_card',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-09-09T15:11:16','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',455,'EXECUTED','9:b4758407319ab0bef2ba3af47429ca8e','createIndex indexName=idx_collection_type, tableName=collection','add an index for `collection.type`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-09-26T03:01:00','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',456,'MARK_RAN','9:d888841572291662ce45c6611de22747','sql; sql; sql','iff enable-embedding is set, copy -> enable-embedding-interactive',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-09-26T03:02:00','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',457,'MARK_RAN','9:ce707c8e24c2571d3067f02fbffee179','sql; sql; sql','iff enable-embedding is set, copy -> enable-embedding-static',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-09-26T03:03:00','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',458,'MARK_RAN','9:92cbe740e3610a972ab9eaaaf3d9ee1f','sql; sql; sql','iff enable-embedding is set, copy -> enable-embedding-sdk',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-09-26T03:04:00','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',459,'MARK_RAN','9:64cbae704a4de03a2e75cb412d860906','sql; sql; sql','iff embedding-app-origin is set, copy -> embedding-app-origins-interactive',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-10-24T14:23:58','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',460,'EXECUTED','9:c2b9f73b0862da7aceb35aa91e448c46','dropNotNullConstraint columnName=card_id, tableName=persisted_info','Drop not null constraint on persisted_info.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-10-24T14:24:59','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',461,'EXECUTED','9:86f699ca7caabe7a10761877e331e9b5','dropForeignKeyConstraint baseTableName=persisted_info, constraintName=fk_persisted_info_card_id','Drop foreign key constraint on persisted_info.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v51.2024-10-24T14:25:01','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',462,'EXECUTED','9:4bee13ab60d88e862ae23154dea0ce80','addForeignKeyConstraint baseTableName=persisted_info, constraintName=fk_persisted_info_card_id, referencedTableName=report_card','Re-add nullable foreign key constraint on persisted_info.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',463,'EXECUTED','9:dc7583aee633be21b2aabb989434e6bb','createTable tableName=notification','Create the notification table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:01','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',464,'EXECUTED','9:10e27de1a6f7a51044f414ba2dd75c1b','createTable tableName=notification_subscription','Create the notification_subscription table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:02','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',465,'EXECUTED','9:ec33277caacf1d2169f935848e6db2fd','createIndex indexName=idx_notification_subscription_notification_id, tableName=notification_subscription','index on notification_subscription.notification_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:03','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',466,'EXECUTED','9:da8820479c02a92a9d817bf899e3d5f4','createTable tableName=channel_template','Create the channel_template table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:04','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',467,'EXECUTED','9:9ca07c3c68d3e112f8533cbe3d043cdb','createTable tableName=notification_handler','Create the notification_handler table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:05','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',468,'EXECUTED','9:22d1753b254670c9194b59d6314f6da8','addForeignKeyConstraint baseTableName=notification_handler, constraintName=fk_notification_handler_template_id, referencedTableName=channel_template','Add fk constraint to notification_handler.template_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:06','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',469,'EXECUTED','9:cd9a572043786add50c230f4d300bb1d','createIndex indexName=idx_notification_handler_notification_id, tableName=notification_handler','index on notification_handler.notification_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:07','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',470,'EXECUTED','9:62b43ed093079d842b5699f3d8c63952','createIndex indexName=idx_notification_handler_channel_id, tableName=notification_handler','index on notification_handler.channel_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:08','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',471,'EXECUTED','9:940d1263fed6ffcb1e2425c6aa5f4a53','createIndex indexName=idx_notification_handler_template_id, tableName=notification_handler','index on notification_handler.template_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:09','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',472,'EXECUTED','9:80ac8ef41612a856bb6cf41f7cc10ea3','createTable tableName=notification_recipient','Create the notification_recipient table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:10','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',473,'EXECUTED','9:f398c5f6b9fcc91f4363fdc0cfad4a88','createIndex indexName=idx_notification_recipient_notification_handler_id, tableName=notification_recipient','index on notification_recipient.notification_handler_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:11','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',474,'EXECUTED','9:bb183e39f47f13a9d27499bd23372f9f','createIndex indexName=idx_notification_recipient_user_id, tableName=notification_recipient','index on notification_recipient.user_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:12','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',475,'EXECUTED','9:3debeaec6c6e36018ce89946621783bf','createIndex indexName=idx_notification_recipient_permissions_group_id, tableName=notification_recipient','index on notification_recipient.permissions_group_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-09-05T08:00:13','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',476,'EXECUTED','9:d513d9216f89c0f91e9ad50c27010743','dropColumn columnName=entity_id, tableName=channel_template','Drop the channel_template.entity_id column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-10-15T08:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',477,'EXECUTED','9:643d70bfb0eeeb2ad4cc9434e815b65e','addColumn tableName=notification_subscription','add notification_subscription.cron_schedule',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-10-26T18:42:42','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',478,'EXECUTED','9:c4dd73a9befb84508e28840175baf4cc','customChange','Add stage-number to dimension targets in parameter_mappings',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-11-12T15:13:18','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',479,'EXECUTED','9:c11f0a67c8e131ad525d5d4e89c6b595','customChange','Add stage-number to dimension targets in visualization_settings',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-12-03T15:55:22','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',480,'EXECUTED','9:4597e243d33ee38808199c9d65207931','customChange','Create New and improved Sample Content',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-12-10T10:28:16','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',481,'EXECUTED','9:4e17559a6aac1024e20978f1fa1f3847','addColumn tableName=report_card','Add `report_card.dashboard_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-12-10T10:28:21','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',482,'EXECUTED','9:d47b7e9ec18a27f5adf6e9aa2e615bbc','addForeignKeyConstraint baseTableName=report_card, constraintName=fk_report_card_ref_dashboard_id, referencedTableName=report_dashboard','Make `report_card.dashboard_id` a foreign key',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-12-10T10:28:24','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',483,'EXECUTED','9:393772bdd87d63f2651329e244807da9','createIndex indexName=idx_report_card_dashboard_id, tableName=report_card','Add an index for `report_card.dashboard_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-12-16T09:19:00','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',484,'EXECUTED','9:b4897f860716942e429226af87a42af1','createTable tableName=search_index_metadata','Metadata about search indexes',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2024-12-16T09:20:00','crisptrutski','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',485,'EXECUTED','9:38a17ebc2e74dc51a5b91b9a5670ca26','addUniqueConstraint constraintName=idx_search_index_metadata_unique_status, tableName=search_index_metadata','Protection against concurrent creation or promotion of indexes.',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2025-01-05T00:00:01','escherize','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',486,'EXECUTED','9:2113c5deb61d232d2b67096356db0887','sql; sql; sql','set enable-embedding-sdk false when embedding-app-origins-sdk value exists',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v52.2025-05-28T00:00:01','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',487,'EXECUTED','9:019790c7bde23170af9d924e2495ccbe','sql; sql','set perms/download-results to no when a table has perms/view-data blocked',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-02T16:21:15','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',488,'EXECUTED','9:05fdc9fe26d2bd3db7ef65aa97416436','addColumn tableName=cache_config','Add cache_config.refresh_automatically column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-02T17:21:16','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',489,'EXECUTED','9:e91bb6c72e559ab66eef43f5f3f5bcc4','addColumn tableName=query_execution','Add query_execution.parameterized column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-10T10:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',490,'EXECUTED','9:58b191cde441ea1ad86a0095903cd98e','addColumn tableName=notification','add notification.internal_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-10T10:00:10','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',491,'EXECUTED','9:0b7696a2ff1cceb7e83bb076e29b4f31','sql; sql; sql','Truncate the notification tables',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-20T19:53:50','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',492,'EXECUTED','9:a0d5aaaa9ba4829e8a1863763b31d7bf','createTable tableName=user_key_value','add a table for user-level KV. This is intended for use as a lightweight mechanism for the frontend to be able to mark things as seen, unseen, dismissed, etc',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-20T19:53:59','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',493,'EXECUTED','9:cc1413844fe926c3f05ca62713b9a6eb','addUniqueConstraint constraintName=unique_user_key_value_user_id_namespace_key, tableName=user_key_value','Add a unique constraint for user_id,namespace,key',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-27T17:33:54','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',494,'EXECUTED','9:1c1cbbe3f486a5e516c51b782e374c91','insert tableName=setting','Adds encryption-check setting to encryption management',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2024-12-27T20:17:23','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',495,'EXECUTED','9:9a71bb08c4d107dad42dced21fa5c2fa','dropNotNullConstraint columnName=refresh_automatically, tableName=cache_config','Drop unnecessary NOT NULL constraint from cache_config.refresh_automatically column',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2025-01-03T19:07:39','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',496,'EXECUTED','9:dacae1717315dea206c66b71cfdcfefe','addColumn tableName=core_user','Add `deactivated_at` column to the `core_user` table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2025-02-20T04:49:39','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',497,'EXECUTED','9:2b33f5f97c46f5e536426a48f8dcd420','sql','remove unused cards in usage analytics',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2025-04-02T15:25:04','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',498,'EXECUTED','9:d7ad7846a452a25134dc4fce0c5a1327','createTable tableName=metabase_cluster_lock','create new cluster lock table for instance coordination',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v53.2025-05-06T16:03:19','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:43',499,'EXECUTED','9:aeb638e9f79bc2c3920fdf05ade24ed1','modifyDataType columnName=model_pk, tableName=model_index_value','Support indexing of values with bigint ids',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-01-30T16:10:55','bshepherdson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',500,'EXECUTED','9:db7dd5074e0f15b84cacf099d6267f0c','addColumn tableName=metabase_database','Add `entity_id` column to the `metabase_database` table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-01-30T16:13:20','bshepherdson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',501,'EXECUTED','9:50e186623b989b1f1c88f179350e6649','addColumn tableName=metabase_table','Add `entity_id` column to the `metabase_table` table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-01-30T16:14:02','bshepherdson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',502,'EXECUTED','9:64c5d7cc3bc5205bdcc6db30e65c2058','addColumn tableName=metabase_field','Add `entity_id` column to the `metabase_field` table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',503,'EXECUTED','9:fcba2955c00cabca7f67fa984b599ce3','addColumn tableName=notification','add notification.payload_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:01:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',504,'EXECUTED','9:c45661c1a8b00ad058d824750daf1b5b','createTable tableName=notification_card','create the notification_card table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:03:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',505,'EXECUTED','9:7ec312ee313b1190369789d35e3680db','addColumn tableName=notification','add notification.creator_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:04:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',506,'EXECUTED','9:20c5b43f69fdfdc236915d69d6a4c150','addForeignKeyConstraint baseTableName=notification, constraintName=fk_notification_creator_id, referencedTableName=core_user','add fk constraint to notification.creator_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:04:01','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',507,'EXECUTED','9:5cf267bfb5965a7ccd84c3dc23032131','createIndex indexName=idx_notification_creator_id, tableName=notification','Add an index for `notification.creator_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:04:02','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',508,'EXECUTED','9:6936e3e0c7dba6dea935d1f89487dd8d','createIndex indexName=idx_notification_card_card_id, tableName=notification_card','Add an index for `notification_card.card_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:05:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',509,'EXECUTED','9:84f6ceaa6e5c0fb657596b434ecd7ae4','customChange','Migrate alert to notification',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:06:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',510,'EXECUTED','9:a7ca957848b7a2d82c733ec390529b49','sql','Delete all the migrated alerts from notification table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-02-14T08:07:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',511,'EXECUTED','9:3422f286330b44a3cfa9a89680513470','sqlFile path=instance_analytics_views/alerts/v2/postgres-alerts.sql; sqlFile path=instance_analytics_views/alerts/v2/mysql-alerts.sql; sqlFile path=instance_analytics_views/alerts/v2/h2-alerts.sql','Update view v_alerts to read from notification tables',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-06T16:55:15','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',512,'EXECUTED','9:76ee2395577d79f70d04289d61f3eea1','addColumn tableName=core_session','Replacing storing the session key in the \"id\" column in favor of storing a new hashed version',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-06T16:55:16','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',513,'EXECUTED','9:806a5600ea3a191b80ba2e4442ec8e95','createIndex indexName=idx_core_session_key_hashed, tableName=core_session','Creating index on the hashed session key',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-11T16:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',514,'EXECUTED','9:12484ad947fcd07ae4a8f31da05e4e51','addColumn tableName=notification_subscription','add notification_subscription.ui_display_type',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-17T18:52:44','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',515,'EXECUTED','9:57f13442c81fe0ab663b51555403a3ad','sql; sql; sql','Migrating zh site locales to zh_CN',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-17T18:52:59','noahmoss','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',516,'EXECUTED','9:b75be105a2d1deb4795aa4debaffd3e0','sql','Migrating zh user locales to zh_CN',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-25T16:34:12','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',517,'EXECUTED','9:cbdb4ba2a61b2b8de60b1b27f12b4202','createIndex indexName=idx_field_usage_query_execution_id, tableName=field_usage','Add index to field_usage query_execution_id column to support faster deletes',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-27T17:52:01','luizarakaki','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',518,'EXECUTED','9:b4d2512c6f9fbf521136ac9d8d926339','sqlFile path=instance_analytics_views/tasks/v2/postgres-tasks.sql; sqlFile path=instance_analytics_views/tasks/v2/mysql-tasks.sql; sqlFile path=instance_analytics_views/tasks/v2/h2-tasks.sql','updating v_tasks to add new `status` field',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-03-28T11:22:01','luizarakaki','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',519,'EXECUTED','9:745dec6b594d09ed30221b619240b417','sqlFile path=instance_analytics_views/content/v3/postgres-content.sql; sqlFile path=instance_analytics_views/content/v3/mysql-content.sql; sqlFile path=instance_analytics_views/content/v3/h2-content.sql','updating v_content to add new `is_verified` field',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-05-13T21:46:53','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',520,'EXECUTED','9:21402ea14a538e9b20dd7820811d09df','addColumn tableName=search_index_metadata','Add language to index metadata',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-05-13T21:46:54','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',521,'EXECUTED','9:975a0631440f7db86d00016c0e9e5c97','dropUniqueConstraint constraintName=idx_search_index_metadata_unique_status, tableName=search_index_metadata','Preparing to replace index',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-05-13T21:46:55','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',522,'EXECUTED','9:92951ade22d26ee3ec1e963e02f4c56d','addUniqueConstraint constraintName=idx_search_index_metadata_unique_status, tableName=search_index_metadata','Protection against concurrent creation or promotion of indexes.',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v54.2025-05-26T20:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',523,'EXECUTED','9:0faff4d7a23bf36cd4a7c1e0b4e1f071','sqlFile path=instance_analytics_views/alerts/v3/postgres-alerts.sql; sqlFile path=instance_analytics_views/alerts/v3/mysql-alerts.sql; sqlFile path=instance_analytics_views/alerts/v3/h2-alerts.sql','Update view v_alerts to correectly classify by the minute and custom schedule',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-03-24T16:28:41','bshepherdson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',524,'EXECUTED','9:626ff91ae3957744770f827df8fc8bc7','addColumn tableName=report_card','Add report_card.card_schema',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-03-24T16:36:19','bshepherdson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',525,'EXECUTED','9:00482d7c26d04be9cb0b9890b3b66d01','createIndex indexName=idx_report_card_card_schema, tableName=report_card','Creating index on the card_schema',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-01T07:17:52','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',526,'EXECUTED','9:8b0c6952e6b269348372d020bd366da6','createTable tableName=db_router','Add `db_router` table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-01T07:18:02','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',527,'EXECUTED','9:dca2e3682baf75ae2e95f6b546b48f33','addColumn tableName=metabase_database','Add self-referential foreign key `router_database_id` to metabase_database',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-01T07:18:47','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',528,'EXECUTED','9:d27d55cfc7bdbc40283e2b2695017e7c','addUniqueConstraint constraintName=idx_unique_metabase_database_router_database_id_name, tableName=metabase_database','add an index for `metabase_database.router_database_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-01T07:18:52','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',529,'EXECUTED','9:063810c5236fa959d4a922bebc7b13c3','addForeignKeyConstraint baseTableName=metabase_database, constraintName=fk_metabase_database_metabase_database_id, referencedTableName=metabase_database','Add foreign key for `router_database_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-17T08:44:39','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',530,'EXECUTED','9:812042bec6127998c599af027634366b','addColumn tableName=permissions_group','Add permissions_group.magic_group_type',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-17T08:47:19','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',531,'EXECUTED','9:2a0bba183bbcf86ed99dde6f35c14581','sql','Set type on existing permissions groups',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-22T05:42:48','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',532,'EXECUTED','9:bf3c619b7ff927a7a4e00f6fe25e2a66','addColumn tableName=permissions_group','Add `permissions_group.is_tenant_group`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-04-22T05:54:51','johnswanson','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',533,'EXECUTED','9:c39a697064b3b19107f226d71fe6ef47','addColumn tableName=core_user','Add `core_user.tenant_id`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-02T08:21:44','lbrdnk','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',534,'EXECUTED','9:2d11303b0b4d68921271bf4314c6c9af','update tableName=metabase_field','Migrate hacked semantic types',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T01:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',535,'EXECUTED','9:6da50dccf1eaa40d0f8cbfce4b6de943','sql','Make metabase_table.name and schema use case-sensitive collation for MySQL',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T02:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',536,'EXECUTED','9:5ded2395555df6d2549cb129c11c2d1a','addColumn tableName=metabase_table','Add metabase_table.is_defective_duplicate',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T03:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',537,'EXECUTED','9:bece48e1dd30c59d4dae56346363f5b4','sql','Compute metabase_table.is_defective_duplicate based on (db_id, schema, name) uniqueness',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T04:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',538,'EXECUTED','9:645d60f2f8bbab6846c0d6f8e7238c2a','sql; sql; sql','Add metabase_table.unique_table_helper to create an index that ignores EXISTING duplicates',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T05:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',539,'EXECUTED','9:848d1cb748064b5de423139fbbbc2876','addUniqueConstraint constraintName=idx_unique_table, tableName=metabase_table','Add unique constraint on metabase_table(db_id, name, unique_table_helper)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T16:46:48','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',540,'EXECUTED','9:f830de116b3a7c515fd226565b8aeda2','createTable tableName=metabot','Add metabot table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T16:47:48','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',541,'EXECUTED','9:985a061b5c108d1e500f1761b5dffae0','createTable tableName=metabot_entity','Add metabot entity table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T16:48:48','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',542,'EXECUTED','9:4b5946359e43340228452012bec52c56','createIndex indexName=idx_metabot_entity_metabot_id, tableName=metabot_entity','Add index on metabot_entity.metabot_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T16:49:49','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',543,'EXECUTED','9:66f3053aea61a25d1d5a2fa8f991de86','addForeignKeyConstraint baseTableName=metabot_entity, constraintName=fk_metabot_entity_metabot_id, referencedTableName=metabot','Add foreign key constraint on metabot_entity.metabot_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-19T16:50:49','edpaget','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',544,'EXECUTED','9:7d29d1041b3aab6769cce25ac197c47b','sql','Create the default metabot instances',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-20T10:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',545,'EXECUTED','9:1ed306a6b2573b7b140275e5319fae2c','dropColumn columnName=entity_id, tableName=metabase_database','Drop metabase_database.entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-20T11:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',546,'EXECUTED','9:b03020b86a754abc46edca465f91eb6f','dropColumn columnName=entity_id, tableName=metabase_table','Drop metabase_table.entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-05-20T12:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',547,'EXECUTED','9:70285cb34c7e9e4dd25f322a46e21c04','dropColumn columnName=entity_id, tableName=metabase_field','Drop metabase_field.entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-03T16:52:38','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',548,'EXECUTED','9:49a6fa37a451fc42346df630593da369','createTable tableName=metabot_prompt','Add metabot prompt table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-03T16:52:48','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',549,'EXECUTED','9:5835d42901b231620d0f362336413a2e','createIndex indexName=idx_metabot_prompt_metabot_entity_id, tableName=metabot_prompt','Add index on metabot_prompt.metabot_entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-03T16:52:58','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',550,'EXECUTED','9:3b4862eead84cc5f78edc3b6aa6fdca0','addForeignKeyConstraint baseTableName=metabot_prompt, constraintName=fk_metabot_prompt_metabot_entity_id, referencedTableName=metabot_entity','Add foreign key constraint on metabot_prompt.metabot_entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-03T16:53:08','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',551,'EXECUTED','9:7bc9b462c66bb48f2726600197356b46','createIndex indexName=idx_metabot_prompt_card_id, tableName=metabot_prompt','Add index on metabot_prompt.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-03T16:53:18','metamben','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',552,'EXECUTED','9:1bb14175116fb9ac9786f7360beb2dca','addForeignKeyConstraint baseTableName=metabot_prompt, constraintName=fk_metabot_prompt_card_id, referencedTableName=report_card','Add foreign key constraint on metabot_prompt.card_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-09T01:00:00','metabase-dev','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',553,'EXECUTED','9:1d36a054fca92e54b470c8c808733b59','addColumn tableName=report_dashboardcard','Add inline_parameters to report_dashboardcard for card-level parameter display',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-16T17:36:06','nvoxland','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',554,'EXECUTED','9:7a37a4e4638085400ecf49cb0bebb7de','empty','In v55 we renamed the `metabase.app_db` namespace which changed checksums.\nThe validCheckSum=ANY allows forward migration, but a rollback doesn\'t reset the checksums to the value old versions expect',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-06-23T11:29:00','bronsa','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',555,'EXECUTED','9:7c682758663a1bc832e2501236250999','createTable tableName=metabase_field_user_settings','Added 0.55.0 -- add metabase_field_user_settings',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-07-02T10:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',556,'EXECUTED','9:53305f69b1bac2ae7a39dbcb26dfe038','sql; sql; sql','Update `has_field_values` on FK fields to match PKs. Before this change, the FE always used the corresponding\nPKs fields for FKs fields in dashboards. Now the FE does not swap fields, and we need to set `has_field_values`\nto prevent any changes in...',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-07-04T15:00:00','qnkhuat','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',557,'EXECUTED','9:88f8f961e14f50ea00f2cfb1b8d6931f','sqlFile path=instance_analytics_views/alerts/v4/postgres-alerts.sql; sqlFile path=instance_analytics_views/alerts/v4/mysql-alerts.sql; sqlFile path=instance_analytics_views/alerts/v4/h2-alerts.sql','fix v_alerts where cron string contains slash (#60427)',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v55.2025-07-21T10:00:00','ranquild','migrations/001_update_migrations.yaml','2025-10-20 14:38:44',558,'EXECUTED','9:754bb2b7ba39ccc30392426d353d4d52','update tableName=metabase_field','Remove semantic_type when base_type is type/Boolean and semantic_type is type/Category',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-05T16:48:48','edpaget','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',559,'EXECUTED','9:45cd51a44f841a846f5c4f32198cde43','output','Placeholder migration that makes sure the downgrade check doesn\'t fail',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-06T20:11:53','nvoxland','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',560,'EXECUTED','9:f8d9c6e62cb855043f474cb9e1e841cf','dropForeignKeyConstraint baseTableName=query_table, constraintName=fk_query_table_analysis_id','Drop column query_table.analysis_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-06T20:11:54','nvoxland','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',561,'EXECUTED','9:8b6a2594f9e250d8dcc84a4434bd050e','dropForeignKeyConstraint baseTableName=query_field, constraintName=fk_query_field_analysis_id','Drop column query_field.analysis_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-06T20:11:55','nvoxland','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',562,'EXECUTED','9:5d7fdda839eecf9b8c1dfc079669d8f6','dropColumn columnName=analysis_id, tableName=query_table','Drop column query_table.analysis_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-06T20:11:56','nvoxland','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',563,'EXECUTED','9:97e63b1c5542f3b07868225afe9d6261','dropColumn columnName=analysis_id, tableName=query_field','Drop column query_field.analysis_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-06T20:11:58','nvoxland','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',564,'EXECUTED','9:09a65c069c787aecddc2574e13451a43','dropTable tableName=query_analysis','Drop now-unused query_analysis table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-06-13T15:00:00','rafpaf','migrations/056_update_migrations.yaml','2025-10-20 14:38:44',565,'EXECUTED','9:6f449668c978098d7d3af3658b512b5e','createTable tableName=content_translation','Create content translation table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-07-07T08:02:43','johnswanson','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',566,'EXECUTED','9:c6fa351fa66a357d13744e782a9be43e','sqlFile path=instance_analytics_views/users/v3/postgres-users.sql; sqlFile path=instance_analytics_views/users/v3/mysql-users.sql; sqlFile path=instance_analytics_views/users/v3/h2-users.sql','improve full names in usage analytics - update view `v_users`',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-07-17T20:11:55','edpaget','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',567,'EXECUTED','9:2bd2310dd11d48c929bd87f30064425f','addColumn tableName=core_user','Add column to user for jwt-set attributes',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-07-17T20:11:56','edpaget','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',568,'EXECUTED','9:776c6e785afd5b5028cb14ef482d0c16','sql','Add sync login_attributes with jwt_attributes, we need to replace jwt_attributes\nwith login attributes for users with sso_source jwt so that they will get the new\nbehavior where login_attributes can override jwt_attributes',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-07-30T10:35:00','bronsa','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',569,'EXECUTED','9:5f8a4a352283975f674cea1632b3797b','addColumn tableName=metabase_table','Add deactivated_at column to metabase_table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-07-30T10:35:01','bronsa','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',570,'EXECUTED','9:0a550a6d25cdb8753691141cc9ee0fca','addColumn tableName=metabase_table','Add archived_at column to metabase_table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-07-30T10:43:00','bronsa','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',571,'EXECUTED','9:66515168c773dfee91b04ba65c4a7c9b','sql','Backfill deactivated_at for existing inactive tables',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-01T11:11:00','bronsa','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',572,'EXECUTED','9:7a37a4e4638085400ecf49cb0bebb7de','empty','Migration to allow rollbacking of archived tables when possible',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:00','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',573,'EXECUTED','9:799cd0116c5114f68e0c9d578d5a9d3b','addColumn tableName=metabot','Add use_verified_content column to metabot',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:01','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',574,'EXECUTED','9:ccd14c5290fa659871fa15c64a3745eb','addColumn tableName=metabot','Add collection_id column to metabot',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:02','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',575,'EXECUTED','9:402e435233999202361c676841218b28','addColumn tableName=metabot_prompt','Add metabot_id column to metabot_prompt',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:03','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',576,'EXECUTED','9:f2022d1cb2ba65d000350550211b7171','sql','Migrate collection references from metabot_entity to metabot.collection_id with exception to the default metabot instance',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:04','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',577,'EXECUTED','9:52e7780e4ce7deac69929833e0fd33ae','sql','Migrate metabot_prompt.metabot_entity_id to metabot_prompt.metabot_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:05','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',578,'EXECUTED','9:4e633c711778ffaa0ee8b73f9541a4de','addNotNullConstraint columnName=metabot_id, tableName=metabot_prompt','Add not null constraint to metabot_prompt.metabot_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:06','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',579,'EXECUTED','9:61b9858f04faeb7233cd3c8f59be065d','createIndex indexName=idx_metabot_prompt_metabot_id, tableName=metabot_prompt','Add index on metabot_prompt.metabot_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:07','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',580,'EXECUTED','9:e299424b42fd8ff29c1621543edeaf7f','addForeignKeyConstraint baseTableName=metabot_prompt, constraintName=fk_metabot_prompt_metabot_id, referencedTableName=metabot','Add foreign key constraint metabot_prompt.metabot_id -> metabot.id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:08','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',581,'EXECUTED','9:deac919a1544e048aa0f92e37d3bda84','dropForeignKeyConstraint baseTableName=metabot_prompt, constraintName=fk_metabot_prompt_metabot_entity_id','Drop foreign key constraint metabot_prompt.metabot_entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:09','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',582,'EXECUTED','9:696bb984da44f4abf646c387d0413033','dropIndex indexName=idx_metabot_prompt_metabot_entity_id, tableName=metabot_prompt','Drop index on metabot_prompt.metabot_entity_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:10','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',583,'EXECUTED','9:53b7911e80ef78fdb878396ec43fce38','dropColumn columnName=metabot_entity_id, tableName=metabot_prompt','Drop metabot_entity_id column from metabot_prompt',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-08-22T12:00:11','sloansparger','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',584,'EXECUTED','9:4074ede3ea6eb59f1bf8dd8434cf2aaf','dropTable tableName=metabot_entity','Remove metabot_entity table as collection association is now direct',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-03T17:15:00','piranha','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',585,'EXECUTED','9:459df62d8f197eaf6bf546c4346f6277','createTable tableName=metabot_conversation','metabot_conversation table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-03T17:15:01','piranha','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',586,'EXECUTED','9:a4828143f4001ead093747cf061a0774','createIndex indexName=idx_metabot_conversation_user_id, tableName=metabot_conversation','Index on metabot_conversation.user_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-03T17:16:00','piranha','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',587,'EXECUTED','9:75ea4a33a7c710fddee92aaeac07aa09','createTable tableName=metabot_message','metabot_message table',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-03T17:16:01','piranha','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',588,'EXECUTED','9:2cb99dc90ed31967bb57cff184278c2c','createIndex indexName=idx_metabot_message_conversation_id, tableName=metabot_message','Index on metabot_message.conversation_id',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-16T18:20:00','lbrdnk','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',589,'EXECUTED','9:bd8f21244e83cb38c847d6a47a23993f','createTable tableName=semantic_search_token_tracking','Semantic search token usage tracking',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-19T15:33:18','lbrdnk','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',590,'EXECUTED','9:1dc2c0d19ec0b6d3b6ff0e59341234e2','createIndex indexName=idx_semantic_search_token_tracking_created_at, tableName=semantic_search_token_tracking','Semantic search token usage tracking',NULL,'4.33.0',NULL,NULL,'0971108001'),
('v56.2025-09-24T11:27:00','piranha','migrations/056_update_migrations.yaml','2025-10-20 14:38:45',591,'EXECUTED','9:1d2203d3c5f055cc728d0382ff30f447','createIndex indexName=idx_report_card_type, tableName=report_card','Add an index on report_card.type since we\'re using this field for filtering all the time',NULL,'4.33.0',NULL,NULL,'0971108001');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_BLOB_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_CRON_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES
('MetabaseScheduler','metabase.task.anonymous-stats.trigger','DEFAULT','0 53 20 * * ? *','GMT'),
('MetabaseScheduler','metabase.task.creator-sentiment-emails.trigger','DEFAULT','0 0 2 ? * 7','GMT'),
('MetabaseScheduler','metabase.task.follow-up-emails.trigger','DEFAULT','0 0 12 * * ? *','GMT'),
('MetabaseScheduler','metabase.task.refresh-channel-cache.trigger','DEFAULT','0 2 0/4 1/1 * ? *','GMT'),
('MetabaseScheduler','metabase.task.session-cleanup.trigger','DEFAULT','0 0 2 * * ? *','GMT'),
('MetabaseScheduler','metabase.task.sync-and-analyze.trigger.2','DEFAULT','0 46 * * * ? *','GMT'),
('MetabaseScheduler','metabase.task.task-history-cleanup.trigger','DEFAULT','0 0 0 * * ? *','GMT'),
('MetabaseScheduler','metabase.task.truncate-audit-tables.trigger','DEFAULT','0 0 */12 * * ? *','GMT'),
('MetabaseScheduler','metabase.task.update-field-values.trigger.2','DEFAULT','0 0 23 * * ? *','GMT'),
('MetabaseScheduler','metabase.task.upgrade-checks.trigger','DEFAULT','0 44 0,12 * * ? *','GMT');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `SCHED_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` bit(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` bit(1) NOT NULL,
  `IS_NONCONCURRENT` bit(1) NOT NULL,
  `IS_UPDATE_DATA` bit(1) NOT NULL,
  `REQUESTS_RECOVERY` bit(1) NOT NULL,
  `JOB_DATA` blob DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `QRTZ_JOB_DETAILS` VALUES
('MetabaseScheduler','metabase.task.anonymous-stats.job','DEFAULT',NULL,'metabase.analytics.task.send_anonymous_stats.SendAnonymousUsageStats',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.creator-sentiment-emails.job','DEFAULT',NULL,'metabase.product_feedback.task.creator_sentiment_emails.CreatorSentimentEmail',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.email-remove-legacy-pulse.job','DEFAULT',NULL,'metabase.pulse.task.email_remove_legacy_pulse.EmailRemoveLegacyPulse',0x01,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.follow-up-emails.job','DEFAULT',NULL,'metabase.product_feedback.task.follow_up_emails.FollowUpEmail',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.IndexValues.job','DEFAULT','Indexed Value Refresh task','metabase.indexed_entities.task.index_values.ModelIndexRefresh',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.notification.init-notification-triggers.job','DEFAULT',NULL,'metabase.notification.task.send.InitNotificationTriggers',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.notification.send.job','DEFAULT','Send Notification','metabase.notification.task.send.SendNotification',0x01,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.PersistencePrune.job','DEFAULT','Persisted Model prune task','metabase.model_persistence.task.persist_refresh.PersistencePrune',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.PersistenceRefresh.job','DEFAULT','Persisted Model refresh task','metabase.model_persistence.task.persist_refresh.PersistenceRefresh',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.refresh-channel-cache.job','DEFAULT',NULL,'metabase.channel.task.refresh_slack_channel_user_cache.RefreshCache',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.search-index.reindex.job','DEFAULT',NULL,'metabase.search.task.search_index.SearchIndexReindex',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.send-pulses.init-send-pulse-triggers.job','DEFAULT',NULL,'metabase.pulse.task.send_pulses.InitSendPulseTriggers',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.send-pulses.send-pulse.job','DEFAULT','Send Pulse','metabase.pulse.task.send_pulses.SendPulse',0x01,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.session-cleanup.job','DEFAULT',NULL,'metabase.session.task.session_cleanup.SessionCleanup',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.sync-and-analyze.job','DEFAULT','sync-and-analyze for all databases','metabase.sync.task.sync_databases.SyncAndAnalyzeDatabase',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.task-history-cleanup.job','DEFAULT',NULL,'metabase.task_history.task.task_history_cleanup.TaskHistoryCleanup',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.truncate-audit-tables.job','DEFAULT',NULL,'metabase.audit_app.task.truncate_audit_tables.TruncateAuditTables',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.update-field-values.job','DEFAULT','update-field-values for all databases','metabase.sync.task.sync_databases.UpdateFieldValues',0x01,0x01,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),
('MetabaseScheduler','metabase.task.upgrade-checks.job','DEFAULT',NULL,'metabase.version.task.upgrade_checks.CheckForNewVersions',0x00,0x00,0x00,0x00,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `QRTZ_LOCKS` VALUES
('MetabaseScheduler','STATE_ACCESS'),
('MetabaseScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES
('MetabaseScheduler','28074e11c37a1761079629834',1761088842846,7500);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_SIMPLE_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `QRTZ_SIMPLE_TRIGGERS` VALUES
('MetabaseScheduler','metabase.task.search-index.reindex.trigger','DEFAULT',-1,3600000,2);
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` bit(1) DEFAULT NULL,
  `BOOL_PROP_2` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_SIMPROP_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(6) DEFAULT NULL,
  `JOB_DATA` blob DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `FK_QRTZ_TRIGGERS_JOB_DETAILS` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `QRTZ_TRIGGERS` VALUES
('MetabaseScheduler','metabase.task.anonymous-stats.trigger','DEFAULT','metabase.task.anonymous-stats.job','DEFAULT',NULL,1761166380000,1761079980000,5,'WAITING','CRON',1761079630000,0,NULL,0,''),
('MetabaseScheduler','metabase.task.creator-sentiment-emails.trigger','DEFAULT','metabase.task.creator-sentiment-emails.job','DEFAULT',NULL,1761357600000,-1,5,'WAITING','CRON',1761079630000,0,NULL,0,''),
('MetabaseScheduler','metabase.task.follow-up-emails.trigger','DEFAULT','metabase.task.follow-up-emails.job','DEFAULT',NULL,1761134400000,-1,5,'WAITING','CRON',1761079630000,0,NULL,0,''),
('MetabaseScheduler','metabase.task.refresh-channel-cache.trigger','DEFAULT','metabase.task.refresh-channel-cache.job','DEFAULT',NULL,1761091320000,-1,5,'WAITING','CRON',1761079630000,0,NULL,2,''),
('MetabaseScheduler','metabase.task.search-index.reindex.trigger','DEFAULT','metabase.task.search-index.reindex.job','DEFAULT',NULL,1761090430537,1761086830537,5,'WAITING','SIMPLE',1761083230537,0,NULL,0,''),
('MetabaseScheduler','metabase.task.session-cleanup.trigger','DEFAULT','metabase.task.session-cleanup.job','DEFAULT',NULL,1761098400000,-1,5,'WAITING','CRON',1761079630000,0,NULL,0,''),
('MetabaseScheduler','metabase.task.sync-and-analyze.trigger.2','DEFAULT','metabase.task.sync-and-analyze.job','DEFAULT','sync-and-analyze Database 2',1761090360000,1761086760000,5,'WAITING','CRON',1760971299000,0,NULL,2,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0db-idsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number������\0\0xp\0\0\0x\0'),
('MetabaseScheduler','metabase.task.task-history-cleanup.trigger','DEFAULT','metabase.task.task-history-cleanup.job','DEFAULT',NULL,1761091200000,-1,5,'WAITING','CRON',1761079630000,0,NULL,0,''),
('MetabaseScheduler','metabase.task.truncate-audit-tables.trigger','DEFAULT','metabase.task.truncate-audit-tables.job','DEFAULT',NULL,1761091200000,-1,5,'WAITING','CRON',1761079630000,0,NULL,2,''),
('MetabaseScheduler','metabase.task.update-field-values.trigger.2','DEFAULT','metabase.task.update-field-values.job','DEFAULT','update-field-values Database 2',1761174000000,1761087600000,5,'WAITING','CRON',1760971299000,0,NULL,2,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0db-idsr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number������\0\0xp\0\0\0x\0'),
('MetabaseScheduler','metabase.task.upgrade-checks.trigger','DEFAULT','metabase.task.upgrade-checks.job','DEFAULT',NULL,1761093840000,-1,5,'WAITING','CRON',1761079630000,0,NULL,0,'');
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the action was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the action was updated',
  `type` longtext NOT NULL COMMENT 'Type of action',
  `model_id` int(11) NOT NULL,
  `name` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL COMMENT 'The description of the action',
  `parameters` longtext DEFAULT NULL COMMENT 'The saved parameters for this action',
  `parameter_mappings` longtext DEFAULT NULL COMMENT 'The saved parameter mappings for this action',
  `visualization_settings` longtext DEFAULT NULL COMMENT 'The UI visualization_settings for this action',
  `public_uuid` char(36) DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Action.',
  `made_public_by_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Action.',
  `creator_id` int(11) DEFAULT NULL COMMENT 'The user who created the action',
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_action_public_uuid` (`public_uuid`),
  KEY `fk_action_made_public_by_id` (`made_public_by_id`),
  KEY `idx_action_creator_id` (`creator_id`),
  KEY `fk_action_model_id` (`model_id`),
  CONSTRAINT `fk_action_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `fk_action_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_action_model_id` FOREIGN KEY (`model_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An action is something you can do, such as run a readwrite query';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `api_key`
--

DROP TABLE IF EXISTS `api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the API Key itself',
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(254) NOT NULL COMMENT 'The hashed API key',
  `key_prefix` varchar(7) NOT NULL COMMENT 'The first 7 characters of the unhashed key',
  `creator_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp when the key was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp when the key was last updated',
  `name` varchar(254) NOT NULL COMMENT 'The user-defined name of the API key.',
  `updated_by_id` int(11) NOT NULL COMMENT 'The ID of the user that last updated this API key',
  `scope` varchar(64) DEFAULT NULL COMMENT 'The scope of the API key, if applicable',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_prefix` (`key_prefix`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_api_key_created_by` (`creator_id`),
  KEY `idx_api_key_user_id` (`user_id`),
  KEY `idx_api_key_updated_by_id` (`updated_by_id`),
  CONSTRAINT `fk_api_key_created_by_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `fk_api_key_updated_by_id_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `fk_api_key_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An API Key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_key`
--

LOCK TABLES `api_key` WRITE;
/*!40000 ALTER TABLE `api_key` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `api_key` VALUES
(1,13371340,'$2a$10$yX4URKllBJp9a3fkALmmUuHMZW2DqfWUK1SR9byGril8eeb68H44.','mb_sy8B',13371339,'2025-10-21 20:51:27.957422','2025-10-21 20:51:27.957422','API',13371339,NULL);
/*!40000 ALTER TABLE `api_key` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `application_permissions_revision`
--

DROP TABLE IF EXISTS `application_permissions_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_permissions_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `before` longtext NOT NULL COMMENT 'Serialized JSON of the permission graph before the changes.',
  `after` longtext NOT NULL COMMENT 'Serialized JSON of the changes in permission graph.',
  `user_id` int(11) NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `remark` longtext DEFAULT NULL COMMENT 'Optional remarks explaining why these changes were made.',
  PRIMARY KEY (`id`),
  KEY `fk_general_permissions_revision_user_id` (`user_id`),
  CONSTRAINT `fk_general_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to general permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_permissions_revision`
--

LOCK TABLES `application_permissions_revision` WRITE;
/*!40000 ALTER TABLE `application_permissions_revision` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `application_permissions_revision` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(32) NOT NULL COMMENT 'The topic of a given audit event',
  `timestamp` timestamp(6) NOT NULL COMMENT 'The time an event was recorded',
  `end_timestamp` timestamp(6) NULL DEFAULT NULL COMMENT 'The time an event ended, if applicable',
  `user_id` int(11) DEFAULT NULL COMMENT 'The user who performed an action or triggered an event',
  `model` varchar(32) DEFAULT NULL COMMENT 'The name of the model this event applies to (e.g. Card, Dashboard), if applicable',
  `model_id` int(11) DEFAULT NULL COMMENT 'The ID of the model this event applies to, if applicable',
  `details` longtext NOT NULL COMMENT 'A JSON map with metadata about the event',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store application events for auditing use cases';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `bookmark_ordering`
--

DROP TABLE IF EXISTS `bookmark_ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_ordering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who ordered bookmarks',
  `type` varchar(255) NOT NULL COMMENT 'type of the Bookmark',
  `item_id` int(11) NOT NULL COMMENT 'id of the item being bookmarked (Card, Collection, Dashboard, ...) no FK, so may no longer exist',
  `ordering` int(11) NOT NULL COMMENT 'order of bookmark for user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_bookmark_user_id_type_item_id` (`user_id`,`type`,`item_id`),
  UNIQUE KEY `unique_bookmark_user_id_ordering` (`user_id`,`ordering`),
  KEY `idx_bookmark_ordering_user_id` (`user_id`),
  CONSTRAINT `fk_bookmark_ordering_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding ordering information for various bookmark tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_ordering`
--

LOCK TABLES `bookmark_ordering` WRITE;
/*!40000 ALTER TABLE `bookmark_ordering` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `bookmark_ordering` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `cache_config`
--

DROP TABLE IF EXISTS `cache_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID',
  `model` varchar(32) NOT NULL COMMENT 'Name of an entity model',
  `model_id` int(11) NOT NULL COMMENT 'ID of the said entity',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Timestamp when the config was inserted',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Timestamp when the config was updated',
  `strategy` longtext NOT NULL COMMENT 'caching strategy name',
  `config` longtext NOT NULL COMMENT 'caching strategy configuration',
  `state` longtext DEFAULT NULL COMMENT 'state for strategies needing to keep some data between runs',
  `invalidated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'indicates when a cache was invalidated last time for schedule-based strategies',
  `next_run_at` timestamp(6) NULL DEFAULT NULL COMMENT 'keeps next time to run for schedule-based strategies',
  `refresh_automatically` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_cache_config_unique_model` (`model`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cache Configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_config`
--

LOCK TABLES `cache_config` WRITE;
/*!40000 ALTER TABLE `cache_config` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `cache_config` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `card_bookmark`
--

DROP TABLE IF EXISTS `card_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who bookmarked the Card',
  `card_id` int(11) NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_card_bookmark_user_id_card_id` (`user_id`,`card_id`),
  KEY `idx_card_bookmark_user_id` (`user_id`),
  KEY `idx_card_bookmark_card_id` (`card_id`),
  CONSTRAINT `fk_card_bookmark_dashboard_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on cards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_bookmark`
--

LOCK TABLES `card_bookmark` WRITE;
/*!40000 ALTER TABLE `card_bookmark` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `card_bookmark` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `card_label`
--

DROP TABLE IF EXISTS `card_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_card_label_card_id_label_id` (`card_id`,`label_id`),
  KEY `idx_card_label_card_id` (`card_id`),
  KEY `idx_card_label_label_id` (`label_id`),
  CONSTRAINT `fk_card_label_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_label_ref_label_id` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_label`
--

LOCK TABLES `card_label` WRITE;
/*!40000 ALTER TABLE `card_label` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `card_label` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID',
  `name` varchar(254) NOT NULL COMMENT 'channel name',
  `description` longtext DEFAULT NULL COMMENT 'channel description',
  `type` varchar(32) NOT NULL COMMENT 'Channel type',
  `details` longtext NOT NULL COMMENT 'Channel details, used to store authentication information or channel-specific settings',
  `active` bit(1) NOT NULL DEFAULT b'1' COMMENT 'whether the channel is active',
  `created_at` timestamp(6) NOT NULL COMMENT 'Timestamp when the channel was inserted',
  `updated_at` timestamp(6) NOT NULL COMMENT 'Timestamp when the channel was updated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Channel configurations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `channel_template`
--

DROP TABLE IF EXISTS `channel_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT 'the name of the template',
  `channel_type` varchar(64) NOT NULL COMMENT 'the channel type of the template',
  `details` longtext DEFAULT NULL COMMENT 'the details of the template',
  `created_at` timestamp(6) NOT NULL COMMENT 'The timestamp of when the template was created',
  `updated_at` timestamp(6) NOT NULL COMMENT 'The timestamp of when the template was last updated',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='custom template for the channel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_template`
--

LOCK TABLES `channel_template` WRITE;
/*!40000 ALTER TABLE `channel_template` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `channel_template` VALUES
(1,'User joined Email template','channel/email','{\"type\":\"email/handlebars-resource\",\"subject\":\"{{payload.custom.user_invited_email_subject}}\",\"path\":\"metabase/channel/email/new_user_invite.hbs\",\"recipient-type\":\"cc\"}','2025-10-20 14:38:47.168874','2025-10-20 14:38:47.168874'),
(2,'Notification Card Created Confirmation','channel/email','{\"type\":\"email/handlebars-resource\",\"subject\":\"You set up an alert\",\"path\":\"metabase/channel/email/notification_card_new_confirmation.hbs\",\"recipient-type\":\"cc\"}','2025-10-20 14:38:47.191764','2025-10-20 14:38:47.191764'),
(3,'Slack Token Error Email template','channel/email','{\"type\":\"email/handlebars-resource\",\"subject\":\"Your Slack connection stopped working\",\"path\":\"metabase/channel/email/slack_token_error.hbs\",\"recipient-type\":\"cc\"}','2025-10-20 14:38:47.201347','2025-10-20 14:38:47.201347');
/*!40000 ALTER TABLE `channel_template` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `cloud_migration`
--

DROP TABLE IF EXISTS `cloud_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloud_migration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID',
  `external_id` longtext NOT NULL COMMENT 'Matching ID in Cloud for this migration',
  `upload_url` longtext NOT NULL COMMENT 'URL where the backup will be uploaded to',
  `state` varchar(32) NOT NULL DEFAULT 'init' COMMENT 'Current state of the migration: init, setup, dump, upload, done, error, cancelled',
  `progress` int(11) NOT NULL DEFAULT 0 COMMENT 'Number between 0 to 100 representing progress as a percentage',
  `created_at` timestamp(6) NOT NULL COMMENT 'Timestamp when the config was inserted',
  `updated_at` timestamp(6) NOT NULL COMMENT 'Timestamp when the config was updated',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Migrate to cloud directly from Metabase';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_migration`
--

LOCK TABLES `cloud_migration` WRITE;
/*!40000 ALTER TABLE `cloud_migration` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `cloud_migration` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this Collection has been archived and should be hidden from users.',
  `location` varchar(254) NOT NULL DEFAULT '/' COMMENT 'Directory-structure path of ancestor Collections. e.g. "/1/2/" means our Parent is Collection 2, and their parent is Collection 1.',
  `personal_owner_id` int(11) DEFAULT NULL COMMENT 'If set, this Collection is a personal Collection, for exclusive use of the User with this ID.',
  `slug` varchar(510) DEFAULT NULL,
  `namespace` varchar(254) DEFAULT NULL COMMENT 'The namespace (hierachy) this Collection belongs to. NULL means the Collection is in the default namespace.',
  `authority_level` varchar(255) DEFAULT NULL COMMENT 'Nullable column to incidate collection''s authority level. Initially values are "official" and nil.',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Timestamp of when this Collection was created.',
  `type` varchar(256) DEFAULT NULL COMMENT 'This is used to differentiate instance-analytics collections from all other collections.',
  `is_sample` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is the collection part of the sample content?',
  `archive_operation_id` char(36) DEFAULT NULL COMMENT 'The UUID of the trash operation. Each time you trash a collection subtree, you get a unique ID.',
  `archived_directly` bit(1) DEFAULT NULL COMMENT 'Whether the item was trashed independently or as a subcollection',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_personal_owner_id` (`personal_owner_id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_collection_location` (`location`),
  KEY `idx_collection_personal_owner_id` (`personal_owner_id`),
  KEY `idx_collection_type` (`type`),
  CONSTRAINT `fk_collection_personal_owner_id` FOREIGN KEY (`personal_owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Collections are an optional way to organize Cards and handle permissions for them.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `collection` VALUES
(1,'Trash',NULL,0x00,'/',NULL,'trash',NULL,NULL,'trashtrashtrashtrasht','2025-10-20 14:38:42.353430','trash',0x00,NULL,NULL),
(2,'Examples','Some examples to get started with',0x01,'/',NULL,'examples',NULL,NULL,'HyB3nRtqb7pBPhFG26evI','2025-10-20 14:38:43.000000',NULL,0x01,'25dd4c4a-48a6-428a-80e1-00204cf6d3c2',0x01),
(3,'E-commerce','Questions and metrics used for the parent dashboard',0x01,'/2/',NULL,'e_commerce',NULL,NULL,'54O0IbgCzm290Nnxf1wRH','2025-10-20 14:38:43.000000',NULL,0x01,'1e52f2e4-1304-4e09-9e0e-1dce5ea843af',0x01),
(4,'Admin Admin\'s Personal Collection',NULL,0x00,'/',13371339,'admin_admin_s_personal_collection',NULL,NULL,'chf-DXrTeJXDcSKG_72S7','2025-10-20 14:39:40.170396',NULL,0x00,NULL,NULL);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `collection_bookmark`
--

DROP TABLE IF EXISTS `collection_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who bookmarked the Collection',
  `collection_id` int(11) NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_bookmark_user_id_collection_id` (`user_id`,`collection_id`),
  KEY `idx_collection_bookmark_user_id` (`user_id`),
  KEY `idx_collection_bookmark_collection_id` (`collection_id`),
  CONSTRAINT `fk_collection_bookmark_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_collection_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on collections';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_bookmark`
--

LOCK TABLES `collection_bookmark` WRITE;
/*!40000 ALTER TABLE `collection_bookmark` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `collection_bookmark` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `collection_permission_graph_revision`
--

DROP TABLE IF EXISTS `collection_permission_graph_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_permission_graph_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `before` longtext DEFAULT NULL,
  `after` longtext DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `remark` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_collection_revision_user_id` (`user_id`),
  CONSTRAINT `fk_collection_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to collections.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_permission_graph_revision`
--

LOCK TABLES `collection_permission_graph_revision` WRITE;
/*!40000 ALTER TABLE `collection_permission_graph_revision` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `collection_permission_graph_revision` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `connection_impersonations`
--

DROP TABLE IF EXISTS `connection_impersonations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `connection_impersonations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_id` int(11) NOT NULL COMMENT 'ID of the database this connection impersonation policy affects',
  `group_id` int(11) NOT NULL COMMENT 'ID of the permissions group this connection impersonation policy affects',
  `attribute` longtext DEFAULT NULL COMMENT 'User attribute associated with the database role to use for this connection impersonation policy',
  PRIMARY KEY (`id`),
  UNIQUE KEY `conn_impersonation_unique_group_id_db_id` (`group_id`,`db_id`),
  KEY `idx_conn_impersonations_db_id` (`db_id`),
  KEY `idx_conn_impersonations_group_id` (`group_id`),
  CONSTRAINT `fk_conn_impersonation_db_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_conn_impersonation_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table for holding connection impersonation policies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connection_impersonations`
--

LOCK TABLES `connection_impersonations` WRITE;
/*!40000 ALTER TABLE `connection_impersonations` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `connection_impersonations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `content_translation`
--

DROP TABLE IF EXISTS `content_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID',
  `locale` varchar(5) NOT NULL COMMENT 'Locale',
  `msgid` longtext NOT NULL COMMENT 'The raw string',
  `msgstr` longtext NOT NULL COMMENT 'The translation',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Content translations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_translation`
--

LOCK TABLES `content_translation` WRITE;
/*!40000 ALTER TABLE `content_translation` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `content_translation` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `core_session`
--

DROP TABLE IF EXISTS `core_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_session` (
  `id` varchar(254) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `anti_csrf_token` longtext DEFAULT NULL,
  `key_hashed` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_session_ref_user_id` (`user_id`),
  KEY `idx_core_session_key_hashed` (`key_hashed`),
  CONSTRAINT `fk_session_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_session`
--

LOCK TABLES `core_session` WRITE;
/*!40000 ALTER TABLE `core_session` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `core_session` VALUES
('WQP9pizqM1Uc',13371339,'2025-10-21 23:07:33.620066',NULL,'13e5b799927ed7a43a885367c0b69752525e6714e072df0ea0ed4c28e1bf50538eeda842ad86b55ca486c9696f7bc85fd4d7210c87def3e02f250d023a11fcd4');
/*!40000 ALTER TABLE `core_session` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(254) DEFAULT NULL,
  `last_name` varchar(254) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  `password_salt` varchar(254) DEFAULT NULL,
  `date_joined` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `last_login` timestamp(6) NULL DEFAULT NULL,
  `is_superuser` bit(1) NOT NULL DEFAULT b'0',
  `is_active` bit(1) NOT NULL DEFAULT b'1',
  `reset_token` varchar(254) DEFAULT NULL,
  `reset_triggered` bigint(20) DEFAULT NULL,
  `is_qbnewb` bit(1) NOT NULL DEFAULT b'1',
  `login_attributes` longtext DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `sso_source` varchar(254) DEFAULT NULL COMMENT 'String to indicate the SSO backend the user is from',
  `locale` varchar(5) DEFAULT NULL COMMENT 'Preferred ISO locale (language/country) code, e.g "en" or "en-US", for this User. Overrides site default.',
  `is_datasetnewb` bit(1) NOT NULL DEFAULT b'1',
  `settings` longtext DEFAULT NULL COMMENT 'Serialized JSON containing User-local Settings for this User',
  `type` varchar(64) NOT NULL DEFAULT 'personal' COMMENT 'The type of user',
  `entity_id` char(21) DEFAULT NULL COMMENT 'NanoID tag for each user',
  `deactivated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp at which a user was deactivated',
  `tenant_id` int(11) DEFAULT NULL COMMENT 'The ID of the tenant for this user',
  `jwt_attributes` longtext DEFAULT NULL COMMENT 'JSON object containing attributes set through jwt',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `entity_id` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13371341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `core_user` VALUES
(13371338,'internal@metabase.com','Metabase','Internal','$2a$10$MGHYX/WS3pQEG/zNA2.U/efQHKyuHf7dlmgQe4QCGt7HIIN6pCwBW','49c65c78-4f38-4247-80d8-54eb4f0b5514','2025-10-20 14:38:41.000000',NULL,0x00,0x00,NULL,NULL,0x01,NULL,NULL,NULL,NULL,0x01,NULL,'internal',NULL,NULL,NULL,NULL),
(13371339,'admin@example.com','Admin','Admin','$2a$10$lJnqedKwwaPrsSRbScSR4ePaYxq2IXkJLin9MEpGN6pX0jXmpKMki','e580dd08-fbcc-44d5-a5ff-308a92734b11','2025-10-20 14:39:31.000000','2025-10-21 23:07:33.000000',0x01,0x01,NULL,NULL,0x00,NULL,'2025-10-21 23:07:43.804726',NULL,NULL,0x01,'{\"last-acknowledged-version\":\"v0.56.9\",\"last-used-native-database-id\":\"2\",\"notebook-native-preview-shown\":\"true\",\"dismissed-custom-dashboard-toast\":\"true\",\"show-updated-permission-modal\":\"false\"}','personal','IX_PJ5C4ItsrZcJ6AEXZT',NULL,NULL,NULL),
(13371340,'api-key-user-2e2378cb-92f9-475b-9fdd-1d75d913787c@api-key.invalid','API','','$2a$10$j0p/GFrsdlZzbvRRo1QQsue8T0CtTBbvsdbcv5H7tGTCoxM74W6hW','d839e9ae-171c-435b-a7ab-2fa1456bc8a0','2025-10-21 20:51:27.000000',NULL,0x01,0x01,NULL,NULL,0x01,NULL,'2025-10-21 20:51:27.870135',NULL,NULL,0x01,'{\"last-acknowledged-version\":\"v0.56.9\"}','api-key','tHl_fTnPN0c0CKudqOm87',NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dashboard_bookmark`
--

DROP TABLE IF EXISTS `dashboard_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who bookmarked the Dashboard',
  `dashboard_id` int(11) NOT NULL COMMENT 'ID of the Dashboard bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dashboard_bookmark_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  KEY `idx_dashboard_bookmark_user_id` (`user_id`),
  KEY `idx_dashboard_bookmark_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_bookmark_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on dashboards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_bookmark`
--

LOCK TABLES `dashboard_bookmark` WRITE;
/*!40000 ALTER TABLE `dashboard_bookmark` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `dashboard_bookmark` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dashboard_favorite`
--

DROP TABLE IF EXISTS `dashboard_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who favorited the Dashboard.',
  `dashboard_id` int(11) NOT NULL COMMENT 'ID of the Dashboard favorited by the User.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dashboard_favorite_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  KEY `idx_dashboard_favorite_user_id` (`user_id`),
  KEY `idx_dashboard_favorite_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_favorite_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_favorite_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Presence of a row here indicates a given User has favorited a given Dashboard.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_favorite`
--

LOCK TABLES `dashboard_favorite` WRITE;
/*!40000 ALTER TABLE `dashboard_favorite` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `dashboard_favorite` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dashboard_tab`
--

DROP TABLE IF EXISTS `dashboard_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboard_id` int(11) NOT NULL COMMENT 'The dashboard that a tab is on',
  `name` longtext NOT NULL COMMENT 'Displayed name of the tab',
  `position` int(11) NOT NULL COMMENT 'Position of the tab with respect to others tabs in dashboard',
  `entity_id` char(21) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp at which the tab was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp at which the tab was last updated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_dashboard_tab_ref_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_tab_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Join table connecting dashboard to dashboardcards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_tab`
--

LOCK TABLES `dashboard_tab` WRITE;
/*!40000 ALTER TABLE `dashboard_tab` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `dashboard_tab` VALUES
(1,1,'Overview',0,'UaPZl7PULaGoAGquao9XS','2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000'),
(2,1,'Portfolio Performance',1,'N-o1tJ9swdO4YJycqMA8P','2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000'),
(3,1,'Website Analysis',2,'dJjVk7QtJaNp6panPlnH5','2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000'),
(4,2,'Urgences par région',0,'BQwot6ADEmNTQakKsl9uH','2025-10-21 22:18:53.377255','2025-10-21 22:18:53.377255'),
(5,2,'Vaccinations',1,'5bMEbhqSRN2rz_vW5H0tT','2025-10-21 22:18:53.377255','2025-10-21 22:18:53.377255');
/*!40000 ALTER TABLE `dashboard_tab` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dashboardcard_series`
--

DROP TABLE IF EXISTS `dashboardcard_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboardcard_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboardcard_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dashboardcard_series_dashboardcard_id` (`dashboardcard_id`),
  KEY `idx_dashboardcard_series_card_id` (`card_id`),
  CONSTRAINT `fk_dashboardcard_series_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboardcard_series_ref_dashboardcard_id` FOREIGN KEY (`dashboardcard_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboardcard_series`
--

LOCK TABLES `dashboardcard_series` WRITE;
/*!40000 ALTER TABLE `dashboardcard_series` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `dashboardcard_series` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `data_permissions`
--

DROP TABLE IF EXISTS `data_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The ID of the permission',
  `group_id` int(11) NOT NULL COMMENT 'The ID of the associated permission group',
  `perm_type` varchar(64) NOT NULL COMMENT 'The type of the permission (e.g. "data", "collection", "download"...)',
  `db_id` int(11) NOT NULL COMMENT 'A database ID, for DB and table-level permissions',
  `schema_name` varchar(254) DEFAULT NULL COMMENT 'A schema name, for table-level permissions',
  `table_id` int(11) DEFAULT NULL COMMENT 'A table ID',
  `perm_value` varchar(64) NOT NULL COMMENT 'The value this permission is set to.',
  PRIMARY KEY (`id`),
  KEY `idx_data_permissions_table_id` (`table_id`),
  KEY `idx_data_permissions_db_id` (`db_id`),
  KEY `idx_data_permissions_group_id` (`group_id`),
  KEY `idx_data_permissions_group_id_db_id_perm_value` (`group_id`,`db_id`,`perm_value`),
  KEY `idx_data_permissions_group_id_db_id_table_id_perm_value` (`group_id`,`db_id`,`table_id`,`perm_value`),
  CONSTRAINT `fk_data_permissions_ref_db_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_data_permissions_ref_permissions_group` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_data_permissions_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A table to store database and table permissions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_permissions`
--

LOCK TABLES `data_permissions` WRITE;
/*!40000 ALTER TABLE `data_permissions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `data_permissions` VALUES
(7,1,'perms/create-queries',2,NULL,NULL,'query-builder-and-native'),
(8,1,'perms/view-data',2,NULL,NULL,'unrestricted'),
(9,1,'perms/download-results',2,NULL,NULL,'one-million-rows'),
(10,1,'perms/manage-table-metadata',2,NULL,NULL,'no'),
(11,1,'perms/manage-database',2,NULL,NULL,'no');
/*!40000 ALTER TABLE `data_permissions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `db_router`
--

DROP TABLE IF EXISTS `db_router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `database_id` int(11) NOT NULL COMMENT 'The ID of the database this is for.',
  `user_attribute` varchar(254) NOT NULL COMMENT 'The user attribute used to redirect users to a different database.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `database_id` (`database_id`),
  CONSTRAINT `fk_db_router_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Configuration for Database Routers. Currently just holds which user attribute each\nconfigured router database should use to choose a mirror database to route to.\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_router`
--

LOCK TABLES `db_router` WRITE;
/*!40000 ALTER TABLE `db_router` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `db_router` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dependency`
--

DROP TABLE IF EXISTS `dependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(32) NOT NULL,
  `model_id` int(11) NOT NULL,
  `dependent_on_model` varchar(32) NOT NULL,
  `dependent_on_id` int(11) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`),
  KEY `idx_dependency_model` (`model`),
  KEY `idx_dependency_model_id` (`model_id`),
  KEY `idx_dependency_dependent_on_model` (`dependent_on_model`),
  KEY `idx_dependency_dependent_on_id` (`dependent_on_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependency`
--

LOCK TABLES `dependency` WRITE;
/*!40000 ALTER TABLE `dependency` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `dependency` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `dimension`
--

DROP TABLE IF EXISTS `dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL COMMENT 'ID of the field this dimension row applies to',
  `name` varchar(254) NOT NULL COMMENT 'Short description used as the display name of this new column',
  `type` varchar(254) NOT NULL COMMENT 'Either internal for a user defined remapping or external for a foreign key based remapping',
  `human_readable_field_id` int(11) DEFAULT NULL COMMENT 'Only used with external type remappings. Indicates which field on the FK related table to use for display',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dimension_field_id` (`field_id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_dimension_displayfk_ref_field_id` (`human_readable_field_id`),
  KEY `idx_dimension_field_id` (`field_id`),
  CONSTRAINT `fk_dimension_displayfk_ref_field_id` FOREIGN KEY (`human_readable_field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dimension_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores references to alternate views of existing fields, such as remapping an integer to a description, like an enum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension`
--

LOCK TABLES `dimension` WRITE;
/*!40000 ALTER TABLE `dimension` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `dimension` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `field_usage`
--

DROP TABLE IF EXISTS `field_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_usage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID',
  `field_id` int(11) NOT NULL COMMENT 'ID of the field',
  `query_execution_id` int(11) NOT NULL COMMENT 'referenced query execution',
  `used_in` varchar(25) NOT NULL COMMENT 'which part of the query the field was used in',
  `filter_op` varchar(25) DEFAULT NULL COMMENT 'filter''s operator that applied to the field',
  `aggregation_function` varchar(25) DEFAULT NULL COMMENT 'the aggregation function that field applied to',
  `breakout_temporal_unit` varchar(25) DEFAULT NULL COMMENT 'temporal unit options of the breakout',
  `breakout_binning_strategy` varchar(25) DEFAULT NULL COMMENT 'the strategy of breakout',
  `breakout_binning_num_bins` int(11) DEFAULT NULL COMMENT 'The numbin option of breakout',
  `breakout_binning_bin_width` int(11) DEFAULT NULL COMMENT 'The numbin option of breakout',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The time a field usage was recorded',
  PRIMARY KEY (`id`),
  KEY `idx_field_usage_field_id` (`field_id`),
  KEY `idx_field_usage_query_execution_id` (`query_execution_id`),
  CONSTRAINT `fk_field_usage_field_id_metabase_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_field_usage_query_execution_id` FOREIGN KEY (`query_execution_id`) REFERENCES `query_execution` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store field usage during query execution';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_usage`
--

LOCK TABLES `field_usage` WRITE;
/*!40000 ALTER TABLE `field_usage` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `field_usage` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `http_action`
--

DROP TABLE IF EXISTS `http_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `http_action` (
  `action_id` int(11) NOT NULL COMMENT 'The related action',
  `template` longtext NOT NULL COMMENT 'A template that defines method,url,body,headers required to make an api call',
  `response_handle` longtext DEFAULT NULL COMMENT 'A program to take an api response and transform to an appropriate response for emitters',
  `error_handle` longtext DEFAULT NULL COMMENT 'A program to take an api response to determine if an error occurred',
  PRIMARY KEY (`action_id`),
  CONSTRAINT `fk_http_action_ref_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An http api call type of action';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_action`
--

LOCK TABLES `http_action` WRITE;
/*!40000 ALTER TABLE `http_action` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `http_action` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `implicit_action`
--

DROP TABLE IF EXISTS `implicit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `implicit_action` (
  `action_id` int(11) NOT NULL COMMENT 'The associated action',
  `kind` longtext NOT NULL COMMENT 'The kind of implicit action create/update/delete',
  PRIMARY KEY (`action_id`),
  CONSTRAINT `fk_implicit_action_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An action with dynamic parameters based on the underlying model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implicit_action`
--

LOCK TABLES `implicit_action` WRITE;
/*!40000 ALTER TABLE `implicit_action` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `implicit_action` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  `slug` varchar(254) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx_label_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'When this login occurred.',
  `user_id` int(11) NOT NULL COMMENT 'ID of the User that logged in.',
  `session_id` varchar(254) DEFAULT NULL COMMENT 'ID of the Session created by this login if one is currently active. NULL if Session is no longer active.',
  `device_id` char(36) NOT NULL COMMENT 'Cookie-based unique identifier for the device/browser the user logged in from.',
  `device_description` longtext DEFAULT NULL,
  `ip_address` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_session_id` (`session_id`),
  KEY `idx_timestamp` (`timestamp`),
  KEY `idx_user_id_timestamp` (`user_id`,`timestamp`),
  KEY `idx_user_id_device_id` (`user_id`,`device_id`),
  CONSTRAINT `fk_login_history_session_id` FOREIGN KEY (`session_id`) REFERENCES `core_session` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_login_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Keeps track of various logins for different users and additional info such as location and device';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `login_history` VALUES
(1,'2025-10-20 14:39:32.008125',13371339,NULL,'b2d0bf0f-9543-488f-8eee-ab29cd224cc4','Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0','172.20.0.1'),
(2,'2025-10-21 23:07:33.627639',13371339,'WQP9pizqM1Uc','b2d0bf0f-9543-488f-8eee-ab29cd224cc4','Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0','172.20.0.1');
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabase_cluster_lock`
--

DROP TABLE IF EXISTS `metabase_cluster_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_cluster_lock` (
  `lock_name` varchar(254) NOT NULL COMMENT 'a single column that can be used to a lock across a cluster',
  PRIMARY KEY (`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A table to allow metabase instances to take locks across a cluster';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_cluster_lock`
--

LOCK TABLES `metabase_cluster_lock` WRITE;
/*!40000 ALTER TABLE `metabase_cluster_lock` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `metabase_cluster_lock` VALUES
('metabase.app-db.cluster-lock/statistics-lock'),
('metabase.events.view_log/metabase_table-view-count'),
('metabase.view-log.events.view-log/dashboard-statistics-lock');
/*!40000 ALTER TABLE `metabase_cluster_lock` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabase_database`
--

DROP TABLE IF EXISTS `metabase_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL,
  `details` longtext NOT NULL,
  `engine` varchar(254) NOT NULL,
  `is_sample` bit(1) NOT NULL DEFAULT b'0',
  `is_full_sync` bit(1) NOT NULL DEFAULT b'1',
  `points_of_interest` longtext DEFAULT NULL,
  `caveats` longtext DEFAULT NULL,
  `metadata_sync_schedule` varchar(254) NOT NULL DEFAULT '0 50 * * * ? *' COMMENT 'The cron schedule string for when this database should undergo the metadata sync process (and analysis for new fields).',
  `cache_field_values_schedule` varchar(254) DEFAULT NULL,
  `timezone` varchar(254) DEFAULT NULL COMMENT 'Timezone identifier for the database, set by the sync process',
  `is_on_demand` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether we should do On-Demand caching of FieldValues for this DB. This means FieldValues are updated when their Field is used in a Dashboard or Card param.',
  `auto_run_queries` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Whether to automatically run queries when doing simple filtering and summarizing in the Query Builder.',
  `refingerprint` bit(1) DEFAULT NULL COMMENT 'Whether or not to enable periodic refingerprinting for this Database.',
  `cache_ttl` int(11) DEFAULT NULL COMMENT 'Granular cache TTL for specific database.',
  `initial_sync_status` varchar(32) NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a database has completed its initial sync and is ready to use',
  `creator_id` int(11) DEFAULT NULL COMMENT 'ID of the admin who added the database',
  `settings` longtext DEFAULT NULL COMMENT 'Serialized JSON containing Database-local Settings for this Database',
  `dbms_version` longtext DEFAULT NULL COMMENT 'A JSON object describing the flavor and version of the DBMS.',
  `is_audit` bit(1) NOT NULL DEFAULT b'0',
  `uploads_enabled` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether uploads are enabled for this database',
  `uploads_schema_name` longtext DEFAULT NULL COMMENT 'The schema name for uploads',
  `uploads_table_prefix` longtext DEFAULT NULL COMMENT 'The prefix for upload table names',
  `is_attached_dwh` bit(1) NOT NULL DEFAULT b'0' COMMENT 'This is an attached data warehouse, do not serialize it and hide its details from the UI',
  `router_database_id` int(11) DEFAULT NULL COMMENT 'The ID of the primary database for this mirror database.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_metabase_database_router_database_id_name` (`router_database_id`,`name`),
  KEY `fk_database_creator_id` (`creator_id`),
  CONSTRAINT `fk_database_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_metabase_database_metabase_database_id` FOREIGN KEY (`router_database_id`) REFERENCES `metabase_database` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_database`
--

LOCK TABLES `metabase_database` WRITE;
/*!40000 ALTER TABLE `metabase_database` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `metabase_database` VALUES
(2,'2025-10-20 14:41:39.652006','2025-10-20 14:41:40.148985','Datasets',NULL,'{\"role\":null,\"additional-options\":\"\",\"ssl\":false,\"password\":\"lU7sdM4tP4pIvayicas4\",\"let-user-control-scheduling\":false,\"destination-database\":false,\"port\":\"3306\",\"advanced-options\":true,\"dbname\":\"Datasets\",\"host\":\"mariadb\",\"tunnel-enabled\":false,\"json-unfolding\":true,\"user\":\"user\"}','mysql',0x00,0x01,NULL,NULL,'0 46 * * * ? *','0 0 23 * * ? *','UTC',0x00,0x01,NULL,NULL,'complete',13371339,NULL,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}',0x00,0x00,NULL,NULL,0x00,NULL);
/*!40000 ALTER TABLE `metabase_database` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabase_field`
--

DROP TABLE IF EXISTS `metabase_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `base_type` varchar(255) NOT NULL,
  `semantic_type` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `description` longtext DEFAULT NULL,
  `preview_display` bit(1) NOT NULL DEFAULT b'1',
  `position` int(11) NOT NULL DEFAULT 0,
  `table_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `display_name` varchar(254) DEFAULT NULL,
  `visibility_type` varchar(32) NOT NULL DEFAULT 'normal',
  `fk_target_field_id` int(11) DEFAULT NULL,
  `last_analyzed` timestamp(6) NULL DEFAULT NULL,
  `points_of_interest` longtext DEFAULT NULL,
  `caveats` longtext DEFAULT NULL,
  `fingerprint` longtext DEFAULT NULL,
  `fingerprint_version` int(11) NOT NULL DEFAULT 0 COMMENT 'The version of the fingerprint for this Field. Used so we can keep track of which Fields need to be analyzed again when new things are added to fingerprints.',
  `database_type` longtext DEFAULT NULL,
  `has_field_values` longtext DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `database_position` int(11) NOT NULL DEFAULT 0,
  `custom_position` int(11) NOT NULL DEFAULT 0,
  `effective_type` varchar(255) DEFAULT NULL COMMENT 'The effective type of the field after any coercions.',
  `coercion_strategy` varchar(255) DEFAULT NULL COMMENT 'A strategy to coerce the base_type into the effective_type.',
  `nfc_path` varchar(254) DEFAULT NULL COMMENT 'Nested field column paths, flattened',
  `database_required` bit(1) NOT NULL DEFAULT b'0',
  `json_unfolding` bit(1) NOT NULL DEFAULT b'0',
  `database_is_auto_increment` bit(1) NOT NULL DEFAULT b'0',
  `database_indexed` bit(1) DEFAULT NULL,
  `database_partitioned` bit(1) DEFAULT NULL,
  `is_defective_duplicate` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicates whether column is a defective duplicate field that should never have been created.',
  `unique_field_helper` int(11) GENERATED ALWAYS AS (case when `is_defective_duplicate` = 1 then NULL else case when `parent_id` is null then 0 else `parent_id` end end) STORED,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_field` (`name`,`table_id`,`unique_field_helper`),
  KEY `idx_field_table_id` (`table_id`),
  KEY `idx_field_parent_id` (`parent_id`),
  CONSTRAINT `fk_field_parent_ref_field_id` FOREIGN KEY (`parent_id`) REFERENCES `metabase_field` (`id`),
  CONSTRAINT `fk_field_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_field`
--

LOCK TABLES `metabase_field` WRITE;
/*!40000 ALTER TABLE `metabase_field` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `metabase_field` VALUES
(72,'2025-10-20 14:41:39.930802','2025-10-20 14:41:40.520744','valeur','type/Integer',NULL,0x01,NULL,0x01,4,9,NULL,'Valeur','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":83.0,\"q1\":12730.25,\"q3\":6861453.5,\"max\":1.0510433E7,\"sd\":4740611.636982954,\"avg\":3238634.8}}}',5,'INT','auto-list',NULL,4,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(73,'2025-10-20 14:41:39.930802','2025-10-20 14:41:40.520744','campagne','type/Text','type/Category',0x01,NULL,0x01,1,9,NULL,'Campagne','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":9.0}}}',5,'VARCHAR','auto-list',NULL,1,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(74,'2025-10-20 14:41:39.930802','2025-10-20 14:41:39.930802','id','type/Integer','type/PK',0x01,NULL,0x01,0,9,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x00,0x00,0x01,NULL,NULL,0x00,0),
(75,'2025-10-20 14:41:39.930802','2025-10-20 14:41:40.520744','cible','type/Integer',NULL,0x01,NULL,0x01,5,9,NULL,'Cible','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":81.0,\"q1\":12594.75,\"q3\":6835284.25,\"max\":1.1219443E7,\"sd\":4985910.5876617255,\"avg\":3326204.4}}}',5,'INT','auto-list',NULL,5,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(76,'2025-10-20 14:41:39.930802','2025-10-20 14:41:40.520744','date','type/Date',NULL,0x01,NULL,0x01,2,9,NULL,'Date','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2024-02-28\",\"latest\":\"2024-02-28\"}}}',5,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(77,'2025-10-20 14:41:39.930802','2025-10-20 14:41:40.520744','variable','type/Text','type/Category',0x01,NULL,0x01,3,9,NULL,'Variable','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":9.8}}}',5,'VARCHAR','auto-list',NULL,3,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(78,'2025-10-20 14:41:39.948584','2025-10-20 14:41:39.948584','id','type/Integer','type/PK',0x01,NULL,0x01,0,10,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x00,0x00,0x01,NULL,NULL,0x00,0),
(79,'2025-10-20 14:41:39.948584','2025-10-20 14:41:40.520744','region','type/Text','type/Category',0x01,NULL,0x01,1,10,NULL,'Region','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":19.692307692307693}}}',5,'VARCHAR','auto-list',NULL,1,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(80,'2025-10-20 14:41:39.948584','2025-10-20 14:41:40.520744','groupe','type/Text','type/Category',0x01,NULL,0x01,4,10,NULL,'Groupe','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":14.5}}}',5,'VARCHAR','auto-list',NULL,4,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(81,'2025-10-20 14:41:39.948584','2025-10-20 14:41:40.520744','variable','type/Text','type/Category',0x01,NULL,0x01,3,10,NULL,'Variable','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":10.5}}}',5,'VARCHAR','auto-list',NULL,3,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(82,'2025-10-20 14:41:39.948584','2025-10-20 14:41:40.520744','valeur','type/Integer',NULL,0x01,NULL,0x01,5,10,NULL,'Valeur','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":51,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":89.0,\"q1\":344.0,\"q3\":3974.5,\"max\":6068.0,\"sd\":2216.0844489077576,\"avg\":2315.0961538461543}}}',5,'INT','auto-list',NULL,5,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(83,'2025-10-20 14:41:39.948584','2025-10-20 14:41:40.520744','code','type/Integer',NULL,0x01,NULL,0x01,2,10,NULL,'Code','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":11.0,\"q1\":27.75,\"q3\":78.0,\"max\":94.0,\"sd\":27.557809797671613,\"avg\":53.30769230769231}}}',5,'INT','auto-list',NULL,2,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(84,'2025-10-20 14:41:39.968295','2025-10-20 14:41:40.520744','campagne','type/Text','type/Category',0x01,NULL,0x01,1,11,NULL,'Campagne','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":9.0}}}',5,'VARCHAR','auto-list',NULL,1,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(85,'2025-10-20 14:41:39.968295','2025-10-20 14:41:40.520744','date','type/Date',NULL,0x01,NULL,0x01,2,11,NULL,'Date','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":269,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2022-10-18\",\"latest\":\"2024-02-28\"}}}',5,'DATE',NULL,NULL,2,0,'type/Date',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(86,'2025-10-20 14:41:39.968295','2025-10-20 14:41:40.520744','variable','type/Text','type/Category',0x01,NULL,0x01,4,11,NULL,'Variable','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":10.5}}}',5,'VARCHAR','auto-list',NULL,4,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(87,'2025-10-20 14:41:39.968295','2025-10-20 14:41:40.520744','valeur','type/Integer',NULL,0x01,NULL,0x01,6,11,NULL,'Valeur','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":996,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2.0,\"q1\":997.2710488216105,\"q3\":32134.52510611256,\"max\":555059.0,\"sd\":56483.931719569795,\"avg\":30435.77973977695}}}',5,'INT','auto-list',NULL,6,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(88,'2025-10-20 14:41:39.968295','2025-10-20 14:41:40.520744','jour','type/Integer',NULL,0x01,NULL,0x01,3,11,NULL,'Jour','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":135,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":34.125,\"q3\":101.375,\"max\":135.0,\"sd\":38.84113301325557,\"avg\":67.75092936802974}}}',5,'INT','auto-list',NULL,3,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(89,'2025-10-20 14:41:39.968295','2025-10-20 14:41:40.520744','groupe','type/Text','type/Category',0x01,NULL,0x01,5,11,NULL,'Groupe','normal',NULL,'2025-10-20 14:41:40.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":14.5}}}',5,'VARCHAR','auto-list',NULL,5,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(90,'2025-10-20 14:41:39.968295','2025-10-20 14:41:39.968295','id','type/Integer','type/PK',0x01,NULL,0x01,0,11,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x00,0x00,0x01,NULL,NULL,0x00,0),
(91,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','region','type/Text','type/Category',0x01,NULL,0x01,1,13,NULL,'Region','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":14,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":4.0}}}',5,'VARCHAR','auto-list',NULL,1,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(92,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','grippe_plus_65','type/Float',NULL,0x01,NULL,0x01,3,13,NULL,'Grippe Plus 65','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":110,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.5905194104111885,\"q3\":30.677777777777777,\"max\":44.1,\"sd\":15.207660116320438,\"avg\":16.139915966386557}}}',5,'DOUBLE',NULL,NULL,3,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(93,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','grippe_pro_ehpad','type/Float',NULL,0x01,NULL,0x01,7,13,NULL,'Grippe Pro Ehpad','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.0,\"q3\":0.0,\"max\":0.0,\"sd\":0.0,\"avg\":0.0}}}',5,'DOUBLE',NULL,NULL,7,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(94,'2025-10-21 10:00:12.137231','2025-10-21 10:00:12.137231','id','type/Integer','type/PK',0x01,NULL,0x01,0,13,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x00,0x00,0x01,NULL,NULL,0x00,0),
(95,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','grippe_residents_ehpad','type/Float',NULL,0x01,NULL,0x01,6,13,NULL,'Grippe Residents Ehpad','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":40,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.0,\"q3\":9.149538008918737,\"max\":67.5,\"sd\":23.00388912790708,\"avg\":10.842857142857142}}}',5,'DOUBLE',NULL,NULL,6,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(96,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','grippe_moins_65_risque','type/Float',NULL,0x01,NULL,0x01,2,13,NULL,'Grippe Moins 65 Risque','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.0,\"q3\":0.0,\"max\":0.0,\"sd\":0.0,\"avg\":0.0}}}',5,'DOUBLE',NULL,NULL,2,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(97,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','grippe_plus_75','type/Float',NULL,0x01,NULL,0x01,5,13,NULL,'Grippe Plus 75','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":45,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.0,\"q3\":5.645459622524327,\"max\":56.3,\"sd\":18.004167041209715,\"avg\":8.396638655462187}}}',5,'DOUBLE',NULL,NULL,5,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(98,'2025-10-21 10:00:12.137231','2025-10-21 10:00:13.101036','grippe_65_74','type/Float',NULL,0x01,NULL,0x01,4,13,NULL,'Grippe 65 74','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":102,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":1.3507107276822992,\"q3\":53.287308087905004,\"max\":65.5,\"sd\":26.0691437070647,\"avg\":28.297058823529415}}}',5,'DOUBLE',NULL,NULL,4,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(99,'2025-10-21 10:00:12.158602','2025-10-21 10:00:12.158602','id','type/Integer','type/PK',0x01,NULL,0x01,0,12,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x00,0x00,0x01,NULL,NULL,0x00,0),
(100,'2025-10-21 10:00:12.158602','2025-10-21 10:03:47.796844','groupe','type/Text','type/Category',0x01,NULL,0x01,4,12,NULL,'Groupe','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":10.5}}}',5,'VARCHAR','auto-list',NULL,4,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(101,'2025-10-21 10:00:12.158602','2025-10-21 10:00:13.101036','annee','type/Integer',NULL,0x01,NULL,0x01,1,12,NULL,'Annee','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":6,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2020.0,\"q1\":2021.1,\"q3\":2023.5,\"max\":2025.0,\"sd\":1.4357588616379597,\"avg\":2022.2916666666667}}}',5,'INT','auto-list',NULL,1,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(102,'2025-10-21 10:00:12.158602','2025-10-21 10:03:47.786373','variable','type/Text','type/Category',0x01,NULL,0x01,3,12,NULL,'Variable','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":1.625}}}',5,'VARCHAR','auto-list',NULL,3,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(103,'2025-10-21 10:00:12.158602','2025-10-21 10:03:47.791580','valeur','type/Integer',NULL,0x01,NULL,0x01,5,12,NULL,'Valeur','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.0,\"q3\":65.0,\"max\":65.0,\"sd\":32.67060484675225,\"avg\":32.5}}}',5,'INT','auto-list',NULL,5,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(104,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','taux_urg_grippe','type/Float',NULL,0x01,NULL,0x01,5,14,NULL,'Taux Urg Grippe','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5646,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":64.21256138527507,\"q3\":596.4551336492731,\"max\":19464.03038725,\"sd\":1380.9587721051826,\"avg\":668.4729071003338}}}',5,'DOUBLE',NULL,NULL,5,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(105,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','taux_sos_med_grippe','type/Float',NULL,0x01,NULL,0x01,7,14,NULL,'Taux Sos Med Grippe','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":4638,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":114.33745850440177,\"q3\":2973.2144398401033,\"max\":40394.95311075,\"sd\":4985.5478880108585,\"avg\":2773.880792031317}}}',5,'DOUBLE',NULL,NULL,7,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(106,'2025-10-21 10:00:12.181993','2025-10-21 10:00:12.181993','id','type/Integer','type/PK',0x01,NULL,0x01,0,14,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x00,0x00,0x01,NULL,NULL,0x00,0),
(107,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','mois','type/Integer',NULL,0x01,NULL,0x01,2,14,NULL,'Mois','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":12,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":3.4583333333333335,\"q3\":9.375,\"max\":12.0,\"sd\":3.434694294980431,\"avg\":6.436619718309859}}}',5,'INT','auto-list',NULL,2,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(108,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','region','type/Text','type/Category',0x01,NULL,0x01,3,14,NULL,'Region','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":18,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":12.777777777777779}}}',5,'VARCHAR','auto-list',NULL,3,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(109,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','annee','type/Integer',NULL,0x01,NULL,0x01,1,14,NULL,'Annee','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":7,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2019.0,\"q1\":2020.8958333333333,\"q3\":2023.8541666666667,\"max\":2025.0,\"sd\":1.7147457617794928,\"avg\":2022.380281690141}}}',5,'INT','auto-list',NULL,1,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(110,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','age','type/Text','type/Category',0x01,NULL,0x01,4,14,NULL,'Age','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":10.0}}}',5,'VARCHAR','auto-list',NULL,4,0,'type/Text',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(111,'2025-10-21 10:00:12.181993','2025-10-21 10:00:13.101036','taux_hosp_grippe','type/Float',NULL,0x01,NULL,0x01,6,14,NULL,'Taux Hosp Grippe','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":3990,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":11.95628503868179,\"q3\":388.50139173021347,\"max\":23791.4862915,\"sd\":1226.7684305856553,\"avg\":505.6986015714706}}}',5,'DOUBLE',NULL,NULL,6,0,'type/Float',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(112,'2025-10-21 10:00:12.219601','2025-10-21 10:00:13.101036','nom','type/Text','type/Category',0x01,NULL,0x01,1,15,NULL,'Nom','normal',NULL,'2025-10-21 10:00:13.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":12.0}}}',5,'VARCHAR','auto-list',NULL,1,0,'type/Text',NULL,NULL,0x00,0x00,0x00,NULL,NULL,0x00,0),
(113,'2025-10-21 10:00:12.219601','2025-10-21 10:00:12.219601','code','type/Integer','type/PK',0x01,NULL,0x01,0,15,NULL,'Code','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0),
(114,'2025-10-21 10:03:47.773023','2025-10-21 10:03:48.118322','mois','type/Integer',NULL,0x01,NULL,0x01,2,12,NULL,'Mois','normal',NULL,'2025-10-21 10:03:48.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":1.7573593128807152,\"q3\":11.3,\"max\":12.0,\"sd\":4.705353427447611,\"avg\":7.416666666666667}}}',5,'INT','auto-list',NULL,2,0,'type/Integer',NULL,NULL,0x01,0x00,0x00,NULL,NULL,0x00,0);
/*!40000 ALTER TABLE `metabase_field` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabase_field_user_settings`
--

DROP TABLE IF EXISTS `metabase_field_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_field_user_settings` (
  `field_id` int(11) NOT NULL COMMENT 'The related Field',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the user setting was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the user setting was updated',
  `semantic_type` varchar(254) DEFAULT NULL COMMENT 'User-set semantic_type for the Field',
  `description` longtext DEFAULT NULL COMMENT 'User-set description for the Field',
  `display_name` varchar(254) DEFAULT NULL COMMENT 'User-set display_name for the Field',
  `visibility_type` varchar(32) DEFAULT NULL COMMENT 'User-set visibility_type for the Field',
  `fk_target_field_id` int(11) DEFAULT NULL COMMENT 'User-set fk_target_field_id for the Field',
  `has_field_values` longtext DEFAULT NULL COMMENT 'User-set has_field_values for the Field',
  `effective_type` varchar(255) DEFAULT NULL COMMENT 'User-set effective_type for the Field',
  `coercion_strategy` varchar(255) DEFAULT NULL COMMENT 'User-set coercion_strategy for the Field',
  `caveats` longtext DEFAULT NULL COMMENT 'User-set caveats for the Field',
  `points_of_interest` longtext DEFAULT NULL COMMENT 'User-set points_of_interest for the Field',
  `nfc_path` varchar(254) DEFAULT NULL COMMENT 'User-set nfc_path for the Field',
  `json_unfolding` bit(1) DEFAULT NULL COMMENT 'User-set json_unfolding for the Field',
  `settings` longtext DEFAULT NULL COMMENT 'User-set settings for the Field',
  PRIMARY KEY (`field_id`),
  CONSTRAINT `fk_field_user_setting_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mirror table of metabase_field to keep track of user-set values (only settable fields are mirrored)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_field_user_settings`
--

LOCK TABLES `metabase_field_user_settings` WRITE;
/*!40000 ALTER TABLE `metabase_field_user_settings` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `metabase_field_user_settings` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabase_fieldvalues`
--

DROP TABLE IF EXISTS `metabase_fieldvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_fieldvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `values` longtext DEFAULT NULL,
  `human_readable_values` longtext DEFAULT NULL,
  `field_id` int(11) NOT NULL,
  `has_more_values` bit(1) DEFAULT b'0',
  `type` varchar(32) NOT NULL DEFAULT 'full' COMMENT 'Type of FieldValues',
  `hash_key` longtext DEFAULT NULL COMMENT 'Hash key for a cached fieldvalues',
  `last_used_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Timestamp of when these FieldValues were last used.',
  PRIMARY KEY (`id`),
  KEY `idx_fieldvalues_field_id` (`field_id`),
  CONSTRAINT `fk_fieldvalues_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_fieldvalues`
--

LOCK TABLES `metabase_fieldvalues` WRITE;
/*!40000 ALTER TABLE `metabase_fieldvalues` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `metabase_fieldvalues` VALUES
(1,'2025-10-21 12:02:38.165568','2025-10-21 23:00:00.096586','[\"Auvergne-Rhône-Alpes\",\"Bourgogne-Franche-Comté\",\"Bretagne\",\"Centre-Val de Loire\",\"Corse\",\"Grand Est\",\"Guadeloupe\",\"Guyane\",\"Hauts-de-France\",\"Île-de-France\",\"Martinique\",\"Mayotte\",\"Normandie\",\"Nouvelle-Aquitaine\",\"Occitanie\",\"Pays de la Loire\",\"Provence-Alpes-Côte d\'Azur\",\"Réunion\"]',NULL,108,0x00,'full',NULL,'2025-10-21 12:02:38.165568'),
(2,'2025-10-21 12:02:52.241019','2025-10-21 23:00:00.107171','[\"Auvergne-Rhône-Alpes\",\"Bourgogne-Franche-Comté\",\"Bretagne\",\"Centre-Val de Loire\",\"Corse\",\"Grand Est\",\"Guadeloupe\",\"Guyane\",\"Hauts-de-France\",\"Île-de-France\",\"La Réunion\",\"Martinique\",\"Mayotte\",\"Normandie\",\"Nouvelle-Aquitaine\",\"Occitanie\",\"Pays de la Loire\",\"Provence-Alpes-Côte d\'Azur\"]',NULL,112,0x00,'full',NULL,'2025-10-21 12:02:52.241019'),
(3,'2025-10-21 12:41:37.711504','2025-10-21 12:41:37.711504','[\"ACTE(VGP)\",\"DOSES(J07E1)\"]',NULL,102,0x00,'full',NULL,'2025-10-21 12:41:37.711504');
/*!40000 ALTER TABLE `metabase_fieldvalues` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabase_table`
--

DROP TABLE IF EXISTS `metabase_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `entity_type` varchar(254) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `db_id` int(11) NOT NULL,
  `display_name` varchar(256) DEFAULT NULL,
  `visibility_type` varchar(254) DEFAULT NULL,
  `schema` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `points_of_interest` longtext DEFAULT NULL,
  `caveats` longtext DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `field_order` varchar(254) NOT NULL DEFAULT 'database',
  `initial_sync_status` varchar(32) NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a table has completed its initial sync and is ready to use',
  `is_upload` bit(1) NOT NULL DEFAULT b'0',
  `database_require_filter` bit(1) DEFAULT NULL,
  `estimated_row_count` bigint(20) DEFAULT NULL COMMENT 'The estimated row count',
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT 'Keeps a running count of card views',
  `is_defective_duplicate` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicates whether the table is a defective duplicate that should never have been created.',
  `unique_table_helper` varchar(254) GENERATED ALWAYS AS (case when `is_defective_duplicate` = 1 then NULL else coalesce(`schema`,'') end) STORED,
  `deactivated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp when the table was deactivated (active changed from true to false)',
  `archived_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp when the table was marked for archiving',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_table_db_id_schema_name` (`db_id`,`schema`,`name`),
  UNIQUE KEY `idx_unique_table` (`db_id`,`name`,`unique_table_helper`),
  KEY `idx_table_db_id` (`db_id`),
  KEY `idx_metabase_table_show_in_getting_started` (`show_in_getting_started`),
  KEY `idx_metabase_table_db_id_schema` (`db_id`,`schema`),
  CONSTRAINT `fk_table_ref_database_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_table`
--

LOCK TABLES `metabase_table` WRITE;
/*!40000 ALTER TABLE `metabase_table` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `metabase_table` VALUES
(9,'2025-10-20 14:41:39.835050','2025-10-21 10:00:12.423548','Campagne2023',NULL,'entity/GenericTable',0x01,2,'Campagne2023',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,2,0x00,'',NULL,NULL),
(10,'2025-10-20 14:41:39.858841','2025-10-21 10:00:12.423548','Couverture2023',NULL,'entity/GenericTable',0x01,2,'Couverture2023',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,4,0x00,'',NULL,NULL),
(11,'2025-10-20 14:41:39.877541','2025-10-21 10:00:12.423548','DosesActes2023',NULL,'entity/GenericTable',0x01,2,'DosesActes2023',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,1,0x00,'',NULL,NULL),
(12,'2025-10-21 10:00:11.938018','2025-10-21 10:00:13.062334','dfIqvia',NULL,'entity/GenericTable',0x01,2,'DfIqvia',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,9,0x00,'',NULL,NULL),
(13,'2025-10-21 10:00:11.984302','2025-10-21 10:00:13.066621','dfCov',NULL,'entity/GenericTable',0x01,2,'DfCov',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,0,0x00,'',NULL,NULL),
(14,'2025-10-21 10:00:12.014341','2025-10-21 10:00:13.071020','dfUrg',NULL,'entity/GenericTable',0x01,2,'DfUrg',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,1,0x00,'',NULL,NULL),
(15,'2025-10-21 10:00:12.043598','2025-10-21 10:00:13.075583','Regions',NULL,'entity/GenericTable',0x01,2,'Regions',NULL,NULL,NULL,NULL,0x00,'database','complete',0x00,NULL,NULL,2,0x00,'',NULL,NULL);
/*!40000 ALTER TABLE `metabase_table` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabot`
--

DROP TABLE IF EXISTS `metabot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL COMMENT 'The name of the metabot',
  `description` longtext DEFAULT NULL COMMENT 'Description of the metabot',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the metabot was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the metabot was updated',
  `use_verified_content` bit(1) DEFAULT b'0' COMMENT 'Whether this metabot should only use verified content',
  `collection_id` int(11) DEFAULT NULL COMMENT 'ID of the collection this metabot can access',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Metabot configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabot`
--

LOCK TABLES `metabot` WRITE;
/*!40000 ALTER TABLE `metabot` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `metabot` VALUES
(1,'Metabot','Metabot instance for internal users.','metabotmetabotmetabot','2025-10-20 14:38:44.000000','2025-10-20 14:38:44.000000',0x00,NULL),
(2,'Embedded Metabot','Metabot instance for embedded metabase users.','embeddedmetabotmetabo','2025-10-20 14:38:44.000000','2025-10-20 14:38:44.000000',0x00,NULL);
/*!40000 ALTER TABLE `metabot` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabot_conversation`
--

DROP TABLE IF EXISTS `metabot_conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabot_conversation` (
  `id` varchar(36) NOT NULL COMMENT 'Conversation UUID',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'created_at',
  `user_id` int(11) NOT NULL COMMENT 'Reference to user having the conversation',
  `summary` longtext DEFAULT NULL COMMENT 'Auto-generated summary for the conversation',
  `state` longtext DEFAULT NULL COMMENT 'Metabot conversation state',
  PRIMARY KEY (`id`),
  KEY `idx_metabot_conversation_user_id` (`user_id`),
  CONSTRAINT `fk_metabot_conversation_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store metabot conversation messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabot_conversation`
--

LOCK TABLES `metabot_conversation` WRITE;
/*!40000 ALTER TABLE `metabot_conversation` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `metabot_conversation` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabot_message`
--

DROP TABLE IF EXISTS `metabot_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabot_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Autoincrement PK',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'created_at',
  `profile_id` longtext NOT NULL COMMENT 'ai-service profile used to perform the conversation',
  `role` varchar(20) NOT NULL COMMENT 'Role of the sender',
  `data` longtext NOT NULL COMMENT 'Full message content',
  `usage` longtext DEFAULT NULL COMMENT 'Can be null for user messages; {"<model-name>": {"prompt": 1, "completion": 2}}',
  `total_tokens` int(11) NOT NULL COMMENT 'A sum of all prompt+completion from `usage`',
  `conversation_id` varchar(36) NOT NULL COMMENT 'Reference to a conversation',
  PRIMARY KEY (`id`),
  KEY `idx_metabot_message_conversation_id` (`conversation_id`),
  CONSTRAINT `fk_metabot_message_conversation_id` FOREIGN KEY (`conversation_id`) REFERENCES `metabot_conversation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store metabot conversation messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabot_message`
--

LOCK TABLES `metabot_message` WRITE;
/*!40000 ALTER TABLE `metabot_message` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `metabot_message` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metabot_prompt`
--

DROP TABLE IF EXISTS `metabot_prompt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabot_prompt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(32) NOT NULL COMMENT 'The type of the entity this prompt is about',
  `card_id` int(11) NOT NULL COMMENT 'The ID of the model or metric this prompt is about',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity',
  `prompt` longtext NOT NULL COMMENT 'The text of the prompt',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the prompt was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the prompt was updated',
  `metabot_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_metabot_prompt_card_id` (`card_id`),
  KEY `idx_metabot_prompt_metabot_id` (`metabot_id`),
  CONSTRAINT `fk_metabot_prompt_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metabot_prompt_metabot_id` FOREIGN KEY (`metabot_id`) REFERENCES `metabot` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Prompts of a metabot entity';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabot_prompt`
--

LOCK TABLES `metabot_prompt` WRITE;
/*!40000 ALTER TABLE `metabot_prompt` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `metabot_prompt` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metric`
--

DROP TABLE IF EXISTS `metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metric` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `points_of_interest` longtext DEFAULT NULL,
  `caveats` longtext DEFAULT NULL,
  `how_is_this_calculated` longtext DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_metric_creator_id` (`creator_id`),
  KEY `idx_metric_table_id` (`table_id`),
  KEY `idx_metric_show_in_getting_started` (`show_in_getting_started`),
  CONSTRAINT `fk_metric_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metric_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `metric` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `metric_important_field`
--

DROP TABLE IF EXISTS `metric_important_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `metric_important_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metric_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_metric_important_field_metric_id_field_id` (`metric_id`,`field_id`),
  KEY `idx_metric_important_field_metric_id` (`metric_id`),
  KEY `idx_metric_important_field_field_id` (`field_id`),
  CONSTRAINT `fk_metric_important_field_metabase_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metric_important_field_metric_id` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric_important_field`
--

LOCK TABLES `metric_important_field` WRITE;
/*!40000 ALTER TABLE `metric_important_field` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `metric_important_field` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `model_index`
--

DROP TABLE IF EXISTS `model_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) DEFAULT NULL COMMENT 'The ID of the indexed model.',
  `pk_ref` longtext NOT NULL COMMENT 'Serialized JSON of the primary key field ref.',
  `value_ref` longtext NOT NULL COMMENT 'Serialized JSON of the label field ref.',
  `schedule` longtext NOT NULL COMMENT 'The cron schedule for when value syncing should happen.',
  `state` longtext NOT NULL COMMENT 'The status of the index: initializing, indexed, error, overflow.',
  `indexed_at` timestamp(6) NULL DEFAULT NULL COMMENT 'When the status changed',
  `error` longtext DEFAULT NULL COMMENT 'The error message if the status is error.',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when these changes were made.',
  `creator_id` int(11) NOT NULL COMMENT 'ID of the user who created the event',
  PRIMARY KEY (`id`),
  KEY `fk_model_index_creator_id` (`creator_id`),
  KEY `idx_model_index_model_id` (`model_id`),
  CONSTRAINT `fk_model_index_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_model_index_model_id` FOREIGN KEY (`model_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of which models have indexed columns.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_index`
--

LOCK TABLES `model_index` WRITE;
/*!40000 ALTER TABLE `model_index` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `model_index` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `model_index_value`
--

DROP TABLE IF EXISTS `model_index_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_index_value` (
  `model_index_id` int(11) DEFAULT NULL COMMENT 'The ID of the indexed model.',
  `model_pk` bigint(20) DEFAULT NULL,
  `name` longtext NOT NULL COMMENT 'The label to display identifying the indexed value.',
  UNIQUE KEY `unique_model_index_value_model_index_id_model_pk` (`model_index_id`,`model_pk`),
  CONSTRAINT `fk_model_index_value_model_id` FOREIGN KEY (`model_index_id`) REFERENCES `model_index` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of the values indexed in a model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_index_value`
--

LOCK TABLES `model_index_value` WRITE;
/*!40000 ALTER TABLE `model_index_value` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `model_index_value` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `moderation_review`
--

DROP TABLE IF EXISTS `moderation_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderation_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'most recent modification time',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'creation time',
  `status` varchar(255) DEFAULT NULL COMMENT 'verified, misleading, confusing, not_misleading, pending',
  `text` longtext DEFAULT NULL,
  `moderated_item_id` int(11) NOT NULL COMMENT 'either a document or question ID; the item that needs review',
  `moderated_item_type` varchar(255) NOT NULL COMMENT 'whether it''s a question or dashboard',
  `moderator_id` int(11) NOT NULL COMMENT 'ID of the user who did the review',
  `most_recent` bit(1) NOT NULL COMMENT 'tag for most recent review',
  PRIMARY KEY (`id`),
  KEY `idx_moderation_review_item_type_item_id` (`moderated_item_type`,`moderated_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reviews (from moderators) for a given question/dashboard (BUCM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderation_review`
--

LOCK TABLES `moderation_review` WRITE;
/*!40000 ALTER TABLE `moderation_review` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `moderation_review` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `native_query_snippet`
--

DROP TABLE IF EXISTS `native_query_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `native_query_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL COMMENT 'Name of the query snippet',
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `collection_id` int(11) DEFAULT NULL COMMENT 'ID of the Snippet Folder (Collection) this Snippet is in, if any',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_snippet_creator_id` (`creator_id`),
  KEY `idx_snippet_name` (`name`),
  KEY `idx_snippet_collection_id` (`collection_id`),
  CONSTRAINT `fk_snippet_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_snippet_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Query snippets (raw text) to be substituted in native queries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `native_query_snippet`
--

LOCK TABLES `native_query_snippet` WRITE;
/*!40000 ALTER TABLE `native_query_snippet` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `native_query_snippet` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payload_type` varchar(64) NOT NULL COMMENT 'the type of the payload',
  `active` bit(1) NOT NULL DEFAULT b'1' COMMENT 'whether the notification is active',
  `created_at` timestamp(6) NOT NULL COMMENT 'The timestamp of when the notification was created',
  `updated_at` timestamp(6) NOT NULL COMMENT 'The timestamp of when the notification was updated',
  `internal_id` varchar(254) DEFAULT NULL COMMENT 'the internal id of the notification',
  `payload_id` int(11) DEFAULT NULL COMMENT 'the internal id of the notification',
  `creator_id` int(11) DEFAULT NULL COMMENT 'the id of the creator',
  PRIMARY KEY (`id`),
  UNIQUE KEY `internal_id` (`internal_id`),
  KEY `idx_notification_creator_id` (`creator_id`),
  CONSTRAINT `fk_notification_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='join table that connect notification subscriptions and notification handlers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `notification` VALUES
(1,'notification/system-event',0x01,'2025-10-20 14:38:47.172974','2025-10-20 14:38:47.172974','system-event/user-invited',NULL,NULL),
(2,'notification/system-event',0x01,'2025-10-20 14:38:47.192746','2025-10-20 14:38:47.192746','system-event/alert-new-confirmation',NULL,NULL),
(3,'notification/system-event',0x01,'2025-10-20 14:38:47.202121','2025-10-20 14:38:47.202121','system-event/slack-token-error',NULL,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `notification_card`
--

DROP TABLE IF EXISTS `notification_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) DEFAULT NULL COMMENT 'the card that the alert is connected to',
  `send_once` bit(1) NOT NULL DEFAULT b'0' COMMENT 'whether the alert should only run once',
  `send_condition` varchar(32) NOT NULL COMMENT 'the condition of the alert',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the recipient was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the recipient was updated',
  PRIMARY KEY (`id`),
  KEY `idx_notification_card_card_id` (`card_id`),
  CONSTRAINT `fk_notification_card_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Card related notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_card`
--

LOCK TABLES `notification_card` WRITE;
/*!40000 ALTER TABLE `notification_card` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `notification_card` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `notification_handler`
--

DROP TABLE IF EXISTS `notification_handler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_handler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_type` varchar(64) NOT NULL COMMENT 'the type of the channel, like :channel/email, :channel/slack',
  `notification_id` int(11) NOT NULL COMMENT 'the notification that the handler is connected to',
  `channel_id` int(11) DEFAULT NULL COMMENT 'the channel that the handler is connected to',
  `template_id` int(11) DEFAULT NULL COMMENT 'the template that the handler is connected to',
  `active` bit(1) NOT NULL DEFAULT b'1' COMMENT 'whether the handler is active',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the handler was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the handler was updated',
  PRIMARY KEY (`id`),
  KEY `idx_notification_handler_notification_id` (`notification_id`),
  KEY `idx_notification_handler_channel_id` (`channel_id`),
  KEY `idx_notification_handler_template_id` (`template_id`),
  CONSTRAINT `fk_notification_handler_channel_id` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_notification_handler_notification_id` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_notification_handler_template_id` FOREIGN KEY (`template_id`) REFERENCES `channel_template` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='which channel to send the notification to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_handler`
--

LOCK TABLES `notification_handler` WRITE;
/*!40000 ALTER TABLE `notification_handler` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `notification_handler` VALUES
(1,'channel/email',1,NULL,1,0x01,'2025-10-20 14:38:47.188116','2025-10-20 14:38:47.188116'),
(2,'channel/email',2,NULL,2,0x01,'2025-10-20 14:38:47.197889','2025-10-20 14:38:47.197889'),
(3,'channel/email',3,NULL,3,0x01,'2025-10-20 14:38:47.206419','2025-10-20 14:38:47.206419');
/*!40000 ALTER TABLE `notification_handler` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `notification_recipient`
--

DROP TABLE IF EXISTS `notification_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_recipient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_handler_id` int(11) NOT NULL COMMENT 'the handler that the recipient is connected to',
  `type` varchar(64) NOT NULL COMMENT 'the type of the recipient',
  `user_id` int(11) DEFAULT NULL COMMENT 'a user if the recipient has type user',
  `permissions_group_id` int(11) DEFAULT NULL COMMENT 'a permissions group if the recipient has type permissions_group',
  `details` longtext DEFAULT NULL COMMENT 'custom details for the recipient',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the recipient was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the recipient was updated',
  PRIMARY KEY (`id`),
  KEY `idx_notification_recipient_notification_handler_id` (`notification_handler_id`),
  KEY `idx_notification_recipient_user_id` (`user_id`),
  KEY `idx_notification_recipient_permissions_group_id` (`permissions_group_id`),
  CONSTRAINT `fk_notification_recipient_notification_handler_id` FOREIGN KEY (`notification_handler_id`) REFERENCES `notification_handler` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_notification_recipient_permissions_group_id` FOREIGN KEY (`permissions_group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_notification_recipient_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='who should receive the notification';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_recipient`
--

LOCK TABLES `notification_recipient` WRITE;
/*!40000 ALTER TABLE `notification_recipient` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `notification_recipient` VALUES
(1,1,'notification-recipient/template',NULL,NULL,'{\"pattern\":\"{{payload.event_info.object.email}}\"}','2025-10-20 14:38:47.190355','2025-10-20 14:38:47.190355'),
(2,2,'notification-recipient/template',NULL,NULL,'{\"pattern\":\"{{payload.event_info.object.creator.email}}\"}','2025-10-20 14:38:47.198788','2025-10-20 14:38:47.198788'),
(3,3,'notification-recipient/template',NULL,NULL,'{\"pattern\":\"{{context.admin_email}}\",\"is_optional\":true}','2025-10-20 14:38:47.207139','2025-10-20 14:38:47.207139'),
(4,3,'notification-recipient/group',NULL,2,NULL,'2025-10-20 14:38:47.207139','2025-10-20 14:38:47.207139');
/*!40000 ALTER TABLE `notification_recipient` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `notification_subscription`
--

DROP TABLE IF EXISTS `notification_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL COMMENT 'the notification that the subscription is connected to',
  `type` varchar(64) NOT NULL COMMENT 'the type of the subscription',
  `event_name` varchar(64) DEFAULT NULL COMMENT 'the event name of subscriptions with type :notification-subscription/system-event',
  `created_at` timestamp(6) NOT NULL COMMENT 'The timestamp of when the subscription was created',
  `cron_schedule` varchar(128) DEFAULT NULL COMMENT 'the cron schedule for the subscription',
  `ui_display_type` varchar(32) DEFAULT NULL COMMENT 'the display of the subscription, used for the UI only',
  PRIMARY KEY (`id`),
  KEY `idx_notification_subscription_notification_id` (`notification_id`),
  CONSTRAINT `fk_notification_subscription_notification_id` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='which type of trigger a notification is subscribed to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_subscription`
--

LOCK TABLES `notification_subscription` WRITE;
/*!40000 ALTER TABLE `notification_subscription` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `notification_subscription` VALUES
(1,1,'notification-subscription/system-event','event/user-invited','2025-10-20 14:38:47.179130',NULL,NULL),
(2,2,'notification-subscription/system-event','event/notification-create','2025-10-20 14:38:47.194261',NULL,NULL),
(3,3,'notification-subscription/system-event','event/slack-token-invalid','2025-10-20 14:38:47.203389',NULL,NULL);
/*!40000 ALTER TABLE `notification_subscription` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `parameter_card`
--

DROP TABLE IF EXISTS `parameter_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameter_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'most recent modification time',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'creation time',
  `card_id` int(11) NOT NULL COMMENT 'ID of the card generating the values',
  `parameterized_object_type` varchar(32) NOT NULL COMMENT 'Type of the entity consuming the values (dashboard, card, etc.)',
  `parameterized_object_id` int(11) NOT NULL COMMENT 'ID of the entity consuming the values',
  `parameter_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_parameterized_object_card_parameter` (`parameterized_object_id`,`parameterized_object_type`,`parameter_id`),
  KEY `idx_parameter_card_parameterized_object_id` (`parameterized_object_id`),
  KEY `idx_parameter_card_card_id` (`card_id`),
  CONSTRAINT `fk_parameter_card_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Join table connecting cards to entities (dashboards, other cards, etc.) that use the values generated by the card for filter values';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameter_card`
--

LOCK TABLES `parameter_card` WRITE;
/*!40000 ALTER TABLE `parameter_card` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `parameter_card` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object` varchar(254) NOT NULL,
  `group_id` int(11) NOT NULL,
  `perm_value` varchar(64) DEFAULT NULL COMMENT 'The value of the permission',
  `perm_type` varchar(64) DEFAULT NULL COMMENT 'The type of the permission',
  `collection_id` int(11) DEFAULT NULL COMMENT 'The linked collection, if applicable',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`object`),
  KEY `idx_permissions_group_id` (`group_id`),
  KEY `idx_permissions_object` (`object`),
  KEY `idx_permissions_group_id_object` (`group_id`,`object`),
  KEY `idx_permissions_collection_id` (`collection_id`),
  KEY `idx_permissions_perm_type` (`perm_type`),
  KEY `idx_permissions_perm_value` (`perm_value`),
  CONSTRAINT `fk_permissions_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_permissions_ref_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `permissions` VALUES
(1,'/',2,NULL,NULL,NULL),
(2,'/collection/root/',1,NULL,NULL,NULL),
(3,'/application/subscription/',1,NULL,NULL,NULL),
(4,'/collection/namespace/snippets/root/',1,NULL,NULL,NULL),
(5,'/collection/1/',1,NULL,NULL,NULL),
(6,'/collection/2/',1,'read-and-write','perms/collection-access',2);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `permissions_group`
--

DROP TABLE IF EXISTS `permissions_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `entity_id` char(21) DEFAULT NULL COMMENT 'NanoID tag for each user',
  `magic_group_type` varchar(254) DEFAULT NULL COMMENT 'The magic_group_type of the permissions_group',
  `is_tenant_group` bit(1) NOT NULL DEFAULT b'0' COMMENT 'true iff this is a Tenant Group',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permissions_group_name` (`name`),
  UNIQUE KEY `entity_id` (`entity_id`),
  UNIQUE KEY `magic_group_type` (`magic_group_type`),
  KEY `idx_permissions_group_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_group`
--

LOCK TABLES `permissions_group` WRITE;
/*!40000 ALTER TABLE `permissions_group` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `permissions_group` VALUES
(1,'All Users',NULL,'all-internal-users',0x00),
(2,'Administrators',NULL,'admin',0x00);
/*!40000 ALTER TABLE `permissions_group` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `permissions_group_membership`
--

DROP TABLE IF EXISTS `permissions_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_group_membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permissions_group_membership_user_id_group_id` (`user_id`,`group_id`),
  KEY `idx_permissions_group_membership_group_id` (`group_id`),
  KEY `idx_permissions_group_membership_user_id` (`user_id`),
  KEY `idx_permissions_group_membership_group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `fk_permissions_group_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_permissions_group_membership_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_group_membership`
--

LOCK TABLES `permissions_group_membership` WRITE;
/*!40000 ALTER TABLE `permissions_group_membership` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `permissions_group_membership` VALUES
(1,13371338,1,0x00),
(2,13371339,1,0x00),
(3,13371339,2,0x00),
(4,13371340,1,0x00),
(5,13371340,2,0x00);
/*!40000 ALTER TABLE `permissions_group_membership` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `permissions_revision`
--

DROP TABLE IF EXISTS `permissions_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `before` longtext DEFAULT NULL,
  `after` longtext DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `remark` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permissions_revision_user_id` (`user_id`),
  CONSTRAINT `fk_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_revision`
--

LOCK TABLES `permissions_revision` WRITE;
/*!40000 ALTER TABLE `permissions_revision` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `permissions_revision` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `persisted_info`
--

DROP TABLE IF EXISTS `persisted_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `persisted_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `database_id` int(11) NOT NULL COMMENT 'ID of the database associated to the persisted card',
  `card_id` int(11) DEFAULT NULL,
  `question_slug` longtext NOT NULL COMMENT 'Slug of the card which will form the persisted table name',
  `table_name` longtext NOT NULL COMMENT 'Name of the table persisted',
  `definition` longtext DEFAULT NULL COMMENT 'JSON object that captures the state of the table when we persisted',
  `query_hash` longtext DEFAULT NULL COMMENT 'Hash of the query persisted',
  `active` bit(1) NOT NULL DEFAULT b'0',
  `state` longtext NOT NULL COMMENT 'Persisted table state (creating, persisted, refreshing, deleted)',
  `refresh_begin` timestamp(6) NOT NULL COMMENT 'The timestamp of when the most recent refresh was started',
  `refresh_end` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp of when the most recent refresh ended',
  `state_change_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp of when the most recent state changed',
  `error` longtext DEFAULT NULL COMMENT 'Error message from persisting if applicable',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the model was first persisted',
  `creator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_id` (`card_id`),
  KEY `fk_persisted_info_database_id` (`database_id`),
  KEY `fk_persisted_info_ref_creator_id` (`creator_id`),
  CONSTRAINT `fk_persisted_info_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_persisted_info_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_persisted_info_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding information about persisted models';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persisted_info`
--

LOCK TABLES `persisted_info` WRITE;
/*!40000 ALTER TABLE `persisted_info` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `persisted_info` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pulse`
--

DROP TABLE IF EXISTS `pulse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `skip_if_empty` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Skip a scheduled Pulse if none of its questions have any results',
  `alert_condition` varchar(254) DEFAULT NULL COMMENT 'Condition (i.e. "rows" or "goal") used as a guard for alerts',
  `alert_first_only` bit(1) DEFAULT NULL COMMENT 'True if the alert should be disabled after the first notification',
  `alert_above_goal` bit(1) DEFAULT NULL COMMENT 'For a goal condition, alert when above the goal',
  `collection_id` int(11) DEFAULT NULL COMMENT 'Options ID of Collection this Pulse belongs to.',
  `collection_position` smallint(6) DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `archived` bit(1) DEFAULT b'0' COMMENT 'Has this pulse been archived?',
  `dashboard_id` int(11) DEFAULT NULL COMMENT 'ID of the Dashboard if this Pulse is a Dashboard Subscription.',
  `parameters` longtext DEFAULT NULL,
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_creator_id` (`creator_id`),
  KEY `idx_pulse_collection_id` (`collection_id`),
  KEY `fk_pulse_ref_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_pulse_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_pulse_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse`
--

LOCK TABLES `pulse` WRITE;
/*!40000 ALTER TABLE `pulse` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `pulse` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pulse_card`
--

DROP TABLE IF EXISTS `pulse_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pulse_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `include_csv` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a CSV of the data should be included for this pulse card',
  `include_xls` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a XLS of the data should be included for this pulse card',
  `dashboard_card_id` int(11) DEFAULT NULL COMMENT 'If this Pulse is a Dashboard subscription, the ID of the DashboardCard that corresponds to this PulseCard.',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `format_rows` bit(1) DEFAULT b'1' COMMENT 'Whether or not to apply formatting to the rows of the export',
  `pivot_results` bit(1) DEFAULT b'0' COMMENT 'Whether or not to apply pivot processing to the rows of the export',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_card_pulse_id` (`pulse_id`),
  KEY `idx_pulse_card_card_id` (`card_id`),
  KEY `fk_pulse_card_ref_pulse_card_id` (`dashboard_card_id`),
  CONSTRAINT `fk_pulse_card_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_card_ref_pulse_card_id` FOREIGN KEY (`dashboard_card_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_card_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_card`
--

LOCK TABLES `pulse_card` WRITE;
/*!40000 ALTER TABLE `pulse_card` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `pulse_card` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pulse_channel`
--

DROP TABLE IF EXISTS `pulse_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pulse_id` int(11) NOT NULL,
  `channel_type` varchar(32) NOT NULL,
  `details` longtext DEFAULT NULL,
  `schedule_type` varchar(32) NOT NULL,
  `schedule_hour` int(11) DEFAULT NULL,
  `schedule_day` varchar(64) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `schedule_frame` varchar(32) DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `channel_id` int(11) DEFAULT NULL COMMENT 'The channel ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_channel_pulse_id` (`pulse_id`),
  KEY `idx_pulse_channel_schedule_type` (`schedule_type`),
  KEY `fk_pulse_channel_channel_id` (`channel_id`),
  CONSTRAINT `fk_pulse_channel_channel_id` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_channel_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_channel`
--

LOCK TABLES `pulse_channel` WRITE;
/*!40000 ALTER TABLE `pulse_channel` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `pulse_channel` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pulse_channel_recipient`
--

DROP TABLE IF EXISTS `pulse_channel_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_channel_recipient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pulse_channel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pulse_channel_recipient_ref_pulse_channel_id` (`pulse_channel_id`),
  KEY `fk_pulse_channel_recipient_ref_user_id` (`user_id`),
  CONSTRAINT `fk_pulse_channel_recipient_ref_pulse_channel_id` FOREIGN KEY (`pulse_channel_id`) REFERENCES `pulse_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_channel_recipient_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_channel_recipient`
--

LOCK TABLES `pulse_channel_recipient` WRITE;
/*!40000 ALTER TABLE `pulse_channel_recipient` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `pulse_channel_recipient` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `query` (
  `query_hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. (This is a 256-bit SHA3 hash of the query dict.)',
  `average_execution_time` int(11) NOT NULL COMMENT 'Average execution time for the query, round to nearest number of milliseconds. This is updated as a rolling average.',
  `query` longtext DEFAULT NULL,
  PRIMARY KEY (`query_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Information (such as average execution time) for different queries that have been previously ran.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `query` VALUES
('�Hz�ms���/S����Fۓ\"{Ҋ�k��t�',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"database\":2,\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"value\":[2021]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"value\":[12]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":[\"Tous âges\"]}]}'),
('��B�~K[2�)-H�q�l\Z^J�����&��K�/',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":null},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"region\"]],\"value\":null}]}'),
('���,��e�J�ZR�lK�.�3ANZ���z]',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('�_�x�2���\'r�S��`9��u�cV2�į',8,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('���_�Ѳ�R�l�2�\0���7c �\rYi�#',9,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('\n�S����;k�l>��h9+��¾B(ǽb�_��',8,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"8d62df2f-05e7-4024-8656-861af6b6d487\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"91581238-6109-440f-baee-0250089ac777\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, Regions.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg LEFT JOIN Regions ON regionName = Regions.nom WHERE annee = {{annee}} AND mois = {{mois}}\"},\"parameters\":[{\"id\":\"8d62df2f-05e7-4024-8656-861af6b6d487\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"91581238-6109-440f-baee-0250089ac777\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('\r�@<`���F����Ղ�����7~����D=',21,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"5\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('����N��U��4<^�r��H����;���e�',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Auvergne-Rhône-Alpes\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('�Ϯ8{�V�4�	��7�}c��<�?C�u��',439,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2020],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�\0h��G����M�}vH�n��C<����q�N��',90,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{},\"query\":\"SELECT `nom` FROM `Regions`\"},\"viz-settings\":{\"table.cell_column\":\"nom\"},\"database\":2}'),
('x��ɰ���!a��ۜQ۟m��(�',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\"},\"database\":2,\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"value\":null},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"value\":null},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":null}]}'),
('����q`��.��I�v���1`G�����',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Occitanie\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('!�4P��O���8D����4���N�G�;���',30,'{\"database\":2,\"query\":{\"source-table\":12},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('\ZJ�N��S�D�u{�jjDqG�s]<-á�?*',18,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('eX\'��2�D�TBUr$5�#N�������',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
(';zM�AX	�4^ԫj<Y\"Q����8$�',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2020],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('T���`D��󠪭/��PL�RY�`����i',4,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2}'),
('[~#\'�9�3���>wB�r�.k�;t�R-Z�E�',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Bourgogne-Franche-Comté\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('v�k�4�N9M�]�+g�H��a��8�3s�s',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}}\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('���a.�p�{&�5Ǜ�ߐ�}�N��r�	*',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2021\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('��B�����F�K���*���}垓!T',21,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"value\":[\"moins de 65 ans\"]}]}'),
('\"���h���	��� Lx9�ǡ�Kܥ~�',8,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[2022],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('$=�����\'AX�k�՝|��F6�@D�7�Q���',27,'{\"database\":2,\"type\":\"query\",\"query\":{\"source-table\":12,\"filter\":[\"=\",[\"field\",102,{\"base-type\":\"type/Text\"}],\"ACTE(VGP)\"]},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('%ܼN�(N��}2-X��v��-� �<�',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('%��0�5r�l\'w���d���ƞ�ɥ{�r��',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('(�Xr�8�e���lqS`��OS䭫~6��	�Ü',5,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"8d62df2f-05e7-4024-8656-861af6b6d487\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"91581238-6109-440f-baee-0250089ac777\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, region.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg LEFT JOIN region ON regionName = region.nom WHERE annee = {{annee}} AND mois = {{mois}}\"},\"parameters\":[{\"id\":\"8d62df2f-05e7-4024-8656-861af6b6d487\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"91581238-6109-440f-baee-0250089ac777\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('*�����ou��{0��)�D�9���\r���u��',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"value\":[\"sos_medecins\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('+�VF���&�!�7++��w���j�5�',5,'{\"database\":2,\"query\":{\"filter\":[\"between\",[\"field\",\"date\",{\"base-type\":\"type/Date\"}],\"2024-07-28T08:41:44.413Z\",\"2024-08-06T07:12:03.687Z\"],\"source-table\":\"card__41\"},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
(',�^ Ɛ<��GVz���`Vzv�t?���',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"3\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
(',�>hk|�E\r:;i���{K�(IR��	�g�;��',44,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `Couverture2023`.`id` AS `id`,\\n  `Couverture2023`.`region` AS `region`,\\n  `Couverture2023`.`code` AS `code`,\\n  `Couverture2023`.`variable` AS `variable`,\\n  `Couverture2023`.`groupe` AS `groupe`,\\n  `Couverture2023`.`valeur` AS `valeur`\\nFROM\\n  `Couverture2023`\\nWHERE\\n\\t`variable`=\'ACTE(VGP)\' AND\\n\\t`groupe`=\'moins de 65 ans\'\\nLIMIT\\n  1048575\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"code\"},\"database\":2}'),
('/�ts��g�4�:�����QpAx�����[�',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('0�A�#�.��t$�}1��O.����`����6�',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2022-12-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('1)�b(rGg���纨�ߊh\'[v�j�W��jS',20,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}}\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('2�ty�����-�����$:^V�n]\'�',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('2�\Z�5�[0�\'��	!՞���J]����',8,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT `nom` FROM `Regions`\"},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('5��3��#�U�ɮ��/�9wf�I��X�R�',18,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"15-64 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('7L���\\N ����RgR�A�c]f��E��',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisation\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('7��U�IQ����h�\\\Z�IA���\r5�R6_\"��',21,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"5\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"15-64 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('9s��L��Se�Mڼ�Sk�d�����9�`P�',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":[\"Tous âges\"]},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"region\"]],\"value\":[\"Île-de-France\"]}]}'),
(':<�m�{�����q��0y�k8\\�d���O�9',10,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, Regions.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}} LEFT JOIN Regions ON dfUrg.region = Regions.nom;\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
(';�����P����y�wL\"\0���ҍ$A��',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":null,\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('=�Wx��!��vU��%�\"Akn�H�z�nj��C',22,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('>�#��q}U�Z �ȏ-��Hr�M|�\Zk�U�',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"2\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('?wG��qt�Ò}��c��)lØ��؂̧��',2,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}}\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"15-64 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('A~���q�����DI�H�zԋ�/�Q���',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Corse\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('B�Y��_\Z���3�o�������\r()a�',13,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('C�Zf]�=��P[�k����\\����(�#��k',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Grand Est\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('D�e�Z���&k�e��;����G7�v�\Z�n4',9,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}}\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"15-64 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('Emр@���W��1T�\'R��,��q����wv',2,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, Regions.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}} LEFT JOIN Regions ON dfUrg.region = Regions.nom;\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('GP5|�F�O{1����l�#�rF7T��~',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Region.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"15-64 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('G~+,������Fk�߭�N����)��M\'�',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":null,\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('G������e{�7�T��U�)�����Xa',3,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"value\":null},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"value\":null},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":null}]}'),
('H�,�z;��/��k��\Z��CJ-�z_c�h',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, Regions.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg WHERE annee = {{annee}} AND mois = {{mois}} INNER JOIN Regions ON dfUrg.region = Regions.nom;\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('J�%�V��,f�t)쬺�T]x)�F3p�-��',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"database\":2,\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"value\":null},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"value\":null},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":null}]}'),
('M\\��p1�����a+���x�B\nIߓ�>9y\"�',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"database\":2,\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":null},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"value\":\"2025-01-01\"}]}'),
('Ml{cx�\ZO��DI\nK�F/�������n�%',10,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Bourgogne-Franche-Comté\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('Nc$��Z4����e���O��xq��+�!�&����',10,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, Regions.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg INNER JOIN Regions ON dfUrg.region = Regions.nom WHERE annee = {{annee}} AND mois = {{mois}}\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('O���η��.�s{Z�)Ԗ�_�=�Y�',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Bourgogne-Franche-Comté\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('O�l8D5bf�2=P��Ő���0�S���b?S/',8,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT dfUrg.annee as annee,\\n\\tdfUrg.mois as mois,\\n\\tRegions.code as regionCode,\\n\\tdfUrg.region as regionName,\\n\\tdfUrg.age as age,\\n\\tdfUrg.taux_urg_grippe as taux_urg,\\n\\tdfUrg.taux_hosp_grippe as taux_hosp,\\n\\tdfUrg.taux_sos_med_grippe as taux_sos_med\\nFROM dfUrg, Regions\\nWHERE annee = YEAR({{date}}) AND mois = MONTH({{date}}) AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('Q0T}����x�5����<�>�f�\'Ĉ���',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"value\":null}]}'),
('Q�3�ʤ�8�P�-yGy.n2z\Z�V���',28,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('Q��;ꂖ�w^�==�vl��|\'Z�\"?-�����',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2020],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('RCx��<.G4� ���+��xw�\"{Ne6��%v',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe,\\n  \\tWHEN {{val_filtre}} = \'hospitalisation\' THEN dfUrg.taux_hosp_grippe,\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"value\":[\"urgences\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('R�q��_����bx�RS�~�/aX\0�',23,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"9\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
(']z�\"����]M�6q�-l7m�N��JS��-#]',260,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Corse\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('_��M�o%�D�OT�ΠU��|�POBsO��a�',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2023\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"5\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('_�<���S�4�H�P\\���B)�������>OM',9,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('`\\E���JnjL���^9#�����nWH�9d�_`',40,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"9\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('cUt3mM}�玑��Ч��f揀Cw��H��',13,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2019\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('c��gf��dIy�7�cpH��D	��i��v��Rf',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[9],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('e��F} ?>���RN[���`r��|���!]79',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  -- `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"value\":[\"moins de 65 ans\"],\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('f����T�c�%O�\"0_���)�����&�',124,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[5],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('h��Q�;��w9��y]\\]V����ܘ��#',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"value\":[\"65 ans et plus\"],\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('i��1�u��b��쭰�\0��t��u��^�v��',18,'{\"database\":2,\"query\":{\"source-table\":15},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('l\n�Qsԏ�0.^�:`���n	1g�\n������',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2022-12-01T00:00:00Z\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('lv?�9�(���[�q�|��>�:f	��柉03�@ ',21,'{\"database\":2,\"type\":\"query\",\"query\":{\"source-table\":12,\"order-by\":[[\"asc\",[\"field\",101,{\"base-type\":\"type/Integer\"}]]]},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('l��f����l+\r6M�,�K��>%� 6q�.uG�',12,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[2024],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":[\"10\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('n��Qp�\Z��s-p�,o469k���-���',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"1\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('n��n����!��(9A.�$��\Z�֕�',11,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2020-02-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('t߇�_�������B����`�|Tqu@�(�',21,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('u�>7�O���&�&�%�>��*`:0A*\Z��7',37,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"code\"},\"database\":2,\"query\":{\"source-table\":10}}'),
('y�33�B<�[^\\�)ݪQ�B���v;,=e:',28,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans et plus\"],\"id\":\"dc75c565\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('y��fq6�>�0|b��I\Z����B�ד!�',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Auvergne-Rhône-Alpes\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('z��=�I�~�wjrm���g^ͪ����',20,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"5\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('~�0�t߼0�Gib��	�k]��}s�¢>���M�',13,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2023-01-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('�x�M�V�B�)N��N����×����]��',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Hauts-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('�?<���#���rd\'x�m\n&�:�jR���m�',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('�I��=(@�^x�ǂ5kp)���h9\rƄ	>=',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Bourgogne-Franche-Comté\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('��rJ�>EeCg\'���L�;)>�����%\0ݒ�',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  MAKEDATE(`dfIqvia`.`annee`, `dfIqvia`.`mois`, 1) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\'\"},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�@��[��{�9�!<H��Yl�@��!��\"��',26,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans et plus\"],\"id\":\"dc75c565\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('�fTUmٝ`�c�t�\Zx�����St0AǙ�\'',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"database\":2,\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":[\"Tous âges\"]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"value\":\"2025-01-01\"},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]],\"value\":null}]}'),
('�9�\"Wm�0��Q��\Z�j5�=*vǦ/Rz�',2,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�l�1k0$��ǲu�7ʏ�w�w@z{;��m��',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Occitanie\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('����$�[S��3]�Z�z<J�CᯥOw�~a',26,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�\r��y���;�s_�3ux�cJ1qUd۽r_z�',11,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2022\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"2\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('���)\0C\0T\Z(?	b���\nKx�c�/hM>',29,'{\"database\":2,\"query\":{\"source-table\":9},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('���=�,���M�����≢Zy��	���u',36,'{\"database\":2,\"query\":{\"source-table\":11},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�m�-�����cٓ�Gk$\n��P\Z7n��9s\0',2,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��ƺQ�?\\ �A|lУqRP����ӭ�',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('��b8$r�9�@پ���gF��F�/���0c\\',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2}'),
('��2%D��w�B�&!�dGĕS������TI�',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[76],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�������{�C���7Z��:>l�|�z4:i�',18,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"moins de 65 ans\"],\"id\":\"cf66663\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('�/{�k�7쟆���dr)�^��J�Ξ��ͺ9	',24,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"9\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"05-14 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�8{��m���d?آ�*��ӵ��B�ȋd�y',110,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�Y��M�����\\���L��Ƕ���rΕ��',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�@�@�a�����5-�nH�4@�S*���G��\r',10,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('����0+`������LOb�]��*F}Y�Z',20,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"database\":2,\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":[\"Tous âges\"]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"value\":\"2025-01-01\"}]}'),
('�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ',58,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"moins de 65 ans\"],\"id\":\"dc75c565\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('�?��n��>K����iv�/g��Q������',18,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2022\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"5\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('��GS�Χvw�C�	,�����:�6۾i���jo�m',13,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2025-01-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('��u7S\'�p,!�?��1J\'˂4�6��',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"type\":\"string/=\",\"value\":[\"urgences\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�`�^��y�:����U?%?�\r1Q�ߡ�)��\\',23,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\'\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2}'),
('��R��34��n���M�K\\��f//��@2���',47,'{\"database\":2,\"query\":{\"source-table\":\"card__41\"},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('���ܛ3����w�~�Wv�%�Л�(�0`�\Z',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2024-01-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('�)}���_��N5� ���u\n֞���i�n�|�',11,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Bretagne\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('�+;@�����a�[1*_�\0�܃����>�\0ɭ',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans et plus\"],\"id\":\"cf66663\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('�|5����B��N��aZ[��O�����',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"required\":true,\"display-name\":\"Age\",\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"default\":[\"Tous âges\"]},\"date\":{\"required\":true,\"type\":\"date\",\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�� ��:bø�OW��	Ħ��	x��݃�Q',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2021-04-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('�t���`��� �IJ�Hy��\n����tn�',13,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2021\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�u�D��:��ݑ��sD��r$�+�n��',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2024-01-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"type\":\"string/=\",\"value\":[\"urgences\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('��g@ŔB�Cn�4Uq*r3�چl��H�',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Centre-Val de Loire\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�\"{a\0�tz�V\Z���CB�$080�',8,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[11],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�ɦd?��#���і\\C�a����O�',10,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[44],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�>f4��L�ބ{J0�sLODp&X2{{p�Bk�',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"00-04 ans\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('�U�A�����O=��9�i8qH���9\\���7',8,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `Couverture2023`.`id` AS `id`,\\n  `Couverture2023`.`region` AS `region`,\\n  `Couverture2023`.`code` AS `code`,\\n  `Couverture2023`.`variable` AS `variable`,\\n  `Couverture2023`.`groupe` AS `groupe`,\\n  `Couverture2023`.`valeur` AS `valeur`\\nFROM\\n  `Couverture2023`\\nWHERE\\n\\t`variable`=\'ACTE(VGP)\' AND\\n\\t`groupe`=\'moins de 65 ans\'\\nLIMIT\\n  1048575\"},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��&�J��\"p�~�ꓽ�zb%�s�T���|�+N>',7,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Region.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Region.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"15-64 ans\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��U�*�,�#xF�c#\Z�]�����	�/�',16,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"text\",\"name\":\"annee\",\"id\":\"8d62df2f-05e7-4024-8656-861af6b6d487\",\"display-name\":\"Annee\"},\"mois\":{\"type\":\"text\",\"name\":\"mois\",\"id\":\"91581238-6109-440f-baee-0250089ac777\",\"display-name\":\"Mois\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, dfUrg.region as regionName, region.code as regionCode, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg LEFT JOIN region ON regionName = region.nom WHERE annee = {{annee}} AND mois = {{mois}}\"},\"parameters\":[{\"id\":\"8d62df2f-05e7-4024-8656-861af6b6d487\",\"type\":\"string/=\",\"value\":[\"2022\"],\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"91581238-6109-440f-baee-0250089ac777\",\"type\":\"string/=\",\"value\":[\"11\"],\"target\":[\"variable\",[\"template-tag\",\"mois\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�-{�?N�\0w\Z��M�b,�\\�ɍl\'���#���',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Centre-Val de Loire\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('���Ѣ\0	>�bB��������u~��W���q',36,'{\"database\":2,\"query\":{\"source-table\":14},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('���:�mo\nCf0!���p{,=���B�1���',9,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"2\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('���\r�/���Li�x��G�h�,<%G�s)�����',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2022-12-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('ĕ��[���ɐt^rW$���Mk�t�<�B��',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"type\":\"string/=\",\"value\":[\"sos_medecins\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('���0`X���e��UʕB}Odig���\r���#$;',7,'{\"type\":\"native\",\"native\":{\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  `dfIqvia`.`annee` AS `annee`,\\n  `dfIqvia`.`mois` AS `mois`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\'\\nLIMIT\\n  1048575\",\"template-tags\":{}},\"database\":2,\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�m?q�j��N�Ж�OEq%=Ý%~����\n�',21,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�w8�����k�{�*�R������Ѽ]A��C',9,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\'\"},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('ʘn4�ބ�5�I)c��Y�e��yV���	\"��J�l',5,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisation\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"value\":[\"urgences\"],\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('Э>;�\Z����=G����GI�4���q�FԻ',18,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  MAKEDATE(`dfIqvia`.`annee`, `dfIqvia`.`mois`) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\'\"},\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��2�e-�b�T���!\roQ-l4�:wv��u=',56,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"moins de 65 ans\"],\"id\":\"dc75c565\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('ԍ$*�s��@����)\0b��*��B��?4χf^',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2024-01-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('։�\'4�s32�HA�FU��R��V�2e�H ',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Grand Est\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('�R���Ļ@�}3\ZhM�M�%٢ۦ?(\Z��',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Doses disponibles\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"ordinal\",\"graph.dimensions\":[null]},\"database\":2,\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"value\":[\"65 ans et plus\"]}]}'),
('כ��W�K���JU��?���N��繀|D9',18,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Corse\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('��J�l]�ܒ)���������K�R$C�Pp�',18,'{\"type\":\"native\",\"native\":{\"query\":\"SELECT\\n  `Couverture2023`.`id` AS `id`,\\n  `Couverture2023`.`region` AS `region`,\\n  `Couverture2023`.`code` AS `code`,\\n  `Couverture2023`.`variable` AS `variable`,\\n  `Couverture2023`.`groupe` AS `groupe`,\\n  `Couverture2023`.`valeur` AS `valeur`\\nFROM\\n  `Couverture2023`\\nLIMIT\\n  1048575\",\"template-tags\":{}},\"database\":2,\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��\'X�k0dE�*IDb�ͅ�\'��	�3��',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"value\":null}]}'),
('���y�]!�E��\nN(�z�R�C\'O����',13,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2024-01-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('�о���-�\n:|X�̘�*GSEC�G�',7,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�e�E8�F��fرETP�\0h�L�!��',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"1\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�d�����r(M�n����м�㡒A��DG++',4,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\"},\"database\":2}'),
('ྦྷ�VPw�9���q��J�t���֖��r�,AL',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2}'),
('�\"2�1`��<CІ�\0O܆���]���$��',17,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2021\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('��mV�=�B���]�\\i���o�U�����E',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"},\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Auvergne-Rhône-Alpes\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"hospitalisations\"],\"id\":\"5da2a733\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]}'),
('鑊-��������¼�4�T��!�Ѝ�1?o!�?',1,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2025-01-01T00:00:00Z\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"12\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('��1�����k�E����?�\n`�E�i�',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2021\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"10\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�Hg�T�r^?�Vw�}T�\n���{�j�j�a',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Île-de-France\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('��ή�mh���T0��\'s����U~��H_��7s',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Occitanie\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�$��XU%�}	�O�Z��~Ć�0�`4gY��#e',14,'{\"database\":2,\"query\":{\"source-table\":10},\"type\":\"query\",\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��TH�A���\nR�Kf�$e�]����',22,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans et plus\"],\"id\":\"cf66663\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]}'),
('�wў���W<�=�	*���\Z��>]�q�P�',6,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"value\":[\"moins de 65 ans\"],\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��>������?�Ƃҩڪ��Evq�k��S8�',2,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":null,\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('�$[���F�Or�A_z�l�y:L�*�M��',1,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe,\\n  \\tWHEN {{val_filtre}} = \'hospitalisation\' THEN dfUrg.taux_hosp_grippe,\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"value\":\"2025-01-01\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('�L-���t:$��=��h�-���f��wR@',21,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"region\",\"name\":\"region\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2020],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[4],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('��3�D��F�&��f��ZV}mF<D�\0%썩',19,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2024\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"5\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�f�p�oA�7Ă}S�F�=\Z�l��H�G�q',15,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"},\"viz-settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"value\":[\"65 ans et plus\"]}]}'),
('�J^�2L�?ۭ3�aor��,����f���_�',1,'{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"value\":null,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"middleware\":{\"js-int-to-string?\":true,\"userland-query?\":true,\"add-default-userland-constraints?\":true}}'),
('��δ�8j��K��MX�?5r��@�4\Z��',19,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"required\":true,\"display-name\":\"Age\",\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"default\":[\"Tous âges\"]},\"date\":{\"required\":true,\"type\":\"date\",\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"database\":2,\"parameters\":[{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"value\":[\"Tous âges\"]},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"value\":\"2025-01-01\"}]}'),
('���Rm� �5=��[_�/24��$��8�',10,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[93],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"635bf5e6\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�e��ܿ����d�aWt\Zr��3�p��[��',12,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"],\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"date/single\",\"value\":\"2022-04-01\",\"id\":\"299d53ad\",\"target\":[\"variable\",[\"template-tag\",\"date\"]]}]}'),
('�-�H��\"���F��W�dQA�?̄�����',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"},\"viz-settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"database\":2,\"parameters\":[{\"type\":\"string/=\",\"value\":[\"Tous âges\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"type\":\"string/=\",\"value\":[\"Bourgogne-Franche-Comté\"],\"id\":\"9a363ccb\",\"target\":[\"variable\",[\"template-tag\",\"region\"]]}]}'),
('������l�L��]��1>H���&T:TGִ8w',16,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[2022],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[9],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}'),
('�����i��7׿�sR��`�w�����ngE',14,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"userland-query?\":true},\"cache-strategy\":null,\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"},\"viz-settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"database\":2,\"parameters\":[{\"type\":\"number/=\",\"value\":[\"2020\"],\"id\":\"5e4b7907\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"type\":\"number/=\",\"value\":[\"4\"],\"id\":\"7bcab7c8\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"type\":\"string/=\",\"value\":[\"65 ans ou plus\"],\"id\":\"97e55ba5\",\"target\":[\"variable\",[\"template-tag\",\"age\"]]}]}');
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `query_action`
--

DROP TABLE IF EXISTS `query_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_action` (
  `action_id` int(11) NOT NULL COMMENT 'The related action',
  `database_id` int(11) NOT NULL,
  `dataset_query` longtext NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `fk_query_action_database_id` (`database_id`),
  CONSTRAINT `fk_query_action_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_query_action_ref_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A readwrite query type of action';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_action`
--

LOCK TABLES `query_action` WRITE;
/*!40000 ALTER TABLE `query_action` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `query_action` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `query_cache`
--

DROP TABLE IF EXISTS `query_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_cache` (
  `query_hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. (This is a 256-bit SHA3 hash of the query dict).',
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `results` longblob DEFAULT NULL,
  PRIMARY KEY (`query_hash`),
  KEY `idx_query_cache_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cached results of queries are stored here when using the DB-based query cache.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_cache`
--

LOCK TABLES `query_cache` WRITE;
/*!40000 ALTER TABLE `query_cache` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `query_cache` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `query_execution`
--

DROP TABLE IF EXISTS `query_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_execution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. This is a 256-bit SHA3 hash of the query.',
  `started_at` timestamp(6) NULL DEFAULT NULL,
  `running_time` int(11) NOT NULL COMMENT 'The time, in milliseconds, this query took to complete.',
  `result_rows` int(11) NOT NULL COMMENT 'Number of rows in the query results.',
  `native` bit(1) NOT NULL COMMENT 'Whether the query was a native query, as opposed to an MBQL one (e.g., created with the GUI).',
  `context` varchar(32) DEFAULT NULL COMMENT 'Short string specifying how this query was executed, e.g. in a Dashboard or Pulse.',
  `error` longtext DEFAULT NULL,
  `executor_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who triggered this query execution, if any.',
  `card_id` int(11) DEFAULT NULL COMMENT 'The ID of the Card (Question) associated with this query execution, if any.',
  `dashboard_id` int(11) DEFAULT NULL COMMENT 'The ID of the Dashboard associated with this query execution, if any.',
  `pulse_id` int(11) DEFAULT NULL COMMENT 'The ID of the Pulse associated with this query execution, if any.',
  `database_id` int(11) DEFAULT NULL COMMENT 'ID of the database this query was ran against.',
  `cache_hit` bit(1) DEFAULT NULL COMMENT 'Cache hit on query execution',
  `action_id` int(11) DEFAULT NULL COMMENT 'The ID of the action associated with this query execution, if any.',
  `is_sandboxed` bit(1) DEFAULT NULL,
  `cache_hash` blob DEFAULT NULL COMMENT 'Hash of normalized query, calculated in middleware.cache',
  `embedding_client` varchar(254) DEFAULT NULL COMMENT 'Used by the embedding team to track SDK usage',
  `embedding_version` varchar(254) DEFAULT NULL COMMENT 'Used by the embedding team to track SDK version usage',
  `parameterized` bit(1) DEFAULT NULL COMMENT 'Whether or not the query has parameters with non-nil values',
  PRIMARY KEY (`id`),
  KEY `idx_query_execution_started_at` (`started_at`),
  KEY `idx_query_execution_query_hash_started_at` (`hash`,`started_at`),
  KEY `idx_query_execution_card_id` (`card_id`),
  KEY `idx_query_execution_card_id_started_at` (`card_id`,`started_at`),
  KEY `idx_query_execution_executor_id` (`executor_id`),
  KEY `idx_query_execution_context` (`context`),
  KEY `idx_query_execution_action_id` (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A log of executed queries, used for calculating historic execution times, auditing, and other purposes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_execution`
--

LOCK TABLES `query_execution` WRITE;
/*!40000 ALTER TABLE `query_execution` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `query_execution` VALUES
(1,'���)\0C\0T\Z(?	b���\nKx�c�/hM>','2025-10-20 14:44:08.498937',30,5,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(2,'�$��XU%�}	�O�Z��~Ć�0�`4gY��#e','2025-10-20 14:44:22.491515',14,52,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(3,'���)\0C\0T\Z(?	b���\nKx�c�/hM>','2025-10-20 14:47:59.017703',17,5,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(4,'���=�,���M�����≢Zy��	���u','2025-10-20 14:48:02.572989',36,1076,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(5,'�$��XU%�}	�O�Z��~Ć�0�`4gY��#e','2025-10-20 14:49:02.982242',14,52,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(6,'�$��XU%�}	�O�Z��~Ć�0�`4gY��#e','2025-10-20 14:51:12.466164',13,52,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(7,'�$��XU%�}	�O�Z��~Ć�0�`4gY��#e','2025-10-20 14:52:12.830305',13,52,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(8,'u�>7�O���&�&�%�>��*`:0A*\Z��7','2025-10-20 14:52:25.149543',41,52,0x00,'question',NULL,13371339,38,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(9,'u�>7�O���&�&�%�>��*`:0A*\Z��7','2025-10-20 14:53:18.873767',23,52,0x00,'question',NULL,13371339,38,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(10,'��J�l]�ܒ)���������K�R$C�Pp�','2025-10-20 14:56:25.747314',18,52,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(11,'�U�A�����O=��9�i8qH���9\\���7','2025-10-20 14:57:23.006296',8,13,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(12,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-20 14:58:56.793465',30,13,0x01,'question',NULL,13371339,39,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(13,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-20 14:59:13.914016',19,13,0x01,'question',NULL,13371339,39,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(14,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 08:00:44.620598',124,13,0x01,'question',NULL,13371339,39,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(15,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 08:18:14.583039',115,13,0x01,'question',NULL,13371339,39,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(16,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 08:20:58.748525',19,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(17,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 08:31:55.621530',15,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(18,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:00:17.679427',32,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(19,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:01:55.368127',77,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(20,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:02:08.354855',25,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(21,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:02:34.544372',20,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(22,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:02:35.880080',19,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(23,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:02:43.017081',14,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(24,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 10:03:55.671163',26,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(25,'!�4P��O���8D����4���N�G�;���','2025-10-21 10:04:00.763606',16,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(26,'lv?�9�(���[�q�|��>�:f	��柉03�@ ','2025-10-21 10:04:13.630277',21,96,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(27,'���Ѣ\0	>�bB��������u~��W���q','2025-10-21 10:05:46.341024',36,2000,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(28,'i��1�u��b��쭰�\0��t��u��^�v��','2025-10-21 10:05:55.717820',13,1,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(29,'i��1�u��b��쭰�\0��t��u��^�v��','2025-10-21 10:07:05.143181',67,18,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(30,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 10:08:55.298840',38,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(31,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 11:53:13.366016',10,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(32,'(�Xr�8�e���lqS`��OS䭫~6��	�Ü','2025-10-21 12:00:28.470102',5,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"mois\" \"annee\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(33,'��U�*�,�#xF�c#\Z�]�����	�/�','2025-10-21 12:00:40.071947',16,0,0x01,'ad-hoc','(conn=12) Table \'Datasets.region\' doesn\'t exist',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(34,'\n�S����;k�l>��h9+��¾B(ǽb�_��','2025-10-21 12:01:10.542563',8,0,0x01,'ad-hoc','(conn=12) Unknown column \'regionName\' in \'ON\'',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(35,'Emр@���W��1T�\'R��,��q����wv','2025-10-21 12:02:12.790464',2,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"mois\" \"annee\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(36,':<�m�{�����q��0y�k8\\�d���O�9','2025-10-21 12:02:21.877403',10,0,0x01,'ad-hoc','(conn=12) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'LEFT JOIN Regions ON dfUrg.region = Regions.nom\' at line 2',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(37,'H�,�z;��/��k��\Z��CJ-�z_c�h','2025-10-21 12:03:31.838943',7,0,0x01,'ad-hoc','(conn=12) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'INNER JOIN Regions ON dfUrg.region = Regions.nom\' at line 2',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(38,'Nc$��Z4����e���O��xq��+�!�&����','2025-10-21 12:04:01.480869',10,0,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(39,'v�k�4�N9M�]�+g�H��a��8�3s�s','2025-10-21 12:05:50.176317',7,0,0x01,'ad-hoc','(conn=12) Unknown column \'Regions.code\' in \'SELECT\'',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(40,'1)�b(rGg���纨�ߊh\'[v�j�W��jS','2025-10-21 12:05:56.626748',20,90,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(41,'?wG��qt�Ò}��c��)lØ��؂̧��','2025-10-21 12:10:09.547119',2,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"mois\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(42,'D�e�Z���&k�e��;����G7�v�\Z�n4','2025-10-21 12:10:16.775007',9,18,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(43,'��&�J��\"p�~�ꓽ�zb%�s�T���|�+N>','2025-10-21 12:11:51.227707',7,0,0x01,'ad-hoc','(conn=12) Unknown column \'Region.nom\' in \'SELECT\'',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(44,'GP5|�F�O{1����l�#�rF7T��~','2025-10-21 12:12:02.250762',6,0,0x01,'ad-hoc','(conn=12) Unknown column \'Region.nom\' in \'WHERE\'',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(45,'5��3��#�U�ɮ��/�9wf�I��X�R�','2025-10-21 12:12:08.275643',9,0,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(46,'5��3��#�U�ɮ��/�9wf�I��X�R�','2025-10-21 12:15:24.730762',96,16,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(47,'�d�����r(M�n����м�㡒A��DG++','2025-10-21 12:16:14.723926',4,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(48,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 12:16:14.723847',39,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(49,'x��ɰ���!a��ۜQ۟m��(�','2025-10-21 12:16:32.832189',2,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(50,'x��ɰ���!a��ۜQ۟m��(�','2025-10-21 12:16:55.694578',2,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(51,'l��f����l+\r6M�,�K��>%� 6q�.uG�','2025-10-21 12:17:31.328818',12,16,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(52,'l��f����l+\r6M�,�K��>%� 6q�.uG�','2025-10-21 12:17:32.235089',12,16,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(53,'l��f����l+\r6M�,�K��>%� 6q�.uG�','2025-10-21 12:18:07.052459',11,16,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(54,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 12:18:20.085051',11,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(55,'�d�����r(M�n����м�㡒A��DG++','2025-10-21 12:18:20.100899',3,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(56,'�d�����r(M�n����м�㡒A��DG++','2025-10-21 12:18:22.760304',1,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(57,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 12:18:22.755782',12,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(58,'x��ɰ���!a��ۜQ۟m��(�','2025-10-21 12:18:25.766252',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(59,'Q�3�ʤ�8�P�-yGy.n2z\Z�V���','2025-10-21 12:23:25.816690',28,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(60,'\r�@<`���F����Ղ�����7~����D=','2025-10-21 12:23:32.933512',21,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(61,'x��ɰ���!a��ۜQ۟m��(�','2025-10-21 12:23:48.000116',2,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(62,'�J^�2L�?ۭ3�aor��,����f���_�','2025-10-21 12:24:07.856357',1,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(63,'z��=�I�~�wjrm���g^ͪ����','2025-10-21 12:24:17.310403',20,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(64,'7��U�IQ����h�\\\Z�IA���\r5�R6_\"��','2025-10-21 12:25:09.003321',21,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(65,'��3�D��F�&��f��ZV}mF<D�\0%썩','2025-10-21 12:25:13.834309',19,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(66,'_��M�o%�D�OT�ΠU��|�POBsO��a�','2025-10-21 12:25:18.754578',17,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(67,'�?��n��>K����iv�/g��Q������','2025-10-21 12:26:08.470742',18,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(68,'f����T�c�%O�\"0_���)�����&�','2025-10-21 12:27:28.458165',129,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(69,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 12:27:28.457767',129,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(70,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 12:27:31.425067',20,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(71,'f����T�c�%O�\"0_���)�����&�','2025-10-21 12:27:31.441101',22,16,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(72,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 12:28:04.483650',118,13,0x01,'dashboard',NULL,13371339,39,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(73,'f����T�c�%O�\"0_���)�����&�','2025-10-21 12:28:04.484016',176,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(74,'`\\E���JnjL���^9#�����nWH�9d�_`','2025-10-21 12:28:14.779299',40,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(75,'�/{�k�7쟆���dr)�^��J�Ξ��ͺ9	','2025-10-21 12:40:20.021274',24,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(76,'R�q��_����bx�RS�~�/aX\0�','2025-10-21 12:40:24.681408',24,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(77,'$=�����\'AX�k�՝|��F6�@D�7�Q���','2025-10-21 12:41:57.950200',27,48,0x00,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(78,'���0`X���e��UʕB}Odig���\r���#$;','2025-10-21 12:42:18.551718',7,48,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(79,'Э>;�\Z����=G����GI�4���q�FԻ','2025-10-21 12:46:23.403825',18,48,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(80,'��rJ�>EeCg\'���L�;)>�����%\0ݒ�','2025-10-21 12:46:42.925491',6,0,0x01,'ad-hoc','(conn=20) Incorrect parameter count in the call to native function \'MAKEDATE\'',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(81,'�w8�����k�{�*�R������Ѽ]A��C','2025-10-21 12:53:00.945737',9,48,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(82,'R�q��_����bx�RS�~�/aX\0�','2025-10-21 12:55:21.191846',15,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(83,'�`�^��y�:����U?%?�\r1Q�ߡ�)��\\','2025-10-21 12:55:21.191846',24,48,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(84,'�`�^��y�:����U?%?�\r1Q�ߡ�)��\\','2025-10-21 12:56:00.036236',16,48,0x01,'question',NULL,13371339,41,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(85,'��R��34��n���M�K\\��f//��@2���','2025-10-21 12:56:39.279999',47,48,0x00,'ad-hoc',NULL,13371339,41,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(86,'�`�^��y�:����U?%?�\r1Q�ߡ�)��\\','2025-10-21 12:56:51.066328',20,48,0x01,'question',NULL,13371339,41,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(87,'��b8$r�9�@پ���gF��F�/���0c\\','2025-10-21 12:58:20.394664',1,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(88,'Q0T}����x�5����<�>�f�\'Ĉ���','2025-10-21 12:58:24.090519',1,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(89,'��b8$r�9�@پ���gF��F�/���0c\\','2025-10-21 12:58:26.422730',1,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(90,'c��gf��dIy�7�cpH��D	��i��v��Rf','2025-10-21 12:58:26.422801',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(91,'�������{�C���7Z��:>l�|�z4:i�','2025-10-21 13:00:10.412208',18,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(92,'�+;@�����a�[1*_�\0�܃����>�\0ɭ','2025-10-21 13:00:14.858530',16,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(93,'�������{�C���7Z��:>l�|�z4:i�','2025-10-21 13:00:19.141334',19,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(94,'�+;@�����a�[1*_�\0�܃����>�\0ɭ','2025-10-21 13:05:53.121266',18,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(95,'Q0T}����x�5����<�>�f�\'Ĉ���','2025-10-21 13:06:10.512953',2,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(96,'e��F} ?>���RN[���`r��|���!]79','2025-10-21 13:06:31.871472',7,48,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(97,'�wў���W<�=�	*���\Z��>]�q�P�','2025-10-21 13:07:37.876865',6,24,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(98,'h��Q�;��w9��y]\\]V����ܘ��#','2025-10-21 13:07:52.960955',7,24,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(99,'�+;@�����a�[1*_�\0�܃����>�\0ɭ','2025-10-21 13:08:15.674393',10,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(100,'c��gf��dIy�7�cpH��D	��i��v��Rf','2025-10-21 13:08:15.673953',13,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(101,'ྦྷ�VPw�9���q��J�t���֖��r�,AL','2025-10-21 13:08:15.702650',2,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,42,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(102,'��b8$r�9�@پ���gF��F�/���0c\\','2025-10-21 13:10:55.504658',1,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(103,'��TH�A���\nR�Kf�$e�]����','2025-10-21 13:10:55.504765',22,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(104,'ྦྷ�VPw�9���q��J�t���֖��r�,AL','2025-10-21 13:11:50.862223',1,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,42,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(105,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 13:14:32.766191',17,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(106,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 13:14:32.771163',17,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(107,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 13:14:38.089441',18,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(108,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:14:38.089441',19,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(109,'+�VF���&�!�7++��w���j�5�','2025-10-21 13:14:41.093222',5,0,0x00,'ad-hoc','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(110,'c��gf��dIy�7�cpH��D	��i��v��Rf','2025-10-21 13:14:42.703386',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(111,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:14:42.709140',10,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(112,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 13:14:42.708397',10,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(113,'�f�p�oA�7Ă}S�F�=\Z�l��H�G�q','2025-10-21 13:14:47.489932',15,24,0x01,'question',NULL,13371339,41,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(114,'c��gf��dIy�7�cpH��D	��i��v��Rf','2025-10-21 13:14:49.279030',10,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(115,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 13:14:49.279493',8,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(116,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:14:49.285493',10,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(117,'��\'X�k0dE�*IDb�ͅ�\'��	�3��','2025-10-21 13:14:59.499274',1,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,42,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(118,'��B�����F�K���*���}垓!T','2025-10-21 13:15:10.874269',21,24,0x01,'question',NULL,13371339,42,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(119,'c��gf��dIy�7�cpH��D	��i��v��Rf','2025-10-21 13:18:08.252049',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(120,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 13:18:08.256662',12,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(121,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:18:08.275088',17,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(122,'��\'X�k0dE�*IDb�ͅ�\'��	�3��','2025-10-21 13:18:15.012162',0,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,42,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(123,'��B�����F�K���*���}垓!T','2025-10-21 13:18:31.611720',21,24,0x01,'question',NULL,13371339,42,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(124,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:18:38.603349',17,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(125,'��\'X�k0dE�*IDb�ͅ�\'��	�3��','2025-10-21 13:18:44.269087',0,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,42,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(126,'�R���Ļ@�}3\ZhM�M�%٢ۦ?(\Z��','2025-10-21 13:18:52.805219',14,24,0x01,'question',NULL,13371339,42,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(127,'c��gf��dIy�7�cpH��D	��i��v��Rf','2025-10-21 13:19:13.989791',13,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(128,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 13:19:13.993409',9,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(129,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:19:14.002645',19,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(130,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 13:19:27.188877',18,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(131,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 13:19:27.189519',17,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(132,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 13:19:38.640611',13,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(133,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 13:19:38.639143',14,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(134,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 13:19:43.568713',13,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(135,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 13:19:43.568712',14,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(136,'������l�L��]��1>H���&T:TGִ8w','2025-10-21 13:22:33.875374',16,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(137,'n��Qp�\Z��s-p�,o469k���-���','2025-10-21 13:22:41.936489',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(138,'�e�E8�F��fرETP�\0h�L�!��','2025-10-21 13:22:46.613414',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(139,'>�#��q}U�Z �ȏ-��Hr�M|�\Zk�U�','2025-10-21 13:22:52.220046',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(140,',�^ Ɛ<��GVz���`Vzv�t?���','2025-10-21 13:22:56.125779',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(141,'�����i��7׿�sR��`�w�����ngE','2025-10-21 13:23:00.519199',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(142,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 14:24:04.944753',152,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(143,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 14:24:04.944753',152,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(144,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 14:24:09.240524',51,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(145,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 14:24:09.240482',52,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(146,'�Ϯ8{�V�4�	��7�}c��<�?C�u��','2025-10-21 20:49:23.309237',719,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(147,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 20:49:23.309925',737,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(148,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 20:49:23.309871',732,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(149,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 20:59:09.509471',54,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(150,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 20:59:09.504088',59,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(151,'�Ϯ8{�V�4�	��7�}c��<�?C�u��','2025-10-21 20:59:09.504088',65,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(152,'G������e{�7�T��U�)�����Xa','2025-10-21 20:59:44.889135',3,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(153,'�Ϯ8{�V�4�	��7�}c��<�?C�u��','2025-10-21 21:00:05.486785',44,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(154,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 21:00:05.493232',42,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(155,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 21:00:05.515864',52,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(156,'Q0T}����x�5����<�>�f�\'Ĉ���','2025-10-21 21:00:13.393473',2,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(157,'�9�\"Wm�0��Q��\Z�j5�=*vǦ/Rz�','2025-10-21 21:00:50.116473',2,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"age\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(158,'����$�[S��3]�Z�z<J�CᯥOw�~a','2025-10-21 21:00:56.491232',26,0,0x01,'ad-hoc','(conn=12) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'= \'Tous âges\' AND dfUrg.region = Regions.nom\' at line 2',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(159,'�@�@�a�����5-�nH�4@�S*���G��\r','2025-10-21 21:01:23.292619',10,0,0x01,'ad-hoc','(conn=12) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'= \'00-04 ans\' AND dfUrg.region = Regions.nom\' at line 2',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(160,'���_�Ѳ�R�l�2�\0���7c �\rYi�#','2025-10-21 21:01:47.747064',9,0,0x01,'ad-hoc','(conn=12) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'= \'00-04 ans\' AND dfUrg.region = Regions.nom\' at line 2',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(161,'�8{��m���d?آ�*��ӵ��B�ȋd�y','2025-10-21 21:02:17.413309',110,1207,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(162,'�Ϯ8{�V�4�	��7�}c��<�?C�u��','2025-10-21 21:08:43.040085',37,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(163,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 21:08:43.049324',38,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(164,'T���`D��󠪭/��PL�RY�`����i','2025-10-21 21:08:43.101494',4,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\" \"region\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(165,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 21:08:43.073934',40,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(166,'2�\Z�5�[0�\'��	!՞���J]����','2025-10-21 21:09:16.760871',8,18,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(167,'�Ϯ8{�V�4�	��7�}c��<�?C�u��','2025-10-21 21:09:35.309962',31,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(168,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 21:09:35.330254',33,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(169,'T���`D��󠪭/��PL�RY�`����i','2025-10-21 21:09:35.365109',4,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\" \"region\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(170,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 21:09:35.350876',43,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(171,'�\0h��G����M�}vH�n��C<����q�N��','2025-10-21 21:09:35.393808',90,18,0x01,'dashboard',NULL,13371339,44,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(172,'�?<���#���rd\'x�m\n&�:�jR���m�','2025-10-21 21:13:24.445445',2,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(173,'��B�~K[2�)-H�q�l\Z^J�����&��K�/','2025-10-21 21:13:30.319449',2,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"region\"}',13371339,43,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(174,'=�Wx��!��vU��%�\"Akn�H�z�nj��C','2025-10-21 21:16:37.788497',21,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(175,'\ZJ�N��S�D�u{�jjDqG�s]<-á�?*','2025-10-21 21:17:17.041284',17,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(176,'��2%D��w�B�&!�dGĕS������TI�','2025-10-21 21:18:34.154636',15,0,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(177,'�\"{a\0�tz�V\Z���CB�$080�','2025-10-21 21:18:52.757030',8,0,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(178,'G~+,������Fk�߭�N����)��M\'�','2025-10-21 21:18:55.843966',2,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"region\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(179,'�ɦd?��#���і\\C�a����O�','2025-10-21 21:19:57.776255',10,0,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(180,'���Rm� �5=��[_�/24��$��8�','2025-10-21 21:19:59.461850',10,0,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(181,'Q0T}����x�5����<�>�f�\'Ĉ���','2025-10-21 21:20:26.507266',1,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,41,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(182,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 21:20:38.087713',12,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(183,'�Ϯ8{�V�4�	��7�}c��<�?C�u��','2025-10-21 21:20:38.087713',15,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(184,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 21:20:38.098285',14,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(185,'=�Wx��!��vU��%�\"Akn�H�z�nj��C','2025-10-21 21:20:38.102896',26,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(186,'��B�~K[2�)-H�q�l\Z^J�����&��K�/','2025-10-21 21:20:42.982404',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"region\"}',13371339,43,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(187,'G������e{�7�T��U�)�����Xa','2025-10-21 21:21:16.245831',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(188,'�m�-�����cٓ�Gk$\n��P\Z7n��9s\0','2025-10-21 21:22:30.996962',2,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(189,'\"���h���	��� Lx9�ǡ�Kܥ~�','2025-10-21 21:22:47.147143',8,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(190,'�L-���t:$��=��h�-���f��wR@','2025-10-21 21:23:41.817951',21,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(191,'��ή�mh���T0��\'s����U~��H_��7s','2025-10-21 21:23:59.635543',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(192,']z�\"����]M�6q�-l7m�N��JS��-#]','2025-10-21 21:24:04.683482',286,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(193,'G~+,������Fk�߭�N����)��M\'�','2025-10-21 21:24:25.083644',1,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"region\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(194,'\ZJ�N��S�D�u{�jjDqG�s]<-á�?*','2025-10-21 21:24:36.273521',26,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(195,'\ZJ�N��S�D�u{�jjDqG�s]<-á�?*','2025-10-21 21:24:36.303467',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(196,']z�\"����]M�6q�-l7m�N��JS��-#]','2025-10-21 21:24:38.646565',21,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(197,'��ή�mh���T0��\'s����U~��H_��7s','2025-10-21 21:24:40.657138',28,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(198,'��g@ŔB�Cn�4Uq*r3�چl��H�','2025-10-21 21:24:42.678927',17,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(199,'�I��=(@�^x�ǂ5kp)���h9\rƄ	>=','2025-10-21 21:24:44.597635',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(200,'[~#\'�9�3���>wB�r�.k�;t�R-Z�E�','2025-10-21 21:25:22.970693',1,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"age\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(201,'Ml{cx�\ZO��DI\nK�F/�������n�%','2025-10-21 21:26:53.457944',10,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(202,'Ml{cx�\ZO��DI\nK�F/�������n�%','2025-10-21 21:26:53.478272',12,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(203,'O���η��.�s{Z�)Ԗ�_�=�Y�','2025-10-21 21:26:58.700168',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(204,'Q��;ꂖ�w^�==�vl��|\'Z�\"?-�����','2025-10-21 21:26:58.700168',16,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(205,'�>f4��L�ބ{J0�sLODp&X2{{p�Bk�','2025-10-21 21:27:00.262123',16,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(206,'ྦྷ�VPw�9���q��J�t���֖��r�,AL','2025-10-21 21:28:01.193034',0,0,0x01,'question','Error building query parameter map: Error determining value for parameter \"groupe\": You\'ll need to pick a value for \'Groupe\' before this query can run.',13371339,42,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(207,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 21:29:34.101502',17,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(208,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 21:29:34.106395',17,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(209,'�Hg�T�r^?�Vw�}T�\n���{�j�j�a','2025-10-21 21:29:52.413691',17,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(210,';zM�AX	�4^ԫj<Y\"Q����8$�','2025-10-21 21:29:52.413691',17,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(211,'%ܼN�(N��}2-X��v��-� �<�','2025-10-21 21:30:07.374994',15,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(212,'cUt3mM}�玑��Ч��f揀Cw��H��','2025-10-21 21:30:46.212245',13,0,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(213,'�Y��M�����\\���L��Ƕ���rΕ��','2025-10-21 21:31:11.712522',17,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(214,'C�Zf]�=��P[�k����\\����(�#��k','2025-10-21 21:31:15.179850',16,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(215,'�-�H��\"���F��W�dQA�?̄�����','2025-10-21 21:31:16.489615',16,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(216,'����N��U��4<^�r��H����;���e�','2025-10-21 21:31:18.620496',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(217,'�l�1k0$��ǲu�7ʏ�w�w@z{;��m��','2025-10-21 21:31:19.937919',16,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(218,'���a.�p�{&�5Ǜ�ߐ�}�N��r�	*','2025-10-21 21:31:32.478040',16,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(219,'�Hg�T�r^?�Vw�}T�\n���{�j�j�a','2025-10-21 21:31:35.536941',16,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(220,'��1�����k�E����?�\n`�E�i�','2025-10-21 21:31:41.097181',14,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(221,'�t���`��� �IJ�Hy��\n����tn�','2025-10-21 21:31:47.264202',13,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(222,';�����P����y�wL\"\0���ҍ$A��','2025-10-21 21:31:49.071303',1,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"region\"}',13371339,43,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(223,'�Hz�ms���/S����Fۓ\"{Ҋ�k��t�','2025-10-21 21:31:52.986150',16,17,0x01,'question',NULL,13371339,40,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(224,'�t���`��� �IJ�Hy��\n����tn�','2025-10-21 21:32:21.156117',17,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(225,'�Hg�T�r^?�Vw�}T�\n���{�j�j�a','2025-10-21 21:32:24.582407',10,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(226,'9s��L��Se�Mڼ�Sk�d�����9�`P�','2025-10-21 21:32:27.873681',16,71,0x01,'question',NULL,13371339,43,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(227,'�Hg�T�r^?�Vw�}T�\n���{�j�j�a','2025-10-21 21:33:06.104558',20,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(228,'C�Zf]�=��P[�k����\\����(�#��k','2025-10-21 21:33:18.467996',16,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(229,'�\"2�1`��<CІ�\0O܆���]���$��','2025-10-21 21:35:31.279648',17,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(230,'։�\'4�s32�HA�FU��R��V�2e�H ','2025-10-21 21:35:31.279648',17,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(231,'��ƺQ�?\\ �A|lУqRP����ӭ�','2025-10-21 21:35:39.235713',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(232,'J�%�V��,f�t)쬺�T]x)�F3p�-��','2025-10-21 21:36:08.376709',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(233,'։�\'4�s32�HA�FU��R��V�2e�H ','2025-10-21 22:16:11.946048',20,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(234,'�x�M�V�B�)N��N����×����]��','2025-10-21 22:16:14.689859',14,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(235,'����q`��.��I�v���1`G�����','2025-10-21 22:16:17.219033',14,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(236,'։�\'4�s32�HA�FU��R��V�2e�H ','2025-10-21 22:19:30.337570',14,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(237,'����q`��.��I�v���1`G�����','2025-10-21 22:19:31.752987',18,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(238,'l\n�Qsԏ�0.^�:`���n	1g�\n������','2025-10-21 22:23:33.511441',2,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"annee\": Illegal embedded sign character',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(239,'鑊-��������¼�4�T��!�Ѝ�1?o!�?','2025-10-21 22:23:47.633789',1,0,0x01,'dashboard','Error building query parameter map: Error determining value for parameter \"annee\": Illegal embedded sign character',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(240,'B�Y��_\Z���3�o�������\r()a�','2025-10-21 22:23:56.678192',13,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(241,'J�%�V��,f�t)쬺�T]x)�F3p�-��','2025-10-21 22:24:43.651269',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"mois\" \"annee\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(242,'O�l8D5bf�2=P��Ő���0�S���b?S/','2025-10-21 22:28:53.515224',8,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(243,'t߇�_�������B����`�|Tqu@�(�','2025-10-21 22:29:36.270624',21,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(244,'�_�x�2���\'r�S��`9��u�cV2�į','2025-10-21 22:29:43.174701',8,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(245,'���:�mo\nCf0!���p{,=���B�1���','2025-10-21 22:29:47.474820',9,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(246,'�\r��y���;�s_�3ux�cJ1qUd۽r_z�','2025-10-21 22:29:51.497825',11,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(247,'_�<���S�4�H�P\\���B)�������>OM','2025-10-21 22:30:03.382444',9,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(248,'�о���-�\n:|X�̘�*GSEC�G�','2025-10-21 22:30:06.855031',7,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(249,'M\\��p1�����a+���x�B\nIߓ�>9y\"�','2025-10-21 22:30:33.752506',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(250,'M\\��p1�����a+���x�B\nIߓ�>9y\"�','2025-10-21 22:31:51.617912',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(251,'�|5����B��N��aZ[��O�����','2025-10-21 22:32:34.433918',18,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(252,'�|5����B��N��aZ[��O�����','2025-10-21 22:32:37.278474',9,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(253,'����q`��.��I�v���1`G�����','2025-10-21 22:32:37.283075',10,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(254,'��δ�8j��K��MX�?5r��@�4\Z��','2025-10-21 22:34:09.834663',19,17,0x01,'question',NULL,13371339,40,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(255,'2�ty�����-�����$:^V�n]\'�','2025-10-21 22:34:49.741870',7,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(256,'�m?q�j��N�Ж�OEq%=Ý%~����\n�','2025-10-21 22:35:04.069527',22,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(257,'����q`��.��I�v���1`G�����','2025-10-21 22:35:07.758071',9,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(258,'�m?q�j��N�Ж�OEq%=Ý%~����\n�','2025-10-21 22:35:07.758020',8,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(259,'����0+`������LOb�]��*F}Y�Z','2025-10-21 22:35:16.130740',20,17,0x01,'question',NULL,13371339,40,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(260,'�m?q�j��N�Ж�OEq%=Ý%~����\n�','2025-10-21 22:35:19.300273',16,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(261,'����q`��.��I�v���1`G�����','2025-10-21 22:35:19.307565',10,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(262,'����0+`������LOb�]��*F}Y�Z','2025-10-21 22:36:16.857354',21,17,0x01,'question',NULL,13371339,40,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(263,'��GS�Χvw�C�	,�����:�6۾i���jo�m','2025-10-21 22:42:47.718919',13,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(264,'ԍ$*�s��@����)\0b��*��B��?4χf^','2025-10-21 22:43:07.312720',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(265,'0�A�#�.��t$�}1��O.����`����6�','2025-10-21 22:43:09.810744',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(266,'��>������?�Ƃҩڪ��Evq�k��S8�','2025-10-21 22:43:12.177882',2,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"date\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(267,'~�0�t߼0�Gib��	�k]��}s�¢>���M�','2025-10-21 22:43:17.570351',13,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(268,'0�A�#�.��t$�}1��O.����`����6�','2025-10-21 22:43:20.047863',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(269,'��>������?�Ƃҩڪ��Evq�k��S8�','2025-10-21 22:43:21.010695',1,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"date\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(270,'0�A�#�.��t$�}1��O.����`����6�','2025-10-21 22:43:21.990587',8,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(271,'��>������?�Ƃҩڪ��Evq�k��S8�','2025-10-21 22:43:23.004333',1,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"date\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(272,'0�A�#�.��t$�}1��O.����`����6�','2025-10-21 22:43:23.734967',8,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(273,'ԍ$*�s��@����)\0b��*��B��?4χf^','2025-10-21 22:43:26.085645',16,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(274,'n��n����!��(9A.�$��\Z�֕�','2025-10-21 22:43:30.913051',11,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(275,'�e��ܿ����d�aWt\Zr��3�p��[��','2025-10-21 22:43:34.088415',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(276,'ԍ$*�s��@����)\0b��*��B��?4χf^','2025-10-21 22:43:37.296555',16,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(277,'����0+`������LOb�]��*F}Y�Z','2025-10-21 22:43:44.129365',19,17,0x01,'question',NULL,13371339,40,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(278,'�$[���F�Or�A_z�l�y:L�*�M��','2025-10-21 22:48:22.396375',1,0,0x01,'ad-hoc','Cannot run the query: missing required parameters: #{\"val_filtre\"}',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(279,'RCx��<.G4� ���+��xw�\"{Ne6��%v','2025-10-21 22:48:28.786819',6,0,0x01,'ad-hoc','(conn=38) You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'',13371339,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(280,'ʘn4�ބ�5�I)c��Y�e��yV���	\"��J�l','2025-10-21 22:48:50.176547',5,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(281,'7L���\\N ����RgR�A�c]f��E��','2025-10-21 22:49:01.514991',6,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(282,'7L���\\N ����RgR�A�c]f��E��','2025-10-21 22:49:03.907757',7,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(283,'/�ts��g�4�:�����QpAx�����[�','2025-10-21 22:49:30.826899',6,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(284,'*�����ou��{0��)�D�9���\r���u��','2025-10-21 22:49:37.459511',6,17,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(285,'���ܛ3����w�~�Wv�%�Л�(�0`�\Z','2025-10-21 22:50:00.395864',2,0,0x01,'dashboard','Cannot run the query: missing required parameters: #{\"val_filtre\"}',13371339,40,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x01),
(286,'�u�D��:��ݑ��sD��r$�+�n��','2025-10-21 22:51:00.213962',15,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(287,'�u�D��:��ݑ��sD��r$�+�n��','2025-10-21 22:51:00.240040',7,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(288,'���y�]!�E��\nN(�z�R�C\'O����','2025-10-21 22:51:26.851191',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(289,'y��fq6�>�0|b��I\Z����B�ד!�','2025-10-21 22:51:36.843802',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(290,'����q`��.��I�v���1`G�����','2025-10-21 22:51:38.498577',17,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(291,'A~���q�����DI�H�zԋ�/�Q���','2025-10-21 22:51:39.837605',14,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(292,'�fTUmٝ`�c�t�\Zx�����St0AǙ�\'','2025-10-21 22:51:58.548824',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"val_filtre\"}',13371339,40,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(293,'��B�~K[2�)-H�q�l\Z^J�����&��K�/','2025-10-21 22:52:08.679236',1,0,0x01,'question','Cannot run the query: missing required parameters: #{\"age\" \"region\"}',13371339,43,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,0x00),
(294,'��u7S\'�p,!�?��1J\'˂4�6��','2025-10-21 22:53:19.721773',7,71,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(295,'��u7S\'�p,!�?��1J\'˂4�6��','2025-10-21 22:53:57.300211',8,71,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(296,'eX\'��2�D�TBUr$5�#N�������','2025-10-21 22:54:44.235872',6,71,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(297,'ĕ��[���ɐt^rW$���Mk�t�<�B��','2025-10-21 22:54:50.204360',6,71,0x01,'ad-hoc',NULL,13371339,NULL,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(298,'כ��W�K���JU��?���N��繀|D9','2025-10-21 22:55:00.193547',18,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(299,'���,��e�J�ZR�lK�.�3ANZ���z]','2025-10-21 22:55:15.049021',12,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(300,'%��0�5r�l\'w���d���ƞ�ɥ{�r��','2025-10-21 22:55:19.689293',12,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(301,'%��0�5r�l\'w���d���ƞ�ɥ{�r��','2025-10-21 22:55:19.683186',15,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(302,'���\r�/���Li�x��G�h�,<%G�s)�����','2025-10-21 22:55:21.973526',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(303,'���y�]!�E��\nN(�z�R�C\'O����','2025-10-21 22:55:24.315950',17,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(304,'��mV�=�B���]�\\i���o�U�����E','2025-10-21 22:55:28.724989',17,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(305,'%��0�5r�l\'w���d���ƞ�ɥ{�r��','2025-10-21 22:55:31.260721',19,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(306,'�-{�?N�\0w\Z��M�b,�\\�ɍl\'���#���','2025-10-21 22:55:32.587029',12,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(307,'��mV�=�B���]�\\i���o�U�����E','2025-10-21 22:55:34.283226',13,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(308,'�@��[��{�9�!<H��Yl�@��!��\"��','2025-10-21 22:55:37.272782',6,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(309,'y�33�B<�[^\\�)ݪQ�B���v;,=e:','2025-10-21 22:55:37.278150',11,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(310,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 22:55:43.199536',11,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(311,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 22:55:43.206302',11,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(312,',�>hk|�E\r:;i���{K�(IR��	�g�;��','2025-10-21 22:56:15.773081',12,13,0x01,'question',NULL,13371339,39,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(313,'u�>7�O���&�&�%�>��*`:0A*\Z��7','2025-10-21 22:56:28.861950',22,52,0x00,'question',NULL,13371339,38,NULL,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x00),
(314,'���y�]!�E��\nN(�z�R�C\'O����','2025-10-21 22:56:32.604718',10,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(315,'��mV�=�B���]�\\i���o�U�����E','2025-10-21 22:56:32.612043',8,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(316,'�،ĄY1V�\\3+���Vz/USq�/cJ��ǜ','2025-10-21 22:56:35.027606',6,24,0x01,'dashboard',NULL,13371339,42,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(317,'��2�e-�b�T���!\roQ-l4�:wv��u=','2025-10-21 22:56:35.027606',6,24,0x01,'dashboard',NULL,13371339,41,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(318,'�)}���_��N5� ���u\n֞���i�n�|�','2025-10-21 22:56:41.694055',11,71,0x01,'dashboard',NULL,13371339,43,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01),
(319,'�� ��:bø�OW��	Ħ��	x��݃�Q','2025-10-21 22:56:46.469321',12,17,0x01,'dashboard',NULL,13371339,40,2,NULL,2,0x00,NULL,0x00,NULL,NULL,NULL,0x01);
/*!40000 ALTER TABLE `query_execution` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `query_field`
--

DROP TABLE IF EXISTS `query_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `card_id` int(11) NOT NULL COMMENT 'referenced card',
  `field_id` int(11) DEFAULT NULL,
  `explicit_reference` bit(1) DEFAULT b'1',
  `column` varchar(254) NOT NULL COMMENT 'name of the table or card being referenced',
  `table` varchar(254) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL COMMENT 'track the table directly, in case the field does not exist',
  `schema` varchar(254) DEFAULT NULL COMMENT 'name of the schema of the table being referenced',
  PRIMARY KEY (`id`),
  KEY `idx_query_field_card_id` (`card_id`),
  KEY `idx_query_field_field_id` (`field_id`),
  CONSTRAINT `fk_query_field_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_query_field_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Fields used by a card''s query';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_field`
--

LOCK TABLES `query_field` WRITE;
/*!40000 ALTER TABLE `query_field` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `query_field` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `query_table`
--

DROP TABLE IF EXISTS `query_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `card_id` int(11) NOT NULL COMMENT 'referenced card',
  `table_id` int(11) DEFAULT NULL COMMENT 'referenced field',
  `schema` varchar(254) DEFAULT NULL COMMENT 'name of the schema of the table being referenced',
  `table` varchar(254) NOT NULL COMMENT 'name of the table or card being referenced',
  PRIMARY KEY (`id`),
  KEY `idx_query_table_card_id` (`card_id`),
  KEY `idx_query_table_table_id` (`table_id`),
  CONSTRAINT `fk_query_table_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_query_table_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tables used by a card''s query';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_table`
--

LOCK TABLES `query_table` WRITE;
/*!40000 ALTER TABLE `query_table` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `query_table` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `recent_views`
--

DROP TABLE IF EXISTS `recent_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recent_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'The user associated with this view',
  `model` varchar(16) NOT NULL COMMENT 'The name of the model that was viewed',
  `model_id` int(11) NOT NULL COMMENT 'The ID of the model that was viewed',
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `context` varchar(256) NOT NULL DEFAULT 'view' COMMENT 'The contextual action that netted a recent view.',
  PRIMARY KEY (`id`),
  KEY `idx_recent_views_user_id` (`user_id`),
  CONSTRAINT `fk_recent_views_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store recently viewed objects for each user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_views`
--

LOCK TABLES `recent_views` WRITE;
/*!40000 ALTER TABLE `recent_views` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `recent_views` VALUES
(7,13371339,'table',9,'2025-10-20 14:47:58.999008','view'),
(8,13371339,'table',11,'2025-10-20 14:48:02.552174','view'),
(11,13371339,'table',10,'2025-10-20 14:52:12.809145','view'),
(31,13371339,'dashboard',2,'2025-10-21 08:20:56.892962','selection'),
(49,13371339,'table',14,'2025-10-21 10:05:46.323500','view'),
(51,13371339,'table',15,'2025-10-21 10:07:05.089493','view'),
(76,13371339,'table',10,'2025-10-21 12:41:01.295521','selection'),
(77,13371339,'table',12,'2025-10-21 12:41:13.446899','selection'),
(78,13371339,'table',12,'2025-10-21 12:41:57.927154','view'),
(92,13371339,'card',41,'2025-10-21 12:59:06.817707','selection'),
(130,13371339,'card',41,'2025-10-21 21:00:12.844455','view'),
(136,13371339,'card',44,'2025-10-21 21:10:22.023734','selection'),
(138,13371339,'card',44,'2025-10-21 21:10:22.225639','view'),
(167,13371339,'card',42,'2025-10-21 21:28:01.201747','view'),
(237,13371339,'card',40,'2025-10-21 22:51:58.218826','view'),
(239,13371339,'card',43,'2025-10-21 22:54:57.227929','view'),
(242,13371339,'collection',2,'2025-10-21 22:56:12.417738','view'),
(244,13371339,'card',39,'2025-10-21 22:56:15.778497','view'),
(246,13371339,'card',38,'2025-10-21 22:56:28.875857','view'),
(247,13371339,'dashboard',2,'2025-10-21 22:56:32.499501','view');
/*!40000 ALTER TABLE `recent_views` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `report_card`
--

DROP TABLE IF EXISTS `report_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL,
  `display` varchar(254) NOT NULL,
  `dataset_query` longtext DEFAULT NULL,
  `visualization_settings` longtext DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `database_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `query_type` varchar(16) DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `collection_id` int(11) DEFAULT NULL COMMENT 'Optional ID of Collection this Card belongs to.',
  `public_uuid` char(36) DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Card.',
  `made_public_by_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Card.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Card allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext DEFAULT NULL,
  `cache_ttl` int(11) DEFAULT NULL COMMENT 'The maximum time, in seconds, to return cached results for this Card rather than running a new query.',
  `result_metadata` longtext DEFAULT NULL,
  `collection_position` smallint(6) DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `parameters` longtext DEFAULT NULL COMMENT 'List of parameter associated to a card',
  `parameter_mappings` longtext DEFAULT NULL COMMENT 'List of parameter associated to a card',
  `collection_preview` bit(1) NOT NULL DEFAULT b'1',
  `metabase_version` varchar(100) DEFAULT NULL COMMENT 'Metabase version used to create the card.',
  `type` varchar(16) NOT NULL DEFAULT 'question' COMMENT 'The type of card, could be ''question'', ''model'', ''metric''',
  `initially_published_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp when the card was first published in a static embed',
  `cache_invalidated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'An invalidation time that can supersede cache_config.invalidated_at',
  `last_used_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT 'Keeps a running count of card views',
  `archived_directly` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Was this thing trashed directly',
  `dataset_query_metrics_v2_migration_backup` longtext DEFAULT NULL COMMENT 'The copy of dataset_query before the metrics v2 migration',
  `source_card_id` int(11) DEFAULT NULL COMMENT 'The ID of the model or question this card is based on',
  `dashboard_id` int(11) DEFAULT NULL COMMENT 'The dashboard that owns the card, if it is a dashboard-internal card.',
  `card_schema` int(11) NOT NULL DEFAULT 20 COMMENT 'Arbitrary revision number for how we store queries in report_card',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_card_creator_id` (`creator_id`),
  KEY `idx_card_collection_id` (`collection_id`),
  KEY `idx_card_public_uuid` (`public_uuid`),
  KEY `fk_card_made_public_by_id` (`made_public_by_id`),
  KEY `fk_report_card_ref_database_id` (`database_id`),
  KEY `fk_report_card_ref_table_id` (`table_id`),
  KEY `idx_report_card_source_card_id` (`source_card_id`),
  KEY `idx_report_card_dashboard_id` (`dashboard_id`),
  KEY `idx_report_card_card_schema` (`card_schema`),
  KEY `idx_report_card_type` (`type`),
  CONSTRAINT `fk_card_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_card_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_source_card_id_ref_report_card_id` FOREIGN KEY (`source_card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_card`
--

LOCK TABLES `report_card` WRITE;
/*!40000 ALTER TABLE `report_card` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `report_card` VALUES
(38,'2025-10-20 14:52:18.954972','2025-10-20 14:52:18.954972','Couverture2023',NULL,'map','{\"database\":2,\"type\":\"query\",\"query\":{\"source-table\":10}}','{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"code\"}',13371339,2,10,'query',0x00,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"INTEGER\",\"semantic_type\":\"type/PK\",\"table_id\":10,\"lib/deduplicated-name\":\"id\",\"lib/original-name\":\"id\",\"name\":\"id\",\"lib/source\":\"source/table-defaults\",\"lib/source-column-alias\":\"id\",\"lib/original-display-name\":\"ID\",\"source\":\"fields\",\"field_ref\":[\"field\",78,null],\"effective_type\":\"type/Integer\",\"active\":true,\"id\":78,\"metabase.lib.query/transformation-added-base-type\":true,\"lib/desired-column-alias\":\"id\",\"position\":0,\"visibility_type\":\"normal\",\"display_name\":\"ID\",\"fingerprint\":null,\"base_type\":\"type/Integer\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":\"type/Category\",\"table_id\":10,\"lib/deduplicated-name\":\"region\",\"lib/original-name\":\"region\",\"name\":\"region\",\"lib/source\":\"source/table-defaults\",\"lib/source-column-alias\":\"region\",\"lib/original-display-name\":\"Region\",\"source\":\"fields\",\"field_ref\":[\"field\",79,null],\"effective_type\":\"type/Text\",\"active\":true,\"id\":79,\"metabase.lib.query/transformation-added-base-type\":true,\"lib/desired-column-alias\":\"region\",\"position\":1,\"visibility_type\":\"normal\",\"display_name\":\"Region\",\"fingerprint\":{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":19.692307692307693}}},\"base_type\":\"type/Text\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"table_id\":10,\"lib/deduplicated-name\":\"code\",\"lib/original-name\":\"code\",\"name\":\"code\",\"lib/source\":\"source/table-defaults\",\"lib/source-column-alias\":\"code\",\"lib/original-display-name\":\"Code\",\"source\":\"fields\",\"field_ref\":[\"field\",83,null],\"effective_type\":\"type/Integer\",\"active\":true,\"id\":83,\"metabase.lib.query/transformation-added-base-type\":true,\"lib/desired-column-alias\":\"code\",\"position\":2,\"visibility_type\":\"normal\",\"display_name\":\"Code\",\"fingerprint\":{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":11.0,\"q1\":27.75,\"q3\":78.0,\"max\":94.0,\"sd\":27.557809797671613,\"avg\":53.30769230769231}}},\"base_type\":\"type/Integer\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":\"type/Category\",\"table_id\":10,\"lib/deduplicated-name\":\"variable\",\"lib/original-name\":\"variable\",\"name\":\"variable\",\"lib/source\":\"source/table-defaults\",\"lib/source-column-alias\":\"variable\",\"lib/original-display-name\":\"Variable\",\"source\":\"fields\",\"field_ref\":[\"field\",81,null],\"effective_type\":\"type/Text\",\"active\":true,\"id\":81,\"metabase.lib.query/transformation-added-base-type\":true,\"lib/desired-column-alias\":\"variable\",\"position\":3,\"visibility_type\":\"normal\",\"display_name\":\"Variable\",\"fingerprint\":{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":10.5}}},\"base_type\":\"type/Text\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":\"type/Category\",\"table_id\":10,\"lib/deduplicated-name\":\"groupe\",\"lib/original-name\":\"groupe\",\"name\":\"groupe\",\"lib/source\":\"source/table-defaults\",\"lib/source-column-alias\":\"groupe\",\"lib/original-display-name\":\"Groupe\",\"source\":\"fields\",\"field_ref\":[\"field\",80,null],\"effective_type\":\"type/Text\",\"active\":true,\"id\":80,\"metabase.lib.query/transformation-added-base-type\":true,\"lib/desired-column-alias\":\"groupe\",\"position\":4,\"visibility_type\":\"normal\",\"display_name\":\"Groupe\",\"fingerprint\":{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":14.5}}},\"base_type\":\"type/Text\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"table_id\":10,\"lib/deduplicated-name\":\"valeur\",\"lib/original-name\":\"valeur\",\"name\":\"valeur\",\"lib/source\":\"source/table-defaults\",\"lib/source-column-alias\":\"valeur\",\"lib/original-display-name\":\"Valeur\",\"source\":\"fields\",\"field_ref\":[\"field\",82,null],\"effective_type\":\"type/Integer\",\"active\":true,\"id\":82,\"metabase.lib.query/transformation-added-base-type\":true,\"lib/desired-column-alias\":\"valeur\",\"position\":5,\"visibility_type\":\"normal\",\"display_name\":\"Valeur\",\"fingerprint\":{\"global\":{\"distinct-count\":51,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":89.0,\"q1\":344.0,\"q3\":3974.5,\"max\":6068.0,\"sd\":2216.0844489077576,\"avg\":2315.0961538461543}}},\"base_type\":\"type/Integer\"}]',NULL,'WF-nJhypyKcGdR9uySkfu','[]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,NULL,'2025-10-21 22:56:28.872687',3,0x00,NULL,NULL,NULL,22),
(39,'2025-10-20 14:58:49.251933','2025-10-20 14:58:49.251933','Actes vaccinations moins de 65 ans',NULL,'map','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `Couverture2023`.`id` AS `id`,\\n  `Couverture2023`.`region` AS `region`,\\n  `Couverture2023`.`code` AS `code`,\\n  `Couverture2023`.`variable` AS `variable`,\\n  `Couverture2023`.`groupe` AS `groupe`,\\n  `Couverture2023`.`valeur` AS `valeur`\\nFROM\\n  `Couverture2023`\\nWHERE\\n\\t`variable`=\'ACTE(VGP)\' AND\\n\\t`groupe`=\'moins de 65 ans\'\\nLIMIT\\n  1048575\"}}','{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"code\"}',13371339,2,NULL,'native',0x00,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"INTEGER\",\"semantic_type\":\"type/PK\",\"lib/deduplicated-name\":\"id\",\"lib/original-name\":\"id\",\"name\":\"id\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"id\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"id\",\"fingerprint\":null,\"base_type\":\"type/Integer\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"region\",\"lib/original-name\":\"region\",\"name\":\"region\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"region\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"region\",\"fingerprint\":{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":19.692307692307693}}},\"base_type\":\"type/Text\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"code\",\"lib/original-name\":\"code\",\"name\":\"code\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"code\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"code\",\"fingerprint\":{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":11.0,\"q1\":27.75,\"q3\":78.0,\"max\":94.0,\"sd\":28.405940151620328,\"avg\":53.30769230769231}}},\"base_type\":\"type/Integer\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"variable\",\"lib/original-name\":\"variable\",\"name\":\"variable\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"variable\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"variable\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":9.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"groupe\",\"lib/original-name\":\"groupe\",\"name\":\"groupe\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"groupe\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"groupe\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":15.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"valeur\",\"lib/original-name\":\"valeur\",\"name\":\"valeur\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"valeur\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"valeur\",\"fingerprint\":{\"global\":{\"distinct-count\":13,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":89.0,\"q1\":229.5,\"q3\":278.75,\"max\":327.0,\"sd\":58.98511328923248,\"avg\":247.92307692307693}}},\"base_type\":\"type/Integer\"}]',NULL,'WEpNUMDhedRSFiUVTQcwQ','[]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,NULL,'2025-10-21 22:56:15.775867',15,0x00,NULL,NULL,NULL,22),
(40,'2025-10-21 12:16:13.591019','2025-10-21 22:49:57.531112','Passages aux urgences pour grippe',NULL,'map','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"}}','{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]}',13371339,2,NULL,'native',0x00,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"annee\",\"lib/original-name\":\"annee\",\"name\":\"annee\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"annee\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"annee\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2021.0,\"q1\":2021.0,\"q3\":2021.0,\"max\":2021.0,\"sd\":0.0,\"avg\":2021.0}}},\"base_type\":\"type/Integer\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"mois\",\"lib/original-name\":\"mois\",\"name\":\"mois\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"mois\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"mois\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":4.0,\"q1\":4.0,\"q3\":4.0,\"max\":4.0,\"sd\":0.0,\"avg\":4.0}}},\"base_type\":\"type/Integer\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"regionCode\",\"lib/original-name\":\"regionCode\",\"name\":\"regionCode\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"regionCode\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"regionCode\",\"fingerprint\":{\"global\":{\"distinct-count\":17,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":9.75,\"q3\":75.25,\"max\":94.0,\"sd\":33.01347763993295,\"avg\":41.470588235294116}}},\"base_type\":\"type/Integer\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"regionName\",\"lib/original-name\":\"regionName\",\"name\":\"regionName\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"regionName\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"regionName\",\"fingerprint\":{\"global\":{\"distinct-count\":17,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":13.117647058823529}}},\"base_type\":\"type/Text\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"age\",\"lib/original-name\":\"age\",\"name\":\"age\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"age\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"age\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":14.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"DOUBLE\",\"semantic_type\":null,\"lib/deduplicated-name\":\"valeur\",\"lib/original-name\":\"valeur\",\"name\":\"valeur\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"valeur\",{\"base-type\":\"type/Float\"}],\"effective_type\":\"type/Float\",\"display_name\":\"valeur\",\"fingerprint\":{\"global\":{\"distinct-count\":9,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":0.0,\"q3\":14.075211873,\"max\":52.098410947,\"sd\":13.69454581508975,\"avg\":9.131938195897058}}},\"base_type\":\"type/Float\"}]',NULL,'lEx91kVw4_qCk1tC88gj5','[{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]},\"required\":true},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"name\":\"Date\",\"slug\":\"date\",\"default\":\"2025-01-01\",\"required\":false,\"isMultiSelect\":false},{\"slug\":\"val_filtre\",\"values_query_type\":\"list\",\"name\":\"Val Filtre\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]],\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]}}]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,'2025-10-21 22:49:57.523605','2025-10-21 22:56:46.473436',100,0x00,NULL,NULL,2,22),
(41,'2025-10-21 12:55:20.488656','2025-10-21 12:58:16.517782','Actes de vaccination',NULL,'line','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}}','{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]}',13371339,2,NULL,'native',0x00,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"INTEGER\",\"semantic_type\":\"type/PK\",\"lib/deduplicated-name\":\"id\",\"lib/original-name\":\"id\",\"name\":\"id\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"id\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"id\",\"fingerprint\":null,\"base_type\":\"type/Integer\"},{\"database_type\":\"DATE\",\"semantic_type\":null,\"lib/deduplicated-name\":\"date\",\"lib/original-name\":\"date\",\"name\":\"date\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"date\",{\"base-type\":\"type/Date\"}],\"effective_type\":\"type/Date\",\"display_name\":\"date\",\"fingerprint\":{\"global\":{\"distinct-count\":24,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-10-01\",\"latest\":\"2025-01-01\"}}},\"base_type\":\"type/Date\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"variable\",\"lib/original-name\":\"variable\",\"name\":\"variable\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"variable\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"variable\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":9.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"groupe\",\"lib/original-name\":\"groupe\",\"name\":\"groupe\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"groupe\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"groupe\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":15.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"valeur\",\"lib/original-name\":\"valeur\",\"name\":\"valeur\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"valeur\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"valeur\",\"fingerprint\":{\"global\":{\"distinct-count\":24,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":5286.0,\"q1\":51900.5,\"q3\":404043.0,\"max\":654770.0,\"sd\":209287.97048127756,\"avg\":253741.79166666666}}},\"base_type\":\"type/Integer\"}]',NULL,'Y9bJX5OJs76Ii-NQbSNks','[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,'2025-10-21 12:58:16.507292','2025-10-21 22:56:35.031091',36,0x00,NULL,NULL,2,22),
(42,'2025-10-21 13:08:14.999913','2025-10-21 13:19:07.482722','Doses disponibles',NULL,'line','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}}','{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Doses disponibles\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"ordinal\",\"graph.dimensions\":[\"date\"]}',13371339,2,NULL,'native',0x00,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"INTEGER\",\"semantic_type\":\"type/PK\",\"lib/deduplicated-name\":\"id\",\"lib/original-name\":\"id\",\"name\":\"id\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"id\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"id\",\"fingerprint\":null,\"base_type\":\"type/Integer\"},{\"database_type\":\"DATE\",\"semantic_type\":null,\"lib/deduplicated-name\":\"date\",\"lib/original-name\":\"date\",\"name\":\"date\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"date\",{\"base-type\":\"type/Date\"}],\"effective_type\":\"type/Date\",\"display_name\":\"date\",\"fingerprint\":{\"global\":{\"distinct-count\":24,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-10-01\",\"latest\":\"2025-01-01\"}}},\"base_type\":\"type/Date\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"variable\",\"lib/original-name\":\"variable\",\"name\":\"variable\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"variable\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"variable\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":12.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"groupe\",\"lib/original-name\":\"groupe\",\"name\":\"groupe\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"groupe\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"groupe\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":15.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"valeur\",\"lib/original-name\":\"valeur\",\"name\":\"valeur\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"valeur\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"valeur\",\"fingerprint\":{\"global\":{\"distinct-count\":24,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":14234.0,\"q1\":109195.5,\"q3\":843410.5,\"max\":1934597.0,\"sd\":524556.3473636331,\"avg\":579887.4583333334}}},\"base_type\":\"type/Integer\"}]',NULL,'DKA6uBWwi6a5xQaXqs_Vp','[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,'2025-10-21 13:19:07.473932','2025-10-21 22:56:35.031091',30,0x00,NULL,NULL,2,22),
(43,'2025-10-21 21:08:41.042740','2025-10-21 22:54:56.531700','Passages aux urgences / Hospitalisations / SOS Médecins',NULL,'line','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"}}','{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]}',13371339,2,NULL,'native',0x00,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"DATE\",\"semantic_type\":null,\"lib/deduplicated-name\":\"date\",\"lib/original-name\":\"date\",\"name\":\"date\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"date\",{\"base-type\":\"type/Date\"}],\"effective_type\":\"type/Date\",\"display_name\":\"date\",\"fingerprint\":{\"global\":{\"distinct-count\":71,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2019-12-01\",\"latest\":\"2025-10-01\"}}},\"base_type\":\"type/Date\"},{\"database_type\":\"INTEGER\",\"semantic_type\":null,\"lib/deduplicated-name\":\"region\",\"lib/original-name\":\"region\",\"name\":\"region\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"region\",{\"base-type\":\"type/Integer\"}],\"effective_type\":\"type/Integer\",\"display_name\":\"region\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":53.0,\"q1\":53.0,\"q3\":53.0,\"max\":53.0,\"sd\":0.0,\"avg\":53.0}}},\"base_type\":\"type/Integer\"},{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"age\",\"lib/original-name\":\"age\",\"name\":\"age\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"age\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"age\",\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":14.0}}},\"base_type\":\"type/Text\"},{\"database_type\":\"DOUBLE\",\"semantic_type\":null,\"lib/deduplicated-name\":\"valeur\",\"lib/original-name\":\"valeur\",\"name\":\"valeur\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"valeur\",{\"base-type\":\"type/Float\"}],\"effective_type\":\"type/Float\",\"display_name\":\"valeur\",\"fingerprint\":{\"global\":{\"distinct-count\":59,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":12.83098709575,\"q3\":281.29529329375003,\"max\":3752.98849465,\"sd\":751.0490494368188,\"avg\":348.49408518374935}}},\"base_type\":\"type/Float\"}]',NULL,'7G0SYGoEQ_1hpCzAnKj7R','[{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"region\"]],\"name\":\"Region\",\"slug\":\"region\",\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"slug\":\"val_filtre\",\"values_query_type\":\"list\",\"default\":[\"urgences\"],\"name\":\"Val Filtre\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]],\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]},\"required\":true}]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,'2025-10-21 22:54:56.521267','2025-10-21 22:56:41.697494',64,0x00,NULL,NULL,2,22),
(44,'2025-10-21 21:09:33.863731','2025-10-21 21:13:23.919225','Regions',NULL,'table','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT `nom` FROM `Regions`\"}}','{\"table.cell_column\":\"nom\"}',13371339,2,NULL,'native',0x01,NULL,NULL,NULL,0x00,NULL,NULL,'[{\"database_type\":\"VARCHAR\",\"semantic_type\":null,\"lib/deduplicated-name\":\"nom\",\"lib/original-name\":\"nom\",\"name\":\"nom\",\"lib/source\":\"source/native\",\"source\":\"native\",\"field_ref\":[\"field\",\"nom\",{\"base-type\":\"type/Text\"}],\"effective_type\":\"type/Text\",\"display_name\":\"nom\",\"fingerprint\":{\"global\":{\"distinct-count\":18,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":12.944444444444445}}},\"base_type\":\"type/Text\"}]',NULL,'Nrz3Y7R0cEG5e9tEK1FvV','[]','[]',0x01,'v0.56.9 (ecf7bcf)','question',NULL,NULL,'2025-10-21 21:11:01.440976',2,0x01,NULL,NULL,2,22);
/*!40000 ALTER TABLE `report_card` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `report_cardfavorite`
--

DROP TABLE IF EXISTS `report_cardfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_cardfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `card_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_cardfavorite_card_id_owner_id` (`card_id`,`owner_id`),
  KEY `idx_cardfavorite_card_id` (`card_id`),
  KEY `idx_cardfavorite_owner_id` (`owner_id`),
  CONSTRAINT `fk_cardfavorite_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_cardfavorite_ref_user_id` FOREIGN KEY (`owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_cardfavorite`
--

LOCK TABLES `report_cardfavorite` WRITE;
/*!40000 ALTER TABLE `report_cardfavorite` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `report_cardfavorite` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `report_dashboard`
--

DROP TABLE IF EXISTS `report_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `name` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `parameters` longtext DEFAULT NULL,
  `points_of_interest` longtext DEFAULT NULL,
  `caveats` longtext DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `public_uuid` char(36) DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Dashboard.',
  `made_public_by_id` int(11) DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Dashboard.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard archived (effectively treated as deleted?)',
  `position` int(11) DEFAULT NULL COMMENT 'The position this Dashboard should appear in the Dashboards list, lower-numbered positions appearing before higher numbered ones.',
  `collection_id` int(11) DEFAULT NULL COMMENT 'Optional ID of Collection this Dashboard belongs to.',
  `collection_position` smallint(6) DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `cache_ttl` int(11) DEFAULT NULL COMMENT 'Granular cache TTL for specific dashboard.',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `auto_apply_filters` bit(1) NOT NULL DEFAULT b'1',
  `width` varchar(16) NOT NULL DEFAULT 'fixed',
  `initially_published_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp when the dashboard was first published in a static embed',
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT 'Keeps a running count of dashboard views',
  `archived_directly` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Was this thing trashed directly',
  `last_viewed_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Timestamp of when this dashboard was last viewed',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_dashboard_creator_id` (`creator_id`),
  KEY `idx_report_dashboard_show_in_getting_started` (`show_in_getting_started`),
  KEY `idx_dashboard_public_uuid` (`public_uuid`),
  KEY `idx_dashboard_collection_id` (`collection_id`),
  KEY `fk_dashboard_made_public_by_id` (`made_public_by_id`),
  CONSTRAINT `fk_dashboard_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_dashboard_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dashboard`
--

LOCK TABLES `report_dashboard` WRITE;
/*!40000 ALTER TABLE `report_dashboard` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `report_dashboard` VALUES
(1,'2025-10-20 14:38:43.000000','2025-10-21 22:56:12.413603','E-commerce Insights','Overview of sample data and hypothetical sales',13371338,'[{\"id\":\"81cd957\",\"name\":\"Date Range\",\"required\":false,\"sectionId\":\"date\",\"slug\":\"date_range\",\"type\":\"date/all-options\"},{\"id\":\"efd919c7\",\"name\":\"Date Grouping\",\"sectionId\":\"temporal-unit\",\"slug\":\"date_grouping\",\"type\":\"temporal-unit\"},{\"default\":[\"Doohickey\",\"Gizmo\",\"Gadget\",\"Widget\"],\"id\":\"9d9cddd4\",\"name\":\"Product Category\",\"required\":true,\"sectionId\":\"string\",\"slug\":\"product_category\",\"type\":\"string/=\"},{\"id\":\"1ebab259\",\"isMultiSelect\":false,\"name\":\"Vendor\",\"sectionId\":\"string\",\"slug\":\"vendor\",\"type\":\"string/=\"}]',NULL,NULL,0x00,NULL,NULL,0x00,NULL,0x01,NULL,2,2,NULL,'xBLdW9FsgRuB2HGhWiBa_',0x01,'fixed',NULL,0,0x00,'2025-10-20 14:38:43.000000'),
(2,'2025-10-20 14:40:06.099489','2025-10-21 22:51:22.307155','Couverture',NULL,13371339,'[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/single\",\"sectionId\":\"date\",\"required\":true,\"default\":\"2025-01-01\"},{\"slug\":\"cat%C3%A9gorie\",\"values_query_type\":\"list\",\"default\":\"urgences\",\"name\":\"Catégorie\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"5da2a733\",\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]},\"required\":true}]',NULL,NULL,0x00,NULL,NULL,0x00,NULL,0x00,NULL,NULL,NULL,NULL,'NFXQNrdYJK7lAqmrF_cCg',0x01,'full',NULL,119,0x00,'2025-10-21 22:56:46.461464');
/*!40000 ALTER TABLE `report_dashboard` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `report_dashboardcard`
--

DROP TABLE IF EXISTS `report_dashboardcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dashboardcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `size_x` int(11) DEFAULT NULL,
  `size_y` int(11) DEFAULT NULL,
  `row` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `card_id` int(11) DEFAULT NULL,
  `dashboard_id` int(11) NOT NULL,
  `parameter_mappings` longtext DEFAULT NULL,
  `visualization_settings` longtext DEFAULT NULL,
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `action_id` int(11) DEFAULT NULL COMMENT 'The related action',
  `dashboard_tab_id` int(11) DEFAULT NULL COMMENT 'The referenced tab id that dashcard is on, it''s nullable for dashboard with no tab',
  `inline_parameters` longtext DEFAULT NULL COMMENT 'JSON array of parameter IDs that should be displayed inline with this card',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_dashboardcard_card_id` (`card_id`),
  KEY `idx_dashboardcard_dashboard_id` (`dashboard_id`),
  KEY `fk_report_dashboardcard_ref_action_id` (`action_id`),
  KEY `fk_report_dashboardcard_ref_dashboard_tab_id` (`dashboard_tab_id`),
  CONSTRAINT `fk_dashboardcard_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboardcard_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_dashboardcard_ref_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_dashboardcard_ref_dashboard_tab_id` FOREIGN KEY (`dashboard_tab_id`) REFERENCES `dashboard_tab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dashboardcard`
--

LOCK TABLES `report_dashboardcard` WRITE;
/*!40000 ALTER TABLE `report_dashboardcard` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `report_dashboardcard` VALUES
(7,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,0,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Overall Business Health\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"heading\",\"name\":null,\"visualization_settings\":{}}}','8_qdLmnHn3tGOaDdbLTwn',NULL,1,NULL),
(11,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,10,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Deeper Dive\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"heading\",\"name\":null,\"visualization_settings\":{}}}','zsygIGYHdnaVsoFLgitCe',NULL,1,NULL),
(14,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,0,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Top Performing Products\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"heading\",\"name\":null,\"visualization_settings\":{}}}','wYtzbytCKhibM8Zg9s4VP',NULL,2,NULL),
(16,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,1,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Business KPIs _look strong_ based on the consistent MoM revenue growth following the growth in the number of orders\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"text\",\"name\":null,\"visualization_settings\":{}}}','WD8BNj-NyWXaWuFghZNDU',NULL,1,NULL),
(17,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,1,0,NULL,1,'[{\"parameter_id\":\"9d9cddd4\",\"target\":[\"text-tag\",\"product_category\"]}]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Find below a breakdown of products and their performance, filtered now for {{product_category}}\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"text\",\"name\":null,\"visualization_settings\":{}}}','NZSFQPtNkT7fLZeeW9Oo0',NULL,2,NULL),
(18,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,11,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Widget and Gizmo are our leading products, generating the most revenue and orders\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"text\",\"name\":null,\"visualization_settings\":{}}}','f-Hf9bL9_oArQCg-kLSdY',NULL,1,NULL),
(20,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,24,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Customer Satisfaction\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"heading\",\"name\":null,\"visualization_settings\":{}}}','YyZMLS7IGhXda6vmEfJ4I',NULL,2,NULL),
(21,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,25,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Super important customer ratings for our products\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"text\",\"name\":null,\"visualization_settings\":{}}}','MS4_Du2Fd3qkjpaRZFOqm',NULL,2,NULL),
(23,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,0,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Website Analysis\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"heading\",\"name\":null,\"visualization_settings\":{}}}','K2tgkIzRB0_cSP8jrVZ6p',NULL,3,NULL),
(24,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,1,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Take a look into our customer funnel and website performance\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"text\",\"name\":null,\"visualization_settings\":{}}}','DTpP8-129mKPp9oxsq_4R',NULL,3,NULL),
(29,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',10,1,22,14,NULL,1,'[]','{\"column_settings\":null,\"link\":{\"entity\":{\"collection_id\":1788,\"db_id\":null,\"description\":\"More complete look at all recent subscriptions\",\"display\":\"table\",\"id\":25,\"model\":\"card\",\"name\":\"All subscriptions in table view\"}},\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"link\",\"name\":null,\"visualization_settings\":{}}}','ZuOmZNE78gKe16jyqSRX4',NULL,3,NULL),
(31,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,10,25,0,NULL,1,'[]','{\"column_settings\":null,\"iframe\":\"https://www.youtube.com/watch?v=dnT2Xj52mnk\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"iframe\",\"name\":null,\"visualization_settings\":{}}}','sCNcFfp3EeaizKg0VtW4e',NULL,3,NULL),
(32,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,24,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Find more guides and tutorials on Metabase, analytics, data modeling, and more at [Metabase Learn](https://www.metabase.com/learn/)\\n\\n\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"text\",\"name\":null,\"visualization_settings\":{}}}','OlrrrzZShIqvGE6RAjqbr',NULL,3,NULL),
(33,'2025-10-20 14:38:43.000000','2025-10-20 14:38:43.000000',24,1,23,0,NULL,1,'[]','{\"column_settings\":null,\"dashcard.background\":false,\"text\":\"Appendix\",\"virtual_card\":{\"archived\":false,\"dataset_query\":{},\"display\":\"heading\",\"name\":null,\"visualization_settings\":{}}}','Rq9NMjA_Y28ZDB-nwO8vI',NULL,3,NULL),
(36,'2025-10-21 12:16:13.611205','2025-10-21 22:50:59.931726',12,9,0,0,40,2,'[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"299d53ad\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"parameter_id\":\"5da2a733\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]','{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}}','i2lDSIGFH7kgLlYDTdXqO',NULL,4,'[\"299d53ad\"]'),
(37,'2025-10-21 12:55:20.504022','2025-10-21 22:18:53.389279',24,5,0,0,41,2,'[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]','{}','-IML9SYqEYa1C59i_TdP3',NULL,5,'[\"dc75c565\"]'),
(38,'2025-10-21 13:08:15.007143','2025-10-21 22:18:53.391284',24,5,5,0,42,2,'[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}]','{}','LRR8HQEEaRORwtSbT3uhO',NULL,5,'[]'),
(39,'2025-10-21 21:08:41.090440','2025-10-21 22:55:19.445958',12,7,0,12,43,2,'[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"5da2a733\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}]','{\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"}}','fcGkrxT67qulSFyZobvEV',NULL,4,'[\"9a363ccb\"]');
/*!40000 ALTER TABLE `report_dashboardcard` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `revision`
--

DROP TABLE IF EXISTS `revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(16) NOT NULL,
  `model_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `object` longtext DEFAULT NULL,
  `is_reversion` bit(1) NOT NULL DEFAULT b'0',
  `is_creation` bit(1) NOT NULL DEFAULT b'0',
  `message` longtext DEFAULT NULL,
  `most_recent` bit(1) NOT NULL DEFAULT b'0',
  `metabase_version` varchar(100) DEFAULT NULL COMMENT 'Metabase version used to create the revision.',
  PRIMARY KEY (`id`),
  KEY `idx_revision_model_model_id` (`model`,`model_id`),
  KEY `fk_revision_ref_user_id` (`user_id`),
  KEY `idx_revision_most_recent` (`most_recent`),
  CONSTRAINT `fk_revision_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision`
--

LOCK TABLES `revision` WRITE;
/*!40000 ALTER TABLE `revision` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `revision` VALUES
(2,'Card',38,13371339,'2025-10-20 14:52:18.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":10,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"query\",\"name\":\"Couverture2023\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"query\",\"query\":{\"source-table\":10}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"code\"},\"parameters\":[],\"dashboard_id\":null}',0x00,0x01,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(3,'Card',39,13371339,'2025-10-20 14:58:49.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Actes vaccinations moins de 65 ans\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `Couverture2023`.`id` AS `id`,\\n  `Couverture2023`.`region` AS `region`,\\n  `Couverture2023`.`code` AS `code`,\\n  `Couverture2023`.`variable` AS `variable`,\\n  `Couverture2023`.`groupe` AS `groupe`,\\n  `Couverture2023`.`valeur` AS `valeur`\\nFROM\\n  `Couverture2023`\\nWHERE\\n\\t`variable`=\'ACTE(VGP)\' AND\\n\\t`groupe`=\'moins de 65 ans\'\\nLIMIT\\n  1048575\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"code\"},\"parameters\":[],\"dashboard_id\":null}',0x00,0x01,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(6,'Card',40,13371339,'2025-10-21 12:16:13.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Urgences\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"table\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"name\":\"Annee\",\"slug\":\"annee\",\"required\":false,\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"name\":\"Mois\",\"slug\":\"mois\",\"isMultiSelect\":false},{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}}],\"dashboard_id\":2}',0x00,0x01,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(7,'Card',40,13371339,'2025-10-21 12:18:17.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Urgences\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.nom as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"name\":\"Annee\",\"slug\":\"annee\",\"required\":false,\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"name\":\"Mois\",\"slug\":\"mois\",\"isMultiSelect\":false},{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(9,'Card',40,13371339,'2025-10-21 12:24:14.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Urgences\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"region\"},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"name\":\"Annee\",\"slug\":\"annee\",\"required\":false,\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"name\":\"Mois\",\"slug\":\"mois\",\"isMultiSelect\":false},{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(12,'Card',41,13371339,'2025-10-21 12:55:20.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Actes de vaccination\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\'\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[],\"dashboard_id\":2}',0x00,0x01,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(14,'Card',41,13371339,'2025-10-21 12:58:16.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Actes de vaccination\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'ACTE(VGP)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}],\"dashboard_id\":2}',0x00,0x00,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(17,'Card',42,13371339,'2025-10-21 13:08:15.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Doses\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Actes de vaccination en pharmacie\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}],\"dashboard_id\":2}',0x00,0x01,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(20,'Card',42,13371339,'2025-10-21 13:18:04.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Doses\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Doses disponibles\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(21,'Card',42,13371339,'2025-10-21 13:18:24.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Doses disponibles\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Doses disponibles\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"ordinal\",\"graph.dimensions\":[null]},\"parameters\":[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(22,'Card',42,13371339,'2025-10-21 13:19:07.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Doses disponibles\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"groupe\":{\"display-name\":\"Groupe\",\"type\":\"text\",\"name\":\"groupe\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"required\":true}},\"query\":\"SELECT\\n  `dfIqvia`.`id` AS `id`,\\n  DATE_ADD(MAKEDATE(`dfIqvia`.`annee`, 1), INTERVAL(`dfIqvia`.`mois`)-1 MONTH) as `date`,\\n  `dfIqvia`.`variable` AS `variable`,\\n  `dfIqvia`.`groupe` AS `groupe`,\\n  `dfIqvia`.`valeur` AS `valeur`\\nFROM\\n  `dfIqvia`\\nWHERE\\n  `dfIqvia`.`variable` = \'DOSES(J07E1)\' AND\\n  `dfIqvia`.`groupe` = {{groupe}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"graph.show_trendline\":false,\"graph.y_axis.title_text\":\"Doses disponibles\",\"graph.show_values\":false,\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.label_value_formatting\":\"auto\",\"graph.series_order\":null,\"graph.x_axis.scale\":\"ordinal\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"groupe\",\"values_query_type\":\"list\",\"name\":\"Groupe\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"43f31d1a-fb5e-42c6-8af0-fd82505e9988\",\"target\":[\"variable\",[\"template-tag\",\"groupe\"]],\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true}],\"dashboard_id\":2}',0x00,0x00,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(24,'Card',43,13371339,'2025-10-21 21:08:41.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Graph\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"region\"]],\"name\":\"Region\",\"slug\":\"region\",\"isMultiSelect\":false,\"values_query_type\":\"search\"}],\"dashboard_id\":2}',0x00,0x01,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(26,'Card',44,13371339,'2025-10-21 21:09:33.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Regions\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT `nom` FROM `Regions`\"}},\"parameter_mappings\":[],\"display\":\"table\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.cell_column\":\"nom\"},\"parameters\":[],\"dashboard_id\":2}',0x00,0x01,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(32,'Card',40,13371339,'2025-10-21 21:23:38.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Urgences\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"name\":\"Annee\",\"slug\":\"annee\",\"required\":false,\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"name\":\"Mois\",\"slug\":\"mois\",\"isMultiSelect\":false},{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(36,'Dashboard',2,13371339,'2025-10-21 21:30:41.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":11,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\",\"97e55ba5\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":9},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":14},{\"size_x\":13,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":11,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":6,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2019\"],[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"groupe_d\'%C3%A2ge\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Groupe d\'âge\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(37,'Dashboard',2,13371339,'2025-10-21 21:31:07.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":11,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\",\"97e55ba5\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":9},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":14},{\"size_x\":13,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":11,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":6,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"groupe_d\'%C3%A2ge\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Groupe d\'âge\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(38,'Card',40,13371339,'2025-10-21 21:32:20.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences pour grippe\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"annee\":{\"type\":\"number\",\"name\":\"annee\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"display-name\":\"Annee\",\"required\":false},\"mois\":{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number\",\"name\":\"mois\",\"display-name\":\"Mois\"},\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"}},\"query\":\"SELECT dfUrg.annee as annee, dfUrg.mois as mois, Regions.code as regionCode, dfUrg.region as regionName, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE annee = {{annee}} AND mois = {{mois}} AND age = {{age}} AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"parameters\":[{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"annee\"]],\"name\":\"Annee\",\"slug\":\"annee\",\"required\":false,\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"id\":\"aa6ca67e-c655-4d69-b34d-10c6c3a1b081\",\"type\":\"number/=\",\"target\":[\"variable\",[\"template-tag\",\"mois\"]],\"name\":\"Mois\",\"slug\":\"mois\",\"isMultiSelect\":false},{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(39,'Card',43,13371339,'2025-10-21 21:33:05.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences / Hospitalisations / SOS Médecins\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"type\":\"text\",\"name\":\"age\",\"display-name\":\"Age\"},\"region\":{\"type\":\"text\",\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"display-name\":\"Region\"}},\"query\":\"SELECT DATE_ADD(MAKEDATE(`dfUrg`.`annee`, 1), INTERVAL(`dfUrg`.`mois`)-1 MONTH) as `date`, Regions.code as region, dfUrg.age as age, dfUrg.taux_urg_grippe as taux_urg, dfUrg.taux_hosp_grippe as taux_hosp, dfUrg.taux_sos_med_grippe as taux_sos_med FROM dfUrg, Regions WHERE age = {{age}} AND Regions.nom = dfUrg.region AND dfUrg.region = {{region}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"taux_sos_med\",\"taux_urg\",\"taux_hosp\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"region\"]],\"name\":\"Region\",\"slug\":\"region\",\"isMultiSelect\":false,\"values_query_type\":\"search\"}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(40,'Dashboard',2,13371339,'2025-10-21 21:33:54.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\",\"97e55ba5\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":9},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":14},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":6,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"groupe_d\'%C3%A2ge\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Groupe d\'âge\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(41,'Dashboard',2,13371339,'2025-10-21 21:34:48.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":13,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\",\"97e55ba5\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":9},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":14},{\"size_x\":11,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":13,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":6,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"groupe_d\'%C3%A2ge\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Groupe d\'âge\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(42,'Dashboard',2,13371339,'2025-10-21 21:35:25.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\",\"97e55ba5\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":9},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":14},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(43,'Dashboard',2,13371339,'2025-10-21 22:16:47.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":9},{\"size_x\":24,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":14},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(44,'Dashboard',2,13371339,'2025-10-21 22:18:53.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(45,'Dashboard',2,13371339,'2025-10-21 22:23:30.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"5e4b7907\",\"7bcab7c8\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"5e4b7907\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"annee\"]]},{\"parameter_id\":\"7bcab7c8\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"mois\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"}}}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"annee\",\"values_query_type\":\"list\",\"default\":\"2024\",\"name\":\"Annee\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"5e4b7907\",\"values_source_config\":{\"values\":[[\"2020\"],[\"2021\"],[\"2022\"],[\"2023\"],[\"2024\"],[\"2025\"]]},\"required\":true},{\"slug\":\"mois\",\"values_query_type\":\"list\",\"default\":\"12\",\"name\":\"Mois\",\"type\":\"number/=\",\"sectionId\":\"number\",\"values_source_type\":\"static-list\",\"id\":\"7bcab7c8\",\"values_source_config\":{\"values\":[[\"1\",\"Janvier\"],[\"2\",\"Février\"],[\"3\",\"Mars\"],[\"4\",\"Avril\"],[\"5\",\"Mai\"],[\"6\",\"Juin\"],[\"7\",\"Juillet\"],[\"8\",\"Août\"],[\"9\",\"Septembre\"],[\"10\",\"Octobre\"],[\"11\",\"Novembre\"],[\"12\",\"Décembre\"]]},\"required\":true},{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(46,'Card',40,13371339,'2025-10-21 22:29:32.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences pour grippe\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":true,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"name\":\"Date\",\"slug\":\"date\",\"default\":\"2025-01-01\",\"required\":true,\"isMultiSelect\":false}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(47,'Dashboard',2,13371339,'2025-10-21 22:30:30.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"299d53ad\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"}}}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/all-options\",\"sectionId\":\"date\"}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(48,'Card',40,13371339,'2025-10-21 22:32:31.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences pour grippe\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"required\":true,\"display-name\":\"Age\",\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"default\":[\"Tous âges\"]},\"date\":{\"required\":true,\"type\":\"date\",\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]},\"required\":true},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"name\":\"Date\",\"slug\":\"date\",\"default\":\"2025-01-01\",\"required\":true,\"isMultiSelect\":false}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(49,'Dashboard',2,13371339,'2025-10-21 22:33:54.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"}}}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/month-year\",\"sectionId\":\"date\",\"default\":\"2025-01\",\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(50,'Card',40,13371339,'2025-10-21 22:34:53.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences pour grippe\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  dfUrg.taux_urg_grippe AS taux_urg,\\n  dfUrg.taux_hosp_grippe AS taux_hosp,\\n  dfUrg.taux_sos_med_grippe AS taux_sos_med\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"taux_urg\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]},\"required\":true},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"name\":\"Date\",\"slug\":\"date\",\"default\":\"2025-01-01\",\"required\":false,\"isMultiSelect\":false}],\"dashboard_id\":2}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(51,'Dashboard',2,13371339,'2025-10-21 22:42:47.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"299d53ad\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"299d53ad\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"date\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"}}}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/single\",\"sectionId\":\"date\",\"required\":true,\"default\":\"2025-01-01\"}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(52,'Dashboard',2,13371339,'2025-10-21 22:43:04.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"299d53ad\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"299d53ad\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"date\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/single\",\"sectionId\":\"date\",\"required\":true,\"default\":\"2025-01-01\"}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(53,'Card',40,13371339,'2025-10-21 22:49:57.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences pour grippe\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"required\":true,\"display-name\":\"Age\",\"default\":[\"Tous âges\"]},\"date\":{\"name\":\"date\",\"display-name\":\"Date\",\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"required\":false,\"type\":\"date\",\"default\":\"2025-01-01\"},\"val_filtre\":{\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"display-name\":\"Val Filtre\"}},\"query\":\"SELECT\\n  dfUrg.annee AS annee,\\n  dfUrg.mois AS mois,\\n  Regions.code AS regionCode,\\n  dfUrg.region AS regionName,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  annee = YEAR({{date}})\\n  AND mois = MONTH({{date}})\\n  AND age = {{age}}\\n  AND dfUrg.region = Regions.nom\"}},\"parameter_mappings\":[],\"display\":\"map\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"annee\",\"table.cell_column\":\"mois\",\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.metric\":\"valeur\",\"map.dimension\":\"regionCode\",\"map.colors\":[\"rgb(252, 218, 218)\",\"rgb(246, 169, 169)\",\"rgb(241, 120, 120)\",\"rgb(236, 71, 71)\",\"hsl(0, 82.9%, 43.2%)\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]},\"required\":true},{\"id\":\"239724be-caaa-4e32-b07c-d56d1560bd43\",\"type\":\"date/single\",\"target\":[\"variable\",[\"template-tag\",\"date\"]],\"name\":\"Date\",\"slug\":\"date\",\"default\":\"2025-01-01\",\"required\":false,\"isMultiSelect\":false},{\"slug\":\"val_filtre\",\"values_query_type\":\"list\",\"name\":\"Val Filtre\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"1917604e-a9f6-4e21-8483-baf62fa8cbfd\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]],\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]}}],\"dashboard_id\":2}',0x00,0x00,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(54,'Dashboard',2,13371339,'2025-10-21 22:50:59.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"299d53ad\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"299d53ad\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"parameter_id\":\"5da2a733\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/single\",\"sectionId\":\"date\",\"required\":true,\"default\":\"2025-01-01\"},{\"slug\":\"cat%C3%A9gorie\",\"default\":\"urgences\",\"name\":\"Catégorie\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"5da2a733\",\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]},\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(55,'Dashboard',2,13371339,'2025-10-21 22:51:22.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"299d53ad\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"299d53ad\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"parameter_id\":\"5da2a733\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/single\",\"sectionId\":\"date\",\"required\":true,\"default\":\"2025-01-01\"},{\"slug\":\"cat%C3%A9gorie\",\"values_query_type\":\"list\",\"default\":\"urgences\",\"name\":\"Catégorie\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"5da2a733\",\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]},\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x00,'v0.56.9 (ecf7bcf)'),
(56,'Card',43,13371339,'2025-10-21 22:54:56.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"source_card_id\":null,\"table_id\":null,\"card_schema\":22,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Passages aux urgences / Hospitalisations / SOS Médecins\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{\"age\":{\"type\":\"text\",\"name\":\"age\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"display-name\":\"Age\"},\"region\":{\"name\":\"region\",\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"text\",\"display-name\":\"Region\"},\"val_filtre\":{\"default\":[\"urgences\"],\"display-name\":\"Val Filtre\",\"type\":\"text\",\"name\":\"val_filtre\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"required\":true}},\"query\":\"SELECT\\n  DATE_ADD(\\n    MAKEDATE(`dfUrg`.`annee`, 1),\\n    INTERVAL(`dfUrg`.`mois`) -1 MONTH\\n  ) AS `date`,\\n  Regions.code AS region,\\n  dfUrg.age AS age,\\n  (CASE\\n  \\tWHEN {{val_filtre}} = \'urgences\' THEN dfUrg.taux_urg_grippe\\n  \\tWHEN {{val_filtre}} = \'hospitalisations\' THEN dfUrg.taux_hosp_grippe\\n  \\tWHEN {{val_filtre}} = \'sos_medecins\' THEN dfUrg.taux_sos_med_grippe\\n  END) AS valeur\\nFROM\\n  dfUrg,\\n  Regions\\nWHERE\\n  age = {{age}}\\n  AND Regions.nom = dfUrg.region\\n  AND dfUrg.region = {{region}}\"}},\"parameter_mappings\":[],\"display\":\"line\",\"archived_directly\":false,\"collection_preview\":true,\"visualization_settings\":{\"map.region\":\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\",\"map.dimension\":\"region\",\"map.metric\":\"taux_urg\",\"table.cell_column\":\"mois\",\"graph.series_order_dimension\":null,\"graph.metrics\":[\"valeur\"],\"graph.series_order\":null,\"table.pivot_column\":\"annee\",\"graph.x_axis.scale\":\"timeseries\",\"graph.dimensions\":[\"date\"]},\"parameters\":[{\"slug\":\"age\",\"values_query_type\":\"list\",\"name\":\"Age\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"258fd107-4563-4d32-8db1-ca49d4765661\",\"target\":[\"variable\",[\"template-tag\",\"age\"]],\"values_source_config\":{\"values\":[[\"Tous âges\"],[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"]]}},{\"id\":\"aa395706-9de8-4802-bbe1-535b06d07423\",\"type\":\"string/=\",\"target\":[\"variable\",[\"template-tag\",\"region\"]],\"name\":\"Region\",\"slug\":\"region\",\"isMultiSelect\":false,\"values_query_type\":\"search\"},{\"slug\":\"val_filtre\",\"values_query_type\":\"list\",\"default\":[\"urgences\"],\"name\":\"Val Filtre\",\"isMultiSelect\":false,\"type\":\"string/=\",\"values_source_type\":\"static-list\",\"id\":\"a48385ca-6b0d-4473-84ae-188afe159ece\",\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]],\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]},\"required\":true}],\"dashboard_id\":2}',0x00,0x00,NULL,0x01,'v0.56.9 (ecf7bcf)'),
(57,'Dashboard',2,13371339,'2025-10-21 22:55:19.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[{\"id\":4,\"dashboard_id\":2,\"name\":\"Urgences par région\",\"position\":0},{\"id\":5,\"dashboard_id\":2,\"name\":\"Vaccinations\",\"position\":1}],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Couverture\",\"width\":\"full\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"299d53ad\"],\"action_id\":null,\"col\":0,\"id\":36,\"parameter_mappings\":[{\"parameter_id\":\"97e55ba5\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"299d53ad\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"date\"]]},{\"parameter_id\":\"5da2a733\",\"card_id\":40,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"card_id\":40,\"visualization_settings\":{\"click_behavior\":{\"type\":\"crossfilter\",\"parameterMapping\":{\"9a363ccb\":{\"source\":{\"type\":\"column\",\"id\":\"regionName\",\"name\":\"regionName\"},\"target\":{\"type\":\"parameter\",\"id\":\"9a363ccb\"},\"id\":\"9a363ccb\"}}}},\"size_y\":9,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[\"dc75c565\"],\"action_id\":null,\"col\":0,\"id\":37,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":41,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":41,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":0},{\"size_x\":24,\"dashboard_tab_id\":5,\"series\":[],\"inline_parameters\":[],\"action_id\":null,\"col\":0,\"id\":38,\"parameter_mappings\":[{\"parameter_id\":\"dc75c565\",\"card_id\":42,\"target\":[\"variable\",[\"template-tag\",\"groupe\"]]}],\"card_id\":42,\"visualization_settings\":{},\"size_y\":5,\"dashboard_id\":2,\"row\":5},{\"size_x\":12,\"dashboard_tab_id\":4,\"series\":[],\"inline_parameters\":[\"9a363ccb\"],\"action_id\":null,\"col\":12,\"id\":39,\"parameter_mappings\":[{\"parameter_id\":\"9a363ccb\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"region\"]]},{\"parameter_id\":\"97e55ba5\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"age\"]]},{\"parameter_id\":\"5da2a733\",\"card_id\":43,\"target\":[\"variable\",[\"template-tag\",\"val_filtre\"]]}],\"card_id\":43,\"visualization_settings\":{\"click_behavior\":{\"parameterMapping\":{\"5e4b7907\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"5e4b7907\"},\"id\":\"5e4b7907\"},\"299d53ad\":{\"source\":{\"type\":\"column\",\"id\":\"date\",\"name\":\"date\"},\"target\":{\"type\":\"parameter\",\"id\":\"299d53ad\"},\"id\":\"299d53ad\"}},\"type\":\"crossfilter\"}},\"size_y\":7,\"dashboard_id\":2,\"row\":0}],\"archived_directly\":false,\"parameters\":[{\"slug\":\"ages\",\"values_query_type\":\"list\",\"default\":[\"Tous âges\"],\"name\":\"Ages\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"97e55ba5\",\"values_source_config\":{\"values\":[[\"00-04 ans\"],[\"05-14 ans\"],[\"15-64 ans\"],[\"65 ans ou plus\"],[\"Tous âges\"]]},\"required\":true},{\"slug\":\"age\",\"values_query_type\":\"list\",\"default\":[\"moins de 65 ans\"],\"name\":\"Age\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"dc75c565\",\"values_source_config\":{\"values\":[[\"moins de 65 ans\"],[\"65 ans et plus\"]]},\"required\":true},{\"slug\":\"region\",\"values_query_type\":\"search\",\"default\":[\"Île-de-France\"],\"name\":\"Region\",\"type\":\"string/=\",\"sectionId\":\"string\",\"id\":\"9a363ccb\",\"required\":true},{\"name\":\"Date\",\"slug\":\"date\",\"id\":\"299d53ad\",\"type\":\"date/single\",\"sectionId\":\"date\",\"required\":true,\"default\":\"2025-01-01\"},{\"slug\":\"cat%C3%A9gorie\",\"values_query_type\":\"list\",\"default\":\"urgences\",\"name\":\"Catégorie\",\"type\":\"string/=\",\"sectionId\":\"string\",\"values_source_type\":\"static-list\",\"id\":\"5da2a733\",\"values_source_config\":{\"values\":[[\"urgences\"],[\"hospitalisations\"],[\"sos_medecins\"]]},\"required\":true}],\"auto_apply_filters\":true}',0x00,0x00,NULL,0x01,'v0.56.9 (ecf7bcf)');
/*!40000 ALTER TABLE `revision` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `sandboxes`
--

DROP TABLE IF EXISTS `sandboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sandboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT 'ID of the Permissions Group this policy affects.',
  `table_id` int(11) NOT NULL COMMENT 'ID of the Table that should get automatically replaced as query source for the Permissions Group.',
  `card_id` int(11) DEFAULT NULL,
  `attribute_remappings` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_gtap_table_id_group_id` (`table_id`,`group_id`),
  KEY `fk_gtap_group_id` (`group_id`),
  KEY `idx_gtap_table_id_group_id` (`table_id`,`group_id`),
  KEY `fk_gtap_card_id` (`card_id`),
  CONSTRAINT `fk_gtap_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gtap_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gtap_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records that a given Card (Question) should automatically replace a given Table as query source for a given a Perms Group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandboxes`
--

LOCK TABLES `sandboxes` WRITE;
/*!40000 ALTER TABLE `sandboxes` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `sandboxes` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `search_index_metadata`
--

DROP TABLE IF EXISTS `search_index_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_index_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engine` varchar(64) NOT NULL COMMENT 'The kind of search engine which this index belongs to.',
  `version` varchar(254) NOT NULL COMMENT 'Used to determine metabase compatibility. Format may depend on engine in future.',
  `index_name` varchar(254) NOT NULL COMMENT 'The name by which the given engine refers to this particular index, e.g. table name.',
  `status` varchar(32) DEFAULT NULL COMMENT 'One of ''pending'', ''active'', or ''retired''',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the index was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the index status was updated',
  `lang_code` varchar(10) NOT NULL DEFAULT 'en' COMMENT 'Language code the data in the index is in',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_name` (`index_name`),
  UNIQUE KEY `idx_search_index_metadata_unique_status` (`engine`,`version`,`lang_code`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Each entry corresponds to some queryable index, and contains metadata about it.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_index_metadata`
--

LOCK TABLES `search_index_metadata` WRITE;
/*!40000 ALTER TABLE `search_index_metadata` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `search_index_metadata` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `secret`
--

DROP TABLE IF EXISTS `secret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `secret` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Part of composite primary key for secret; this is the uniquely generted ID column',
  `version` int(11) NOT NULL DEFAULT 1 COMMENT 'Part of composite primary key for secret; this is the version column',
  `creator_id` int(11) DEFAULT NULL COMMENT 'User ID who created this secret instance',
  `created_at` timestamp(6) NOT NULL COMMENT 'Timestamp for when this secret instance was created',
  `updated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'Timestamp for when this secret record was updated. Only relevant when non-value field changes since a value change will result in a new version being inserted.',
  `name` varchar(254) NOT NULL COMMENT 'The name of this secret record.',
  `kind` varchar(254) NOT NULL COMMENT 'The kind of secret this record represents; the value is interpreted as a Clojure keyword with a hierarchy. Ex: ''bytes'' means generic binary data, ''jks-keystore'' extends ''bytes'' but has a specific meaning.',
  `source` varchar(254) DEFAULT NULL COMMENT 'The source of secret record, which controls how Metabase interprets the value (ex: ''file-path'' means the ''simple_value'' is not the real value, but a pointer to a file that contains the value).',
  `value` longblob DEFAULT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `fk_secret_ref_user_id` (`creator_id`),
  CONSTRAINT `fk_secret_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Storage for managed secrets (passwords, binary data, etc.)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secret`
--

LOCK TABLES `secret` WRITE;
/*!40000 ALTER TABLE `secret` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `secret` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `segment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` varchar(254) NOT NULL,
  `description` longtext DEFAULT NULL,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `points_of_interest` longtext DEFAULT NULL,
  `caveats` longtext DEFAULT NULL,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_segment_creator_id` (`creator_id`),
  KEY `idx_segment_table_id` (`table_id`),
  KEY `idx_segment_show_in_getting_started` (`show_in_getting_started`),
  CONSTRAINT `fk_segment_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_segment_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `semantic_search_token_tracking`
--

DROP TABLE IF EXISTS `semantic_search_token_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `semantic_search_token_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique ID of a request',
  `model_name` varchar(256) NOT NULL COMMENT 'Name of model used for embeddings generation',
  `request_type` varchar(32) DEFAULT NULL COMMENT 'Type of request, possibly index or query',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'Datetime of insertion',
  `total_tokens` int(11) NOT NULL COMMENT 'Total tokens value as per OpenAI compatible API',
  PRIMARY KEY (`id`),
  KEY `idx_semantic_search_token_tracking_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Token usage tracking info for semantic search';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semantic_search_token_tracking`
--

LOCK TABLES `semantic_search_token_tracking` WRITE;
/*!40000 ALTER TABLE `semantic_search_token_tracking` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `semantic_search_token_tracking` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `key` varchar(254) NOT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `setting` VALUES
('admin-email','emi.couy@epitech.eu'),
('analytics-uuid','608cb89a-482d-4cde-9943-1dbc6d6745bc'),
('anon-tracking-enabled','false'),
('custom-geojson','{\"5bee6d98-2d6b-f3ef-e4f9-f0cdfac49931\":{\"name\":\"France\",\"url\":\"http://nginx/hak_assets/regions.geojson\",\"region_key\":\"code\",\"region_name\":\"nom\"}}'),
('custom-homepage','true'),
('custom-homepage-dashboard','2'),
('embedding-homepage','visible'),
('encryption-check','unencrypted'),
('example-dashboard-id','1'),
('instance-creation','2025-10-20T14:38:41Z'),
('non-table-chart-generated','true'),
('redirect-all-requests-to-https','false'),
('settings-last-updated','2025-10-21 20:47:11'),
('setup-license-active-at-setup','false'),
('setup-token','45dc5a3c-cd31-4b59-93a5-5dab6dda037a'),
('site-locale','en'),
('site-name','EPITECH'),
('site-url','http://localhost'),
('site-uuid','633e7a13-b936-47a4-821b-7f16811fbc08'),
('site-uuid-for-version-info-fetching','bea26b5d-6e33-4ebd-af05-543f7ef5591a'),
('startup-time-millis','13695'),
('version-info-last-checked','2025-10-21T19:37:14.210575515Z');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `table_privileges`
--

DROP TABLE IF EXISTS `table_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_privileges` (
  `table_id` int(11) NOT NULL COMMENT 'Table ID',
  `role` varchar(255) DEFAULT NULL COMMENT 'Role name. NULL indicates the privileges are the current user''s',
  `select` bit(1) NOT NULL DEFAULT b'0',
  `update` bit(1) NOT NULL DEFAULT b'0',
  `insert` bit(1) NOT NULL DEFAULT b'0',
  `delete` bit(1) NOT NULL DEFAULT b'0',
  KEY `fk_table_privileges_table_id` (`table_id`),
  KEY `idx_table_privileges_role` (`role`),
  CONSTRAINT `fk_table_privileges_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table for user and role privileges by table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_privileges`
--

LOCK TABLES `table_privileges` WRITE;
/*!40000 ALTER TABLE `table_privileges` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `table_privileges` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `task_history`
--

DROP TABLE IF EXISTS `task_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(254) NOT NULL COMMENT 'Name of the task',
  `db_id` int(11) DEFAULT NULL,
  `started_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ended_at` timestamp(6) NULL DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `task_details` longtext DEFAULT NULL,
  `status` varchar(21) NOT NULL DEFAULT 'started' COMMENT 'the status of task history, could be started, failed, success, unknown',
  PRIMARY KEY (`id`),
  KEY `idx_task_history_end_time` (`ended_at`),
  KEY `idx_task_history_db_id` (`db_id`),
  KEY `idx_task_history_started_at` (`started_at`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timing and metadata info about background/quartz processes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_history`
--

LOCK TABLES `task_history` WRITE;
/*!40000 ALTER TABLE `task_history` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `task_history` VALUES
(1,'sync',1,'2025-10-20 14:38:46.465098','2025-10-20 14:38:46.882355',417,NULL,'success'),
(2,'sync-dbms-version',1,'2025-10-20 14:38:46.500622','2025-10-20 14:38:46.528727',28,'{\"flavor\":\"H2\",\"version\":\"2.1.214 (2022-06-13)\",\"semantic-version\":[2,1]}','success'),
(3,'sync-timezone',1,'2025-10-20 14:38:46.536061','2025-10-20 14:38:46.556196',20,'{\"timezone-id\":\"GMT\"}','success'),
(4,'sync-tables',1,'2025-10-20 14:38:46.560389','2025-10-20 14:38:46.576819',16,'{\"updated-tables\":0,\"total-tables\":8}','success'),
(5,'sync-fields',1,'2025-10-20 14:38:46.581981','2025-10-20 14:38:46.665995',84,'{\"total-fields\":71,\"updated-fields\":0}','success'),
(6,'sync-fks',1,'2025-10-20 14:38:46.670128','2025-10-20 14:38:46.699718',29,'{\"total-fks\":6,\"updated-fks\":0,\"total-failed\":0}','success'),
(7,'sync-indexes',1,'2025-10-20 14:38:46.702807','2025-10-20 14:38:46.705768',2,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(8,'sync-metabase-metadata',1,'2025-10-20 14:38:46.709074','2025-10-20 14:38:46.879935',170,'{}','success'),
(9,'analyze',1,'2025-10-20 14:38:46.889030','2025-10-20 14:38:46.954188',65,NULL,'success'),
(10,'fingerprint-fields',1,'2025-10-20 14:38:46.894763','2025-10-20 14:38:46.916674',21,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(11,'classify-fields',1,'2025-10-20 14:38:46.920262','2025-10-20 14:38:46.938313',18,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(12,'classify-tables',1,'2025-10-20 14:38:46.941754','2025-10-20 14:38:46.949628',7,'{\"tables-classified\":0,\"total-tables\":8}','success'),
(13,'field values scanning',1,'2025-10-20 14:38:46.960137','2025-10-20 14:38:47.152965',192,NULL,'success'),
(14,'delete-expired-advanced-field-values',1,'2025-10-20 14:38:46.963968','2025-10-20 14:38:47.076357',112,'{\"deleted\":0}','success'),
(15,'update-field-values',1,'2025-10-20 14:38:47.079536','2025-10-20 14:38:47.149111',69,'{\"errors\":0,\"created\":0,\"updated\":0,\"deleted\":0}','success'),
(16,'sync',1,'2025-10-20 14:39:00.022417','2025-10-20 14:39:00.241588',219,NULL,'success'),
(17,'sync-dbms-version',1,'2025-10-20 14:39:00.026249','2025-10-20 14:39:00.029325',3,'{\"flavor\":\"H2\",\"version\":\"2.1.214 (2022-06-13)\",\"semantic-version\":[2,1]}','success'),
(18,'sync-timezone',1,'2025-10-20 14:39:00.033414','2025-10-20 14:39:00.036329',2,'{\"timezone-id\":\"GMT\"}','success'),
(19,'sync-tables',1,'2025-10-20 14:39:00.039410','2025-10-20 14:39:00.046315',6,'{\"updated-tables\":0,\"total-tables\":8}','success'),
(20,'sync-fields',1,'2025-10-20 14:39:00.049624','2025-10-20 14:39:00.089228',39,'{\"total-fields\":71,\"updated-fields\":0}','success'),
(21,'sync-fks',1,'2025-10-20 14:39:00.092070','2025-10-20 14:39:00.107023',14,'{\"total-fks\":6,\"updated-fks\":0,\"total-failed\":0}','success'),
(22,'sync-indexes',1,'2025-10-20 14:39:00.110244','2025-10-20 14:39:00.112816',2,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(23,'sync-metabase-metadata',1,'2025-10-20 14:39:00.115939','2025-10-20 14:39:00.238438',122,'{}','success'),
(24,'analyze',1,'2025-10-20 14:39:00.246707','2025-10-20 14:39:00.298801',52,NULL,'success'),
(25,'fingerprint-fields',1,'2025-10-20 14:39:00.251261','2025-10-20 14:39:00.267522',16,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(26,'classify-fields',1,'2025-10-20 14:39:00.271170','2025-10-20 14:39:00.285543',14,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(27,'classify-tables',1,'2025-10-20 14:39:00.288693','2025-10-20 14:39:00.295470',6,'{\"tables-classified\":0,\"total-tables\":8}','success'),
(28,'sync',2,'2025-10-20 14:41:39.734448','2025-10-20 14:41:40.142564',408,NULL,'success'),
(29,'sync-dbms-version',2,'2025-10-20 14:41:39.756317','2025-10-20 14:41:39.784934',28,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(30,'sync-timezone',2,'2025-10-20 14:41:39.790628','2025-10-20 14:41:39.813409',22,'{\"timezone-id\":\"UTC\"}','success'),
(31,'sync-tables',2,'2025-10-20 14:41:39.818833','2025-10-20 14:41:39.891603',72,'{\"updated-tables\":3,\"total-tables\":0}','success'),
(32,'sync-fields',2,'2025-10-20 14:41:39.894921','2025-10-20 14:41:39.973232',78,'{\"total-fields\":19,\"updated-fields\":19}','success'),
(33,'sync-fks',2,'2025-10-20 14:41:39.976912','2025-10-20 14:41:40.123464',146,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(34,'sync-indexes',2,'2025-10-20 14:41:40.127137','2025-10-20 14:41:40.130113',2,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(35,'sync-metabase-metadata',2,'2025-10-20 14:41:40.134162','2025-10-20 14:41:40.138002',3,'{}','success'),
(36,'analyze',2,'2025-10-20 14:41:40.161416','2025-10-20 14:41:40.504229',342,NULL,'success'),
(37,'fingerprint-fields',2,'2025-10-20 14:41:40.164662','2025-10-20 14:41:40.436522',271,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":16,\"fingerprints-attempted\":16}','success'),
(38,'classify-fields',2,'2025-10-20 14:41:40.439192','2025-10-20 14:41:40.479223',40,'{\"fields-classified\":16,\"fields-failed\":0}','success'),
(39,'classify-tables',2,'2025-10-20 14:41:40.482041','2025-10-20 14:41:40.500396',18,'{\"tables-classified\":3,\"total-tables\":3}','success'),
(40,'field values scanning',2,'2025-10-20 14:41:40.523514','2025-10-20 14:41:40.580928',57,NULL,'success'),
(41,'delete-expired-advanced-field-values',2,'2025-10-20 14:41:40.527259','2025-10-20 14:41:40.557323',30,'{\"deleted\":0}','success'),
(42,'update-field-values',2,'2025-10-20 14:41:40.559897','2025-10-20 14:41:40.578078',18,'{\"errors\":0,\"created\":0,\"updated\":0,\"deleted\":0}','success'),
(43,'sync',2,'2025-10-20 14:41:47.668143','2025-10-20 14:41:47.871292',203,NULL,'success'),
(44,'sync-dbms-version',2,'2025-10-20 14:41:47.674480','2025-10-20 14:41:47.678243',3,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(45,'sync-timezone',2,'2025-10-20 14:41:47.681159','2025-10-20 14:41:47.685924',4,'{\"timezone-id\":\"UTC\"}','success'),
(46,'sync-tables',2,'2025-10-20 14:41:47.688855','2025-10-20 14:41:47.694656',5,'{\"updated-tables\":0,\"total-tables\":3}','success'),
(47,'sync-fields',2,'2025-10-20 14:41:47.698235','2025-10-20 14:41:47.737422',39,'{\"total-fields\":19,\"updated-fields\":0}','success'),
(48,'sync-fks',2,'2025-10-20 14:41:47.739977','2025-10-20 14:41:47.853597',113,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(49,'sync-indexes',2,'2025-10-20 14:41:47.859556','2025-10-20 14:41:47.862945',3,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(50,'sync-metabase-metadata',2,'2025-10-20 14:41:47.865425','2025-10-20 14:41:47.868375',2,'{}','success'),
(51,'analyze',2,'2025-10-20 14:41:47.875333','2025-10-20 14:41:47.909596',34,NULL,'success'),
(52,'fingerprint-fields',2,'2025-10-20 14:41:47.878850','2025-10-20 14:41:47.887673',8,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(53,'classify-fields',2,'2025-10-20 14:41:47.890252','2025-10-20 14:41:47.896809',6,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(54,'classify-tables',2,'2025-10-20 14:41:47.899899','2025-10-20 14:41:47.905766',5,'{\"tables-classified\":0,\"total-tables\":3}','success'),
(55,'sync',2,'2025-10-20 14:46:00.024216','2025-10-20 14:46:00.198976',174,NULL,'success'),
(56,'sync-dbms-version',2,'2025-10-20 14:46:00.028367','2025-10-20 14:46:00.032148',3,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(57,'sync-timezone',2,'2025-10-20 14:46:00.035505','2025-10-20 14:46:00.039521',4,'{\"timezone-id\":\"UTC\"}','success'),
(58,'sync-tables',2,'2025-10-20 14:46:00.042487','2025-10-20 14:46:00.049286',6,'{\"updated-tables\":0,\"total-tables\":3}','success'),
(59,'sync-fields',2,'2025-10-20 14:46:00.051907','2025-10-20 14:46:00.087259',35,'{\"total-fields\":19,\"updated-fields\":0}','success'),
(60,'sync-fks',2,'2025-10-20 14:46:00.089647','2025-10-20 14:46:00.185813',96,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(61,'sync-indexes',2,'2025-10-20 14:46:00.187899','2025-10-20 14:46:00.189793',1,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(62,'sync-metabase-metadata',2,'2025-10-20 14:46:00.192518','2025-10-20 14:46:00.195114',2,'{}','success'),
(63,'analyze',2,'2025-10-20 14:46:00.202261','2025-10-20 14:46:00.228029',25,NULL,'success'),
(64,'fingerprint-fields',2,'2025-10-20 14:46:00.205213','2025-10-20 14:46:00.211140',5,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(65,'classify-fields',2,'2025-10-20 14:46:00.213757','2025-10-20 14:46:00.218122',4,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(66,'classify-tables',2,'2025-10-20 14:46:00.220789','2025-10-20 14:46:00.225018',4,'{\"tables-classified\":0,\"total-tables\":3}','success'),
(67,'sync',2,'2025-10-21 08:46:00.040544','2025-10-21 08:46:00.353505',313,NULL,'success'),
(68,'sync-dbms-version',2,'2025-10-21 08:46:00.052293','2025-10-21 08:46:00.056481',4,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(69,'sync-timezone',2,'2025-10-21 08:46:00.064987','2025-10-21 08:46:00.071928',6,'{\"timezone-id\":\"UTC\"}','success'),
(70,'sync-tables',2,'2025-10-21 08:46:00.077470','2025-10-21 08:46:00.095874',18,'{\"updated-tables\":0,\"total-tables\":3}','success'),
(71,'sync-fields',2,'2025-10-21 08:46:00.100152','2025-10-21 08:46:00.178931',78,'{\"total-fields\":19,\"updated-fields\":0}','success'),
(72,'sync-fks',2,'2025-10-21 08:46:00.182892','2025-10-21 08:46:00.329080',146,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(73,'sync-indexes',2,'2025-10-21 08:46:00.335541','2025-10-21 08:46:00.338758',3,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(74,'sync-metabase-metadata',2,'2025-10-21 08:46:00.343298','2025-10-21 08:46:00.348107',4,'{}','success'),
(75,'analyze',2,'2025-10-21 08:46:00.361642','2025-10-21 08:46:00.422752',61,NULL,'success'),
(76,'fingerprint-fields',2,'2025-10-21 08:46:00.366626','2025-10-21 08:46:00.382620',16,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(77,'classify-fields',2,'2025-10-21 08:46:00.387756','2025-10-21 08:46:00.401309',13,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(78,'classify-tables',2,'2025-10-21 08:46:00.406540','2025-10-21 08:46:00.417787',11,'{\"tables-classified\":0,\"total-tables\":3}','success'),
(79,'sync',2,'2025-10-21 10:00:11.847982','2025-10-21 10:00:12.470474',622,NULL,'success'),
(80,'sync-dbms-version',2,'2025-10-21 10:00:11.871513','2025-10-21 10:00:11.877209',5,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(81,'sync-timezone',2,'2025-10-21 10:00:11.887434','2025-10-21 10:00:11.895202',7,'{\"timezone-id\":\"UTC\"}','success'),
(82,'sync-tables',2,'2025-10-21 10:00:11.900417','2025-10-21 10:00:12.067162',166,'{\"updated-tables\":4,\"total-tables\":3}','success'),
(83,'sync-fields',2,'2025-10-21 10:00:12.070800','2025-10-21 10:00:12.223993',153,'{\"total-fields\":42,\"updated-fields\":23}','success'),
(84,'sync-fks',2,'2025-10-21 10:00:12.228715','2025-10-21 10:00:12.430294',201,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(85,'sync-indexes',2,'2025-10-21 10:00:12.435381','2025-10-21 10:00:12.440374',4,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(86,'sync-metabase-metadata',2,'2025-10-21 10:00:12.447661','2025-10-21 10:00:12.459167',11,'{}','success'),
(87,'analyze',2,'2025-10-21 10:00:12.492734','2025-10-21 10:00:13.081208',588,NULL,'success'),
(88,'fingerprint-fields',2,'2025-10-21 10:00:12.499468','2025-10-21 10:00:12.986185',486,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":19,\"fingerprints-attempted\":19}','success'),
(89,'classify-fields',2,'2025-10-21 10:00:12.989481','2025-10-21 10:00:13.048627',59,'{\"fields-classified\":19,\"fields-failed\":0}','success'),
(90,'classify-tables',2,'2025-10-21 10:00:13.052692','2025-10-21 10:00:13.077758',25,'{\"tables-classified\":4,\"total-tables\":7}','success'),
(91,'sync',2,'2025-10-21 10:03:47.627676','2025-10-21 10:03:48.008453',380,NULL,'success'),
(92,'sync-dbms-version',2,'2025-10-21 10:03:47.640293','2025-10-21 10:03:47.645229',4,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(93,'sync-timezone',2,'2025-10-21 10:03:47.652813','2025-10-21 10:03:47.659281',6,'{\"timezone-id\":\"UTC\"}','success'),
(94,'sync-tables',2,'2025-10-21 10:03:47.665093','2025-10-21 10:03:47.678096',13,'{\"updated-tables\":0,\"total-tables\":7}','success'),
(95,'sync-fields',2,'2025-10-21 10:03:47.683508','2025-10-21 10:03:47.842291',158,'{\"total-fields\":43,\"updated-fields\":4}','success'),
(96,'sync-fks',2,'2025-10-21 10:03:47.845504','2025-10-21 10:03:47.985084',139,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(97,'sync-indexes',2,'2025-10-21 10:03:47.991680','2025-10-21 10:03:47.995907',4,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(98,'sync-metabase-metadata',2,'2025-10-21 10:03:48.000555','2025-10-21 10:03:48.005008',4,'{}','success'),
(99,'analyze',2,'2025-10-21 10:03:48.016044','2025-10-21 10:03:48.111183',95,NULL,'success'),
(100,'fingerprint-fields',2,'2025-10-21 10:03:48.019327','2025-10-21 10:03:48.069589',50,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":1,\"fingerprints-attempted\":1}','success'),
(101,'classify-fields',2,'2025-10-21 10:03:48.072918','2025-10-21 10:03:48.094760',21,'{\"fields-classified\":1,\"fields-failed\":0}','success'),
(102,'classify-tables',2,'2025-10-21 10:03:48.099580','2025-10-21 10:03:48.107529',7,'{\"tables-classified\":0,\"total-tables\":7}','success'),
(103,'field values scanning',2,'2025-10-21 10:03:48.606409','2025-10-21 10:03:48.731066',124,NULL,'success'),
(104,'delete-expired-advanced-field-values',2,'2025-10-21 10:03:48.613708','2025-10-21 10:03:48.680947',67,'{\"deleted\":0}','success'),
(105,'update-field-values',2,'2025-10-21 10:03:48.683775','2025-10-21 10:03:48.726663',42,'{\"errors\":0,\"created\":0,\"updated\":0,\"deleted\":0}','success'),
(106,'task-history-cleanup',NULL,'2025-10-21 12:00:00.020916','2025-10-21 12:00:00.030212',9,NULL,'success'),
(107,'sync',2,'2025-10-21 12:46:00.405770','2025-10-21 12:46:00.990209',584,NULL,'success'),
(108,'sync-dbms-version',2,'2025-10-21 12:46:00.421381','2025-10-21 12:46:00.425969',4,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(109,'sync-timezone',2,'2025-10-21 12:46:00.432633','2025-10-21 12:46:00.437635',5,'{\"timezone-id\":\"UTC\"}','success'),
(110,'sync-tables',2,'2025-10-21 12:46:00.441072','2025-10-21 12:46:00.451765',10,'{\"updated-tables\":0,\"total-tables\":7}','success'),
(111,'sync-fields',2,'2025-10-21 12:46:00.455943','2025-10-21 12:46:00.565547',109,'{\"total-fields\":43,\"updated-fields\":0}','success'),
(112,'sync-fks',2,'2025-10-21 12:46:00.794974','2025-10-21 12:46:00.963314',168,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(113,'sync-indexes',2,'2025-10-21 12:46:00.972388','2025-10-21 12:46:00.976164',3,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(114,'sync-metabase-metadata',2,'2025-10-21 12:46:00.980989','2025-10-21 12:46:00.986125',5,'{}','success'),
(115,'analyze',2,'2025-10-21 12:46:00.998809','2025-10-21 12:46:01.069766',70,NULL,'success'),
(116,'fingerprint-fields',2,'2025-10-21 12:46:01.003162','2025-10-21 12:46:01.021284',18,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(117,'classify-fields',2,'2025-10-21 12:46:01.026345','2025-10-21 12:46:01.048145',21,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(118,'classify-tables',2,'2025-10-21 12:46:01.053246','2025-10-21 12:46:01.064239',10,'{\"tables-classified\":0,\"total-tables\":7}','success'),
(119,'sync',2,'2025-10-21 13:46:00.019621','2025-10-21 13:46:00.242946',223,NULL,'success'),
(120,'sync-dbms-version',2,'2025-10-21 13:46:00.023733','2025-10-21 13:46:00.026450',2,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(121,'sync-timezone',2,'2025-10-21 13:46:00.029218','2025-10-21 13:46:00.032802',3,'{\"timezone-id\":\"UTC\"}','success'),
(122,'sync-tables',2,'2025-10-21 13:46:00.035517','2025-10-21 13:46:00.039974',4,'{\"updated-tables\":0,\"total-tables\":7}','success'),
(123,'sync-fields',2,'2025-10-21 13:46:00.042487','2025-10-21 13:46:00.110741',68,'{\"total-fields\":43,\"updated-fields\":0}','success'),
(124,'sync-fks',2,'2025-10-21 13:46:00.113401','2025-10-21 13:46:00.225032',111,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(125,'sync-indexes',2,'2025-10-21 13:46:00.231145','2025-10-21 13:46:00.233955',2,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(126,'sync-metabase-metadata',2,'2025-10-21 13:46:00.236472','2025-10-21 13:46:00.239825',3,'{}','success'),
(127,'analyze',2,'2025-10-21 13:46:00.246896','2025-10-21 13:46:00.277616',30,NULL,'success'),
(128,'fingerprint-fields',2,'2025-10-21 13:46:00.249859','2025-10-21 13:46:00.258865',9,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(129,'classify-fields',2,'2025-10-21 13:46:00.261550','2025-10-21 13:46:00.268708',7,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(130,'classify-tables',2,'2025-10-21 13:46:00.271054','2025-10-21 13:46:00.275300',4,'{\"tables-classified\":0,\"total-tables\":7}','success'),
(131,'sync',2,'2025-10-21 14:46:00.040084','2025-10-21 14:46:00.520942',480,NULL,'success'),
(132,'sync-dbms-version',2,'2025-10-21 14:46:00.055162','2025-10-21 14:46:00.060903',5,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(133,'sync-timezone',2,'2025-10-21 14:46:00.069558','2025-10-21 14:46:00.077263',7,'{\"timezone-id\":\"UTC\"}','success'),
(134,'sync-tables',2,'2025-10-21 14:46:00.083348','2025-10-21 14:46:00.099907',16,'{\"updated-tables\":0,\"total-tables\":7}','success'),
(135,'sync-fields',2,'2025-10-21 14:46:00.104849','2025-10-21 14:46:00.252069',147,'{\"total-fields\":43,\"updated-fields\":0}','success'),
(136,'sync-fks',2,'2025-10-21 14:46:00.256362','2025-10-21 14:46:00.491616',235,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(137,'sync-indexes',2,'2025-10-21 14:46:00.502109','2025-10-21 14:46:00.508277',6,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(138,'sync-metabase-metadata',2,'2025-10-21 14:46:00.512597','2025-10-21 14:46:00.516594',4,'{}','success'),
(139,'analyze',2,'2025-10-21 14:46:00.531484','2025-10-21 14:46:00.612258',80,NULL,'success'),
(140,'fingerprint-fields',2,'2025-10-21 14:46:00.536010','2025-10-21 14:46:00.558319',22,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(141,'classify-fields',2,'2025-10-21 14:46:00.562859','2025-10-21 14:46:00.589046',26,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(142,'classify-tables',2,'2025-10-21 14:46:00.595038','2025-10-21 14:46:00.607330',12,'{\"tables-classified\":0,\"total-tables\":7}','success'),
(143,'sync',2,'2025-10-21 21:46:00.027227','2025-10-21 21:46:00.299010',271,NULL,'success'),
(144,'sync-dbms-version',2,'2025-10-21 21:46:00.038295','2025-10-21 21:46:00.042051',3,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(145,'sync-timezone',2,'2025-10-21 21:46:00.049354','2025-10-21 21:46:00.056720',7,'{\"timezone-id\":\"UTC\"}','success'),
(146,'sync-tables',2,'2025-10-21 21:46:00.060640','2025-10-21 21:46:00.070394',9,'{\"updated-tables\":0,\"total-tables\":7}','success'),
(147,'sync-fields',2,'2025-10-21 21:46:00.074146','2025-10-21 21:46:00.169945',95,'{\"total-fields\":43,\"updated-fields\":0}','success'),
(148,'sync-fks',2,'2025-10-21 21:46:00.172118','2025-10-21 21:46:00.283867',111,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(149,'sync-indexes',2,'2025-10-21 21:46:00.286060','2025-10-21 21:46:00.288743',2,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(150,'sync-metabase-metadata',2,'2025-10-21 21:46:00.291189','2025-10-21 21:46:00.295206',4,'{}','success'),
(151,'analyze',2,'2025-10-21 21:46:00.306129','2025-10-21 21:46:00.341727',35,NULL,'success'),
(152,'fingerprint-fields',2,'2025-10-21 21:46:00.308884','2025-10-21 21:46:00.319539',10,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(153,'classify-fields',2,'2025-10-21 21:46:00.321949','2025-10-21 21:46:00.332705',10,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(154,'classify-tables',2,'2025-10-21 21:46:00.335282','2025-10-21 21:46:00.339249',3,'{\"tables-classified\":0,\"total-tables\":7}','success'),
(155,'sync',2,'2025-10-21 22:46:00.016773','2025-10-21 22:46:00.195114',178,NULL,'success'),
(156,'sync-dbms-version',2,'2025-10-21 22:46:00.020161','2025-10-21 22:46:00.023169',3,'{\"flavor\":\"MariaDB\",\"version\":\"12.0.2-MariaDB-ubu2404\",\"semantic-version\":[12,0]}','success'),
(157,'sync-timezone',2,'2025-10-21 22:46:00.025569','2025-10-21 22:46:00.028171',2,'{\"timezone-id\":\"UTC\"}','success'),
(158,'sync-tables',2,'2025-10-21 22:46:00.030720','2025-10-21 22:46:00.033860',3,'{\"updated-tables\":0,\"total-tables\":7}','success'),
(159,'sync-fields',2,'2025-10-21 22:46:00.035428','2025-10-21 22:46:00.095389',59,'{\"total-fields\":43,\"updated-fields\":0}','success'),
(160,'sync-fks',2,'2025-10-21 22:46:00.097466','2025-10-21 22:46:00.186219',88,'{\"total-fks\":140,\"updated-fks\":0,\"total-failed\":0}','success'),
(161,'sync-indexes',2,'2025-10-21 22:46:00.188242','2025-10-21 22:46:00.189963',1,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}','success'),
(162,'sync-metabase-metadata',2,'2025-10-21 22:46:00.191550','2025-10-21 22:46:00.193103',1,'{}','success'),
(163,'analyze',2,'2025-10-21 22:46:00.198698','2025-10-21 22:46:00.222745',24,NULL,'success'),
(164,'fingerprint-fields',2,'2025-10-21 22:46:00.200580','2025-10-21 22:46:00.208064',7,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}','success'),
(165,'classify-fields',2,'2025-10-21 22:46:00.209959','2025-10-21 22:46:00.215764',5,'{\"fields-classified\":0,\"fields-failed\":0}','success'),
(166,'classify-tables',2,'2025-10-21 22:46:00.217628','2025-10-21 22:46:00.220607',2,'{\"tables-classified\":0,\"total-tables\":7}','success'),
(167,'field values scanning',2,'2025-10-21 23:00:00.010214','2025-10-21 23:00:00.111496',101,NULL,'success'),
(168,'delete-expired-advanced-field-values',2,'2025-10-21 23:00:00.013259','2025-10-21 23:00:00.048685',35,'{\"deleted\":0}','success'),
(169,'update-field-values',2,'2025-10-21 23:00:00.050989','2025-10-21 23:00:00.109432',58,'{\"errors\":0,\"created\":0,\"updated\":2,\"deleted\":0}','success');
/*!40000 ALTER TABLE `task_history` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `timeline`
--

DROP TABLE IF EXISTS `timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'Name of the timeline',
  `description` varchar(255) DEFAULT NULL COMMENT 'Optional description of the timeline',
  `icon` varchar(128) NOT NULL,
  `collection_id` int(11) DEFAULT NULL COMMENT 'ID of the collection containing the timeline',
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `creator_id` int(11) NOT NULL COMMENT 'ID of the user who created the timeline',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the timeline was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the timeline was updated',
  `default` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_timeline_creator_id` (`creator_id`),
  KEY `idx_timeline_collection_id` (`collection_id`),
  CONSTRAINT `fk_timeline_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_timeline_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timeline table to organize events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline`
--

LOCK TABLES `timeline` WRITE;
/*!40000 ALTER TABLE `timeline` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `timeline` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `timeline_event`
--

DROP TABLE IF EXISTS `timeline_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeline_id` int(11) NOT NULL COMMENT 'ID of the timeline containing the event',
  `name` varchar(255) NOT NULL COMMENT 'Name of the event',
  `description` varchar(255) DEFAULT NULL COMMENT 'Optional markdown description of the event',
  `timestamp` timestamp(6) NOT NULL COMMENT 'When the event happened',
  `time_matters` bit(1) NOT NULL,
  `timezone` varchar(255) NOT NULL COMMENT 'Timezone to display the underlying UTC timestamp in for the client',
  `icon` varchar(128) NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `creator_id` int(11) NOT NULL COMMENT 'ID of the user who created the event',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the event was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'The timestamp of when the event was modified',
  PRIMARY KEY (`id`),
  KEY `fk_event_creator_id` (`creator_id`),
  KEY `idx_timeline_event_timeline_id` (`timeline_id`),
  KEY `idx_timeline_event_timeline_id_timestamp` (`timeline_id`,`timestamp`),
  CONSTRAINT `fk_event_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_events_timeline_id` FOREIGN KEY (`timeline_id`) REFERENCES `timeline` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Events table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline_event`
--

LOCK TABLES `timeline_event` WRITE;
/*!40000 ALTER TABLE `timeline_event` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `timeline_event` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `user_key_value`
--

DROP TABLE IF EXISTS `user_key_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_key_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'The ID of the user this KV-pair is for',
  `namespace` varchar(254) NOT NULL COMMENT 'The namespace for this KV, e.g. "dashboard-filters" or "nobody-knows"',
  `key` varchar(254) NOT NULL COMMENT 'The key',
  `value` longtext DEFAULT NULL COMMENT 'The value, serialized JSON',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'When this row was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) COMMENT 'When this row was last updated',
  `expires_at` timestamp(6) NULL DEFAULT NULL COMMENT 'If set, when this row expires',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_key_value_user_id_namespace_key` (`user_id`,`namespace`,`key`),
  CONSTRAINT `fk_user_key_value_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A simple key value store for each user.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_key_value`
--

LOCK TABLES `user_key_value` WRITE;
/*!40000 ALTER TABLE `user_key_value` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `user_key_value` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `user_parameter_value`
--

DROP TABLE IF EXISTS `user_parameter_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_parameter_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'ID of the User who has set the parameter value',
  `parameter_id` varchar(36) NOT NULL COMMENT 'The parameter ID',
  `value` longtext DEFAULT NULL COMMENT 'Value of the parameter',
  `dashboard_id` int(11) DEFAULT NULL COMMENT 'The ID of the dashboard',
  PRIMARY KEY (`id`),
  KEY `idx_user_parameter_value_user_id` (`user_id`),
  KEY `idx_user_parameter_value_dashboard_id` (`dashboard_id`),
  KEY `idx_user_parameter_value_user_id_dashboard_id_parameter_id` (`user_id`,`dashboard_id`,`parameter_id`),
  CONSTRAINT `fk_user_parameter_value_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_parameter_value_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding last set value of a parameter per user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_parameter_value`
--

LOCK TABLES `user_parameter_value` WRITE;
/*!40000 ALTER TABLE `user_parameter_value` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `user_parameter_value` VALUES
(50,13371339,'cf66663','[\"65 ans et plus\"]',2),
(145,13371339,'635bf5e6','[\"65 ans ou plus\"]',2),
(222,13371339,'5e4b7907','[\"2022\"]',2),
(225,13371339,'7bcab7c8','[\"2\"]',2),
(286,13371339,'dc75c565','[\"moins de 65 ans\"]',2),
(288,13371339,'9a363ccb','[\"Bretagne\"]',2),
(290,13371339,'97e55ba5','[\"65 ans ou plus\"]',2),
(291,13371339,'299d53ad','2021-04-01',2),
(292,13371339,'5da2a733','[\"hospitalisations\"]',2);
/*!40000 ALTER TABLE `user_parameter_value` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Temporary table structure for view `v_alerts`
--

DROP TABLE IF EXISTS `v_alerts`;
/*!50001 DROP VIEW IF EXISTS `v_alerts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_alerts` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `creator_id`,
  1 AS `card_id`,
  1 AS `card_qualified_id`,
  1 AS `alert_condition`,
  1 AS `schedule_type`,
  1 AS `schedule_day`,
  1 AS `schedule_hour`,
  1 AS `archived`,
  1 AS `recipient_type`,
  1 AS `recipients`,
  1 AS `recipient_external` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_audit_log`
--

DROP TABLE IF EXISTS `v_audit_log`;
/*!50001 DROP VIEW IF EXISTS `v_audit_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_audit_log` AS SELECT
 1 AS `id`,
  1 AS `topic`,
  1 AS `timestamp`,
  1 AS `end_timestamp`,
  1 AS `user_id`,
  1 AS `entity_type`,
  1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `details` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_content`
--

DROP TABLE IF EXISTS `v_content`;
/*!50001 DROP VIEW IF EXISTS `v_content`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_content` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `entity_type`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `creator_id`,
  1 AS `name`,
  1 AS `description`,
  1 AS `collection_id`,
  1 AS `made_public_by_user`,
  1 AS `is_embedding_enabled`,
  1 AS `is_verified`,
  1 AS `archived`,
  1 AS `action_type`,
  1 AS `action_model_id`,
  1 AS `collection_is_official`,
  1 AS `collection_is_personal`,
  1 AS `question_viz_type`,
  1 AS `question_database_id`,
  1 AS `question_is_native`,
  1 AS `event_timestamp` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_dashboardcard`
--

DROP TABLE IF EXISTS `v_dashboardcard`;
/*!50001 DROP VIEW IF EXISTS `v_dashboardcard`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_dashboardcard` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `dashboard_qualified_id`,
  1 AS `dashboardtab_id`,
  1 AS `card_qualified_id`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `size_x`,
  1 AS `size_y`,
  1 AS `visualization_settings`,
  1 AS `parameter_mappings` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_databases`
--

DROP TABLE IF EXISTS `v_databases`;
/*!50001 DROP VIEW IF EXISTS `v_databases`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_databases` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `name`,
  1 AS `description`,
  1 AS `database_type`,
  1 AS `metadata_sync_schedule`,
  1 AS `cache_field_values_schedule`,
  1 AS `timezone`,
  1 AS `is_on_demand`,
  1 AS `auto_run_queries`,
  1 AS `cache_ttl`,
  1 AS `creator_id`,
  1 AS `db_version` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_fields`
--

DROP TABLE IF EXISTS `v_fields`;
/*!50001 DROP VIEW IF EXISTS `v_fields`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_fields` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `name`,
  1 AS `display_name`,
  1 AS `description`,
  1 AS `base_type`,
  1 AS `visibility_type`,
  1 AS `fk_target_field_id`,
  1 AS `has_field_values`,
  1 AS `active`,
  1 AS `table_id` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_group_members`
--

DROP TABLE IF EXISTS `v_group_members`;
/*!50001 DROP VIEW IF EXISTS `v_group_members`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_group_members` AS SELECT
 1 AS `user_id`,
  1 AS `group_id`,
  1 AS `group_name` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_query_log`
--

DROP TABLE IF EXISTS `v_query_log`;
/*!50001 DROP VIEW IF EXISTS `v_query_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_query_log` AS SELECT
 1 AS `entity_id`,
  1 AS `started_at`,
  1 AS `running_time_seconds`,
  1 AS `result_rows`,
  1 AS `is_native`,
  1 AS `query_source`,
  1 AS `error`,
  1 AS `user_id`,
  1 AS `card_id`,
  1 AS `card_qualified_id`,
  1 AS `dashboard_id`,
  1 AS `dashboard_qualified_id`,
  1 AS `pulse_id`,
  1 AS `database_id`,
  1 AS `database_qualified_id`,
  1 AS `cache_hit`,
  1 AS `action_id`,
  1 AS `action_qualified_id`,
  1 AS `query` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_subscriptions`
--

DROP TABLE IF EXISTS `v_subscriptions`;
/*!50001 DROP VIEW IF EXISTS `v_subscriptions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_subscriptions` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `creator_id`,
  1 AS `archived`,
  1 AS `dashboard_qualified_id`,
  1 AS `schedule_type`,
  1 AS `schedule_day`,
  1 AS `schedule_hour`,
  1 AS `recipient_type`,
  1 AS `recipients`,
  1 AS `recipient_external`,
  1 AS `parameters` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_tables`
--

DROP TABLE IF EXISTS `v_tables`;
/*!50001 DROP VIEW IF EXISTS `v_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_tables` AS SELECT
 1 AS `entity_id`,
  1 AS `entity_qualified_id`,
  1 AS `created_at`,
  1 AS `updated_at`,
  1 AS `name`,
  1 AS `display_name`,
  1 AS `description`,
  1 AS `active`,
  1 AS `database_id`,
  1 AS `schema`,
  1 AS `is_upload` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_tasks`
--

DROP TABLE IF EXISTS `v_tasks`;
/*!50001 DROP VIEW IF EXISTS `v_tasks`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_tasks` AS SELECT
 1 AS `id`,
  1 AS `task`,
  1 AS `status`,
  1 AS `database_qualified_id`,
  1 AS `started_at`,
  1 AS `ended_at`,
  1 AS `duration_seconds`,
  1 AS `details` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_users`
--

DROP TABLE IF EXISTS `v_users`;
/*!50001 DROP VIEW IF EXISTS `v_users`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_users` AS SELECT
 1 AS `user_id`,
  1 AS `entity_qualified_id`,
  1 AS `type`,
  1 AS `email`,
  1 AS `first_name`,
  1 AS `last_name`,
  1 AS `full_name`,
  1 AS `date_joined`,
  1 AS `last_login`,
  1 AS `updated_at`,
  1 AS `is_admin`,
  1 AS `is_active`,
  1 AS `sso_source`,
  1 AS `locale` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_view_log`
--

DROP TABLE IF EXISTS `v_view_log`;
/*!50001 DROP VIEW IF EXISTS `v_view_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `v_view_log` AS SELECT
 1 AS `id`,
  1 AS `timestamp`,
  1 AS `user_id`,
  1 AS `entity_type`,
  1 AS `entity_id`,
  1 AS `entity_qualified_id` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `view_log`
--

DROP TABLE IF EXISTS `view_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `view_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `model` varchar(16) NOT NULL,
  `model_id` int(11) NOT NULL,
  `timestamp` timestamp(6) NULL DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `has_access` bit(1) DEFAULT NULL,
  `context` varchar(32) DEFAULT NULL COMMENT 'The context of the view, can be collection, question, or dashboard. Only for cards.',
  `embedding_client` varchar(254) DEFAULT NULL COMMENT 'Used by the embedding team to track SDK usage',
  `embedding_version` varchar(254) DEFAULT NULL COMMENT 'Used by the embedding team to track SDK version usage',
  PRIMARY KEY (`id`),
  KEY `idx_view_log_user_id` (`user_id`),
  KEY `idx_view_log_model_id` (`model_id`),
  KEY `idx_view_log_timestamp` (`timestamp`),
  CONSTRAINT `fk_view_log_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_log`
--

LOCK TABLES `view_log` WRITE;
/*!40000 ALTER TABLE `view_log` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `view_log` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Final view structure for view `v_alerts`
--

/*!50001 DROP VIEW IF EXISTS `v_alerts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_alerts` AS with parsed_cron as (select `n`.`id` AS `id`,`ns`.`cron_schedule` AS `cron_schedule`,`ns`.`ui_display_type` AS `ui_display_type`,substring_index(substring_index(`ns`.`cron_schedule`,' ',2),' ',-1) AS `minutes`,substring_index(substring_index(`ns`.`cron_schedule`,' ',3),' ',-1) AS `hours`,substring_index(substring_index(`ns`.`cron_schedule`,' ',4),' ',-1) AS `day_of_month`,substring_index(substring_index(`ns`.`cron_schedule`,' ',6),' ',-1) AS `day_of_week` from (`notification` `n` join `notification_subscription` `ns` on(`n`.`id` = `ns`.`notification_id`)) where `n`.`payload_type` = 'notification/card' and `ns`.`type` = 'notification-subscription/cron'), schedule_info as (select `parsed_cron`.`id` AS `id`,case when `parsed_cron`.`ui_display_type` = 'cron/raw' then 'custom' when `parsed_cron`.`minutes` regexp '^\\*$' or `parsed_cron`.`minutes` regexp '^[0-9]+/[0-9]+$' then 'by the minute' when `parsed_cron`.`day_of_month` <> '*' and (`parsed_cron`.`day_of_week` = '?' or `parsed_cron`.`day_of_week` regexp '^[0-9]#1$' or `parsed_cron`.`day_of_week` regexp '^[0-9]L$') then 'monthly' when `parsed_cron`.`day_of_week` <> '?' and `parsed_cron`.`day_of_week` <> '*' then 'weekly' when `parsed_cron`.`hours` <> '*' then 'daily' else 'hourly' end AS `schedule_type`,case when `parsed_cron`.`day_of_week` regexp '^1' then 'sun' when `parsed_cron`.`day_of_week` regexp '^2' then 'mon' when `parsed_cron`.`day_of_week` regexp '^3' then 'tue' when `parsed_cron`.`day_of_week` regexp '^4' then 'wed' when `parsed_cron`.`day_of_week` regexp '^5' then 'thu' when `parsed_cron`.`day_of_week` regexp '^6' then 'fri' when `parsed_cron`.`day_of_week` regexp '^7' then 'sat' else NULL end AS `schedule_day`,case when `parsed_cron`.`hours` = '*' then NULL when `parsed_cron`.`hours` regexp '^[0-9]+$' then cast(`parsed_cron`.`hours` as signed) when `parsed_cron`.`hours` regexp '^([0-9]+)/[0-9]+$' then cast(substring_index(`parsed_cron`.`hours`,'/',1) as signed) else NULL end AS `schedule_hour` from `parsed_cron`), agg_recipients as (select `nr`.`notification_handler_id` AS `notification_handler_id`,group_concat(`cu`.`email` separator ',') AS `recipients`,group_concat(case when `nr`.`type` = 'notification-recipient/raw-value' then `nr`.`details` else NULL end separator ',') AS `recipient_external` from (`notification_recipient` `nr` left join `core_user` `cu` on(`nr`.`user_id` = `cu`.`id` and `nr`.`type` = 'notification-recipient/user')) group by `nr`.`notification_handler_id`)select `n`.`id` AS `entity_id`,concat('notification_',`n`.`id`) AS `entity_qualified_id`,`n`.`created_at` AS `created_at`,`n`.`updated_at` AS `updated_at`,`n`.`creator_id` AS `creator_id`,`nc`.`card_id` AS `card_id`,concat('card_',`nc`.`card_id`) AS `card_qualified_id`,case when `nc`.`send_condition` = 'has_result' then 'rows' when `nc`.`send_condition` in ('goal_above','goal_below') then 'goal' end AS `alert_condition`,`si`.`schedule_type` AS `schedule_type`,`si`.`schedule_day` AS `schedule_day`,`si`.`schedule_hour` AS `schedule_hour`,`n`.`active` = 0 AS `archived`,`nh`.`channel_type` AS `recipient_type`,`ar`.`recipients` AS `recipients`,`ar`.`recipient_external` AS `recipient_external` from ((((`notification` `n` join `notification_card` `nc` on(`n`.`payload_id` = `nc`.`id`)) join `schedule_info` `si` on(`n`.`id` = `si`.`id`)) left join `notification_handler` `nh` on(`n`.`id` = `nh`.`notification_id`)) left join `agg_recipients` `ar` on(`nh`.`id` = `ar`.`notification_handler_id`)) where `n`.`payload_type` = 'notification/card' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_audit_log`
--

/*!50001 DROP VIEW IF EXISTS `v_audit_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_audit_log` AS (select `audit_log`.`id` AS `id`,case when `audit_log`.`topic` = 'card-create' then 'card-create' when `audit_log`.`topic` = 'card-delete' then 'card-delete' when `audit_log`.`topic` = 'card-update' then 'card-update' when `audit_log`.`topic` = 'pulse-create' then 'subscription-create' when `audit_log`.`topic` = 'pulse-delete' then 'subscription-delete' else `audit_log`.`topic` end AS `topic`,`audit_log`.`timestamp` AS `timestamp`,NULL AS `end_timestamp`,coalesce(`audit_log`.`user_id`,0) AS `user_id`,lcase(`audit_log`.`model`) AS `entity_type`,`audit_log`.`model_id` AS `entity_id`,case when `audit_log`.`model` = 'Dataset' then concat('card_',`audit_log`.`model_id`) when `audit_log`.`model_id` is null then NULL else concat(lcase(`audit_log`.`model`),'_',`audit_log`.`model_id`) end AS `entity_qualified_id`,`audit_log`.`details` AS `details` from `audit_log` where `audit_log`.`topic` not in ('card-read','card-query','dashboard-read','dashboard-query')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_content`
--

/*!50001 DROP VIEW IF EXISTS `v_content`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_content` AS select `action`.`id` AS `entity_id`,concat('action_',`action`.`id`) AS `entity_qualified_id`,'action' AS `entity_type`,`action`.`created_at` AS `created_at`,`action`.`updated_at` AS `updated_at`,`action`.`creator_id` AS `creator_id`,`action`.`name` AS `name`,`action`.`description` AS `description`,NULL AS `collection_id`,`action`.`made_public_by_id` AS `made_public_by_user`,NULL AS `is_embedding_enabled`,NULL AS `is_verified`,`action`.`archived` AS `archived`,`action`.`type` AS `action_type`,`action`.`model_id` AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,NULL AS `event_timestamp` from `action` union select `collection`.`id` AS `entity_id`,concat('collection_',`collection`.`id`) AS `entity_qualified_id`,'collection' AS `entity_type`,`collection`.`created_at` AS `created_at`,NULL AS `updated_at`,NULL AS `creator_id`,`collection`.`name` AS `name`,`collection`.`description` AS `description`,NULL AS `collection_id`,NULL AS `made_public_by_user`,NULL AS `is_embedding_enabled`,NULL AS `is_verified`,`collection`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,case when `collection`.`authority_level` = 'official' then 1 else 0 end AS `collection_is_official`,case when `collection`.`personal_owner_id` is not null then 1 else 0 end AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,NULL AS `event_timestamp` from `collection` union select `report_card`.`id` AS `entity_id`,concat('card_',`report_card`.`id`) AS `entity_qualified_id`,`report_card`.`type` AS `entity_type`,`report_card`.`created_at` AS `created_at`,`report_card`.`updated_at` AS `updated_at`,`report_card`.`creator_id` AS `creator_id`,`report_card`.`name` AS `name`,`report_card`.`description` AS `description`,`report_card`.`collection_id` AS `collection_id`,`report_card`.`made_public_by_id` AS `made_public_by_user`,`report_card`.`enable_embedding` AS `is_embedding_enabled`,case when `moderation`.`is_verified` then 1 else 0 end AS `is_verified`,`report_card`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,`report_card`.`display` AS `question_viz_type`,concat('database_',`report_card`.`database_id`) AS `question_database_id`,case when `report_card`.`query_type` = 'native' then 1 else 0 end AS `question_is_native`,NULL AS `event_timestamp` from (`report_card` left join (select concat(`moderation_review`.`moderated_item_type`,'_',`moderation_review`.`moderated_item_id`) AS `entity_qualified_id`,case when `moderation_review`.`status` = 'verified' then 1 else 0 end AS `is_verified` from `moderation_review` where `moderation_review`.`most_recent` is true) `moderation` on(concat('card_',`report_card`.`id`) = `moderation`.`entity_qualified_id`)) union select `report_dashboard`.`id` AS `entity_id`,concat('dashboard_',`report_dashboard`.`id`) AS `entity_qualified_id`,'dashboard' AS `entity_type`,`report_dashboard`.`created_at` AS `created_at`,`report_dashboard`.`updated_at` AS `updated_at`,`report_dashboard`.`creator_id` AS `creator_id`,`report_dashboard`.`name` AS `name`,`report_dashboard`.`description` AS `description`,`report_dashboard`.`collection_id` AS `collection_id`,`report_dashboard`.`made_public_by_id` AS `made_public_by_user`,`report_dashboard`.`enable_embedding` AS `is_embedding_enabled`,case when `moderation`.`is_verified` then 1 else 0 end AS `is_verified`,`report_dashboard`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,NULL AS `event_timestamp` from (`report_dashboard` left join (select concat(`moderation_review`.`moderated_item_type`,'_',`moderation_review`.`moderated_item_id`) AS `entity_qualified_id`,case when `moderation_review`.`status` = 'verified' then 1 else 0 end AS `is_verified` from `moderation_review` where `moderation_review`.`most_recent` is true) `moderation` on(concat('card_',`report_dashboard`.`id`) = `moderation`.`entity_qualified_id`)) union select `event`.`id` AS `entity_id`,concat('event_',`event`.`id`) AS `entity_qualified_id`,'event' AS `entity_type`,`event`.`created_at` AS `created_at`,`event`.`updated_at` AS `updated_at`,`event`.`creator_id` AS `creator_id`,`event`.`name` AS `name`,`event`.`description` AS `description`,`timeline`.`collection_id` AS `collection_id`,NULL AS `made_public_by_user`,NULL AS `is_embedding_enabled`,NULL AS `is_verified`,`event`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,`event`.`timestamp` AS `event_timestamp` from (`timeline_event` `event` left join `timeline` on(`event`.`timeline_id` = `timeline`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_dashboardcard`
--

/*!50001 DROP VIEW IF EXISTS `v_dashboardcard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dashboardcard` AS select `report_dashboardcard`.`id` AS `entity_id`,concat('dashboardcard_',`report_dashboardcard`.`id`) AS `entity_qualified_id`,concat('dashboard_',`report_dashboardcard`.`dashboard_id`) AS `dashboard_qualified_id`,concat('dashboardtab_',`report_dashboardcard`.`dashboard_tab_id`) AS `dashboardtab_id`,concat('card_',`report_dashboardcard`.`card_id`) AS `card_qualified_id`,`report_dashboardcard`.`created_at` AS `created_at`,`report_dashboardcard`.`updated_at` AS `updated_at`,`report_dashboardcard`.`size_x` AS `size_x`,`report_dashboardcard`.`size_y` AS `size_y`,`report_dashboardcard`.`visualization_settings` AS `visualization_settings`,`report_dashboardcard`.`parameter_mappings` AS `parameter_mappings` from `report_dashboardcard` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_databases`
--

/*!50001 DROP VIEW IF EXISTS `v_databases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_databases` AS select `metabase_database`.`id` AS `entity_id`,concat('database_',`metabase_database`.`id`) AS `entity_qualified_id`,`metabase_database`.`created_at` AS `created_at`,`metabase_database`.`updated_at` AS `updated_at`,`metabase_database`.`name` AS `name`,`metabase_database`.`description` AS `description`,`metabase_database`.`engine` AS `database_type`,`metabase_database`.`metadata_sync_schedule` AS `metadata_sync_schedule`,`metabase_database`.`cache_field_values_schedule` AS `cache_field_values_schedule`,`metabase_database`.`timezone` AS `timezone`,`metabase_database`.`is_on_demand` AS `is_on_demand`,`metabase_database`.`auto_run_queries` AS `auto_run_queries`,`metabase_database`.`cache_ttl` AS `cache_ttl`,`metabase_database`.`creator_id` AS `creator_id`,`metabase_database`.`dbms_version` AS `db_version` from `metabase_database` where `metabase_database`.`id` <> 13371337 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_fields`
--

/*!50001 DROP VIEW IF EXISTS `v_fields`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_fields` AS select `metabase_field`.`id` AS `entity_id`,concat('field_',`metabase_field`.`id`) AS `entity_qualified_id`,`metabase_field`.`created_at` AS `created_at`,`metabase_field`.`updated_at` AS `updated_at`,`metabase_field`.`name` AS `name`,`metabase_field`.`display_name` AS `display_name`,`metabase_field`.`description` AS `description`,`metabase_field`.`base_type` AS `base_type`,`metabase_field`.`visibility_type` AS `visibility_type`,`metabase_field`.`fk_target_field_id` AS `fk_target_field_id`,`metabase_field`.`has_field_values` AS `has_field_values`,`metabase_field`.`active` AS `active`,`metabase_field`.`table_id` AS `table_id` from `metabase_field` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_group_members`
--

/*!50001 DROP VIEW IF EXISTS `v_group_members`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_group_members` AS select `permissions_group_membership`.`user_id` AS `user_id`,`permissions_group`.`id` AS `group_id`,`permissions_group`.`name` AS `group_name` from (`permissions_group_membership` left join `permissions_group` on(`permissions_group_membership`.`group_id` = `permissions_group`.`id`)) union select 0 AS `user_id`,0 AS `group_id`,'Anonymous users' AS `group_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_query_log`
--

/*!50001 DROP VIEW IF EXISTS `v_query_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_query_log` AS select `query_execution`.`id` AS `entity_id`,`query_execution`.`started_at` AS `started_at`,cast(`query_execution`.`running_time` as double) / 1000 AS `running_time_seconds`,`query_execution`.`result_rows` AS `result_rows`,`query_execution`.`native` AS `is_native`,`query_execution`.`context` AS `query_source`,`query_execution`.`error` AS `error`,coalesce(`query_execution`.`executor_id`,0) AS `user_id`,`query_execution`.`card_id` AS `card_id`,concat('card_',`query_execution`.`card_id`) AS `card_qualified_id`,`query_execution`.`dashboard_id` AS `dashboard_id`,concat('dashboard_',`query_execution`.`dashboard_id`) AS `dashboard_qualified_id`,`query_execution`.`pulse_id` AS `pulse_id`,`query_execution`.`database_id` AS `database_id`,concat('database_',`query_execution`.`database_id`) AS `database_qualified_id`,`query_execution`.`cache_hit` AS `cache_hit`,`query_execution`.`action_id` AS `action_id`,concat('action_',`query_execution`.`action_id`) AS `action_qualified_id`,`query`.`query` AS `query` from (`query_execution` left join `query` on(`query_execution`.`hash` = `query`.`query_hash`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_subscriptions`
--

/*!50001 DROP VIEW IF EXISTS `v_subscriptions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_subscriptions` AS with agg_recipients as (select `pulse_channel_recipient`.`pulse_channel_id` AS `pulse_channel_id`,group_concat(`core_user`.`email` separator ',') AS `recipients` from (`pulse_channel_recipient` left join `core_user` on(`pulse_channel_recipient`.`user_id` = `core_user`.`id`)) group by `pulse_channel_recipient`.`pulse_channel_id`)select `pulse`.`id` AS `entity_id`,concat('pulse_',`pulse`.`id`) AS `entity_qualified_id`,`pulse`.`created_at` AS `created_at`,`pulse`.`updated_at` AS `updated_at`,`pulse`.`creator_id` AS `creator_id`,`pulse`.`archived` AS `archived`,concat('dashboard_',`pulse`.`dashboard_id`) AS `dashboard_qualified_id`,`pulse_channel`.`schedule_type` AS `schedule_type`,`pulse_channel`.`schedule_day` AS `schedule_day`,`pulse_channel`.`schedule_hour` AS `schedule_hour`,`pulse_channel`.`channel_type` AS `recipient_type`,`agg_recipients`.`recipients` AS `recipients`,`pulse_channel`.`details` AS `recipient_external`,`pulse`.`parameters` AS `parameters` from ((`pulse` left join `pulse_channel` on(`pulse`.`id` = `pulse_channel`.`pulse_id`)) left join `agg_recipients` on(`pulse_channel`.`id` = `agg_recipients`.`pulse_channel_id`)) where `pulse`.`alert_condition` is null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_tables`
--

/*!50001 DROP VIEW IF EXISTS `v_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tables` AS select `metabase_table`.`id` AS `entity_id`,concat('table_',`metabase_table`.`id`) AS `entity_qualified_id`,`metabase_table`.`created_at` AS `created_at`,`metabase_table`.`updated_at` AS `updated_at`,`metabase_table`.`name` AS `name`,`metabase_table`.`display_name` AS `display_name`,`metabase_table`.`description` AS `description`,`metabase_table`.`active` AS `active`,`metabase_table`.`db_id` AS `database_id`,'schema' AS `schema`,`metabase_table`.`is_upload` AS `is_upload` from `metabase_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_tasks`
--

/*!50001 DROP VIEW IF EXISTS `v_tasks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tasks` AS select `task_history`.`id` AS `id`,`task_history`.`task` AS `task`,`task_history`.`status` AS `status`,concat('database_',`task_history`.`db_id`) AS `database_qualified_id`,`task_history`.`started_at` AS `started_at`,`task_history`.`ended_at` AS `ended_at`,cast(`task_history`.`duration` as double) / 1000 AS `duration_seconds`,`task_history`.`task_details` AS `details` from `task_history` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_users`
--

/*!50001 DROP VIEW IF EXISTS `v_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_users` AS select `core_user`.`id` AS `user_id`,concat('user_',`core_user`.`id`) AS `entity_qualified_id`,`core_user`.`type` AS `type`,case when `core_user`.`type` = 'api-key' then NULL else `core_user`.`email` end AS `email`,`core_user`.`first_name` AS `first_name`,`core_user`.`last_name` AS `last_name`,coalesce(concat(`core_user`.`first_name`,' ',`core_user`.`last_name`),`core_user`.`first_name`,`core_user`.`last_name`) AS `full_name`,`core_user`.`date_joined` AS `date_joined`,`core_user`.`last_login` AS `last_login`,`core_user`.`updated_at` AS `updated_at`,`core_user`.`is_superuser` AS `is_admin`,`core_user`.`is_active` AS `is_active`,`core_user`.`sso_source` AS `sso_source`,`core_user`.`locale` AS `locale` from `core_user` union select 0 AS `user_id`,'user_0' AS `entity_qualified_id`,'anonymous' AS `type`,NULL AS `email`,'External' AS `first_name`,'User' AS `last_name`,'External User' AS `full_name`,NULL AS `date_joined`,NULL AS `last_login`,NULL AS `updated_at`,0 AS `is_admin`,NULL AS `is_active`,NULL AS `sso_source`,NULL AS `locale` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_view_log`
--

/*!50001 DROP VIEW IF EXISTS `v_view_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_view_log` AS (select `view_log`.`id` AS `id`,`view_log`.`timestamp` AS `timestamp`,coalesce(`view_log`.`user_id`,0) AS `user_id`,`view_log`.`model` AS `entity_type`,`view_log`.`model_id` AS `entity_id`,concat(`view_log`.`model`,'_',`view_log`.`model_id`) AS `entity_qualified_id` from `view_log`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-10-21 23:20:46

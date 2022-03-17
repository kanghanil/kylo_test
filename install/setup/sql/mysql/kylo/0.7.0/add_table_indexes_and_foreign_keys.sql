use kylo;

ALTER TABLE `kylo`.`BATCH_STEP_EXECUTION_CTX_VALS`
ADD CONSTRAINT `BATCH_STEP_EXEC_CTX_VALS_FK1`
  FOREIGN KEY (`STEP_EXECUTION_ID`)
  REFERENCES `kylo`.`BATCH_STEP_EXECUTION` (`STEP_EXECUTION_ID`);

ALTER TABLE `kylo`.`BATCH_STEP_EXECUTION_CTX_VALS`
ADD CONSTRAINT `BATCH_STEP_EXEC_CTX_VALS_FK2`
  FOREIGN KEY (`JOB_EXECUTION_ID`)
  REFERENCES `kylo`.`BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`);

ALTER TABLE `kylo`.`BATCH_JOB_EXECUTION_CTX_VALS`
ADD CONSTRAINT `BATCH_JOB_EXEC_CTX_VALS_FK1`
  FOREIGN KEY (`JOB_EXECUTION_ID`)
  REFERENCES `kylo`.`BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`);



ALTER TABLE `kylo`.`BATCH_NIFI_STEP`
ADD INDEX `BATCH_NIFI_STEP_FK1_idx` (`STEP_EXECUTION_ID` ASC);

ALTER TABLE `kylo`.`BATCH_NIFI_STEP`
ADD CONSTRAINT `BATCH_NIFI_STEP_FK1`
  FOREIGN KEY (`STEP_EXECUTION_ID`)
  REFERENCES `kylo`.`BATCH_STEP_EXECUTION` (`STEP_EXECUTION_ID`);

ALTER TABLE `kylo`.`BATCH_NIFI_STEP`
ADD INDEX `BATCH_NIFI_STEP_FK2_idx` (`JOB_EXECUTION_ID` ASC);

ALTER TABLE `kylo`.`BATCH_NIFI_STEP`
ADD CONSTRAINT `BATCH_NIFI_STEP_FK2`
  FOREIGN KEY (`JOB_EXECUTION_ID`)
  REFERENCES `kylo`.`BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`);



ALTER TABLE `kylo`.`BATCH_NIFI_STEP`
ADD INDEX `BATCH_NIFI_STEP_IDX2` (`COMPONENT_ID` ASC, `JOB_FLOW_FILE_ID` ASC);

ALTER TABLE `kylo`.`BATCH_NIFI_STEP`
ADD INDEX `BATCH_NIFI_STEP_IDX3` (`EVENT_ID` ASC, `FLOW_FILE_ID` ASC);

ALTER TABLE `kylo`.`BATCH_NIFI_JOB`
ADD INDEX `BATCH_NIFI_JOB_FK1_idx` (`JOB_INSTANCE_ID` ASC);

ALTER TABLE `kylo`.`BATCH_NIFI_JOB`
ADD CONSTRAINT `BATCH_NIFI_JOB_FK1`
  FOREIGN KEY (`JOB_INSTANCE_ID`)
  REFERENCES `kylo`.`BATCH_JOB_INSTANCE` (`JOB_INSTANCE_ID`);

ALTER TABLE `kylo`.`BATCH_NIFI_JOB`
ADD INDEX `BATCH_NIFI_JOB_FK2_idx` (`JOB_EXECUTION_ID` ASC);

ALTER TABLE `kylo`.`BATCH_NIFI_JOB`
ADD CONSTRAINT `BATCH_NIFI_JOB_FK2`
  FOREIGN KEY (`JOB_EXECUTION_ID`)
  REFERENCES `kylo`.`BATCH_JOB_EXECUTION` (`JOB_EXECUTION_ID`);



ALTER TABLE `kylo`.`BATCH_JOB_INSTANCE`
ADD INDEX `BATCH_JOB_INSTANCE_FK1_idx` (`FEED_ID` ASC);

ALTER TABLE `kylo`.`BATCH_JOB_INSTANCE`
ADD CONSTRAINT `BATCH_JOB_INSTANCE_FK1`
  FOREIGN KEY (`FEED_ID`)
  REFERENCES `kylo`.`FEED` (`id`);

ALTER TABLE `kylo`.`BATCH_JOB_EXECUTION`
ADD INDEX `BATCH_JOB_EXECUTION_IDX1` (`START_TIME` DESC);

ALTER TABLE `kylo`.`NIFI_EVENT`
ADD INDEX `NIFI_EVENT_IDX1` (`FM_FEED_NAME` ASC);





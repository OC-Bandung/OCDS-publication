
CREATE TRIGGER `ocds_planning` 
	AFTER INSERT ON `planning_sirup` 
	FOR EACH ROW 
	
INSERT INTO birms_ocds.planning (
	ocid,
	`buyer/id`,
	`buyer/name`, 
	`planning/rationale`, 
	`planning/budget/id`, 
	`planning/budget/description`,
	`planning/budget/amount/amount`,
	`planning/budget/currency` , 
	`last_updated`) 

	VALUES(
	'ocds-prefix+autoid',
	NEW.kldi,
	NEW.satuan_kerja, 
	'Deskripsi' , 
	CONCAT('MAK-' , NEW.id) , 
	NEW. sumber_dana_string , 
	NEW.pagu , 
	'IDR',
	DATE_FORMAT(Now(), '%Y-%m-%dT%TZ'))
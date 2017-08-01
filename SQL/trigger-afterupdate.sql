
CREATE TRIGGER `ocds_planning` 
	AFTER UPDATE ON `planning_sirup` 
	FOR EACH ROW 
	
	INSERT INTO birms_ocds.full_record (
	ocid,
	buyer_id,
	buyer_name, 
	planning_rational, 
	planning_budget_id, 
	planning_budget_desc,
	planning_budget_amount,
	planning_budget_currency) 

	VALUES(
	'ocds-prefix+autoid',
	NEW.kldi,
	NEW.satuan_kerja, 
	'Deskripsi' , 
	CONCAT('MAK-' , NEW.id) , 
	NEW. sumber_dana_string , 
	NEW.pagu , 
	'IDR');
CREATE TABLE class(
 id VARCHAR(3),
 name CHAR(20)
 );
 
INSERT INTO class  VALUES
  ('001','janet'),
  ('002','ashik');
  
select * from class;
SET autocommit=0;
START TRANSACTION;
INSERT INTO class VALUES
  ('003','aiswarya');
  
SELECT* FROM class;
SAVEPOINT class1;
INSERT INTO class VALUES
  ('004','manu');
  
SELECT * FROM class;
SAVEPOINT class2;
ROLLBACK TO class1;
SELECT * FROM class;
 COMMIT;
  
  
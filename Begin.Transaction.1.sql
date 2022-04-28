select * from Major;

BEGIN TRANSACTION;

update Major set description = 'To Be Deleted' where Id = 8;

rollback;
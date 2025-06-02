delete from contact where expires < now();
delete from subscriber where expires < now();
delete from impu_contact where contact_id not in (select id from contact);
delete from impu_subscriber where subscriber_id not in (select id from subscriber);
delete from impu where id not in (select impu_id from impu_contact) and id not in (select impu_id from impu_subscriber);

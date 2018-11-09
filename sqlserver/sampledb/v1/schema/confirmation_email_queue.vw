CREATE VIEW confirmation_email_queue
AS
SELECT * 
FROM dbo.ticket_purchase_hist
INNER JOIN dbo.person
ON purchased_by_id = person.id
WHERE confirmation_email_sent = 0;
go
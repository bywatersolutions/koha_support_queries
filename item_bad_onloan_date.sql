SELECT
    items.itemnumber,
    items.biblionumber, 
    biblio.title, 
    items.onloan
    items.dateaccessioned, 
    items.replacementpricedate, 
    items.datelastborrowed, 
    items.datelastseen, 
    items.itemlost_on, 
    items.withdrawn_on, 
    items.timestamp, 
FROM
    items 
    INNER JOIN biblio USING (biblionumber)
WHERE
    DATE( items.onloan ) = '0000-00-00'


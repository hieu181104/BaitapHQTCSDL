DECLARE @datetime1 TIME = '2025-4-14 09:00';
DECLARE @datetime2 TIME = '2025-4-14 12:00';

SELECT 
    gv.tengv AS [H? t�n gi�o vi�n],
    mh.tenmon AS [M�n d?y],
    tkb.giovao AS [Gi? v�o],
    tkb.giora AS [Gi? ra]
FROM 
    Thoikhoabieu tkb
JOIN 
    Giaovien gv ON tkb.magv = gv.magv
JOIN 
    Monhoc mh ON tkb.mamon = mh.mamon
WHERE 
    CAST(tkb.giovao AS TIME) BETWEEN @datetime1 AND @datetime2;

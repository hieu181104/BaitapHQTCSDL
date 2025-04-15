DECLARE @datetime1 TIME = '2025-4-14 09:00';
DECLARE @datetime2 TIME = '2025-4-14 12:00';

SELECT 
    gv.tengv AS [H? tên giáo viên],
    mh.tenmon AS [Môn d?y],
    tkb.giovao AS [Gi? vào],
    tkb.giora AS [Gi? ra]
FROM 
    Thoikhoabieu tkb
JOIN 
    Giaovien gv ON tkb.magv = gv.magv
JOIN 
    Monhoc mh ON tkb.mamon = mh.mamon
WHERE 
    CAST(tkb.giovao AS TIME) BETWEEN @datetime1 AND @datetime2;

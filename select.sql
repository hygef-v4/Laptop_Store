SELECT
    p.productID,
    p.productName,
    b.brandName,
    c.categoryName,
    p.price,
    p.quantity,
    p.importDate,
    p.usingDate,
    p.processor,
    p.ram,
    p.storage,
    p.graphics,
    p.display,
    p.operatingSystem,
    p.warranty,
    pd.specName,
    pd.specValue
FROM
    tblProducts p
INNER JOIN
    tblBrands b ON p.brandID = b.brandID
INNER JOIN
    tblCategories c ON p.categoryID = c.categoryID
LEFT JOIN
    tblProductDetails pd ON p.productID = pd.productID
ORDER BY
    p.productID, pd.detailID;
select
    franchiseID,
    name,
    city,
    district,
    zipcode,
    country,
    size,
    longitude,
    latitude,
    supplierID
from {{ source("bakehouse", "sales_franchises") }}

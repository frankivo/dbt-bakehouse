select
    supplierID,
    name,
    ingredient,
    continent,
    city,
    district,
    size,
    longitude,
    latitude,
    approved
from {{ source("bakehouse", "sales_suppliers") }}

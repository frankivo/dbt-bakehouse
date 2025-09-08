select
    transactionID,
    customerID,
    franchiseID,
    dateTime,
    product,
    quantity,
    unitPrice,
    totalPrice,
    paymentMethod,
    cardNumber
from {{ source("bakehouse", "sales_transactions") }}

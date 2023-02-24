select *
from {{ ref('stg_orders') }}
where status not in (
    'shipped','completed','return_pending','returned'
)
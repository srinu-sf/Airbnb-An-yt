{% set flag = 1 %}

select * from {{ ref('bronze_bookings') }}
{% if flag == 1%}
    where night_booked >1
{% else %}
    where night_booked = 1
{% endif %}    
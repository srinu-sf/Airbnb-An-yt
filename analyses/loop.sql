{% set cols = ['NIGHTS_BOOKED', 'bOOKING_ID', 'BOOKING_AMOUNT'] %}

select 
{% for item in cols %}
    {{ item }}   
      {% if not loop.last%} , {% endif %}
{% endfor %}

 from {{ ref('bronze_bookings') }}

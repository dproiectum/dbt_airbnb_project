{% docs dim_listing_cleansed__minimum_nights %}
Minimum number of nights required to rent this property.

Keep in mind that old listings might have `minimum_nights` set
to 0 in the source tables. Our cleansing algorithm updates this to `1`.

{% enddocs %}


{% docs dim_hosts_cleansed__docs %}

Cleansed table which contains the Airbnb hosts information.  

It is the dimension table for hosts.   

It is used to join with the fact table dim_listings_cleansed.  

{% enddocs %}
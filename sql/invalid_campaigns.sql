SELECT *
FROM campaign_master
WHERE NOT REGEXP_CONTAINS(
    campaign_name,
    r'^[A-Za-z0-9]+(_[A-Za-z0-9]+){7}$'
);

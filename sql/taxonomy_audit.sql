SELECT
    campaign_name,
    CASE
        WHEN REGEXP_CONTAINS(
            campaign_name,
            r'^[A-Za-z0-9]+(_[A-Za-z0-9]+){7}$'
        )
        THEN 'VALID'
        ELSE 'INVALID'
    END AS taxonomy_status
FROM campaign_master;

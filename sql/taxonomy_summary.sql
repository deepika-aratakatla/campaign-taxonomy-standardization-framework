SELECT
    taxonomy_status,
    COUNT(*) AS campaign_count
FROM validated_campaigns
GROUP BY taxonomy_status;

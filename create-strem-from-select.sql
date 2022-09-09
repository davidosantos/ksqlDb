CREATE STREAM stockapp_trades_transformed_enriched AS
    SELECT s.userid, s.dollar_amount, s.symbol,
           u.regionid, u.interests, u.contactinfo
    FROM stockapp_trades_transformed s
    LEFT JOIN stockapp_users u
        ON s.userid = u.userid
    EMIT CHANGES;
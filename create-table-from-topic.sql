CREATE TABLE stockapp_users (
    userid STRING PRIMARY KEY,
    registertime BIGINT,
    regionid STRING,
    gender STRING,
    interests ARRAY<STRING>,
    contactinfo MAP<STRING, STRING>
) WITH (
    KAFKA_TOPIC = 'ksqldb.stockapp.users',
    VALUE_FORMAT = 'AVRO'
);
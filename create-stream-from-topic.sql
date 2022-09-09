CREATE STREAM stockapp_trades
WITH (
    KAFKA_TOPIC = 'ksqldb.stockapp.trades',
    VALUE_FORMAT = 'AVRO'
);
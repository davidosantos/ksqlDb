CREATE STREAM TEST (id BIGINT KEY, event_timestamp VARCHAR)
  WITH (
    KAFKA_TOPIC ='test_topic',
    VALUE_FORMAT ='JSON',
    TIMESTAMP = 'event_timestamp',
    TIMESTAMP_FORMAT = 'yyyy-MM-dd''T''HH:mm:ssX'
  );
--creates materialized view 'datasuite' for use as a Google Data Studio datasource

CREATE MATERIALIZED VIEW `harlemlink.engines.datasuite` AS
SELECT *
FROM
  `harlemlink.engines.base_table_datasuite`;
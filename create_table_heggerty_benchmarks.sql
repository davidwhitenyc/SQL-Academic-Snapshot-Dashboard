--creates or overwrites table: `harlemlink.benchmarks.heggerty_benchmarks`
--table is used to add student-assessment-level benchmarks to tables with student-question level granularity

CREATE OR REPLACE TABLE
  `harlemlink.benchmarks.heggerty_benchmarks` AS
SELECT
  osis,
  assessment,
  SUM(points_earned)/SUM(points_available) AS heggerty_pct_points,
  CASE
    WHEN SUM(points_earned)/SUM(points_available) >= .75 THEN "Achieved Benchmark"
    WHEN SUM(points_earned)/SUM(points_available) BETWEEN .5
  AND .74999999 THEN "Approaching Benchmark"
    WHEN SUM(points_earned)/SUM(points_available) < .5 THEN "Below Benchmark"
  ELSE
  ""
END
  AS heggerty_benchmark
FROM
  `harlemlink.academics.heggerty_results`
WHERE
  osis IS NOT NULL
GROUP BY
  1,
  2 ;
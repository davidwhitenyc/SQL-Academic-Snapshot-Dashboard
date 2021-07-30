--creates or overwrites table: `harlemlink.benchmarks.math_benchmarks`
--table is used to add student-assessment-level benchmarks to tables with student-question level granularity

CREATE OR REPLACE TABLE
  `harlemlink.benchmarks.math_benchmarks` AS
SELECT
  osis,
  assessment,
  SUM(points_earned)/SUM(points_available) AS math_pct_points,
  CASE
    WHEN SUM(points_earned)/SUM(points_available) >= .75 THEN "Achieved Benchmark"
    WHEN SUM(points_earned)/SUM(points_available) BETWEEN .5
  AND .74999999 THEN "Approaching Benchmark"
    WHEN SUM(points_earned)/SUM(points_available) < .5 THEN "Below Benchmark"
  ELSE
  ""
END
  AS math_benchmark
FROM
  `harlemlink.academics.math_results`
WHERE
  osis IS NOT NULL
GROUP BY
  1,
  2 ;
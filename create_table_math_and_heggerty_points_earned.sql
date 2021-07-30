--combines Heggery and math points_earned into a single tidy table

CREATE OR REPLACE TABLE
  `harlemlink.academics.math_and_heggerty_points_earned` AS
SELECT
  osis,
  question_id,
  points_earned,
FROM
  `harlemlink.academics.heggerty_results` 
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.academics.math_results`;
--creates tidy math table by joining the 'questions' table to the 'math_points_earned' table

CREATE OR REPLACE TABLE
  `harlemlink.academics.math_results` AS
SELECT
  osis,
  assessment,
  mpe.question_id,
  points_earned,
  points_available
FROM
  `harlemlink.academics.math_points_earned` mpe
LEFT JOIN
  `harlemlink.academics.questions` q
ON
  mpe.question_id = q.question_id;
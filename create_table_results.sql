--creates table 'all_results' by joining the 'questions' table to the combined math and heggerty points_earned table

CREATE OR REPLACE TABLE
  `harlemlink.academics.all_results` AS
SELECT
  osis,
  assessment,
  pr.question_id,
  points_earned,
  points_available
FROM
  `harlemlink.academics.math_and_heggerty_points_earned` pr 
LEFT JOIN
  `harlemlink.academics.questions` q
ON
  pr.question_id = q.question_id;
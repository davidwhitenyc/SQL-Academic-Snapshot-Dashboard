--creates tidy Heggerty table by joining the 'questions' table to the 'heggerty_points_earned' table

CREATE OR REPLACE TABLE
  `harlemlink.academics.heggerty_results` AS
SELECT
  osis,
  assessment,
  hpe.question_id,
  points_earned,
  points_available
FROM
  `harlemlink.academics.heggerty_points_earned` hpe
LEFT JOIN
  `harlemlink.academics.questions` q
ON
  hpe.question_id = q.question_id;
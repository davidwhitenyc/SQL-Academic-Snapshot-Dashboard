--compiles the results from unpivoting all math trackers

CREATE OR REPLACE TABLE
  `harlemlink.academics.math_points_earned` AS
SELECT
  osis,
  question_id,
  points_earned,
FROM
  `harlemlink.unpivots.unpivot_sy20_21_gradek_math` 
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade1_math`
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade2_math`
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade3_math`
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade4_math`
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade5_math`
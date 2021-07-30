--compiles the results from unpivoting all Heggerty trackers

CREATE OR REPLACE TABLE
  `harlemlink.academics.heggerty_points_earned` AS
SELECT
  osis,
  question_id,
  points_earned,
FROM
  `harlemlink.unpivots.unpivot_sy20_21_gradek_heggerty` h
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade1_heggerty`
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.unpivots.unpivot_sy20_21_grade2_heggerty`
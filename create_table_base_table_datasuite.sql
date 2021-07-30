--creates the base table that will be queried to form the materialized view 'datasuite'

CREATE OR REPLACE TABLE
  `harlemlink.engines.base_table_datasuite` AS
SELECT
  --select all columns from all_ points_available results table
  r.osis,
  r.assessment,
  r.question_id,
  r.points_earned,
  r.points_available,
  --select all columns from students table
  s.student,
  s.gender,
  s.sy21_22_grade_level,
  s.sy_21_22_class,
  s.sy20_21_grade_level,
  s.sy_20_21_class,
  s.sped,
  s.ict,
  s.setss,
  s.special_class,
  s.speech,
  s.ot,
  s.pt,
  s.counseling,
  s.para,
  s.specialized_transportation,
  s.enl,
  s.enl_pullout,
  s.hl_upk,
  s.holdovers,
  s.new_students,
  s.ais,
  s.promotion_status_1,
  s.promotion_status_2,
  s.active_or_inactive_status,
  --select all columns (except duplicates) from questions table
  q.academic_year,
  q.grade_level,
  q.level,
  q.standard,
  q.domain,
  q.standard_description,
  q.question_full_text,
  q.question_short_description,
  q.multiple_choice_or_cr,
  q.correct_answer,
  --select all columns from fountas_pinnell table
  fp.testing_grade,
  fp.november_2020_independent_reading_level,
  fp.jan_feb_2021_independent_reading_level,
  fp.april_2021_independent_reading_level,
  fp.may_2021_independent_reading_level,
  fp.may_2021_fp_benchmark,
  fp.may_2021_fp_tier,
  fp.indepentent_reading_level_growth,
  fp.reading_growth_in_years,
  --select all columns from heggerty_benchmarks table
  heggerty_pct_points,
  heggerty_benchmark,
  --select all columns from math_benchmarks table
  math_pct_points,
  math_benchmark
FROM
  `harlemlink.academics.all_results` r
LEFT JOIN
  `harlemlink.demographics.students` s
ON
  r.osis = s.osis
LEFT JOIN
  `harlemlink.academics.questions` q
ON
  r.question_id = q.question_id
LEFT JOIN
  `harlemlink.academics.fountas_pinnell` fp
ON
  r.osis = fp.osis
LEFT JOIN
  `harlemlink.benchmarks.math_benchmarks` mb
ON
  r.osis = mb.osis
  AND r.assessment = mb.assessment
LEFT JOIN
  `harlemlink.benchmarks.heggerty_benchmarks` hb
ON
  r.osis = hb.osis
  AND r.assessment = hb.assessment;
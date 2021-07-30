--creates or overwrites table: `harlemlink.unpivots.unpivot_sy20_21_grade1_heggerty`

CREATE OR REPLACE TABLE
  `harlemlink.unpivots.unpivot_sy20_21_grade1_heggerty` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.trackers.sy20_21_grade1_heggerty` UNPIVOT(points_Earned FOR question_id IN ( sy_20_21_grade_1_boy_heggerty_assessment_rhyme_production,
      sy_20_21_grade_1_boy_heggerty_assessment_onset_fluency,
      sy_20_21_grade_1_boy_heggerty_assessment_blending_phonemes,
      sy_20_21_grade_1_boy_heggerty_assessment_isolating_final_sounds_in_words,
      sy_20_21_grade_1_boy_heggerty_assessment_segmenting_words_into_phonemes,
      sy_20_21_grade_1_boy_heggerty_assessment_isolating_medial_sound_in_words,
      sy_20_21_grade_1_boy_heggerty_assessment_adding_phonemes,
      sy_20_21_grade_1_boy_heggerty_assessment_deleting_phonemes,
      sy_20_21_grade_1_boy_heggerty_assessment_substituting_phonemes,
      sy_20_21_grade_1_eoy_heggerty_assessment_rhyme_production,
      sy_20_21_grade_1_eoy_heggerty_assessment_blending_phonemes,
      sy_20_21_grade_1_eoy_heggerty_assessment_isolating_medial_sound_in_words,
      sy_20_21_grade_1_eoy_heggerty_assessment_segmenting_words_into_phonemes,
      sy_20_21_grade_1_eoy_heggerty_assessment_adding_phonemes,
      sy_20_21_grade_1_eoy_heggerty_assessment_deleting_phonemes )) ;
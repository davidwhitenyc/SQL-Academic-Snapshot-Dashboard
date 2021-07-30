--creates or overwrites table: `harlemlink.unpivots.unpivot_sy20_21_gradek_heggerty`

CREATE OR REPLACE TABLE
  `harlemlink.unpivots.unpivot_sy20_21_gradek_heggerty` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlink.trackers.sy20_21_gradek_heggerty` UNPIVOT(points_Earned FOR question_id IN ( sy_20_21_kg_boy_heggerty_assessment_rhyme_recognition,
      sy_20_21_kg_boy_heggerty_assessment_rhyme_production,
      sy_20_21_kg_boy_heggerty_assessment_onset_fluency,
      sy_20_21_kg_boy_heggerty_assessment_isolating_final_sounds_in_words,
      sy_20_21_kg_boy_heggerty_assessment_segmenting_words_into_compound_words_and_syllables,
      sy_20_21_kg_boy_heggerty_assessment_blending_onset_rime,
      sy_20_21_kg_moy_heggerty_assessment_rhyme_recognition,
      sy_20_21_kg_moy_heggerty_assessment_rhyme_production,
      sy_20_21_kg_moy_heggerty_assessment_onset_fluency,
      sy_20_21_kg_moy_heggerty_assessment_isolating_final_sounds_in_words,
      sy_20_21_kg_moy_heggerty_assessment_blending_compound_words_and_syllables,
      sy_20_21_kg_eoy_heggerty_assessment_rhyme_recognition,
      sy_20_21_kg_eoy_heggerty_assessment_onset_fluency,
      sy_20_21_kg_eoy_heggerty_assessment_isolating_final_sounds_in_words,
      sy_20_21_kg_eoy_heggerty_assessment_isolating_medial_sounds_in_words,
      sy_20_21_kg_eoy_heggerty_assessment_blending_phonemes,
      sy_20_21_kg_eoy_heggerty_assessment_segmenting_words_into_phonemes )) ;
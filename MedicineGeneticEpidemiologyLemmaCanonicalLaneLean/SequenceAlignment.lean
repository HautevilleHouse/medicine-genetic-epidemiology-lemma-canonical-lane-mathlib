import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : Type u
  alignmentMethod : Type v
  substitutionMatrix : Type w
  gapPenalty : Type x
  alignmentScore : Type y
  optimalAlignmentFound : Prop
  alignmentScoreSignificant : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentFoundClosed : S.optimalAlignmentFound
  alignmentScoreSignificantClosed : S.alignmentScoreSignificant

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignmentFound ∧ S.alignmentScoreSignificant

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.optimalAlignmentFoundClosed E.alignmentScoreSignificantClosed

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
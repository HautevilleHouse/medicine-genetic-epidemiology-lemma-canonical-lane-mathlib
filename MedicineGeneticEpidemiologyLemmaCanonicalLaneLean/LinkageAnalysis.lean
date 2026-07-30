import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure LinkagePackage where
  pedigree : Type u
  markers : Type v
  recombinationFraction : Type w
  lodScore : Type x
  linkageEvidence : Prop
  recombinationFractionEstimated : Prop
  lodScoreSignificant : Prop

structure LinkageEvidence (L : LinkagePackage) where
  linkageEvidenceClosed : L.linkageEvidence
  recombinationFractionEstimatedClosed : L.recombinationFractionEstimated
  lodScoreSignificantClosed : L.lodScoreSignificant

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.linkageEvidence ∧ L.recombinationFractionEstimated ∧ L.lodScoreSignificant

theorem linkage_closed_from_evidence (L : LinkagePackage)
    (E : LinkageEvidence L) : LinkageClosed L := by
  exact And.intro E.linkageEvidenceClosed
    (And.intro E.recombinationFractionEstimatedClosed E.lodScoreSignificantClosed)

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
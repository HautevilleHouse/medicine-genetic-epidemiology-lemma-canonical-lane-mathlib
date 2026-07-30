import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure PopulationStratificationPackage where
  subpopulationType : Type u
  alleleFrequencyDifferences : Prop
  genomicControl : Prop
  principalComponents : Prop
  stratificationAdjusted : Prop

structure PopulationStratificationEvidence (P : PopulationStratificationPackage) where
  alleleFrequencyDifferencesClosed : P.alleleFrequencyDifferences
  genomicControlClosed : P.genomicControl
  principalComponentsClosed : P.principalComponents
  stratificationAdjustedClosed : P.stratificationAdjusted

def PopulationStratificationClosed (P : PopulationStratificationPackage) : Prop :=
  P.alleleFrequencyDifferences ∧ P.genomicControl ∧
  P.principalComponents ∧ P.stratificationAdjusted

theorem population_stratification_closed_from_evidence (P : PopulationStratificationPackage)
    (E : PopulationStratificationEvidence P) : PopulationStratificationClosed P := by
  exact And.intro E.alleleFrequencyDifferencesClosed
    (And.intro E.genomicControlClosed
      (And.intro E.principalComponentsClosed E.stratificationAdjustedClosed))

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
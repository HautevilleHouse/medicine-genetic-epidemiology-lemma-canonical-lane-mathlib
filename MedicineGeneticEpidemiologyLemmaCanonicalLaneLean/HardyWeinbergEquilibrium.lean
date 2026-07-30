import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure HardyWeinbergPackage where
  locus : Type u
  alleleFrequencies : Type v
  genotypeFrequencies : Type w
  populationState : Prop
  randomMatingAssumption : Prop
  hardyWeinbergEquation : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationStateClosed : H.populationState
  randomMatingAssumptionClosed : H.randomMatingAssumption
  hardyWeinbergEquationClosed : H.hardyWeinbergEquation
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.populationState ∧ H.randomMatingAssumption ∧
  H.hardyWeinbergEquation ∧ H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.populationStateClosed
    (And.intro E.randomMatingAssumptionClosed
      (And.intro E.hardyWeinbergEquationClosed E.equilibriumConditionClosed))

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
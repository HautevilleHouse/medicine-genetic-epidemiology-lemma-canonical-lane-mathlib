import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure HeritabilityEstimation where
  trait : Type u
  twinPair : Type v
  monozygoticCorrelation : ℝ
  dizygoticCorrelation : ℝ
  heritabilityEstimate : ℝ
  standardError : ℝ

def HeritabilityFormula (h : HeritabilityEstimation) : Prop :=
  h.heritabilityEstimate = 2 * (h.monozygoticCorrelation - h.dizygoticCorrelation)

structure HeritabilityEvidence (h : HeritabilityEstimation) where
  monozygoticCorrelationClosed : h.monozygoticCorrelation ≥ 0 ∧ h.monozygoticCorrelation ≤ 1
  dizygoticCorrelationClosed : h.dizygoticCorrelation ≥ 0 ∧ h.dizygoticCorrelation ≤ 1
  heritabilityEstimateClosed : h.heritabilityEstimate ≥ 0 ∧ h.heritabilityEstimate ≤ 1
  standardErrorClosed : h.standardError ≥ 0

def HeritabilityEstimationClosed (h : HeritabilityEstimation) : Prop :=
  h.monozygoticCorrelation ≥ 0 ∧ h.monozygoticCorrelation ≤ 1 ∧
  h.dizygoticCorrelation ≥ 0 ∧ h.dizygoticCorrelation ≤ 1 ∧
  h.heritabilityEstimate ≥ 0 ∧ h.heritabilityEstimate ≤ 1 ∧
  h.standardError ≥ 0

theorem heritability_estimation_closed_from_evidence
    (h : HeritabilityEstimation) (E : HeritabilityEvidence h) :
    HeritabilityEstimationClosed h := by
  exact And.intro E.monozygoticCorrelationClosed
    (And.intro E.dizygoticCorrelationClosed
      (And.intro E.heritabilityEstimateClosed E.standardErrorClosed))

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
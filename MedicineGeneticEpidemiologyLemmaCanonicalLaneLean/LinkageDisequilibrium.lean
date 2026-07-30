import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure LinkageDisequilibriumPair where
  locus1 : Type u
  locus2 : Type v
  haplotypeCounts : ℕ × ℕ × ℕ × ℕ
  dPrime : ℝ
  rSquared : ℝ

def LDMeasures (ld : LinkageDisequilibriumPair) : Prop :=
  ld.dPrime ≥ 0 ∧ ld.dPrime ≤ 1 ∧ ld.rSquared ≥ 0 ∧ ld.rSquared ≤ 1

structure LinkageDisequilibriumEvidence (ld : LinkageDisequilibriumPair) where
  dPrimeClosed : ld.dPrime ≥ 0 ∧ ld.dPrime ≤ 1
  rSquaredClosed : ld.rSquared ≥ 0 ∧ ld.rSquared ≤ 1

def LinkageDisequilibriumClosed (ld : LinkageDisequilibriumPair) : Prop :=
  ld.dPrime ≥ 0 ∧ ld.dPrime ≤ 1 ∧ ld.rSquared ≥ 0 ∧ ld.rSquared ≤ 1

theorem linkage_disequilibrium_closed_from_evidence
    (ld : LinkageDisequilibriumPair) (E : LinkageDisequilibriumEvidence ld) :
    LinkageDisequilibriumClosed ld := by
  exact And.intro E.dPrimeClosed E.rSquaredClosed

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure Patient where
  id : ℕ
  genotype : String
  phenotype : String

structure Cohort where
  patients : List Patient
  caseControl : Bool

definition chiSquare (observed : ℕ) (expected : ℕ) : ℝ := 0.0

structure GeneticAssociationPackage where
  cohort : Cohort
  variant : String
  oddsRatio : ℝ
  pValue : ℝ
  associationSignificant : Prop

definition pValueFromChiSquare (χ² : ℝ) (df : ℕ) : ℝ := 0.0

structure AssociationEvidence (A : GeneticAssociationPackage) where
  pValueComputed : A.pValue = pValueFromChiSquare (chiSquare 0 0) 1
  associationSignificantClosed : A.associationSignificant

def AssociationClosed (A : GeneticAssociationPackage) : Prop :=
  A.associationSignificant

theorem association_closed_from_evidence (A : GeneticAssociationPackage) (E : AssociationEvidence A) : AssociationClosed A := by
  exact E.associationSignificantClosed

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
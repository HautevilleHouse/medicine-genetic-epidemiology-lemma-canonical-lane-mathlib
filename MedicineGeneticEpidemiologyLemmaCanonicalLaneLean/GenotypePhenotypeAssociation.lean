import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure GenotypePhenotypeAssociation where
  cohort : Type u
  genotype : cohort → Prop
  phenotype : cohort → Prop
  associationTest : Prop
  pValue : ℝ
  covariateAdjusted : Prop
  multipleTestingCorrected : Prop

structure GenotypePhenotypeEvidence (R : GenotypePhenotypeAssociation) where
  associationTestClosed : R.associationTest
  pValueClosed : R.pValue ≤ 0.05
  covariateAdjustedClosed : R.covariateAdjusted
  multipleTestingCorrectedClosed : R.multipleTestingCorrected

def GenotypePhenotypeAssociationClosed (R : GenotypePhenotypeAssociation) : Prop :=
  R.associationTest ∧ R.pValue ≤ 0.05 ∧ R.covariateAdjusted ∧ R.multipleTestingCorrected

theorem genotype_phenotype_closed_from_evidence (R : GenotypePhenotypeAssociation)
    (E : GenotypePhenotypeEvidence R) : GenotypePhenotypeAssociationClosed R := by
  exact And.intro E.associationTestClosed
    (And.intro E.pValueClosed
      (And.intro E.covariateAdjustedClosed E.multipleTestingCorrectedClosed))

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
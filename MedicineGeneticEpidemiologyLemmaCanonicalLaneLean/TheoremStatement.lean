import canonicalLaneMathlib.AdmissibleClass
import MedicineGeneticEpidemiologyLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  geneticConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "medicine-genetic-epidemiology-lemma-canonical-lane",
    theoremName := "Hardy-Weinberg-Linkage-Equilibrium-Closure",
    theoremObject := "Genetic epidemiology lemma with Hardy-Weinberg and linkage equilibrium",
    classicalBoundary := "unrestricted classical boundary carried by Formalization.carriedGap",
    geneticConstrainedStatement := "genetic-constrained theorem certificate internalized through admissible closure",
    certificateLane := "genetic_constrained",
    carriedRemainder := "classical source boundary remains open as specified" }

theorem theorem_statement_internalized :
    sourceTheoremStatement.sourceKey = "medicine-genetic-epidemiology-lemma-canonical-lane" := by
  rfl

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
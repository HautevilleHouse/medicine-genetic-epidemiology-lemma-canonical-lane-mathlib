import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure PhylogeneticPackage where
  sequences : Type u
  substitutionModel : Type v
  treeTopology : Prop
  branchLengths : Prop
  likelihood : Prop

structure PhylogeneticEvidence (P : PhylogeneticPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodClosed : P.likelihood

def PhylogeneticClosed (P : PhylogeneticPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.likelihood

theorem phylogenetic_closed_from_evidence (P : PhylogeneticPackage) (E : PhylogeneticEvidence P) : PhylogeneticClosed P :=
  And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed E.likelihoodClosed)

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
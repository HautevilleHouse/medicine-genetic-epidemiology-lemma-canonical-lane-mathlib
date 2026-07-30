import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemmaCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type u
  distanceMatrix : Type v
  treeBuildingMethod : Type w
  treeTopology : Type x
  branchLengths : Type y
  treeInferred : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeInferredClosed : P.treeInferred
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeInferred ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeInferredClosed E.bootstrapSupportClosed

end MedicineGeneticEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
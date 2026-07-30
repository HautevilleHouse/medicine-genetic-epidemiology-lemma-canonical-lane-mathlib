import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemma

structure PhylogeneticsPackage where
  taxa : List String
  distanceMatrix : List (List ℝ)
  treeTopology : String
  branchLengths : List ℝ
  likelihood : ℝ
  treeEstimateCorrect : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeBuildFromDistances : P.treeTopology = neighborJoiningAlgorithm P.distanceMatrix
  likelihoodComputed : P.likelihood = computeLikelihood P.treeTopology P.branchLengths P.distanceMatrix
  treeEstimateCorrectClosed : P.treeEstimateCorrect

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology = neighborJoiningAlgorithm P.distanceMatrix ∧ P.likelihood = computeLikelihood P.treeTopology P.branchLengths P.distanceMatrix ∧ P.treeEstimateCorrect

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
  PhylogeneticsClosed P := by
  exact And.intro E.treeBuildFromDistances (And.intro E.likelihoodComputed E.treeEstimateCorrectClosed)

end MedicineGeneticEpidemiologyLemma
end HautevilleHouse
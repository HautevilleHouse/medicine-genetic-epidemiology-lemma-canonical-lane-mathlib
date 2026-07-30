import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemma

def ConstrainedGeneticEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetic_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedGeneticEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineGeneticEpidemiologyLemma
end HautevilleHouse
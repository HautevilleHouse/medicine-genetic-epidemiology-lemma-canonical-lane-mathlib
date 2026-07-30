import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemma

structure AdmissibleClass where
  object : GeneticEpidemiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HWEConnectionClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedicineGeneticEpidemiologyLemma
end HautevilleHouse
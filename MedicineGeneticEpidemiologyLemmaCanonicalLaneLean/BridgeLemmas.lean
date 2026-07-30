import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HWEConnectionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MedicineGeneticEpidemiologyLemma
end HautevilleHouse
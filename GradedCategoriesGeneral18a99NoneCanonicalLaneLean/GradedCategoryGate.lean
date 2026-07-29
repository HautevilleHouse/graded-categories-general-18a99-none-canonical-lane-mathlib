import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99None.GradedCategoryBridge

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end GradedCategoriesGeneral18a99None
end HautevilleHouse
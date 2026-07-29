import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99NoneCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99NoneCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GradedCategoriesGeneral18a99NoneCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99NoneCanonicalLaneLean.GradedCategoryDefinitions

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99NoneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exfalso; exact A.gateWitness

end GradedCategoriesGeneral18a99NoneCanonicalLaneLean
end HautevilleHouse
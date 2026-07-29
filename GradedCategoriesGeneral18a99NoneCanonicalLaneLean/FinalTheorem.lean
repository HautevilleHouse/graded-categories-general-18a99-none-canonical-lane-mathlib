import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99NoneCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GradedCategoriesGeneral18a99NoneCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99NoneCanonicalLaneLean

def ConstrainedGradedCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graded_category_endgame (A : AdmissibleClass) : ConstrainedGradedCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GradedCategoriesGeneral18a99NoneCanonicalLaneLean
end HautevilleHouse
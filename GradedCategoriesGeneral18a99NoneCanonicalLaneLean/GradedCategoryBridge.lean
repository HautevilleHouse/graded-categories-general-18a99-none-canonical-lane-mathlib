import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99None.GradedCohomology

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let C := A.object
  let G := AddCommGroup ℤ
  let H : GradedCohomologyTheory C ℤ := by
    -- dummy construction
    sorry
  GradedCohomologyClosed C ℤ H

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- construct evidence from A
  sorry

end GradedCategoriesGeneral18a99None
end HautevilleHouse
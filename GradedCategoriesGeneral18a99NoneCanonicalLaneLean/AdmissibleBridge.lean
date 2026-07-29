import canonicalLaneMathlib.AdmissibleClass
import GradedCategoriesGeneral18a99None.GradedCategoryStructure

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedAdmissibleObject where
  category : GradedCategory
  bridgeClosed : Prop
  gateClosed : Prop

def bridgeClosed (A : GradedAdmissibleObject) : Prop :=
  A.bridgeClosed

def gateClosed (A : GradedAdmissibleObject) : Prop :=
  A.gateClosed

end GradedCategoriesGeneral18a99None
end HautevilleHouse
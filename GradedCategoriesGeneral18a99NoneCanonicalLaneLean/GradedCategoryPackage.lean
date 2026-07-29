import canonicalLaneMathlib.AdmissibleClass
import GradedCategoriesGeneral18a99None.FinalTheorem

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedCategoryPackage where
  category : GradedCategory
  admissible : GradedAdmissibleObject
  closureProof : ConstrainedGradedCategoryClosure admissible

def gradeStructurePreserved (pkg : GradedCategoryPackage) : Prop :=
  True

end GradedCategoriesGeneral18a99None
end HautevilleHouse
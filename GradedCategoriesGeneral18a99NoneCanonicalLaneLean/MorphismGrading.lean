import canonicalLaneMathlib.AdmissibleClass
import GradedCategoriesGeneral18a99None.GradedCategoryDefinitions

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedMorphism (X Y : GradedObject) where
  source : X
  target : Y
  grade : Type
  map : X.components → Y.components

def identityGraded (X : GradedObject) : GradedMorphism X X :=
  { source := X, target := X, grade := Unit, map := λ x => x }

end GradedCategoriesGeneral18a99None
end HautevilleHouse
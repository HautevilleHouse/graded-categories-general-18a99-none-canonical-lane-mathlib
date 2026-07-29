import canonicalLaneMathlib.AdmissibleClass
import GradedCategoriesGeneral18a99None.CompositionStructure

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedCategory where
  objects : Type
  hom : objects → objects → Type
  identity : (X : objects) → hom X X
  composition : (X Y Z : objects) → hom X Y → hom Y Z → hom X Z
  grading : (X Y : objects) → hom X Y → Type
  graded_composition_commutes : (X Y Z : objects) → (f : hom X Y) → (g : hom Y Z) →
    grading X Z (composition X Y Z f g) = grading X Y f × grading Y Z g

end GradedCategoriesGeneral18a99None
end HautevilleHouse
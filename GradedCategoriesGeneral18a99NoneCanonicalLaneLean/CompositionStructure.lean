import canonicalLaneMathlib.AdmissibleClass
import GradedCategoriesGeneral18a99None.MorphismGrading

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedComposition (X Y Z : GradedObject) (f : GradedMorphism X Y) (g : GradedMorphism Y Z) where
  composite : GradedMorphism X Z
  gradeCompatibility : f.grade → g.grade → composite.grade

def compose (X Y Z : GradedObject) (f : GradedMorphism X Y) (g : GradedMorphism Y Z) : GradedComposition X Y Z f g :=
  { composite := { source := X, target := Z, grade := Prod (f.grade) (g.grade), map := λ x => g.map (f.map x) },
    gradeCompatibility := λ a b => (a, b) }

end GradedCategoriesGeneral18a99None
end HautevilleHouse
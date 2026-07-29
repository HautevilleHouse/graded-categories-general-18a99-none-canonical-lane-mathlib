import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99NoneCanonicalLaneLean

structure GradedObject (α : Type u) (I : Type v) where
  underlying : α
  grade : I

structure GradedMorphism (α β : Type u) (I : Type v) (f : GradedObject α I → GradedObject β I) where
  gradePreserving : ∀ (x : GradedObject α I), (f x).grade = x.grade

structure GradedCategory (I : Type u) where
  objects : Type v
  hom : objects → objects → Type w
  identity : (X : objects) → hom X X
  compose : {X Y Z : objects} → hom Y Z → hom X Y → hom X Z
  id_left : ∀ {X Y : objects} (f : hom X Y), compose (identity Y) f = f
  id_right : ∀ {X Y : objects} (f : hom X Y), compose f (identity X) = f
  assoc : ∀ {W X Y Z : objects} (f : hom W X) (g : hom X Y) (h : hom Y Z), compose (compose h g) f = compose h (compose g f)
  gradingSet : Set I
  gradedHomSet : (i : I) → Set (hom)
  gradeOf : (X : objects) → I
  gradeOfHom : {X Y : objects} → hom X Y → I
  compositionRespectsGrade : ∀ {X Y Z : objects} (f : hom X Y) (g : hom Y Z), gradeOfHom (compose g f) = (gradeOfHom f) + (gradeOfHom g)

end GradedCategoriesGeneral18a99NoneCanonicalLaneLean
end HautevilleHouse
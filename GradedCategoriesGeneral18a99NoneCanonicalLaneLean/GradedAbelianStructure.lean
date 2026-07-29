import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99None.GradedCategoryDefinitions

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedAbelianCategory (C : GradedCategory) (G : Type u) [AddCommMonoid G] where
  zeroObject : C.objects
  zeroMorphisms : (X Y : C.objects) → C.morphisms X Y
  kernel : {X Y : C.objects} (f : C.morphisms X Y) → (K : C.objects) × (i : C.morphisms K X) & (C.composition i f = zeroMorphisms K Y)
  cokernel : {X Y : C.objects} (f : C.morphisms X Y) → (Q : C.objects) × (p : C.morphisms Y Q) & (C.composition f p = zeroMorphisms X Q)
  abelianAxioms : Prop

structure GradedAbelianFunctor (C D : GradedCategory) (G : Type u) [AddCommMonoid G] (F : GradedFunctor C D G) where
  preservesZero : (X Y : C.objects) → F.mapHom 0 (C.zeroMorphisms X Y) = D.zeroMorphisms (F.mapObj X) (F.mapObj Y)
  preservesKernel : {X Y : C.objects} (f : C.morphisms X Y) → ...
  preservesCokernel : {X Y : C.objects} (f : C.morphisms X Y) → ...

end GradedCategoriesGeneral18a99None
end HautevilleHouse

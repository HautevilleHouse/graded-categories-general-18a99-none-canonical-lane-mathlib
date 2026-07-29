import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99NoneCanonicalLaneLean

structure AdmissibleCategory where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ {a b c : objects}, morphisms b c → morphisms a b → morphisms a c
  identities : ∀ (a : objects), morphisms a a
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure AdmissibleFunctor (C D : AdmissibleCategory) where
  objMap : C.objects → D.objects
  morMap : ∀ {a b : C.objects}, C.morphisms a b → D.morphisms (objMap a) (objMap b)
  respectsComposition : Prop
  respectsIdentities : Prop

structure AdmissibleGradedCategory where
  baseCategory : AdmissibleCategory
  gradedObjects : ℕ → baseCategory.objects
  gradedMorphisms : ∀ (n : ℕ), ∀ (a b : ℕ), baseCategory.morphisms (gradedObjects a) (gradedObjects b)
  gradingConsistency : Prop

end GradedCategoriesGeneral18a99NoneCanonicalLaneLean
end HautevilleHouse

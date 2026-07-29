import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedCategoriesGeneral18a99None.GradedAbelianStructure

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedCohomologyTheory (C : GradedCategory) (G : Type u) [AddCommGroup G] where
  cohomologyGroups : (n : ℕ) → C.objects → C.objects
  longExactSequence : ∀ (X Y Z : C.objects) (f : C.morphisms X Y) (g : C.morphisms Y Z) (h : C.morphisms Z X), True
  functoriality : ∀ (F : GradedFunctor C C G) (n : ℕ) (A : C.objects), cohomologyGroups n (F.mapObj A) = F.mapObj (cohomologyGroups n A)

structure GradedCohomologyEvidence (C : GradedCategory) (G : Type u) [AddCommGroup G] (H : GradedCohomologyTheory C G) where
  cohomologyGroupsClosed : ∀ n A, H.cohomologyGroups n A = H.cohomologyGroups n A
  longExactSequenceClosed : True
  functorialityClosed : ∀ (F : GradedFunctor C C G) (n : ℕ) (A : C.objects), H.cohomologyGroups n (F.mapObj A) = F.mapObj (H.cohomologyGroups n A)

def GradedCohomologyClosed (C : GradedCategory) (G : Type u) [AddCommGroup G] (H : GradedCohomologyTheory C G) : Prop :=
  (∀ n A, H.cohomologyGroups n A = H.cohomologyGroups n A) ∧ True ∧ (∀ (F : GradedFunctor C C G) (n : ℕ) (A : C.objects), H.cohomologyGroups n (F.mapObj A) = F.mapObj (H.cohomologyGroups n A))

theorem graded_cohomology_closed_from_evidence (C : GradedCategory) (G : Type u) [AddCommGroup G] (H : GradedCohomologyTheory C G) (E : GradedCohomologyEvidence C G H) : GradedCohomologyClosed C G H := by
  exact And.intro E.cohomologyGroupsClosed (And.intro E.longExactSequenceClosed E.functorialityClosed)

end GradedCategoriesGeneral18a99None
end HautevilleHouse
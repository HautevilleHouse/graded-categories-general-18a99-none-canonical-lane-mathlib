import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure GradedCategoryAdmittedObject where
  category : GradedCategory
  gradingGroup : Type u
  [addCommGroup : AddCommGroup gradingGroup]
  cohomologyTheory : GradedCohomologyTheory category gradingGroup
  conclusion : GradedCohomologyClosed category gradingGroup cohomologyTheory

end GradedCategoriesGeneral18a99None
end HautevilleHouse
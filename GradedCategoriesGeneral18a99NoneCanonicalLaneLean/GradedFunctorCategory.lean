import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99NoneCanonicalLaneLean

structure GradedFunctorCategory where
  sourceCategory : AdmissibleGradedCategory
  targetCategory : AdmissibleCategory
  functors : Type
  naturalTransformations : Type
  verticalComposition : Prop
  horizontalComposition : Prop
  functorCategoryWellDefined : Prop

end GradedCategoriesGeneral18a99NoneCanonicalLaneLean
end HautevilleHouse

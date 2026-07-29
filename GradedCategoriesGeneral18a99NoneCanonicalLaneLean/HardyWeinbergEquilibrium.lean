import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure HardyWeinbergPackage where
  locusParameters : Prop
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : Prop
  chiSquareTest : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  locusParametersClosed : H.locusParameters
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  equilibriumConditionClosed : H.equilibriumCondition
  chiSquareTestClosed : H.chiSquareTest

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.locusParameters ∧ H.alleleFrequencies ∧ H.genotypeFrequencies ∧ H.equilibriumCondition ∧ H.chiSquareTest

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.locusParametersClosed
    (And.intro E.alleleFrequenciesClosed
      (And.intro E.genotypeFrequenciesClosed
        (And.intro E.equilibriumConditionClosed E.chiSquareTestClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
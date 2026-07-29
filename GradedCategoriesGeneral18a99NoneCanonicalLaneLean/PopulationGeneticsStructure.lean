import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure PopulationStructurePackage where
  alleleFrequencies : Prop
  fStatistics : Prop
  migrationRates : Prop
  effectivePopulationSize : Prop
  coalescentTime : Prop

structure PopulationStructureEvidence (P : PopulationStructurePackage) where
  alleleFrequenciesClosed : P.alleleFrequencies
  fStatisticsClosed : P.fStatistics
  migrationRatesClosed : P.migrationRates
  effectivePopulationSizeClosed : P.effectivePopulationSize
  coalescentTimeClosed : P.coalescentTime

def PopulationStructureClosed (P : PopulationStructurePackage) : Prop :=
  P.alleleFrequencies ∧ P.fStatistics ∧ P.migrationRates ∧ P.effectivePopulationSize ∧ P.coalescentTime

theorem population_structure_closed_from_evidence (P : PopulationStructurePackage) (E : PopulationStructureEvidence P) : PopulationStructureClosed P := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.fStatisticsClosed
      (And.intro E.migrationRatesClosed
        (And.intro E.effectivePopulationSizeClosed E.coalescentTimeClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
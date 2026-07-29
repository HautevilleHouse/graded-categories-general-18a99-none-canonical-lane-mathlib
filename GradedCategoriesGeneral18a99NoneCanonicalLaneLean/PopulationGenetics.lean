import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure PopulationGeneticsPackage where
  alleleFrequencies : Prop
  fixationIndex : Prop
  migrationRate : Prop
  effectivePopulationSize : Prop
  selectionCoefficient : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  alleleFrequenciesClosed : P.alleleFrequencies
  fixationIndexClosed : P.fixationIndex
  migrationRateClosed : P.migrationRate
  effectivePopulationSizeClosed : P.effectivePopulationSize
  selectionCoefficientClosed : P.selectionCoefficient

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.alleleFrequencies ∧ P.fixationIndex ∧ P.migrationRate ∧ P.effectivePopulationSize ∧ P.selectionCoefficient

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.fixationIndexClosed
      (And.intro E.migrationRateClosed (And.intro E.effectivePopulationSizeClosed E.selectionCoefficientClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
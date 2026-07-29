import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScoreComputed : Prop
  geneticMapDistance : Prop
  linkagePhase : Prop
  markerOrder : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreComputedClosed : L.lodScoreComputed
  geneticMapDistanceClosed : L.geneticMapDistance
  linkagePhaseClosed : L.linkagePhase
  markerOrderClosed : L.markerOrder

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScoreComputed ∧ L.geneticMapDistance ∧ L.linkagePhase ∧ L.markerOrder

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.lodScoreComputedClosed
      (And.intro E.geneticMapDistanceClosed
        (And.intro E.linkagePhaseClosed E.markerOrderClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
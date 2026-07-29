import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure PhylogeneticTreePackage where
  molecularClock : Prop
  distanceMatrix : Prop
  treeBuildingMethod : Prop
  bootstrapSupport : Prop
  consensusTree : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  molecularClockClosed : P.molecularClock
  distanceMatrixClosed : P.distanceMatrix
  treeBuildingMethodClosed : P.treeBuildingMethod
  bootstrapSupportClosed : P.bootstrapSupport
  consensusTreeClosed : P.consensusTree

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.molecularClock ∧ P.distanceMatrix ∧ P.treeBuildingMethod ∧ P.bootstrapSupport ∧ P.consensusTree

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.molecularClockClosed
    (And.intro E.distanceMatrixClosed
      (And.intro E.treeBuildingMethodClosed
        (And.intro E.bootstrapSupportClosed E.consensusTreeClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
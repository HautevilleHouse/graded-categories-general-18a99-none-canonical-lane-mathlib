import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure PhylogeneticTree where
  leaves : Nat
  topology : Prop
  branchLengths : Prop
  substitutionModel : Prop

structure PhylogeneticPackage where
  tree : PhylogeneticTree
  likelihood : Prop
  bootstrapSupport : Prop

structure PhylogeneticEvidence (P : PhylogeneticPackage) where
  treeTopologyClosed : P.tree.topology
  branchLengthsClosed : P.tree.branchLengths
  substitutionModelClosed : P.tree.substitutionModel
  likelihoodClosed : P.likelihood
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticClosed (P : PhylogeneticPackage) : Prop :=
  P.tree.topology ∧ P.tree.branchLengths ∧ P.tree.substitutionModel ∧ P.likelihood ∧ P.bootstrapSupport

theorem phylogenetic_closed_from_evidence (P : PhylogeneticPackage) (E : PhylogeneticEvidence P) :
    PhylogeneticClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.substitutionModelClosed (And.intro E.likelihoodClosed E.bootstrapSupportClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
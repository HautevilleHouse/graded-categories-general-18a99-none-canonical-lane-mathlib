import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedCategoriesGeneral18a99None

structure SequenceAlignmentPackage where
  scoringMatrix : Prop
  gapPenalty : Prop
  alignmentAlgorithm : Prop
  optimalAlignment : Prop
  alignmentScore : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringMatrixClosed : S.scoringMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentAlgorithmClosed : S.alignmentAlgorithm
  optimalAlignmentClosed : S.optimalAlignment
  alignmentScoreClosed : S.alignmentScore

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringMatrix ∧ S.gapPenalty ∧ S.alignmentAlgorithm ∧ S.optimalAlignment ∧ S.alignmentScore

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.scoringMatrixClosed
    (And.intro E.gapPenaltyClosed
      (And.intro E.alignmentAlgorithmClosed
        (And.intro E.optimalAlignmentClosed E.alignmentScoreClosed)))

end GradedCategoriesGeneral18a99None
end HautevilleHouse
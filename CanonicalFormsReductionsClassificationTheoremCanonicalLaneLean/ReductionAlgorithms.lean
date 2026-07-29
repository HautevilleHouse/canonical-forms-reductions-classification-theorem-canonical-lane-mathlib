import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure ReductionAlgorithm where
  inputSpace : Type
  outputForm : Type
  steps : List (inputSpace → inputSpace)
  terminates : Prop
  correct : Prop
  terminationProof : terminates
  correctnessProof : correct

structure ReductionEvidence (R : ReductionAlgorithm) where
  terminatesClosed : R.terminates
  correctClosed : R.correct

def ReductionAlgorithmClosed (R : ReductionAlgorithm) : Prop :=
  R.terminates ∧ R.correct

theorem reduction_algorithm_closed_from_evidence
    (R : ReductionAlgorithm) (E : ReductionEvidence R) : ReductionAlgorithmClosed R := by
  exact And.intro E.terminatesClosed E.correctClosed

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
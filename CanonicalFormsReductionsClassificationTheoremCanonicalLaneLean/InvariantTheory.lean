import canonicalLaneMathlib.AdmissibleClass

/-!
# Invariant Theory Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure InvariantTheoryPackage where
  invariantSet : Type u
  completeInvariant : Prop
  invariantComputation : Prop
  classificationBasis : Prop

structure InvariantTheoryEvidence (I : InvariantTheoryPackage) where
  completeInvariantClosed : I.completeInvariant
  invariantComputationClosed : I.invariantComputation
  classificationBasisClosed : I.classificationBasis

def InvariantTheoryClosed (I : InvariantTheoryPackage) : Prop :=
  I.completeInvariant ∧ I.invariantComputation ∧ I.classificationBasis

theorem invariant_theory_closed_from_evidence
    (I : InvariantTheoryPackage) (E : InvariantTheoryEvidence I) :
    InvariantTheoryClosed I := by
  exact And.intro E.completeInvariantClosed
    (And.intro E.invariantComputationClosed E.classificationBasisClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
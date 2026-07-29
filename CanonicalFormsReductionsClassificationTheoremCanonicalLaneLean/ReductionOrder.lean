import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure ReductionOrderPackage where
  termOrder : Type u
  admissibleOrder : Prop
  reductionSteps : Type v
  terminationProof : Prop
  confluenceProof : Prop

structure ReductionOrderEvidence (R : ReductionOrderPackage) where
  admissibleOrderClosed : R.admissibleOrder
  terminationProofClosed : R.terminationProof
  confluenceProofClosed : R.confluenceProof

def ReductionOrderClosed (R : ReductionOrderPackage) : Prop :=
  R.admissibleOrder ∧ R.terminationProof ∧ R.confluenceProof

theorem reduction_order_closed_from_evidence (R : ReductionOrderPackage) (E : ReductionOrderEvidence R) :
    ReductionOrderClosed R := by
  exact And.intro E.admissibleOrderClosed (And.intro E.terminationProofClosed E.confluenceProofClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

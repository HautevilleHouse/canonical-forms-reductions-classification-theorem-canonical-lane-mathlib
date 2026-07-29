import canonicalLaneMathlib.AdmissibleClass

/-!
# Canonical Form Reduction Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure CanonicalFormReductionPackage where
  matrix : Type u
  normalForm : Type v
  reductionAlgorithm : Prop
  uniquenessProof : Prop
  classificationResult : Prop

structure CanonicalFormReductionEvidence (C : CanonicalFormReductionPackage) where
  reductionAlgorithmClosed : C.reductionAlgorithm
  uniquenessProofClosed : C.uniquenessProof
  classificationResultClosed : C.classificationResult

def CanonicalFormReductionClosed (C : CanonicalFormReductionPackage) : Prop :=
  C.reductionAlgorithm ∧ C.uniquenessProof ∧ C.classificationResult

theorem canonical_form_reduction_closed_from_evidence
    (C : CanonicalFormReductionPackage) (E : CanonicalFormReductionEvidence C) :
    CanonicalFormReductionClosed C := by
  exact And.intro E.reductionAlgorithmClosed
    (And.intro E.uniquenessProofClosed E.classificationResultClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
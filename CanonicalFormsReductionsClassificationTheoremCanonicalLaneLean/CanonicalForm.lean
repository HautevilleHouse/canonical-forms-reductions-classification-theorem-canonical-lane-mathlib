import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure CanonicalFormPackage where
  field : Type u
  char : ℕ
  polynomialRing : Type v
  ideal : Type w
  reductionBasis : List (polynomialRing)
  normalFormAlgorithm : Prop
  uniquenessProof : Prop

structure CanonicalFormEvidence (C : CanonicalFormPackage) where
  normalFormAlgorithmClosed : C.normalFormAlgorithm
  uniquenessProofClosed : C.uniquenessProof

def CanonicalFormClosed (C : CanonicalFormPackage) : Prop :=
  C.normalFormAlgorithm ∧ C.uniquenessProof

theorem canonical_form_closed_from_evidence (C : CanonicalFormPackage) (E : CanonicalFormEvidence C) :
    CanonicalFormClosed C := by
  exact And.intro E.normalFormAlgorithmClosed E.uniquenessProofClosed

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

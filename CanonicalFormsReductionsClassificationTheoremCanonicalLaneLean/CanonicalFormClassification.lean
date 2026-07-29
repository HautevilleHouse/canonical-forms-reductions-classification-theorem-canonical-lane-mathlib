import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure CanonicalFormClass where
  formType : Type
  invariants : List Prop
  completeness : Prop
  disjointness : Prop
  completenessProof : completeness
  disjointnessProof : disjointness

structure ClassificationEvidence (C : CanonicalFormClass) where
  completenessClosed : C.completeness
  disjointnessClosed : C.disjointness

def ClassificationClosed (C : CanonicalFormClass) : Prop :=
  C.completeness ∧ C.disjointness

theorem classification_closed_from_evidence
    (C : CanonicalFormClass) (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.completenessClosed E.disjointnessClosed

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
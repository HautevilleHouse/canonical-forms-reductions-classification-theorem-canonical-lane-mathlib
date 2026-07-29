import canonicalLaneMathlib.AdmissibleClass

/-!
# Normal Forms Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure NormalFormsPackage where
  jordanForm : Type u
  rationalForm : Type v
  smithNormalForm : Type w
  canonicalDecomposition : Prop
  equivalenceTheorem : Prop

structure NormalFormsEvidence (N : NormalFormsPackage) where
  canonicalDecompositionClosed : N.canonicalDecomposition
  equivalenceTheoremClosed : N.equivalenceTheorem

def NormalFormsClosed (N : NormalFormsPackage) : Prop :=
  N.canonicalDecomposition ∧ N.equivalenceTheorem

theorem normal_forms_closed_from_evidence
    (N : NormalFormsPackage) (E : NormalFormsEvidence N) :
    NormalFormsClosed N := by
  exact And.intro E.canonicalDecompositionClosed E.equivalenceTheoremClosed

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
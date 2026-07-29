import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanDecompositionPackage where
  algebraicallyClosedField : Type u
  nilpotentPart : Type v
  semisimplePart : Type w
  jordanBlockDecomposition : Prop
  generalizedEigenspaces : Prop
  jordanBasis : Prop
  uniquenessTheorem : Prop

structure JordanDecompositionEvidence (J : JordanDecompositionPackage) where
  nilpotentPartClosed : J.nilpotentPart
  semisimplePartClosed : J.semisimplePart
  jordanBlockDecompositionClosed : J.jordanBlockDecomposition
  generalizedEigenspacesClosed : J.generalizedEigenspaces
  jordanBasisClosed : J.jordanBasis
  uniquenessTheoremClosed : J.uniquenessTheorem

def JordanDecompositionClosed (J : JordanDecompositionPackage) : Prop :=
  J.jordanBlockDecomposition ∧ J.generalizedEigenspaces ∧
  J.jordanBasis ∧ J.uniquenessTheorem

theorem jordan_decomposition_closed_from_evidence (J : JordanDecompositionPackage)
    (E : JordanDecompositionEvidence J) : JordanDecompositionClosed J := by
  exact And.intro E.jordanBlockDecompositionClosed
    (And.intro E.generalizedEigenspacesClosed
      (And.intro E.jordanBasisClosed E.uniquenessTheoremClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
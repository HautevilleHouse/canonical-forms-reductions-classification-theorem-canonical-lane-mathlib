import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure FrobeniusNormalFormPackage where
  vectorSpace : Type u
  linearEndomorphism : Type v
  companionMatrixBlock : Type w
  cyclicSubspaceDecomposition : Prop
  rationalCanonicalBasis : Prop
  invariantsList : Prop
  structureTheorem : Prop

structure FrobeniusNormalFormEvidence (F : FrobeniusNormalFormPackage) where
  cyclicSubspaceDecompositionClosed : F.cyclicSubspaceDecomposition
  rationalCanonicalBasisClosed : F.rationalCanonicalBasis
  invariantsListClosed : F.invariantsList
  structureTheoremClosed : F.structureTheorem

def FrobeniusNormalFormClosed (F : FrobeniusNormalFormPackage) : Prop :=
  F.cyclicSubspaceDecomposition ∧ F.rationalCanonicalBasis ∧
  F.invariantsList ∧ F.structureTheorem

theorem frobenius_normal_form_closed_from_evidence (F : FrobeniusNormalFormPackage)
    (E : FrobeniusNormalFormEvidence F) : FrobeniusNormalFormClosed F := by
  exact And.intro E.cyclicSubspaceDecompositionClosed
    (And.intro E.rationalCanonicalBasisClosed
      (And.intro E.invariantsListClosed E.structureTheoremClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
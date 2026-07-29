import CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.InvariantFactors

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanRationalDecompositionPackage (P : InvariantFactorsPackage) where
  jordanBlocks : List (Matrix ℂ ℂ)
  rationalBlocks : List (Matrix ℚ ℚ)
  jordanCanonicalFormExists : Prop
  rationalCanonicalFormExists : Prop
  jordanImpliesRational : Prop

structure JordanRationalDecompositionEvidence {P : InvariantFactorsPackage} (D : JordanRationalDecompositionPackage P) where
  jordanCanonicalFormExistsClosed : D.jordanCanonicalFormExists
  rationalCanonicalFormExistsClosed : D.rationalCanonicalFormExists
  jordanImpliesRationalClosed : D.jordanImpliesRational

def JordanRationalDecompositionClosed {P : InvariantFactorsPackage} (D : JordanRationalDecompositionPackage P) : Prop :=
  D.jordanCanonicalFormExists ∧ D.rationalCanonicalFormExists ∧ D.jordanImpliesRational

theorem jordan_rational_decomposition_closed_from_evidence {P : InvariantFactorsPackage} (D : JordanRationalDecompositionPackage P) (E : JordanRationalDecompositionEvidence D) : JordanRationalDecompositionClosed D :=
  And.intro E.jordanCanonicalFormExistsClosed (And.intro E.rationalCanonicalFormExistsClosed E.jordanImpliesRationalClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
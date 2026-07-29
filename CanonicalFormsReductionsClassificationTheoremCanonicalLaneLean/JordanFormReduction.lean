import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanFormReductionPackage where
  matrixType : Type u
  field : Type v
  charPoly : matrixType → Polynomial field
  minPoly : matrixType → Polynomial field
  jordanBlocks : matrixType → List (List (field))
  invariantFactors : matrixType → List (Polynomial field)
  charPolySplits : matrixType → Prop
  minPolySplits : matrixType → Prop
  jordanBlocksExist : matrixType → Prop
  invariantFactorsExist : matrixType → Prop

structure JordanFormReductionEvidence (J : JordanFormReductionPackage) where
  charPolySplitsClosed : ∀ m, J.charPolySplits m
  minPolySplitsClosed : ∀ m, J.minPolySplits m
  jordanBlocksExistClosed : ∀ m, J.jordanBlocksExist m
  invariantFactorsExistClosed : ∀ m, J.invariantFactorsExist m

def JordanFormReductionClosed (J : JordanFormReductionPackage) : Prop :=
  (∀ m, J.charPolySplits m) ∧ (∀ m, J.minPolySplits m) ∧
  (∀ m, J.jordanBlocksExist m) ∧ (∀ m, J.invariantFactorsExist m)

theorem jordan_form_reduction_closed_from_evidence
    (J : JordanFormReductionPackage) (E : JordanFormReductionEvidence J) :
    JordanFormReductionClosed J := by
  exact And.intro E.charPolySplitsClosed
    (And.intro E.minPolySplitsClosed
      (And.intro E.jordanBlocksExistClosed E.invariantFactorsExistClosed))

end HautevilleHouse
end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
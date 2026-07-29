import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure MatrixReductionsPackage where
  field : Type u
  matrixType : Type v
  rowEchelonForm : Prop
  reducedRowEchelonForm : Prop
  luDecomposition : Prop
  qrDecomposition : Prop

structure MatrixReductionsEvidence (M : MatrixReductionsPackage) where
  rowEchelonFormClosed : M.rowEchelonForm
  reducedRowEchelonFormClosed : M.reducedRowEchelonForm
  luDecompositionClosed : M.luDecomposition
  qrDecompositionClosed : M.qrDecomposition

def MatrixReductionsClosed (M : MatrixReductionsPackage) : Prop :=
  M.rowEchelonForm ∧ M.reducedRowEchelonForm ∧ M.luDecomposition ∧ M.qrDecomposition

theorem matrix_reductions_closed_from_evidence (M : MatrixReductionsPackage) (E : MatrixReductionsEvidence M) : MatrixReductionsClosed M := by
  exact And.intro E.rowEchelonFormClosed (And.intro E.reducedRowEchelonFormClosed (And.intro E.luDecompositionClosed E.qrDecompositionClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

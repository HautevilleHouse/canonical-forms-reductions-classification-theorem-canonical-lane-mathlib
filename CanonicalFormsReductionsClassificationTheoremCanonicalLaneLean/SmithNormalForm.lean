import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure SmithNormalFormPackage where
  matrix : Type u
  invariantFactors : List Nat
  diagonalForm : Prop
  uniquenessUpToUnits : Prop
  constructionValidity : Prop

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  diagonalFormClosed : S.diagonalForm
  uniquenessUpToUnitsClosed : S.uniquenessUpToUnits
  constructionValidityClosed : S.constructionValidity

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.diagonalForm ∧ S.uniquenessUpToUnits ∧ S.constructionValidity

theorem smith_normal_form_closed_from_evidence (S : SmithNormalFormPackage) (E : SmithNormalFormEvidence S) : SmithNormalFormClosed S := by
  exact And.intro E.diagonalFormClosed (And.intro E.uniquenessUpToUnitsClosed E.constructionValidityClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

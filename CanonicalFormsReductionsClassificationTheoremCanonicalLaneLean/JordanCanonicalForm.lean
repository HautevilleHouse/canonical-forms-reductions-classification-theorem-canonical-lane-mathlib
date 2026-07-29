import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanCanonicalFormPackage where
  matrix : Type u
  eigenvalues : List ℂ
  jordanBlocks : List (ℕ × ℂ)
  existenceValidity : Prop
  uniquenessUpToOrder : Prop
  minimalPolynomialRelation : Prop

structure JordanCanonicalFormEvidence (J : JordanCanonicalFormPackage) where
  existenceValidityClosed : J.existenceValidity
  uniquenessUpToOrderClosed : J.uniquenessUpToOrder
  minimalPolynomialRelationClosed : J.minimalPolynomialRelation

def JordanCanonicalFormClosed (J : JordanCanonicalFormPackage) : Prop :=
  J.existenceValidity ∧ J.uniquenessUpToOrder ∧ J.minimalPolynomialRelation

theorem jordan_canonical_form_closed_from_evidence (J : JordanCanonicalFormPackage) (E : JordanCanonicalFormEvidence J) : JordanCanonicalFormClosed J := by
  exact And.intro E.existenceValidityClosed (And.intro E.uniquenessUpToOrderClosed E.minimalPolynomialRelationClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

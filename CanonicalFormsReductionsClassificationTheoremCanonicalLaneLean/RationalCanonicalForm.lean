import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure RationalCanonicalFormPackage where
  matrix : Type u
  companionBlocks : List (Polynomial ℚ)
  existenceValidity : Prop
  uniquenessUpToOrder : Prop
  invariantFactorRelation : Prop

structure RationalCanonicalFormEvidence (R : RationalCanonicalFormPackage) where
  existenceValidityClosed : R.existenceValidity
  uniquenessUpToOrderClosed : R.uniquenessUpToOrder
  invariantFactorRelationClosed : R.invariantFactorRelation

def RationalCanonicalFormClosed (R : RationalCanonicalFormPackage) : Prop :=
  R.existenceValidity ∧ R.uniquenessUpToOrder ∧ R.invariantFactorRelation

theorem rational_canonical_form_closed_from_evidence (R : RationalCanonicalFormPackage) (E : RationalCanonicalFormEvidence R) : RationalCanonicalFormClosed R := by
  exact And.intro E.existenceValidityClosed (And.intro E.uniquenessUpToOrderClosed E.invariantFactorRelationClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

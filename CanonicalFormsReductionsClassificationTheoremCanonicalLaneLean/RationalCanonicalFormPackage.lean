import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure RationalCanonicalFormPackage where
  matrix : Type u
  field : Type v
  companionBlocksUnique : Prop
  rationalFormComputed : Prop
  invariantFactorDecomposition : Prop
  classificationComplete : Prop

structure RationalCanonicalFormEvidence (R : RationalCanonicalFormPackage) where
  companionBlocksUniqueClosed : R.companionBlocksUnique
  rationalFormComputedClosed : R.rationalFormComputed
  invariantFactorDecompositionClosed : R.invariantFactorDecomposition
  classificationCompleteClosed : R.classificationComplete

def RationalCanonicalFormClosed (R : RationalCanonicalFormPackage) : Prop :=
  R.companionBlocksUnique ∧ R.rationalFormComputed ∧
  R.invariantFactorDecomposition ∧ R.classificationComplete

theorem rational_canonical_form_closed_from_evidence (R : RationalCanonicalFormPackage)
    (E : RationalCanonicalFormEvidence R) : RationalCanonicalFormClosed R := by
  exact And.intro E.companionBlocksUniqueClosed
    (And.intro E.rationalFormComputedClosed
      (And.intro E.invariantFactorDecompositionClosed E.classificationCompleteClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
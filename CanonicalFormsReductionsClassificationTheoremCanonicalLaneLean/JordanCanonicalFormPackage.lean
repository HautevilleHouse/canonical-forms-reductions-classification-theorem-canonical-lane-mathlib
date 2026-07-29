import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanCanonicalFormPackage where
  matrix : Type u
  field : Type v
  characteristicPolynomialSplit : Prop
  jordanBlocksUnique : Prop
  reductionAlgorithmExists : Prop
  classificationFinite : Prop

structure JordanCanonicalFormEvidence (J : JordanCanonicalFormPackage) where
  characteristicPolynomialSplitClosed : J.characteristicPolynomialSplit
  jordanBlocksUniqueClosed : J.jordanBlocksUnique
  reductionAlgorithmExistsClosed : J.reductionAlgorithmExists
  classificationFiniteClosed : J.classificationFinite

def JordanCanonicalFormClosed (J : JordanCanonicalFormPackage) : Prop :=
  J.characteristicPolynomialSplit ∧ J.jordanBlocksUnique ∧
  J.reductionAlgorithmExists ∧ J.classificationFinite

theorem jordan_canonical_form_closed_from_evidence (J : JordanCanonicalFormPackage)
    (E : JordanCanonicalFormEvidence J) : JordanCanonicalFormClosed J := by
  exact And.intro E.characteristicPolynomialSplitClosed
    (And.intro E.jordanBlocksUniqueClosed
      (And.intro E.reductionAlgorithmExistsClosed E.classificationFiniteClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
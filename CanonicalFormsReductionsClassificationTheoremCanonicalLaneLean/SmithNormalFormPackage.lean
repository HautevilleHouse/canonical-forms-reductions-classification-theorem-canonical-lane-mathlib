import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure SmithNormalFormPackage where
  module : Type u
  pid : Type v
  invariantFactorsUnique : Prop
  diagonalFormExists : Prop
  reductionToSmithNormal : Prop
  classificationUpToUnits : Prop

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  invariantFactorsUniqueClosed : S.invariantFactorsUnique
  diagonalFormExistsClosed : S.diagonalFormExists
  reductionToSmithNormalClosed : S.reductionToSmithNormal
  classificationUpToUnitsClosed : S.classificationUpToUnits

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.invariantFactorsUnique ∧ S.diagonalFormExists ∧
  S.reductionToSmithNormal ∧ S.classificationUpToUnits

theorem smith_normal_form_closed_from_evidence (S : SmithNormalFormPackage)
    (E : SmithNormalFormEvidence S) : SmithNormalFormClosed S := by
  exact And.intro E.invariantFactorsUniqueClosed
    (And.intro E.diagonalFormExistsClosed
      (And.intro E.reductionToSmithNormalClosed E.classificationUpToUnitsClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
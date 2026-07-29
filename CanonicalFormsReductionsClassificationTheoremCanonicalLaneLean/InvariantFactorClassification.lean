import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure InvariantFactorClassificationPackage where
  pidModule : Type u
  elementaryDivisors : Prop
  invariantFactorsList : Prop
  smithNormalForm : Prop
  structureTheoremFinitelyGenerated : Prop
  classificationTheorem : Prop

structure InvariantFactorClassificationEvidence (I : InvariantFactorClassificationPackage) where
  elementaryDivisorsClosed : I.elementaryDivisors
  invariantFactorsListClosed : I.invariantFactorsList
  smithNormalFormClosed : I.smithNormalForm
  structureTheoremFinitelyGeneratedClosed : I.structureTheoremFinitelyGenerated
  classificationTheoremClosed : I.classificationTheorem

def InvariantFactorClassificationClosed (I : InvariantFactorClassificationPackage) : Prop :=
  I.elementaryDivisors ∧ I.invariantFactorsList ∧
  I.smithNormalForm ∧ I.structureTheoremFinitelyGenerated ∧
  I.classificationTheorem

theorem invariant_factor_classification_closed_from_evidence
    (I : InvariantFactorClassificationPackage)
    (E : InvariantFactorClassificationEvidence I) : InvariantFactorClassificationClosed I := by
  exact And.intro E.elementaryDivisorsClosed
    (And.intro E.invariantFactorsListClosed
      (And.intro E.smithNormalFormClosed
        (And.intro E.structureTheoremFinitelyGeneratedClosed
          E.classificationTheoremClosed)))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
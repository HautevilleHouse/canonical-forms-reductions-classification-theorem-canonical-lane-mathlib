import CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure InvariantFactorsPackage where
  operator : CanonicalFormObject
  invariantFactors : List (Polynomial ℂ)
  invariantFactorsComplete : Prop
  invariantFactorsDistinct : Prop
  primaryDecomposition : Prop

structure InvariantFactorsEvidence (P : InvariantFactorsPackage) where
  invariantFactorsCompleteClosed : P.invariantFactorsComplete
  invariantFactorsDistinctClosed : P.invariantFactorsDistinct
  primaryDecompositionClosed : P.primaryDecomposition

def InvariantFactorsClosed (P : InvariantFactorsPackage) : Prop :=
  P.invariantFactorsComplete ∧ P.invariantFactorsDistinct ∧ P.primaryDecomposition

theorem invariant_factors_closed_from_evidence (P : InvariantFactorsPackage) (E : InvariantFactorsEvidence P) : InvariantFactorsClosed P :=
  And.intro E.invariantFactorsCompleteClosed (And.intro E.invariantFactorsDistinctClosed E.primaryDecompositionClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
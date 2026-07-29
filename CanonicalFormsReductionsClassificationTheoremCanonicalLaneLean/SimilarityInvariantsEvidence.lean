import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure SimilarityInvariantPackage where
  characteristicPolynomial : Prop
  minimalPolynomial : Prop
  invariantFactors : Prop
  smithNormalForm : Prop
  nullitySequence : Prop

structure SimilarityInvariantEvidence (P : SimilarityInvariantPackage) where
  characteristicPolynomialClosed : P.characteristicPolynomial
  minimalPolynomialClosed : P.minimalPolynomial
  invariantFactorsClosed : P.invariantFactors
  smithNormalFormClosed : P.smithNormalForm
  nullitySequenceClosed : P.nullitySequence

def SimilarityInvariantClosed (P : SimilarityInvariantPackage) : Prop :=
  P.characteristicPolynomial ∧ P.minimalPolynomial ∧
  P.invariantFactors ∧ P.smithNormalForm ∧ P.nullitySequence

theorem similarity_invariant_closed_from_evidence (P : SimilarityInvariantPackage)
    (E : SimilarityInvariantEvidence P) : SimilarityInvariantClosed P := by
  exact And.intro E.characteristicPolynomialClosed
    (And.intro E.minimalPolynomialClosed
      (And.intro E.invariantFactorsClosed
        (And.intro E.smithNormalFormClosed E.nullitySequenceClosed)))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
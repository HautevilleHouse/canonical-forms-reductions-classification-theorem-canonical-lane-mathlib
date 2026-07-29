import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure SimilarityPackage where
  underlyingField : Type u
  vectorSpace : Type v
  linearMap : Type w
  similarityRelation : Prop
  invariantPolynomials : Prop
  characteristicPolynomialDefined : Prop
  minimalPolynomialDefined : Prop

structure SimilarityEvidence (S : SimilarityPackage) where
  similarityRelationClosed : S.similarityRelation
  invariantPolynomialsClosed : S.invariantPolynomials
  characteristicPolynomialDefinedClosed : S.characteristicPolynomialDefined
  minimalPolynomialDefinedClosed : S.minimalPolynomialDefined

def SimilarityClosed (S : SimilarityPackage) : Prop :=
  S.similarityRelation ∧ S.invariantPolynomials ∧
  S.characteristicPolynomialDefined ∧ S.minimalPolynomialDefined

theorem similarity_closed_from_evidence (S : SimilarityPackage) (E : SimilarityEvidence S) :
    SimilarityClosed S := by
  exact And.intro E.similarityRelationClosed
    (And.intro E.invariantPolynomialsClosed
      (And.intro E.characteristicPolynomialDefinedClosed
        E.minimalPolynomialDefinedClosed))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
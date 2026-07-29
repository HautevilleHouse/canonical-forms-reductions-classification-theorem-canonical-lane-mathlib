import CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.InvariantFactors

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure ClassificationEndpointPackage {S : SimilarityPackage}
    {I : InvariantFactorsPackage S} where
  targetField : Type u
  matrixSimilarityClass : Type v
  canonicalFormReachable : Prop
  classificationComplete : Prop
  endpointMatchesStatement : Prop

structure ClassificationEndpointEvidence {S : SimilarityPackage}
    {I : InvariantFactorsPackage S} (C : ClassificationEndpointPackage S I) where
  canonicalFormReachableClosed : C.canonicalFormReachable
  classificationCompleteClosed : C.classificationComplete
  endpointMatchesStatementClosed : C.endpointMatchesStatement

def ClassificationEndpointClosed {S : SimilarityPackage}
    {I : InvariantFactorsPackage S} (C : ClassificationEndpointPackage S I) : Prop :=
  C.canonicalFormReachable ∧ C.classificationComplete ∧ C.endpointMatchesStatement

theorem classification_endpoint_closed_from_evidence {S : SimilarityPackage}
    {I : InvariantFactorsPackage S} (C : ClassificationEndpointPackage S I)
    (E : ClassificationEndpointEvidence C) : ClassificationEndpointClosed C := by
  exact And.intro E.canonicalFormReachableClosed
    (And.intro E.classificationCompleteClosed E.endpointMatchesStatementClosed)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
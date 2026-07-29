import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure FormReductionPackage where
  eigenvalueBlockDecomposition : Prop
  jordanChainStructure : Prop
  rationalCanonicalForm : Prop
  weyrCanonicalForm : Prop
  classificationComplete : Prop

structure FormReductionEvidence (P : FormReductionPackage) where
  eigenvalueBlockDecompositionClosed : P.eigenvalueBlockDecomposition
  jordanChainStructureClosed : P.jordanChainStructure
  rationalCanonicalFormClosed : P.rationalCanonicalForm
  weyrCanonicalFormClosed : P.weyrCanonicalForm
  classificationCompleteClosed : P.classificationComplete

def FormReductionClosed (P : FormReductionPackage) : Prop :=
  P.eigenvalueBlockDecomposition ∧ P.jordanChainStructure ∧
  P.rationalCanonicalForm ∧ P.weyrCanonicalForm ∧ P.classificationComplete

theorem form_reduction_closed_from_evidence (P : FormReductionPackage)
    (E : FormReductionEvidence P) : FormReductionClosed P := by
  exact And.intro E.eigenvalueBlockDecompositionClosed
    (And.intro E.jordanChainStructureClosed
      (And.intro E.rationalCanonicalFormClosed
        (And.intro E.weyrCanonicalFormClosed E.classificationCompleteClosed)))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
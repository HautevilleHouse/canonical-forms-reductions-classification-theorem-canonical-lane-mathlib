import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure WeyrCanonicalFormPackage where
  squareMatrix : Type u
  weyrChains : Prop
  weyrBasis : Prop
  weyrBlocks : Prop
  weyrCharacterization : Prop
  uniquenessTheorem : Prop

structure WeyrCanonicalFormEvidence (W : WeyrCanonicalFormPackage) where
  weyrChainsClosed : W.weyrChains
  weyrBasisClosed : W.weyrBasis
  weyrBlocksClosed : W.weyrBlocks
  weyrCharacterizationClosed : W.weyrCharacterization
  uniquenessTheoremClosed : W.uniquenessTheorem

def WeyrCanonicalFormClosed (W : WeyrCanonicalFormPackage) : Prop :=
  W.weyrChains ∧ W.weyrBasis ∧ W.weyrBlocks ∧
  W.weyrCharacterization ∧ W.uniquenessTheorem

theorem weyr_canonical_form_closed_from_evidence (W : WeyrCanonicalFormPackage)
    (E : WeyrCanonicalFormEvidence W) : WeyrCanonicalFormClosed W := by
  exact And.intro E.weyrChainsClosed
    (And.intro E.weyrBasisClosed
      (And.intro E.weyrBlocksClosed
        (And.intro E.weyrCharacterizationClosed E.uniquenessTheoremClosed)))

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
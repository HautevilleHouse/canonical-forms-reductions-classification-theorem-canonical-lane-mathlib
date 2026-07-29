import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanCanonicalFormPackage where
  field : Type u
  matrix : Type v
  characteristicPolynomialSplits : Prop
  jordanBlocksClassified : Prop
  minimalPolynomialDetermines : Prop

structure RationalCanonicalFormPackage where
  field : Type u
  matrix : Type v
  invariantFactors : Prop
  companionBlocks : Prop
  primaryDecomposition : Prop

structure SmithNormalFormPackage where
  ring : Type u
  module : Type v
  diagonalForm : Prop
  invariantFactors : Prop

structure CanonicalFormAdmissibleObject where
  jordan : JordanCanonicalFormPackage
  rational : RationalCanonicalFormPackage
  smith : SmithNormalFormPackage

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
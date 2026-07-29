import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure CanonicalFormSpace where
  carrier : Type u
  field : Type v
  [fieldField : Field field]
  [addCommGroup : AddCommGroup carrier]
  [module : Module field carrier]
  finiteDimensional : FiniteDimensional field carrier
  operator : carrier →ₗ[field] carrier

structure CanonicalFormObject where
  space : CanonicalFormSpace
  invariantFactors : Prop
  minimalPolynomial : Prop
  characteristicPolynomial : Prop
  canonicalFormAchieved : Prop
  conclusion : canonicalFormAchieved

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

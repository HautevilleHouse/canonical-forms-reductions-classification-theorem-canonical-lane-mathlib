import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure CanonicalFormSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CanonicalFormObject where
  space : CanonicalFormSpace
  finiteDimensionalVectorSpace : Prop
  linearOperator : Prop
  jordanCanonicalForm : Prop
  rationalCanonicalForm : Prop
  conclusion : jordanCanonicalForm ∧ rationalCanonicalForm

def CanonicalFormWitnessClosed (O : CanonicalFormObject) : Prop :=
  O.jordanCanonicalForm ∧ O.rationalCanonicalForm

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
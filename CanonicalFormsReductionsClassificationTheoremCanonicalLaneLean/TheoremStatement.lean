import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure CanonicalFormsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CanonicalFormsAdmittedObject where
  space : CanonicalFormsSpace
  canonicalFormExists : Prop
  reductionClassified : Prop
  canonicalFormType : Type
  canonicalFormTopology : TopologicalSpace canonicalFormType
  isomorphicToCanonical : Prop
  conclusion : isomorphicToCanonical

structure CanonicalFormsEndgameState where
  object : CanonicalFormsAdmittedObject

def CanonicalFormsWitnessClosed (O : CanonicalFormsAdmittedObject) : Prop :=
  O.isomorphicToCanonical

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

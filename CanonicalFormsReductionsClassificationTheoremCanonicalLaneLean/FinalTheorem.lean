import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

def ConstrainedCanonicalFormClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canonical_form_endgame (A : AdmissibleClass) :
    ConstrainedCanonicalFormClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

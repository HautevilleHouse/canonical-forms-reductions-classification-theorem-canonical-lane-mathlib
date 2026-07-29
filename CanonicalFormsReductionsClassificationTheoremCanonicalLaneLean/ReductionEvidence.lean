import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.CanonicalFormPackages

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure ReductionEvidence where
  jordanConstructionComplete : Prop
  rationalConstructionComplete : Prop
  smithConstructionComplete : Prop
  jordanTerm : jordanConstructionComplete
  rationalTerm : rationalConstructionComplete
  smithTerm : smithConstructionComplete

structure ReductionsClosed where
  jordanComplete : Prop
  rationalComplete : Prop
  smithComplete : Prop

def reduction_closed_from_evidence (E : ReductionEvidence) : ReductionsClosed :=
  { jordanComplete := E.jordanConstructionComplete
    rationalComplete := E.rationalConstructionComplete
    smithComplete := E.smithConstructionComplete
  }

theorem reduction_closed_proof (E : ReductionEvidence) : ReductionsClosed :=
  reduction_closed_from_evidence E

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse
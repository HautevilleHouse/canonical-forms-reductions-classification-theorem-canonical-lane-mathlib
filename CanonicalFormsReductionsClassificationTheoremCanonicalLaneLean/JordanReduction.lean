import HautevilleHouse.CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean.InvariantFactors

/-!
# Jordan Reduction Package
-/

namespace HautevilleHouse
namespace CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean

structure JordanReductionPackage where
  nilpotentPart : Prop
  semisimplePart : Prop
  jordanBlocks : List (List (CanonicalFormSpace.field _))
  jordanFormAchieved : Prop
  reductionComplete : nilpotentPart ∧ semisimplePart ∧ jordanFormAchieved

structure JordanReductionEvidence (J : JordanReductionPackage) where
  nilpotent : J.nilpotentPart
  semisimple : J.semisimplePart
  jordan : J.jordanFormAchieved
  evidence : nilpotent ∧ semisimple ∧ jordan

def JordanReductionClosed (J : JordanReductionPackage) : Prop :=
  J.nilpotentPart ∧ J.semisimplePart ∧ J.jordanFormAchieved

theorem jordan_reduction_closed_from_evidence (J : JordanReductionPackage) (E : JordanReductionEvidence J) : JordanReductionClosed J :=
  And.intro E.nilpotent (And.intro E.semisimple E.jordan)

end CanonicalFormsReductionsClassificationTheoremCanonicalLaneLean
end HautevilleHouse

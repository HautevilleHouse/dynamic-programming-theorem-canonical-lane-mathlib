import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPStateSpace (S : Type u) where
  discrete : Prop
  finiteHorizon : Prop
  stateTransition : S -> S -> Prop
  rewardFunction : S -> ℝ

def DPStateSpaceClosed (S : Type u) (dps : DPStateSpace S) : Prop :=
  dps.discrete ∧ dps.finiteHorizon

end HautevilleHouse
end DynamicProgrammingTheoremCanonicalLaneLean

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure FiniteHorizonDPPackage where
  stateSpace : Type u
  actionSpace : Type v
  horizon : Nat
  rewardFunction : (stateSpace × actionSpace) → ℝ
  transitionFunction : stateSpace → actionSpace → stateSpace
  valueFunction : Nat → stateSpace → ℝ
  policyFunction : Nat → stateSpace → actionSpace
  bellmanOptimality : Prop
  backwardInduction : Prop

structure FiniteHorizonDPEvidence (P : FiniteHorizonDPPackage) where
  bellmanOptimalityClosed : P.bellmanOptimality
  backwardInductionClosed : P.backwardInduction

def FiniteHorizonDPClosed (P : FiniteHorizonDPPackage) : Prop :=
  P.bellmanOptimality ∧ P.backwardInduction

theorem finite_horizon_dp_closed_from_evidence (P : FiniteHorizonDPPackage) (E : FiniteHorizonDPEvidence P) :
    FiniteHorizonDPClosed P := by
  exact And.intro E.bellmanOptimalityClosed E.backwardInductionClosed

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse

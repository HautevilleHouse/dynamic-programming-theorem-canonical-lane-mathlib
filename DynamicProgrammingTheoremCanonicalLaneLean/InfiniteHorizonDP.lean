import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure InfiniteHorizonDPPackage where
  stateSpace : Type u
  actionSpace : Type v
  discountFactor : ℝ
  rewardFunction : (stateSpace × actionSpace) → ℝ
  transitionFunction : stateSpace → actionSpace → stateSpace
  valueFunction : stateSpace → ℝ
  policyFunction : stateSpace → actionSpace
  contractionProperty : Prop
  stationaryOptimality : Prop
  convergenceOfValueIteration : Prop

structure InfiniteHorizonDPEvidence (P : InfiniteHorizonDPPackage) where
  contractionPropertyClosed : P.contractionProperty
  stationaryOptimalityClosed : P.stationaryOptimality
  convergenceOfValueIterationClosed : P.convergenceOfValueIteration

def InfiniteHorizonDPClosed (P : InfiniteHorizonDPPackage) : Prop :=
  P.contractionProperty ∧ P.stationaryOptimality ∧ P.convergenceOfValueIteration

theorem infinite_horizon_dp_closed_from_evidence (P : InfiniteHorizonDPPackage) (E : InfiniteHorizonDPEvidence P) :
    InfiniteHorizonDPClosed P := by
  exact And.intro E.contractionPropertyClosed
    (And.intro E.stationaryOptimalityClosed E.convergenceOfValueIterationClosed)

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse

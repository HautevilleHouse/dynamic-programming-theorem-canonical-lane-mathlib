import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure StateSpacePackage where
  stateType : Type u
  actionType : Type v
  transitionFunction : stateType → actionType → stateType
  rewardFunction : stateType → actionType → ℝ
  discountFactor : ℝ
  transitionFunctionDefined : Prop
  rewardFunctionDefined : Prop
  discountFactorInRange : discountFactor ≥ 0 ∧ discountFactor ≤ 1

def StateSpaceClosed (S : StateSpacePackage) : Prop :=
  S.transitionFunctionDefined ∧ S.rewardFunctionDefined ∧ S.discountFactorInRange

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
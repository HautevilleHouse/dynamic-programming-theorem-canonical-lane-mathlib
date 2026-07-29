import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.DPRecurrence

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPOptimalPrinciple (S : DPStateSpace) (R : DPRecurrence S) where
  optimalSubstructure : ∀ x y : S.stateType, S.transitionFunction x y →
    R.valueFunction x ≤ R.valueFunction y + 1

structure DPOptimalPrincipleEvidence (S : DPStateSpace) (R : DPRecurrence S) (O : DPOptimalPrinciple S R) where
  optimalSubstructureClosed : O.optimalSubstructure

theorem optimal_principle_from_optimality (S : DPStateSpace) (R : DPRecurrence S) (x : S.stateType) 
    (h : ∀ y, S.transitionFunction x y → R.valueFunction x ≤ R.valueFunction y + 1) :
    DPOptimalPrinciple S R := by
  refine { optimalSubstructure := h }

theorem optimal_value_induction (S : DPStateSpace) (R : DPRecurrence S) (O : DPOptimalPrinciple S R) 
    (x : S.stateType) : R.valueFunction x = min { y | S.transitionFunction x y } (λ y => R.valueFunction y + 1) := by
  sorry

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
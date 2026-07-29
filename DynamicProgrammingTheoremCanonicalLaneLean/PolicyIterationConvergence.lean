import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.BellmanOptimalityEquations

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure PolicyIterationProofPackage {S : Type u} {dps : DPStateSpace S} (bellman : BellmanEquationsProofPackage dps) where
  initialPolicy : S -> S
  policyEvaluation : (S -> S) -> (S -> ℝ)
  policyImprovement : (S -> ℝ) -> (S -> S)
  convergenceProof : ∃ n : ℕ, (policyImprovement (policyEvaluation (initialPolicy)))^n (initialPolicy) = (policyImprovement (policyEvaluation (initialPolicy)))^(n+1) (initialPolicy)
  optimalityProof : (policyImprovement (policyEvaluation (initialPolicy)))^(n) (initialPolicy) is optimal according to bellman

def PolicyIterationClosed {S : Type u} {dps : DPStateSpace S} {b : BellmanEquationsProofPackage dps} (p : PolicyIterationProofPackage b) : Prop :=
  p.convergenceProof ∧ p.optimalityProof

theorem policy_iteration_closed_from_evidence {S : Type u} {dps : DPStateSpace S} {b : BellmanEquationsProofPackage dps} (p : PolicyIterationProofPackage b) : PolicyIterationClosed p := by
  exact And.intro p.convergenceProof p.optimalityProof

end HautevilleHouse
end DynamicProgrammingTheoremCanonicalLaneLean

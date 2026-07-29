import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.BellmanOptimalityEquations

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure ValueIterationProofPackage {S : Type u} {dps : DPStateSpace S} (bellman : BellmanEquationsProofPackage dps) where
  initialValueFunction : S -> ℝ
  valueIterationStep : (S -> ℝ) -> (S -> ℝ)
  contractionFactor : ℝ
  contractionFactorPos : contractionFactor > 0
  contractionFactorLessOne : contractionFactor < 1
  contractionProof : ∀ v w : S -> ℝ, sup_{s : S} |(valueIterationStep v s) - (valueIterationStep w s)| ≤ contractionFactor * sup_{s : S} |v s - w s|
  convergenceProof : ∃ v* : S -> ℝ, valueIterationStep v* = v* ∧ ∀ v0 : S -> ℝ, lim_{k→∞} (valueIterationStep)^k v0 = v*

def ValueIterationClosed {S : Type u} {dps : DPStateSpace S} {b : BellmanEquationsProofPackage dps} (v : ValueIterationProofPackage b) : Prop :=
  v.convergenceProof

theorem value_iteration_closed_from_evidence {S : Type u} {dps : DPStateSpace S} {b : BellmanEquationsProofPackage dps} (v : ValueIterationProofPackage b) : ValueIterationClosed v := by
  exact v.convergenceProof

end HautevilleHouse
end DynamicProgrammingTheoremCanonicalLaneLean

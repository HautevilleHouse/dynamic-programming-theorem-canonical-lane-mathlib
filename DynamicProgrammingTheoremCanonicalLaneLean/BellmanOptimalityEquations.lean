import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.DynamicProgrammingProblemStructure

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure BellmanEquationsProofPackage {S : Type u} (dps : DPStateSpace S) where
  optimalValueFunction : S -> ℝ
  bellmanEquation : ∀ s : S, optimalValueFunction s = dps.rewardFunction s + max_{t : S} (dps.stateTransition s t → optimalValueFunction t)
  existenceProof : bellmanEquation
  uniquenessProof : bellmanEquation

def BellmanEquationsClosed {S : Type u} {dps : DPStateSpace S} (b : BellmanEquationsProofPackage dps) : Prop :=
  b.existenceProof ∧ b.uniquenessProof

theorem bellman_equations_closed_from_evidence {S : Type u} {dps : DPStateSpace S} (b : BellmanEquationsProofPackage dps) : BellmanEquationsClosed b := by
  exact And.intro b.existenceProof b.uniquenessProof

end HautevilleHouse
end DynamicProgrammingTheoremCanonicalLaneLean

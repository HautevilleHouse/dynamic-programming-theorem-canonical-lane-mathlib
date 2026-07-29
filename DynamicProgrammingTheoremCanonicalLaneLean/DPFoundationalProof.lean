import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.DPOptimalPrinciple

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∃ (S : DPStateSpace) (R : DPRecurrence S) (O : DPOptimalPrinciple S R), True) ∧
  (∀ (S : DPStateSpace) (R : DPRecurrence S) (O : DPOptimalPrinciple S R), 
    DPStateSpaceClosed S ∧ DPOptimalPrincipleClosed O)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro ?_ ?_
  · refine ⟨?_, ?_, ?_, trivial⟩
    sorry
  · intro S R O
    exact And.intro (dp_state_space_closed_from_evidence S ?_) (by
      sorry)

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
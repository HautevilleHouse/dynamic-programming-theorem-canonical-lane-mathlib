import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPState where
  value : ℕ
  decision : ℕ

def dpOptimalityCondition (s : DPState) : Prop :=
  s.value ≥ 0 ∧ s.decision ≥ 0

structure AdmissibleClass where
  state : DPState
  optimalitySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : optimalitySatisfied ∨ remainderRecorded
  stateCondition : dpOptimalityCondition state

def admittedClosure (A : AdmissibleClass) : Prop :=
  DPWitnessClosed A.state ∧ (A.optimalitySatisfied ∨ A.remainderRecorded)

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
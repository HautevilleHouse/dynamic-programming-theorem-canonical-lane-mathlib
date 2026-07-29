import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPStateSpace where
  stateType : Type u
  stageType : Type v
  feasibleStateSet : stateType -> Prop
  transitionFunction : stateType -> stateType -> Prop
  initialStates : stateType -> Prop
  terminalStates : stateType -> Prop
  deterministic : Prop

def DPStateSpaceClosed (S : DPStateSpace) : Prop :=
  (∃ x : S.stateType, S.initialStates x) ∧
  (∀ x : S.stateType, S.terminalStates x → ¬∃ y : S.stateType, S.transitionFunction x y)

structure DPStateSpaceEvidence (S : DPStateSpace) where
  nonemptyInitial : ∃ x : S.stateType, S.initialStates x
  terminalNoTransition : ∀ x : S.stateType, S.terminalStates x → ¬∃ y : S.stateType, S.transitionFunction x y
  deterministic_Holds : S.deterministic

theorem dp_state_space_closed_from_evidence (S : DPStateSpace) (E : DPStateSpaceEvidence S) : DPStateSpaceClosed S := by
  exact And.intro E.nonemptyInitial E.terminalNoTransition

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
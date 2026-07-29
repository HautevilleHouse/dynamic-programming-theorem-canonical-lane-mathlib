import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.DPStateSpace

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPRecurrence (S : DPStateSpace) where
  valueFunction : S.stateType -> ℝ
  optimalPolicy : S.stateType -> S.stateType
  bellmanEquation : ∀ x : S.stateType, (S.terminalStates x) → valueFunction x = 0
  recurrenceRelation : ∀ x : S.stateType, ¬S.terminalStates x →
    valueFunction x = valueFunction (optimalPolicy x) + 1

dp_recurrence_nonterminal_rule (S : DPStateSpace) (R : DPRecurrence S) (x : S.stateType) (h : ¬S.terminalStates x) : 
    R.valueFunction x = R.valueFunction (R.optimalPolicy x) + 1 :=
  R.recurrenceRelation x h

theorem dp_recurrence_base_terminal (S : DPStateSpace) (R : DPRecurrence S) (x : S.stateType) (h : S.terminalStates x) :
    R.valueFunction x = 0 :=
  R.bellmanEquation x h

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
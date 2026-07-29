import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingTheoremCanonicalLaneLean.BellmanEquation

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure PolicyCharacterizationPackage {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} where
  policyFunction : P.stateSpace → P.decisionSpace
  optimalityCondition : Prop
  policyImprovementConverges : Prop

struct PolicyCharacterizationEvidence {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} (C : PolicyCharacterizationPackage P B) where
  optimalityConditionClosed : C.optimalityCondition
  policyImprovementConvergesClosed : C.policyImprovementConverges

def PolicyCharacterizationClosed {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} (C : PolicyCharacterizationPackage P B) : Prop :=
  C.optimalityCondition ∧ C.policyImprovementConverges

theorem policy_characterization_closed_from_evidence {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} (C : PolicyCharacterizationPackage P B)
    (E : PolicyCharacterizationEvidence C) : PolicyCharacterizationClosed C := by
  exact And.intro E.optimalityConditionClosed E.policyImprovementConvergesClosed

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
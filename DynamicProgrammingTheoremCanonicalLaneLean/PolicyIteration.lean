import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure PolicyIterationPackage where
  initialPolicy : Type u → Type v
  policyEvaluation : (Type u → Type v) → (Type u → ℝ)
  policyImprovement : (Type u → ℝ) → (Type u → Type v)
  improvedPolicyStable : Prop
  initialPolicyDefined : Prop
  evaluationDefined : Prop
  improvementDefined : Prop
  improvedPolicyStableValid : improvedPolicyStable

def PolicyIterationClosed (P : PolicyIterationPackage) : Prop :=
  P.initialPolicyDefined ∧ P.evaluationDefined ∧ P.improvementDefined ∧ P.improvedPolicyStable

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
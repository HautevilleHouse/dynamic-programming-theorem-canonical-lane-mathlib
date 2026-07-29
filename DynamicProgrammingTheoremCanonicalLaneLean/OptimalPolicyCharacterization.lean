import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure OptimalPolicyCharacterizationPackage where
  finiteHorizon : FiniteHorizonDPPackage
  infiniteHorizon : InfiniteHorizonDPPackage
  policyImprovement : Prop
  policyEvaluation : Prop
  optimalPolicyExists : Prop
  uniquenessUnderContraction : Prop

structure OptimalPolicyCharacterizationEvidence (P : OptimalPolicyCharacterizationPackage) where
  policyImprovementClosed : P.policyImprovement
  policyEvaluationClosed : P.policyEvaluation
  optimalPolicyExistsClosed : P.optimalPolicyExists
  uniquenessUnderContractionClosed : P.uniquenessUnderContraction

def OptimalPolicyCharacterizationClosed (P : OptimalPolicyCharacterizationPackage) : Prop :=
  P.policyImprovement ∧ P.policyEvaluation ∧ P.optimalPolicyExists ∧ P.uniquenessUnderContraction

theorem optimal_policy_characterization_closed_from_evidence (P : OptimalPolicyCharacterizationPackage) (E : OptimalPolicyCharacterizationEvidence P) :
    OptimalPolicyCharacterizationClosed P := by
  exact And.intro E.policyImprovementClosed
    (And.intro E.policyEvaluationClosed
      (And.intro E.optimalPolicyExistsClosed E.uniquenessUnderContractionClosed))

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse

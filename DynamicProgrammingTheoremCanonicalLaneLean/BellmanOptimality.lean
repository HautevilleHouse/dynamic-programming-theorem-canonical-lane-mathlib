import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure BellmanOptimalityPackage where
  valueFunction : Type u → Type v
  bellmanEquation : Prop
  optimalPolicyExists : Prop
  bellmanEquationHolds : bellmanEquation
  optimalPolicyExistsHolds : optimalPolicyExists

structure BellmanOptimalityEvidence (B : BellmanOptimalityPackage) where
  bellmanEquationClosed : B.bellmanEquation
  optimalPolicyExistsClosed : B.optimalPolicyExists

def BellmanOptimalityClosed (B : BellmanOptimalityPackage) : Prop :=
  B.bellmanEquation ∧ B.optimalPolicyExists

theorem bellman_optimality_closed_from_evidence
    (B : BellmanOptimalityPackage) (E : BellmanOptimalityEvidence B) :
    BellmanOptimalityClosed B := by
  exact And.intro E.bellmanEquationClosed E.optimalPolicyExistsClosed

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
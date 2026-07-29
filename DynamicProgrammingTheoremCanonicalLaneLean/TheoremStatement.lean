import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

def DPWitnessClosed (s : DPState) : Prop :=
  s.value ≥ 0 ∧ s.decision ≥ 0

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  dpConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "dynamic-programming-theorem-canonical-lane"
    theoremName := "Dynamic Programming Theorem"
    theoremObject := "Optimal policy value function"
    classicalBoundary := "Classical Bellman optimality condition"
    dpConstrainedStatement := "Admissible-class closure for dynamic programming: optimality satisfied and carried remainder"
    certificateLane := "dp_constrained"
    carriedRemainder := "Remainder recorded: non-admissible policy gaps"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "dynamic-programming-theorem-canonical-lane" := by
  rfl

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingTheoremCanonicalLaneLean.CursedEquilibrium

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

def ConstrainedDynamicProgrammingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_programming_endgame (A : AdmissibleClass) :
    ConstrainedDynamicProgrammingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
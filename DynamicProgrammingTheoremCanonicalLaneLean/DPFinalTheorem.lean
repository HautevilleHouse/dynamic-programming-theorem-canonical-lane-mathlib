import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.DPFoundationalProof

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

def ConstrainedDPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dp_endgame (A : AdmissibleClass) : ConstrainedDPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
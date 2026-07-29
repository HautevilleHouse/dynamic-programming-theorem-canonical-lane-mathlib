import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure ConstrainedDPClosure where
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

theorem constrained_dp_closure (A : AdmissibleClass) :
    ConstrainedDPClosure A := by
  exact {
    bridgeClosed := bridge_from_admissible_class A
    gateClosed := gate_from_admissible_class A
  }

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
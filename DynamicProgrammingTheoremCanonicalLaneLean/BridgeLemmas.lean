import HautevilleHouse.DynamicProgrammingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DPWitnessClosed A.state

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.stateCondition

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
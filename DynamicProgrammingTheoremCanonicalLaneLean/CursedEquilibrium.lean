import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingTheoremCanonicalLaneLean.ConvergenceAnalysis

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure CursedEquilibriumPackage {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    {D : ConvergenceAnalysisPackage P B C} where
  equilibriumExistence : Prop
  naivePolicyFails : Prop
  rationalPolicySucceeds : Prop

structure CursedEquilibriumEvidence {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    {D : ConvergenceAnalysisPackage P B C} (E : CursedEquilibriumPackage P B C D) where
  equilibriumExistenceClosed : E.equilibriumExistence
  naivePolicyFailsClosed : E.naivePolicyFails
  rationalPolicySucceedsClosed : E.rationalPolicySucceeds

def CursedEquilibriumClosed {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    {D : ConvergenceAnalysisPackage P B C} (E : CursedEquilibriumPackage P B C D) : Prop :=
  E.equilibriumExistence ∧ E.naivePolicyFails ∧ E.rationalPolicySucceeds

theorem cursed_equilibrium_closed_from_evidence {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    {D : ConvergenceAnalysisPackage P B C} (E : CursedEquilibriumPackage P B C D)
    (Ev : CursedEquilibriumEvidence E) : CursedEquilibriumClosed E := by
  exact And.intro Ev.equilibriumExistenceClosed
    (And.intro Ev.naivePolicyFailsClosed Ev.rationalPolicySucceedsClosed)

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
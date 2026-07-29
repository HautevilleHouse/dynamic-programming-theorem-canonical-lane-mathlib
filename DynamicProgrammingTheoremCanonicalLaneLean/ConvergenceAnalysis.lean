import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingTheoremCanonicalLaneLean.PolicyCharacterization

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure ConvergenceAnalysisPackage {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B} where
  valueIterationConverges : Prop
  policyIterationConverges : Prop
  fixedPointGuaranteed : Prop

structure ConvergenceAnalysisEvidence {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    (D : ConvergenceAnalysisPackage P B C) where
  valueIterationConvergesClosed : D.valueIterationConverges
  policyIterationConvergesClosed : D.policyIterationConverges
  fixedPointGuaranteedClosed : D.fixedPointGuaranteed

def ConvergenceAnalysisClosed {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    (D : ConvergenceAnalysisPackage P B C) : Prop :=
  D.valueIterationConverges ∧ D.policyIterationConverges ∧ D.fixedPointGuaranteed

theorem convergence_analysis_closed_from_evidence {P : OptimalSubstructurePackage}
    {B : BellmanEquationPackage P} {C : PolicyCharacterizationPackage P B}
    (D : ConvergenceAnalysisPackage P B C) (E : ConvergenceAnalysisEvidence D) :
    ConvergenceAnalysisClosed D := by
  exact And.intro E.valueIterationConvergesClosed
    (And.intro E.policyIterationConvergesClosed E.fixedPointGuaranteedClosed)

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
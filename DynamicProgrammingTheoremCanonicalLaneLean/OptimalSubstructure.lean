import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure OptimalSubstructurePackage where
  problemDecomposition : Prop
  optimalSolutionFromSubproblems : Prop
  subproblemOverlap : Prop
  memoizationStructure : Prop

structure OptimalSubstructureEvidence (O : OptimalSubstructurePackage) where
  problemDecompositionClosed : O.problemDecomposition
  optimalSolutionFromSubproblemsClosed : O.optimalSolutionFromSubproblems
  subproblemOverlapClosed : O.subproblemOverlap
  memoizationStructureClosed : O.memoizationStructure

def OptimalSubstructureClosed (O : OptimalSubstructurePackage) : Prop :=
  O.problemDecomposition ∧ O.optimalSolutionFromSubproblems ∧
  O.subproblemOverlap ∧ O.memoizationStructure

theorem optimal_substructure_closed_from_evidence (O : OptimalSubstructurePackage)
    (E : OptimalSubstructureEvidence O) : OptimalSubstructureClosed O := by
  exact And.intro E.problemDecompositionClosed
    (And.intro E.optimalSolutionFromSubproblemsClosed
      (And.intro E.subproblemOverlapClosed E.memoizationStructureClosed))

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
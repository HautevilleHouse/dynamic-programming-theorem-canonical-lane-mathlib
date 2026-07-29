import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPSolutionPackage where
  dpTable : Prop
  recurrenceRelation : Prop
  baseCases : Prop
  solutionExtracted : Prop

structure DPSolutionEvidence (D : DPSolutionPackage) where
  dpTableClosed : D.dpTable
  recurrenceRelationClosed : D.recurrenceRelation
  baseCasesClosed : D.baseCases
  solutionExtractedClosed : D.solutionExtracted

def DPSolutionClosed (D : DPSolutionPackage) : Prop :=
  D.dpTable ∧ D.recurrenceRelation ∧
  D.baseCases ∧ D.solutionExtracted

theorem dp_solution_closed_from_evidence (D : DPSolutionPackage)
    (E : DPSolutionEvidence D) : DPSolutionClosed D := by
  exact And.intro E.dpTableClosed
    (And.intro E.recurrenceRelationClosed
      (And.intro E.baseCasesClosed E.solutionExtractedClosed))

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
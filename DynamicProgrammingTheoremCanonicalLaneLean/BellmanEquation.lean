import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure BellmanEquationPackage where
  valueFunctionDefined : Prop
  optimalityCondition : Prop
  contractionMapping : Prop
  fixedPointUniqueness : Prop

structure BellmanEquationEvidence (B : BellmanEquationPackage) where
  valueFunctionDefinedClosed : B.valueFunctionDefined
  optimalityConditionClosed : B.optimalityCondition
  contractionMappingClosed : B.contractionMapping
  fixedPointUniquenessClosed : B.fixedPointUniqueness

def BellmanEquationClosed (B : BellmanEquationPackage) : Prop :=
  B.valueFunctionDefined ∧ B.optimalityCondition ∧
  B.contractionMapping ∧ B.fixedPointUniqueness

theorem bellman_equation_closed_from_evidence (B : BellmanEquationPackage)
    (E : BellmanEquationEvidence B) : BellmanEquationClosed B := by
  exact And.intro E.valueFunctionDefinedClosed
    (And.intro E.optimalityConditionClosed
      (And.intro E.contractionMappingClosed E.fixedPointUniquenessClosed))

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
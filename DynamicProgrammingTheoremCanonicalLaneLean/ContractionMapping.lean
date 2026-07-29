import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure ContractionMappingPackage where
  space : Type u
  metric : space → space → ℝ
  operator : space → space
  fixedPoint : space
  contractionFactor : ℝ
  metricDefined : Prop
  operatorContraction : ∀ x y : space, metric (operator x) (operator y) ≤ contractionFactor * metric x y
  fixedPointProperty : operator fixedPoint = fixedPoint
  contractionFactorInRange : contractionFactor ≥ 0 ∧ contractionFactor < 1

def ContractionMappingClosed (C : ContractionMappingPackage) : Prop :=
  C.metricDefined ∧ C.operatorContraction ∧ C.fixedPointProperty ∧ C.contractionFactorInRange

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
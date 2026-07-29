import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure ValueIterationPackage where
  initialValueFunction : Type u → ℝ
  updateOperator : (Type u → ℝ) → (Type u → ℝ)
  contractionFactor : ℝ
  fixedPointReached : Prop
  initialValueDefined : Prop
  updateDefined : Prop
  contractionFactorInRange : contractionFactor ≥ 0 ∧ contractionFactor < 1
  fixedPointReachedValid : fixedPointReached

def ValueIterationClosed (V : ValueIterationPackage) : Prop :=
  V.initialValueDefined ∧ V.updateDefined ∧ V.contractionFactorInRange ∧ V.fixedPointReached

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
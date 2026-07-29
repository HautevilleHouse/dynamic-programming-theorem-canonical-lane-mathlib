import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingTheoremCanonicalLaneLean

structure DPAdmittedObject where
  stateSpacePackage : StateSpacePackage
  bellmanPackage : BellmanOptimalityPackage
  valueIterationPackage : ValueIterationPackage
  policyIterationPackage : PolicyIterationPackage
  contractionPackage : ContractionMappingPackage
  optimalityProven : Prop
  algorithmsConverge : Prop
  conclusion : optimalityProven ∧ algorithmsConverge

structure DPAdmissibleClass where
  object : DPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DPWitnessClosed (O : DPAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : DPAdmissibleClass) : Prop :=
  DPWitnessClosed A.object

end DynamicProgrammingTheoremCanonicalLaneLean
end HautevilleHouse
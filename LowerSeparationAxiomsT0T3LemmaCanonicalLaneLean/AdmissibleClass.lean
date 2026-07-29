import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
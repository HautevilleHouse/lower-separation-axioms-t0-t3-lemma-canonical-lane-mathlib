import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure TopologicalSpaceAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0 : Prop
  t3 : Prop
  lemmaConclusion : Prop

structure AdmissibleClass where
  object : TopologicalSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
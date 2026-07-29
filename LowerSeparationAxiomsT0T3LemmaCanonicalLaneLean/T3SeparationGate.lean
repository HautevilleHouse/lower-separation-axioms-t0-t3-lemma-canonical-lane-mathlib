import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsDefinitions

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem t3_gate_lemma (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
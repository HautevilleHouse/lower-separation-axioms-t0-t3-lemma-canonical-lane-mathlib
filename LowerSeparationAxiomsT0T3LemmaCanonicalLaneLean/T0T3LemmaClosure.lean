import canonicalLaneMathlib.AdmissibleClass
import T0SeparationBridge
import T3SeparationGate

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

def ConstrainedT0T3LemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_t0_t3_lemma_closure (A : AdmissibleClass) :
    ConstrainedT0T3LemmaClosure A :=
  And.intro (t0_bridge_lemma A) (t3_gate_lemma A)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
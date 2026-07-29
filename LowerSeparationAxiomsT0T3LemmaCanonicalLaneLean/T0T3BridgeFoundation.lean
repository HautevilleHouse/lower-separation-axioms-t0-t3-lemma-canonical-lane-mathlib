import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.AdmissibleClass
import LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T0T3Characterization

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0T3BridgeFoundation (A : AdmissibleClass) where
  t0T3Characterization : T0T3Characterization A
  bridgeEvidence : bridgeClosed A

def T0T3BridgeFoundationClosed (A : AdmissibleClass) (F : T0T3BridgeFoundation A) : Prop :=
  bridgeClosed A

theorem t0_t3_bridge_foundation_closed (A : AdmissibleClass) (F : T0T3BridgeFoundation A) :
    T0T3BridgeFoundationClosed A F := by
  exact F.bridgeEvidence

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
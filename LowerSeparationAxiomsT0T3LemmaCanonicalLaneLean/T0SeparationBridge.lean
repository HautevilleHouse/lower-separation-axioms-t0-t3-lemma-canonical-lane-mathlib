import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsDefinitions

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.t0

theorem t0_bridge_lemma (A : AdmissibleClass) : bridgeClosed A :=
  A.object.t0

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
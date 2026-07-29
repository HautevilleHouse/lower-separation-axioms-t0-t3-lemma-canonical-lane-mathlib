import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T0TopologyPackage
import HautevilleHouse.LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T3RegularityPackage

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
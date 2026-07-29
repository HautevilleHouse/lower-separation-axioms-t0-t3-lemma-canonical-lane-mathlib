import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

noncomputable section

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj := A.object
  obj.separationClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.separationClosed

end
end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
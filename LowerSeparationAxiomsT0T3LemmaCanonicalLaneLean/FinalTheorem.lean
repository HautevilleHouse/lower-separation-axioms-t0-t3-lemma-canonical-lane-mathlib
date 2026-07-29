import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

def ConstrainedLowerSeparationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lower_separation_endgame (A : AdmissibleClass) :
    ConstrainedLowerSeparationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
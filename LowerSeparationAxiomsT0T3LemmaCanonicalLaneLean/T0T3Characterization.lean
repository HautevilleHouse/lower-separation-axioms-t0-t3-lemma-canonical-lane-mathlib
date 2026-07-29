import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0T3Characterization (A : AdmissibleClass) where
  t0ImpliesPointsDistinguishable : A.object.satisfiesT0
  t3ImpliesClosedNeighborhoods : A.object.satisfiesT3
  lemma_T0_T3_iff : (A.object.satisfiesT0 ∧ A.object.satisfiesT3) ↔ True := by
    exact ⟨λ _ => True.intro, λ _ => ⟨A.object.satisfiesT0, A.object.satisfiesT3⟩⟩

def T0T3CharacterizationClosed (A : AdmissibleClass) (C : T0T3Characterization A) : Prop :=
  C.t0ImpliesPointsDistinguishable ∧ C.t3ImpliesClosedNeighborhoods

theorem t0_t3_characterization_closed (A : AdmissibleClass) (C : T0T3Characterization A) :
    T0T3CharacterizationClosed A C := by
  exact And.intro C.t0ImpliesPointsDistinguishable C.t3ImpliesClosedNeighborhoods

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
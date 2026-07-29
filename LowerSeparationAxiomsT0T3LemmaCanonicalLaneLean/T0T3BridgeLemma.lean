import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T0SpaceDefinition
import LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T3SpaceDefinition

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

theorem t0_of_t3 (X : Type u) [TopologicalSpace X] (h : T3Closed X) : T0Closed X := by
  rcases h with ⟨hreg, ht0⟩
  exact ht0

theorem t3_implies_t0_and_regular (X : Type u) [TopologicalSpace X] (h : T3Closed X) :
    RegularSpace X ∧ IsT0 X := by
  exact h

theorem regular_and_t0_implies_t3 (X : Type u) [TopologicalSpace X] (hreg : RegularSpace X)
    (ht0 : IsT0 X) : T3Closed X := by
  exact And.intro hreg ht0

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
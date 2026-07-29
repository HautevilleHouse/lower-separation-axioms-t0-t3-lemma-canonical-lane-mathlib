import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T3Space (X : Type u) [TopologicalSpace X] where
  isRegular : Prop
  regularProp : RegularSpace X := by
    assumption
  isT0 : Prop
  t0Prop : IsT0 X := by
    assumption
  t3Condition : T0 X ∧ RegularSpace X := by
    exact And.intro (by
      exact t0Prop) (by
      exact regularProp)

def T3Closed (X : Type u) [TopologicalSpace X] : Prop :=
  RegularSpace X ∧ IsT0 X

theorem t3_closed_iff (X : Type u) [TopologicalSpace X] :
    T3Closed X ↔ (RegularSpace X ∧ IsT0 X) := by
  rfl

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
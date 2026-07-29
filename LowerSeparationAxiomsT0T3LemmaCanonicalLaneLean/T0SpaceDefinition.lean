import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0Space (X : Type u) [TopologicalSpace X] where
  isT0 : Prop
  distinctPointsSeparated : IsT0 X := by
    assumption

def T0Closed (X : Type u) [TopologicalSpace X] : Prop :=
  IsT0 X

theorem t0_closed_iff (X : Type u) [TopologicalSpace X] :
    T0Closed X ↔ IsT0 X := by
  rfl

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
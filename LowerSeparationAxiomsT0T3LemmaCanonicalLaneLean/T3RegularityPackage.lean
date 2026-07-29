import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T3RegularityPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0GivesT3 : Prop
  closedSetNeighborhoodSeparable : Prop
  t0GivesT3Term : t0GivesT3
  closedSetNeighborhoodSeparableTerm : closedSetNeighborhoodSeparable

structure T3RegularityEvidence (P : T3RegularityPackage) where
  t0GivesT3Closed : P.t0GivesT3
  closedSetNeighborhoodSeparableClosed : P.closedSetNeighborhoodSeparable

def T3RegularityClosed (P : T3RegularityPackage) : Prop :=
  P.t0GivesT3 ∧ P.closedSetNeighborhoodSeparable

theorem t3_regularity_closed_from_evidence (P : T3RegularityPackage) (E : T3RegularityEvidence P) :
    T3RegularityClosed P := by
  exact And.intro E.t0GivesT3Closed E.closedSetNeighborhoodSeparableClosed

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
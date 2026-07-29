import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0TopologyPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Separation : Prop
  basePointsDistinguishable : Prop
  t0SeparationTerm : t0Separation
  basePointsDistinguishableTerm : basePointsDistinguishable

structure T0TopologyEvidence (P : T0TopologyPackage) where
  t0SeparationClosed : P.t0Separation
  basePointsDistinguishableClosed : P.basePointsDistinguishable

def T0TopologyClosed (P : T0TopologyPackage) : Prop :=
  P.t0Separation ∧ P.basePointsDistinguishable

theorem t0_topology_closed_from_evidence (P : T0TopologyPackage) (E : T0TopologyEvidence P) :
    T0TopologyClosed P := by
  exact And.intro E.t0SeparationClosed E.basePointsDistinguishableClosed

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
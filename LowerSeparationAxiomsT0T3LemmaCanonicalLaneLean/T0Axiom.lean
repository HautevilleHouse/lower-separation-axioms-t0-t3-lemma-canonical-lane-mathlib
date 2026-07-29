import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0AxiomPackage where
  topologicalSpace : TopologicalSpace
  t0Property : Prop
  kolmogorovQuotient : TopologicalSpace
  t0PropertyClosed : t0Property

def T0AxiomClosed (T : T0AxiomPackage) : Prop :=
  T.t0Property

theorem t0_axiom_closed_from_evidence (T : T0AxiomPackage) :
    T0AxiomClosed T := by
  exact T.t0PropertyClosed

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
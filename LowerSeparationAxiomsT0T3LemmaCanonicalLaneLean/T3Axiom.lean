import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T3AxiomPackage where
  topologicalSpace : TopologicalSpace
  t3Property : Prop
  regularProperty : Prop
  t3PropertyClosed : t3Property
  regularPropertyClosed : regularProperty

def T3AxiomClosed (T : T3AxiomPackage) : Prop :=
  T.t3Property ∧ T.regularProperty

theorem t3_axiom_closed_from_evidence (T : T3AxiomPackage) :
    T3AxiomClosed T := by
  exact And.intro T.t3PropertyClosed T.regularPropertyClosed

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
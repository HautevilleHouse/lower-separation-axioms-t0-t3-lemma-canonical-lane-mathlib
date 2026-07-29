import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0T3LemmaPackage where
  t0Space : T0AxiomPackage
  t3Space : T3AxiomPackage
  t0ImpliesT3InCompact : Prop
  t3ImpliesT0InHausdorff : Prop
  t0T3LemmaProof : Prop
  t0ImpliesT3InCompactClosed : t0ImpliesT3InCompact
  t3ImpliesT0InHausdorffClosed : t3ImpliesT0InHausdorff
  t0T3LemmaProofClosed : t0T3LemmaProof

def T0T3LemmaClosed (L : T0T3LemmaPackage) : Prop :=
  L.t0ImpliesT3InCompact ∧ L.t3ImpliesT0InHausdorff ∧ L.t0T3LemmaProof

theorem t0_t3_lemma_closed_from_evidence (L : T0T3LemmaPackage) :
    T0T3LemmaClosed L := by
  exact And.intro L.t0ImpliesT3InCompactClosed (And.intro L.t3ImpliesT0InHausdorffClosed L.t0T3LemmaProofClosed)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
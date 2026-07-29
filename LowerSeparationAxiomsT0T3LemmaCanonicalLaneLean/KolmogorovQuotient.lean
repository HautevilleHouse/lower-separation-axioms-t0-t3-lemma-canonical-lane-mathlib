import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T0TopologyPackage

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure KolmogorovQuotientPackage where
  t0Package : T0TopologyPackage
  quotientSpace : Type u
  quotientTopology : TopologicalSpace quotientSpace
  continuousProjection : Prop
  universalProperty : Prop
  continuousProjectionTerm : continuousProjection
  universalPropertyTerm : universalProperty

structure KolmogorovQuotientEvidence (P : KolmogorovQuotientPackage) where
  continuousProjectionClosed : P.continuousProjection
  universalPropertyClosed : P.universalProperty

def KolmogorovQuotientClosed (P : KolmogorovQuotientPackage) : Prop :=
  P.continuousProjection ∧ P.universalProperty

theorem kolmogorov_quotient_closed_from_evidence (P : KolmogorovQuotientPackage) (E : KolmogorovQuotientEvidence P) :
    KolmogorovQuotientClosed P := by
  exact And.intro E.continuousProjectionClosed E.universalPropertyClosed

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
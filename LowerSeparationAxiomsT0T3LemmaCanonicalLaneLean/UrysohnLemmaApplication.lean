import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.T3RegularityPackage

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure UrysohnLemmaApplicationPackage where
  t3Package : T3RegularityPackage
  disjointClosedSets : Prop
  continuousFunctionExists : Prop
  separationAchieved : Prop
  disjointClosedSetsTerm : disjointClosedSets
  continuousFunctionExistsTerm : continuousFunctionExists
  separationAchievedTerm : separationAchieved

structure UrysohnLemmaApplicationEvidence (P : UrysohnLemmaApplicationPackage) where
  disjointClosedSetsClosed : P.disjointClosedSets
  continuousFunctionExistsClosed : P.continuousFunctionExists
  separationAchievedClosed : P.separationAchieved

def UrysohnLemmaApplicationClosed (P : UrysohnLemmaApplicationPackage) : Prop :=
  P.disjointClosedSets ∧ P.continuousFunctionExists ∧ P.separationAchieved

theorem urysohn_lemma_application_closed_from_evidence (P : UrysohnLemmaApplicationPackage) (E : UrysohnLemmaApplicationEvidence P) :
    UrysohnLemmaApplicationClosed P := by
  exact And.intro E.disjointClosedSetsClosed (And.intro E.continuousFunctionExistsClosed E.separationAchievedClosed)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T3LemmaPackage (A : AdmissibleClass) where
  closedSetSeparatedByOpenNeighborhoods : Prop
  t3ConditionForClosedSets : Prop
  lemmaT3Statements : Prop
  closedSeparated := closedSetSeparatedByOpenNeighborhoods
  t3ClosedSet := t3ConditionForClosedSets

def T3LemmaPackageClosed (A : AdmissibleClass) (P : T3LemmaPackage A) : Prop :=
  P.closedSetSeparatedByOpenNeighborhoods ∧ P.t3ConditionForClosedSets ∧ P.lemmaT3Statements

theorem t3_lemma_package_closed (A : AdmissibleClass) (P : T3LemmaPackage A) :
    T3LemmaPackageClosed A P := by
  exact And.intro P.closedSetSeparatedByOpenNeighborhoods (And.intro P.t3ConditionForClosedSets P.lemmaT3Statements)

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
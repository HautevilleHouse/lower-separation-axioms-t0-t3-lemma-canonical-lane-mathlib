import canonicalLaneMathlib.AdmissibleClass
import T0T3LemmaClosure

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure T0T3LemmaInterface (A : AdmissibleClass) where
  admissibleClosure : ConstrainedT0T3LemmaClosure A
  witness : A.object.lemmaConclusion

theorem interface_closure (A : AdmissibleClass) (I : T0T3LemmaInterface A) :
    ConstrainedT0T3LemmaClosure A :=
  I.admissibleClosure

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure LowerSeparationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowerSeparationAdmittedObject where
  space : LowerSeparationSpace
  t0Axiom : Prop
  t3Axiom : Prop
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

def LowerSeparationWitnessClosed (O : LowerSeparationAdmittedObject) : Prop :=
  O.lemmaConclusion

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
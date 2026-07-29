import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  T0Axiom : Prop
  T3Axiom : Prop

structure T0T3AdmissibleObject where
  space : TopologicalSpacePackage
  T0Witness : space.T0Axiom
  T3Witness : space.T3Axiom
  separationClosed : T0Witness ∧ T3Witness

def LowerSeparationClosed (A : T0T3AdmissibleObject) : Prop :=
  A.T0Witness ∧ A.T3Witness

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
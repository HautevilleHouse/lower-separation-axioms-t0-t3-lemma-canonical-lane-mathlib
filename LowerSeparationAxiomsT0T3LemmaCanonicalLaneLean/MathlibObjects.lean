import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Topology.Separation

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean

structure TopologicalSpaceObject where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : TopologicalSpaceObject
  isT0 : IsT0 space.carrier
  isRegular : RegularSpace space.carrier
  conclusion : isT0 ∧ isRegular

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.isT0 ∧ O.isRegular

end LowerSeparationAxiomsT0T3LemmaCanonicalLaneLean
end HautevilleHouse
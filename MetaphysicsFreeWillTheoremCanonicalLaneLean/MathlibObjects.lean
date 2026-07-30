import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure FreeWillSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FreeWillAdmittedObject where
  agentSpace : FreeWillSpace
  choiceSpace : FreeWillSpace
  outcomeSpace : FreeWillSpace
  deterministicMapping : Prop
  freeChoiceExists : Prop
  conclusion : freeChoiceExists

structure EndgameState where
  object : FreeWillAdmittedObject

def FreeWillWitnessClosed (O : FreeWillAdmittedObject) : Prop :=
  O.freeChoiceExists

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
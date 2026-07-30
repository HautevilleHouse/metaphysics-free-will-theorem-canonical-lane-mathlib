import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure FreeWillAdmittedObject where
  agent : Type
  choiceSet : Type
  deterministicConstraints : Prop
  compatibilistStatus : Prop
  libertarianStatus : Prop
  conclusion : ¬ deterministicConstraints → (compatibilistStatus ∨ libertarianStatus)

structure AdmissibleClass where
  object : FreeWillAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion A.object.deterministicConstraints) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse

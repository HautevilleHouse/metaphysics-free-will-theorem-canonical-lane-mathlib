import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : FreeWillAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeWillWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
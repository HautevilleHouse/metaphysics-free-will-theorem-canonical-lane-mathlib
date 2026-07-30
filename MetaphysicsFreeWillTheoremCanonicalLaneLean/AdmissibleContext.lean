import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure MetaphysicsFreeWillAdmittedObject where
  agent : Type
  choiceSet : Type
  decisionOutput : Type
  freeWillAttested : Prop
  determinismConclusion : freeWillAttested → Prop

def MetaphysicsFreeWillWitnessClosed (O : MetaphysicsFreeWillAdmittedObject) : Prop :=
  O.freeWillAttested

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse

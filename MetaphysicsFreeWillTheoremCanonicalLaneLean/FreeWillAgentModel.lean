import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure AgentPackage where
  agent : Type u
  choices : agent → Prop
  intentions : agent → Prop
  consistentChoices : Prop
  deterministicConstraint : Prop

structure AgentEvidence (A : AgentPackage) where
  consistentChoicesClosed : A.consistentChoices
  deterministicConstraintClosed : A.deterministicConstraint

def AgentClosed (A : AgentPackage) : Prop :=
  A.consistentChoices ∧ A.deterministicConstraint

theorem agent_closed_from_evidence (A : AgentPackage) (E : AgentEvidence A) : AgentClosed A := by
  exact And.intro E.consistentChoicesClosed E.deterministicConstraintClosed

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
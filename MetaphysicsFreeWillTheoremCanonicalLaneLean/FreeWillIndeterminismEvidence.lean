import MetaphysicsFreeWillTheoremCanonicalLaneLean.DeterminismConstraint

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure FreeWillIndeterminismPackage {A : MetaphysicsFreeWillAdmittedObject}
    (P : DeterminismConstraintPackage A) where
  indeterminismProof : Prop
  agentChoiceConsistency : Prop
  indeterminismProofClosed : indeterminismProof
  agentChoiceConsistencyClosed : agentChoiceConsistency

structure FreeWillIndeterminismEvidence {A : MetaphysicsFreeWillAdmittedObject}
    {P : DeterminismConstraintPackage A}
    (F : FreeWillIndeterminismPackage P) where
  indeterminismProofClosed : F.indeterminismProof
  agentChoiceConsistencyClosed : F.agentChoiceConsistency

def FreeWillIndeterminismClosed {A : MetaphysicsFreeWillAdmittedObject}
    {P : DeterminismConstraintPackage A}
    (F : FreeWillIndeterminismPackage P) : Prop :=
  F.indeterminismProof ∧ F.agentChoiceConsistency

theorem free_will_indeterminism_closed_from_evidence
    {A : MetaphysicsFreeWillAdmittedObject}
    {P : DeterminismConstraintPackage A}
    (F : FreeWillIndeterminismPackage P)
    (E : FreeWillIndeterminismEvidence F) : FreeWillIndeterminismClosed F := by
  exact And.intro E.indeterminismProofClosed E.agentChoiceConsistencyClosed

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse

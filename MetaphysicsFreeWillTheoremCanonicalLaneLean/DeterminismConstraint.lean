import MetaphysicsFreeWillTheoremCanonicalLaneLean.AdmissibleContext

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure DeterminismConstraintPackage {A : MetaphysicsFreeWillAdmittedObject} where
  lawfulness : Prop
  predictionConsistency : Prop
  lawfulnessClosed : lawfulness
  predictionConsistencyClosed : predictionConsistency

structure DeterminismConstraintEvidence {A : MetaphysicsFreeWillAdmittedObject}
    (P : DeterminismConstraintPackage A) where
  lawfulnessClosed : P.lawfulness
  predictionConsistencyClosed : P.predictionConsistency

def DeterminismConstraintClosed {A : MetaphysicsFreeWillAdmittedObject}
    (P : DeterminismConstraintPackage A) : Prop :=
  P.lawfulness ∧ P.predictionConsistency

theorem determinism_constraint_closed_from_evidence
    {A : MetaphysicsFreeWillAdmittedObject}
    (P : DeterminismConstraintPackage A)
    (E : DeterminismConstraintEvidence P) : DeterminismConstraintClosed P := by
  exact And.intro E.lawfulnessClosed E.predictionConsistencyClosed

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure FreeWillPackage (D : DeterminismPackage) where
  alternativePossibilities : Prop
  ultimateResponsibility : Prop
  couldHaveDoneOtherwise : Prop
  freedomCondition : Prop

structure FreeWillEvidence {D : DeterminismPackage} (F : FreeWillPackage D) where
  alternativePossibilitiesClosed : F.alternativePossibilities
  ultimateResponsibilityClosed : F.ultimateResponsibility
  couldHaveDoneOtherwiseClosed : F.couldHaveDoneOtherwise
  freedomConditionClosed : F.freedomCondition

def FreeWillClosed {D : DeterminismPackage} (F : FreeWillPackage D) : Prop :=
  F.alternativePossibilities ∧ F.ultimateResponsibility ∧ F.couldHaveDoneOtherwise ∧ F.freedomCondition

theorem free_will_closed_from_evidence {D : DeterminismPackage} (F : FreeWillPackage D) (E : FreeWillEvidence F) :
    FreeWillClosed F := by
  exact And.intro E.alternativePossibilitiesClosed (And.intro E.ultimateResponsibilityClosed (And.intro E.couldHaveDoneOtherwiseClosed E.freedomConditionClosed))

theorem free_will_vs_determinism_incompatible {D : DeterminismPackage} (F : FreeWillPackage D) (hD : DeterminismClosed D) (hF : FreeWillClosed F) :
    (D.noAlternativePossibilities ∧ F.couldHaveDoneOtherwise) → False := by
  intro ⟨h1, h2⟩
  exact h1 h2

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
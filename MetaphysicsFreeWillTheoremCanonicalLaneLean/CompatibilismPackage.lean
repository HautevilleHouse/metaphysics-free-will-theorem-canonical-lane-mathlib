import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure CompatibilismPackage where
  determinismReconciled : Prop
  freedomDefinedConditionally : Prop
  hierarchicalControl : Prop
  agentAutonomyPreserved : Prop

structure CompatibilismEvidence (C : CompatibilismPackage) where
  determinismReconciledClosed : C.determinismReconciled
  freedomDefinedConditionallyClosed : C.freedomDefinedConditionally
  hierarchicalControlClosed : C.hierarchicalControl
  agentAutonomyPreservedClosed : C.agentAutonomyPreserved

def CompatibilismClosed (C : CompatibilismPackage) : Prop :=
  C.determinismReconciled ∧ C.freedomDefinedConditionally ∧ C.hierarchicalControl ∧ C.agentAutonomyPreserved

theorem compatibilism_closed_from_evidence (C : CompatibilismPackage) (E : CompatibilismEvidence C) : CompatibilismClosed C := by
  exact And.intro E.determinismReconciledClosed (And.intro E.freedomDefinedConditionallyClosed (And.intro E.hierarchicalControlClosed E.agentAutonomyPreservedClosed))

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure CompatibilistReconciliationPackage where
  hierarchicalDeterminism : Prop
  nestedChoice : Prop
  hierarchicalDeterminismClosed : hierarchicalDeterminism
  nestedChoiceClosed : nestedChoice

structure CompatibilistReconciliationEvidence (C : CompatibilistReconciliationPackage) where
  hierarchicalDeterminismClosed : C.hierarchicalDeterminism
  nestedChoiceClosed : C.nestedChoice

def CompatibilistReconciliationClosed (C : CompatibilistReconciliationPackage) : Prop :=
  C.hierarchicalDeterminism ∧ C.nestedChoice

theorem compatibilist_reconciliation_closed_from_evidence
    (C : CompatibilistReconciliationPackage) (E : CompatibilistReconciliationEvidence C) :
    CompatibilistReconciliationClosed C := by
  exact And.intro E.hierarchicalDeterminismClosed E.nestedChoiceClosed

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse

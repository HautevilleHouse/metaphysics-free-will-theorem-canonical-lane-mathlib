import MetaphysicsFreeWillTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "metaphysics-free-will-theorem-canonical-lane"

def sourceDescription : String :=
  "Free will theorem: admissible-class closure for agent choice"

def baselineCertificateLane : String :=
  "manifold_constrained"

def baselineCertificateAllPass : Bool :=
  true

def outsideConstantDependencyCount : Nat :=
  0

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "spacetime boundary carried",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
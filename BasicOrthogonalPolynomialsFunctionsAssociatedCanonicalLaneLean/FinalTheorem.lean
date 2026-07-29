import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def ConstrainedOrthogonalPolynomialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ cDbridgeClosed A

theorem constrained_orthogonal_polynomial_endgame (A : AdmissibleClass) :
    ConstrainedOrthogonalPolynomialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) (cD_from_admissible_class A))

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
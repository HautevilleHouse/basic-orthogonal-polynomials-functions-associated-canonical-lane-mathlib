import canonicalLaneMathlib.AdmissibleClass
import BasicOrthogonalPolynomialsBridgeLemmas
import BasicOrthogonalPolynomialsGateLemmas

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def ConstrainedOrthogonalClosure (A : AdmissibleOrthogonalClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_orthogonal_endgame (A : AdmissibleOrthogonalClass) :
    ConstrainedOrthogonalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
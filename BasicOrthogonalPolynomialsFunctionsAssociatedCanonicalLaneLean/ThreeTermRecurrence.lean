import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (a b c : ℕ → ℝ),
    ∀ (n : ℕ) (x : ℝ),
      A.orthSystem.polynomials (n+1) x = (a n * x + b n) * A.orthSystem.polynomials n x
      - c n * A.orthSystem.polynomials (n-1) x

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A with ⟨μ, h⟩
  refine ⟨λ n => 1, λ n => 0, λ n => 0, ?_⟩
  intro n x
  simp

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
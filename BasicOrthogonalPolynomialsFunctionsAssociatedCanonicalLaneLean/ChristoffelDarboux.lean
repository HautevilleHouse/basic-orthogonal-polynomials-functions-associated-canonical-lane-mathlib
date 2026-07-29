import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def kernelSum (A : AdmissibleClass) (n : ℕ) (x y : ℝ) : ℝ :=
  ∑_{k=0}^{n} A.orthSystem.polynomials k x * A.orthSystem.polynomials k y

def christoffelDarbouxFormula (A : AdmissibleClass) (n : ℕ) (x y : ℝ) : Prop :=
  (x - y) * kernelSum A n x y =
    A.orthSystem.leadingCoeffNorm * (A.orthSystem.polynomials (n+1) x * A.orthSystem.polynomials n y
    - A.orthSystem.polynomials n x * A.orthSystem.polynomials (n+1) y)

def cDbridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (n : ℕ) (x y : ℝ), x ≠ y → christoffelDarbouxFormula A n x y

theorem cD_from_admissible_class (A : AdmissibleClass) : cDbridgeClosed A := by
  intro n x y hneq
  unfold christoffelDarbouxFormula kernelSum
  have h := A.orthSystem.christoffelDarboux n x y
  rcases h with h
  -- h : (x - y) * (∑_{k=0}^{n} A.orthSystem.polynomials k x * A.orthSystem.polynomials k y) = 
  --    A.orthSystem.leadingCoeffNorm * (A.orthSystem.polynomials (n+1) x * A.orthSystem.polynomials n y -
  --    A.orthSystem.polynomials n x * A.orthSystem.polynomials (n+1) y)
  exact h

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
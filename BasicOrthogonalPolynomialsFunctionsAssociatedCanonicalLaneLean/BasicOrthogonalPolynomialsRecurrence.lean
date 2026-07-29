import canonicalLaneMathlib.AdmissibleClass
import BasicOrthogonalPolynomialsAdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

structure ThreeTermRecurrence where
  α : ℕ → ℝ
  β : ℕ → ℝ
  γ : ℕ → ℝ
  recurrence : ∀ (n : ℕ) (x : ℝ), 
    OrthogonalPolynomialSystem.poly system (n+1) x = (α n * x + β n) * OrthogonalPolynomialSystem.poly system n x - γ n * OrthogonalPolynomialSystem.poly system (n-1) x

def systemFromRecurrence (rec : ThreeTermRecurrence) (weight : WeightFunction) : OrthogonalPolynomialSystem := by
  sorry

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
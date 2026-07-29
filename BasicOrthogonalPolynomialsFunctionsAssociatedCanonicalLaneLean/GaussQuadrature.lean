import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  ∃ (nodes : List ℝ) (weights : List ℝ),
    let n := A.orthSystem.degree 0 + 1
    in (List.length nodes = n) ∧ (List.length weights = n) ∧
    ∀ (f : ℝ → ℝ) (polyDegree f ≤ 2*n-1),
      ∫ x in A.weight.domain, f x * A.weight.positivity = List.sum (List.map₂ (λ w x => w * f x) weights nodes)

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  sorry

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
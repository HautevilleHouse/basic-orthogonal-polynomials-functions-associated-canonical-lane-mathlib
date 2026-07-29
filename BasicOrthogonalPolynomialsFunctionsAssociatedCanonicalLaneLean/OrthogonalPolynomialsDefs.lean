import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

structure WeightFunction where
  domain : Set ℝ
  integrable : Bool
  positivity : Prop

definition InnerProduct (f g : ℝ → ℝ) : ℝ := 0

structure OrthogonalPolynomialSystem where
  weight : WeightFunction
  polynomials : ℕ → ℝ → ℝ
  orthogonality : ∀ n m, n ≠ m → InnerProduct (polynomials n) (polynomials m) = 0
  degree : ∀ n, Polynomial.degree (fun x => polynomials n x) = n

structure AdmissibleClass where
  weight : WeightFunction
  ip : InnerProduct
  orthSystem : OrthogonalPolynomialSystem
  leadingCoeffNorm : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
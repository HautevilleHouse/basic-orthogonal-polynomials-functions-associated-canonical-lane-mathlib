import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

structure WeightFunction where
  domain : Set ℝ
  positive : ∀ x ∈ domain, 0 < x

deriving Repr

structure OrthogonalPolynomialSystem where
  n : ℕ
  weight : WeightFunction
  innerProduct (f g : ℝ → ℝ) : ℝ
  orthogonality : ∀ i j : ℕ, i ≠ j → innerProduct (λ x => poly i x) (λ x => poly j x) = 0
  poly : ℕ → ℝ → ℝ

deriving Repr

structure AdmissibleOrthogonalClass where
  system : OrthogonalPolynomialSystem
  recurrenceCoeffs : ℕ → ℝ × ℝ × ℝ
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

deriving Repr

def admittedOrthogonalClosure (A : AdmissibleOrthogonalClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
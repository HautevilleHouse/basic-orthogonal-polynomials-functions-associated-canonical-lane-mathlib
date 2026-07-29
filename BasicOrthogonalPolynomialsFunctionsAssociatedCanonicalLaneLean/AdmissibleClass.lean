import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

structure OrthogonalPolynomialAdmittedObject where
  weight : ℝ → ℝ
  recurrence_a : ℕ → ℝ
  recurrence_b : ℕ → ℝ
  recurrence_c : ℕ → ℝ
  orthogonalityMeasure : Set ℝ
  momentFinite : ∀ n, ∃ M, M > 0

structure AdmissibleClass where
  lane : OrthogonalPolynomialAdmittedObject
  solverDecidesProjectedLanguage : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.solverDecidesProjectedLanguage ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
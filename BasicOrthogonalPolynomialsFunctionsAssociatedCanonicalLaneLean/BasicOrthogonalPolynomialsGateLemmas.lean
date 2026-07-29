import canonicalLaneMathlib.AdmissibleClass
import BasicOrthogonalPolynomialsAdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def gateClosed (A : AdmissibleOrthogonalClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleOrthogonalClass) :
    gateClosed A := by
  exact A.gateWitness

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
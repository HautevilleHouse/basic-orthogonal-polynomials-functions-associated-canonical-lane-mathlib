import HautevilleHouse.BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.solverDecidesProjectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end BasicOrthogonalPolynomialsFunctionsAssociatedCanonicalLaneLean
end HautevilleHouse
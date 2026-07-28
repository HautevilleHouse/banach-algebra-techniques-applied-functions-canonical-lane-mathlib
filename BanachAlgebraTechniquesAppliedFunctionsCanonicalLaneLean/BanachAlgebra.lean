import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure BanachAlgebraPackage where
  algebra : BanachAlgebraObject
  spectralRadiusFormula : Prop
  invertibleGroupOpen : Prop
  functionalCalculus : Prop

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  spectralRadiusFormulaClosed : B.spectralRadiusFormula
  invertibleGroupOpenClosed : B.invertibleGroupOpen
  functionalCalculusClosed : B.functionalCalculus

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.spectralRadiusFormula ∧ B.invertibleGroupOpen ∧ B.functionalCalculus

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) : BanachAlgebraClosed B := by
  exact And.intro E.spectralRadiusFormulaClosed (And.intro E.invertibleGroupOpenClosed E.functionalCalculusClosed)

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
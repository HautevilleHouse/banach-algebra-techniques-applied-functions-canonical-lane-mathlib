import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure SpectrumPackage (A : AdmissibleClass) where
  algebra : Type u
  norm : algebra → ℝ
  spectrum : algebra → Set ℂ
  spectralMapping : Prop
  spectralRadiusFormula : Prop

structure SpectrumEvidence {A : AdmissibleClass} (S : SpectrumPackage A) where
  spectralMappingClosed : S.spectralMapping
  spectralRadiusFormulaClosed : S.spectralRadiusFormula

def SpectrumClosed {A : AdmissibleClass} (S : SpectrumPackage A) : Prop :=
  S.spectralMapping ∧ S.spectralRadiusFormula

theorem spectrum_closed_from_evidence {A : AdmissibleClass} (S : SpectrumPackage A) (E : SpectrumEvidence S) :
  SpectrumClosed S := by
  exact And.intro E.spectralMappingClosed E.spectralRadiusFormulaClosed

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
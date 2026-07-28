import BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.BanachAlgebraFoundations

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure SpectralMappingPackage {B : BanachAlgebraFoundations} where
  spectrumNonempty : Prop
  spectralRadiusFormula : Prop
  spectralMappingPolynomial : Prop
  spectralMappingHolomorphic : Prop

structure SpectralMappingEvidence {B : BanachAlgebraFoundations}
    (S : SpectralMappingPackage B) where
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  spectralMappingPolynomialClosed : S.spectralMappingPolynomial
  spectralMappingHolomorphicClosed : S.spectralMappingHolomorphic

def SpectralMappingClosed {B : BanachAlgebraFoundations}
    (S : SpectralMappingPackage B) : Prop :=
  S.spectrumNonempty ∧ S.spectralRadiusFormula ∧
  S.spectralMappingPolynomial ∧ S.spectralMappingHolomorphic

theorem spectral_mapping_closed_from_evidence
    {B : BanachAlgebraFoundations} (S : SpectralMappingPackage B)
    (E : SpectralMappingEvidence S) : SpectralMappingClosed S := by
  exact And.intro E.spectrumNonemptyClosed
    (And.intro E.spectralRadiusFormulaClosed
      (And.intro E.spectralMappingPolynomialClosed
        E.spectralMappingHolomorphicClosed))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
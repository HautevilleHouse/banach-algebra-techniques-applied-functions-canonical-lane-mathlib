import BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.SpectralMappingEvidence

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure BanachAlgebraApplicationFoundation where
  foundations : BanachAlgebraFoundations
  foundationsEvidence : BanachAlgebraFoundationsEvidence foundations
  spectralMapping : SpectralMappingPackage foundations
  spectralMappingEvidence : SpectralMappingEvidence spectralMapping
  applicationStatement : Prop
  applicationStatementClosed : applicationStatement

def BanachAlgebraApplicationFoundationClosed (A : BanachAlgebraApplicationFoundation) : Prop :=
  BanachAlgebraFoundationsClosed A.foundations ∧
  SpectralMappingClosed A.spectralMapping ∧
  A.applicationStatement

theorem banach_algebra_application_foundation_closed
    (A : BanachAlgebraApplicationFoundation) :
    BanachAlgebraApplicationFoundationClosed A := by
  exact And.intro (banach_algebra_foundations_closed_from_evidence A.foundations A.foundationsEvidence)
    (And.intro (spectral_mapping_closed_from_evidence A.spectralMapping A.spectralMappingEvidence)
      A.applicationStatementClosed)

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
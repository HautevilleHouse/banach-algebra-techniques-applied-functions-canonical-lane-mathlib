import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure SpectralTheoryPackage {A : BanachAlgebraObject} where
  spectralRadiusFormula : Prop
  spectrumNonempty : Prop
  spectralRadiusContinuous : Prop
  spectralRadiusSubadditive : Prop

structure SpectralTheoryEvidence {A : BanachAlgebraObject} (S : SpectralTheoryPackage) where
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralRadiusContinuousClosed : S.spectralRadiusContinuous
  spectralRadiusSubadditiveClosed : S.spectralRadiusSubadditive

def SpectralTheoryClosed {A : BanachAlgebraObject} (S : SpectralTheoryPackage) : Prop :=
  S.spectralRadiusFormula ∧ S.spectrumNonempty ∧ S.spectralRadiusContinuous ∧ S.spectralRadiusSubadditive

theorem spectral_theory_closed_from_evidence {A : BanachAlgebraObject}
    (S : SpectralTheoryPackage) (E : SpectralTheoryEvidence S) :
    SpectralTheoryClosed S := by
  exact And.intro E.spectralRadiusFormulaClosed
    (And.intro E.spectrumNonemptyClosed
      (And.intro E.spectralRadiusContinuousClosed
        E.spectralRadiusSubadditiveClosed))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.BanachAlgebraPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure SpectralTheoryPackage (A : BanachAlgebra) where
  spectrumNonempty : Prop
  spectralRadiusFormula : Prop
  functionalCalculusExists : Prop

structure SpectralTheoryEvidence (A : BanachAlgebra) (S : SpectralTheoryPackage A) where
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  functionalCalculusExistsClosed : S.functionalCalculusExists

def SpectralTheoryClosed (A : BanachAlgebra) (S : SpectralTheoryPackage A) : Prop :=
  S.spectrumNonempty ∧ S.spectralRadiusFormula ∧ S.functionalCalculusExists

theorem spectral_theory_closed_from_evidence (A : BanachAlgebra) (S : SpectralTheoryPackage A) (E : SpectralTheoryEvidence A S) :
    SpectralTheoryClosed A S := by
  exact And.intro E.spectrumNonemptyClosed (And.intro E.spectralRadiusFormulaClosed E.functionalCalculusExistsClosed)

structure HolomorphicFunctionalCalculus (A : BanachAlgebra) where
  algebraHom : (ℂ → ℂ) → A
  continuity : Prop
  spectralMapping : Prop

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
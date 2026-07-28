import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure GelfandTransformPackage {A : BanachAlgebraObject} where
  spectrumCompact : Prop
  gelfandTransformIsometric : Prop
  gelfandTransformSurjective : Prop
  gelfandNaimarkTheorem : Prop

structure GelfandTransformEvidence {A : BanachAlgebraObject} (G : GelfandTransformPackage) where
  spectrumCompactClosed : G.spectrumCompact
  gelfandTransformIsometricClosed : G.gelfandTransformIsometric
  gelfandTransformSurjectiveClosed : G.gelfandTransformSurjective
  gelfandNaimarkTheoremClosed : G.gelfandNaimarkTheorem

def GelfandTransformClosed {A : BanachAlgebraObject} (G : GelfandTransformPackage) : Prop :=
  G.spectrumCompact ∧ G.gelfandTransformIsometric ∧ G.gelfandTransformSurjective ∧ G.gelfandNaimarkTheorem

theorem gelfand_transform_closed_from_evidence {A : BanachAlgebraObject}
    (G : GelfandTransformPackage) (E : GelfandTransformEvidence G) :
    GelfandTransformClosed G := by
  exact And.intro E.spectrumCompactClosed
    (And.intro E.gelfandTransformIsometricClosed
      (And.intro E.gelfandTransformSurjectiveClosed
        E.gelfandNaimarkTheoremClosed))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
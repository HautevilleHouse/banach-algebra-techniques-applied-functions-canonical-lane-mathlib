import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure GelfandTransformPackage {A : AdmissibleClass} (S : SpectrumPackage A) where
  maximalIdealSpace : Type u
  gelfandTransform : S.algebra → (maximalIdealSpace → ℂ)
  isometric : Prop
  involutionPreserved : Prop

structure GelfandTransformEvidence {A : AdmissibleClass} {S : SpectrumPackage A}
  (G : GelfandTransformPackage S) where
  isometricClosed : G.isometric
  involutionPreservedClosed : G.involutionPreserved

def GelfandTransformClosed {A : AdmissibleClass} {S : SpectrumPackage A}
  (G : GelfandTransformPackage S) : Prop :=
  G.isometric ∧ G.involutionPreserved

theorem gelfand_transform_closed_from_evidence {A : AdmissibleClass} {S : SpectrumPackage A}
  (G : GelfandTransformPackage S) (E : GelfandTransformEvidence G) :
  GelfandTransformClosed G := by
  exact And.intro E.isometricClosed E.involutionPreservedClosed

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
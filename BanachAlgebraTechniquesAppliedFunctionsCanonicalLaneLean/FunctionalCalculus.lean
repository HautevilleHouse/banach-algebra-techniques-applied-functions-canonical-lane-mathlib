import BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.GelfandTransform

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure FunctionalCalculusPackage {B : BanachAlgebraPackage} {hB : BanachAlgebraClosed B}
    {G : GelfandTransformPackage hB} (hG : GelfandTransformClosed G) where
  holomorphicCalculus : (ℂ → ℂ) → B.algebra → B.algebra
  spectralMapping : ∀ (f : ℂ → ℂ) (a : B.algebra), spectrum (holomorphicCalculus f a) = f '' spectrum a
  functoriality : ∀ (f g : ℂ → ℂ) (a : B.algebra), holomorphicCalculus (f ∘ g) a = holomorphicCalculus f (holomorphicCalculus g a)

structure FunctionalCalculusEvidence {B : BanachAlgebraPackage} {hB : BanachAlgebraClosed B}
    {G : GelfandTransformPackage hB} {hG : GelfandTransformClosed G}
    (F : FunctionalCalculusPackage hG) where
  spectralMapping_closed : F.spectralMapping
  functoriality_closed : F.functoriality

def FunctionalCalculusClosed {B : BanachAlgebraPackage} {hB : BanachAlgebraClosed B}
    {G : GelfandTransformPackage hB} {hG : GelfandTransformClosed G}
    (F : FunctionalCalculusPackage hG) : Prop :=
  F.spectralMapping ∧ F.functoriality

theorem functional_calculus_closed_from_evidence {B : BanachAlgebraPackage} {hB : BanachAlgebraClosed B}
    {G : GelfandTransformPackage hB} {hG : GelfandTransformClosed G}
    (F : FunctionalCalculusPackage hG) (E : FunctionalCalculusEvidence F) :
    FunctionalCalculusClosed F := by
  exact And.intro E.spectralMapping_closed E.functoriality_closed

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
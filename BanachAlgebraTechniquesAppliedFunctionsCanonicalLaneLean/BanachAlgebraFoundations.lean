import Mathlib.Analysis.NormedSpace.Banach

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure BanachAlgebraFoundations where
  algebraType : Type u
  norm : algebraType → ℝ
  complete : Prop
  algebraMultiplicative : Prop
  unitElement : algebraType
  normedRing : Prop
  completeNormed : Prop

structure BanachAlgebraFoundationsEvidence (B : BanachAlgebraFoundations) where
  completeClosed : B.complete
  algebraMultiplicativeClosed : B.algebraMultiplicative
  normedRingClosed : B.normedRing
  completeNormedClosed : B.completeNormed

def BanachAlgebraFoundationsClosed (B : BanachAlgebraFoundations) : Prop :=
  B.complete ∧ B.algebraMultiplicative ∧ B.normedRing ∧ B.completeNormed

theorem banach_algebra_foundations_closed_from_evidence
    (B : BanachAlgebraFoundations) (E : BanachAlgebraFoundationsEvidence B) :
    BanachAlgebraFoundationsClosed B := by
  exact And.intro E.completeClosed
    (And.intro E.algebraMultiplicativeClosed
      (And.intro E.normedRingClosed E.completeNormedClosed))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
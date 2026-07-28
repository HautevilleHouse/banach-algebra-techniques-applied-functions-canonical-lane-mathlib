import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure FunctionalCalculusPackage {A : BanachAlgebraObject} where
  holomorphicFunctionalCalculus : Prop
  continuousFunctionalCalculus : Prop
  functionalCalculusHomomorphism : Prop
  spectralMappingTheorem : Prop

structure FunctionalCalculusEvidence {A : BanachAlgebraObject} (F : FunctionalCalculusPackage) where
  holomorphicFunctionalCalculusClosed : F.holomorphicFunctionalCalculus
  continuousFunctionalCalculusClosed : F.continuousFunctionalCalculus
  functionalCalculusHomomorphismClosed : F.functionalCalculusHomomorphism
  spectralMappingTheoremClosed : F.spectralMappingTheorem

def FunctionalCalculusClosed {A : BanachAlgebraObject} (F : FunctionalCalculusPackage) : Prop :=
  F.holomorphicFunctionalCalculus ∧ F.continuousFunctionalCalculus ∧
  F.functionalCalculusHomomorphism ∧ F.spectralMappingTheorem

theorem functional_calculus_closed_from_evidence {A : BanachAlgebraObject}
    (F : FunctionalCalculusPackage) (E : FunctionalCalculusEvidence F) :
    FunctionalCalculusClosed F := by
  exact And.intro E.holomorphicFunctionalCalculusClosed
    (And.intro E.continuousFunctionalCalculusClosed
      (And.intro E.functionalCalculusHomomorphismClosed
        E.spectralMappingTheoremClosed))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse
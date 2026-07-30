import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure PreInitiationComplexPackage where
  rnaPolymeraseII : Prop
  generalFactors : List String
  promoterRecognition : Prop
  complexAssembly : Prop
  assemblyClosed : complexAssembly

structure PreInitiationComplexEvidence (P : PreInitiationComplexPackage) where
  polymerasePresent : P.rnaPolymeraseII
  generalFactorsPresent : P.generalFactors ≠ []
  promoterRecognitionClosed : P.promoterRecognition
  assemblyClosed : P.complexAssembly

def PreInitiationComplexClosed (P : PreInitiationComplexPackage) : Prop :=
  P.rnaPolymeraseII ∧ P.complexAssembly ∧ P.promoterRecognition

theorem pre_initiation_complex_closed_from_evidence
    (P : PreInitiationComplexPackage) (E : PreInitiationComplexEvidence P) :
    PreInitiationComplexClosed P := by
  exact And.intro E.polymerasePresent (And.intro E.assemblyClosed E.promoterRecognitionClosed)

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
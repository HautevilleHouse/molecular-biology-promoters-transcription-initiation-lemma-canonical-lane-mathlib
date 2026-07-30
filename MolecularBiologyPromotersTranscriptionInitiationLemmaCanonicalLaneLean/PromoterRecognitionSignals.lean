import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure PromoterRecognitionPackage where
  tataBox : Prop
  initiatorElement : Prop
  downstreamCoreElement : Prop
  transcriptionFactorBinding : Prop

structure PromoterRecognitionEvidence (P : PromoterRecognitionPackage) where
  tataBoxClosed : P.tataBox
  initiatorElementClosed : P.initiatorElement
  downstreamCoreElementClosed : P.downstreamCoreElement
  transcriptionFactorBindingClosed : P.transcriptionFactorBinding

def PromoterRecognitionClosed (P : PromoterRecognitionPackage) : Prop :=
  P.tataBox ∧ P.initiatorElement ∧ P.downstreamCoreElement ∧ P.transcriptionFactorBinding

theorem promoter_recognition_closed_from_evidence
    (P : PromoterRecognitionPackage) (E : PromoterRecognitionEvidence P) :
    PromoterRecognitionClosed P := by
  exact And.intro E.tataBoxClosed
    (And.intro E.initiatorElementClosed
      (And.intro E.downstreamCoreElementClosed E.transcriptionFactorBindingClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
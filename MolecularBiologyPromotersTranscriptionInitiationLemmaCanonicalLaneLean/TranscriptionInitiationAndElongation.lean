import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionInitiationAndElongation where
  firstPhosphodiesterBondFormed : Prop
  sigmaFactorReleased : Prop
  elongationComplexFormed : Prop
  rnaTranscriptSynthesized : Prop
  terminationSignaled : Prop

structure TranscriptionInitiationAndElongationEvidence (T : TranscriptionInitiationAndElongation) where
  firstPhosphodiesterBondFormedClosed : T.firstPhosphodiesterBondFormed
  sigmaFactorReleasedClosed : T.sigmaFactorReleased
  elongationComplexFormedClosed : T.elongationComplexFormed
  rnaTranscriptSynthesizedClosed : T.rnaTranscriptSynthesized
  terminationSignaledClosed : T.terminationSignaled

def TranscriptionInitiationAndElongationClosed (T : TranscriptionInitiationAndElongation) : Prop :=
  T.firstPhosphodiesterBondFormed ∧ T.sigmaFactorReleased ∧ T.elongationComplexFormed ∧ T.rnaTranscriptSynthesized ∧ T.terminationSignaled

theorem transcription_initiation_and_elongation_closed_from_evidence
    (T : TranscriptionInitiationAndElongation) (E : TranscriptionInitiationAndElongationEvidence T) :
    TranscriptionInitiationAndElongationClosed T := by
  exact And.intro E.firstPhosphodiesterBondFormedClosed
    (And.intro E.sigmaFactorReleasedClosed
      (And.intro E.elongationComplexFormedClosed
        (And.intro E.rnaTranscriptSynthesizedClosed E.terminationSignaledClosed)))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
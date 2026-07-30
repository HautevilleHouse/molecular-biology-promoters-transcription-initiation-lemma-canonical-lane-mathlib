import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure PromoterRecognitionAndClosedComplex where
  promoterSequenceRecognized : Prop
  sigmaFactorBinds : Prop
  closedComplexStable : Prop
  dnaMelted : Prop
  transcriptionBubbleFormed : Prop

structure PromoterRecognitionAndClosedComplexEvidence (P : PromoterRecognitionAndClosedComplex) where
  promoterSequenceRecognizedClosed : P.promoterSequenceRecognized
  sigmaFactorBindsClosed : P.sigmaFactorBinds
  closedComplexStableClosed : P.closedComplexStable
  dnaMeltedClosed : P.dnaMelted
  transcriptionBubbleFormedClosed : P.transcriptionBubbleFormed

def PromoterRecognitionAndClosedComplexClosed (P : PromoterRecognitionAndClosedComplex) : Prop :=
  P.promoterSequenceRecognized ∧ P.sigmaFactorBinds ∧ P.closedComplexStable ∧ P.dnaMelted ∧ P.transcriptionBubbleFormed

theorem promoter_recognition_and_closed_complex_closed_from_evidence
    (P : PromoterRecognitionAndClosedComplex) (E : PromoterRecognitionAndClosedComplexEvidence P) :
    PromoterRecognitionAndClosedComplexClosed P := by
  exact And.intro E.promoterSequenceRecognizedClosed
    (And.intro E.sigmaFactorBindsClosed
      (And.intro E.closedComplexStableClosed
        (And.intro E.dnaMeltedClosed E.transcriptionBubbleFormedClosed)))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
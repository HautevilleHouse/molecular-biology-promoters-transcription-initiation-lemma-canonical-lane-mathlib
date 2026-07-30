import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptInitiationLemmaPackage where
  promoterRecognized : Prop
  complexAssembled : Prop
  initiationEfficient : Prop

structure TranscriptInitiationLemmaEvidence (P : TranscriptInitiationLemmaPackage) where
  promoterRecognizedClosed : P.promoterRecognized
  complexAssembledClosed : P.complexAssembled
  initiationEfficientClosed : P.initiationEfficient

def TranscriptInitiationLemmaClosed (P : TranscriptInitiationLemmaPackage) : Prop :=
  P.promoterRecognized ∧ P.complexAssembled ∧ P.initiationEfficient

theorem transcript_initiation_lemma_closed_from_evidence
    (P : TranscriptInitiationLemmaPackage) (E : TranscriptInitiationLemmaEvidence P) :
    TranscriptInitiationLemmaClosed P := by
  exact And.intro E.promoterRecognizedClosed (And.intro E.complexAssembledClosed E.initiationEfficientClosed)

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
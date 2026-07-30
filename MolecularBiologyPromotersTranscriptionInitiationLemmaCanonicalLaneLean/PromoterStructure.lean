import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure PromoterRegion where
  dnaSequence : String
  tataBoxPresent : Prop
  initiatorElementPresent : Prop
  downstreamCoreElementPresent : Prop
  transcriptionStartSite : Nat
  tataBoxPresentTerm : tataBoxPresent
  initiatorElementPresentTerm : initiatorElementPresent
  downstreamCoreElementPresentTerm : downstreamCoreElementPresent

structure PromoterRecognitionEvidence (P : PromoterRegion) where
  tataBoxRecognized : P.tataBoxPresent
  initiatorElementRecognized : P.initiatorElementPresent
  downstreamCoreElementRecognized : P.downstreamCoreElementPresent
  transcriptionStartSiteIdentified : P.transcriptionStartSite > 0

def PromoterRecognitionClosed (P : PromoterRegion) : Prop :=
  P.tataBoxPresent ∧ P.initiatorElementPresent ∧ P.downstreamCoreElementPresent ∧ P.transcriptionStartSite > 0

theorem promoter_recognition_closed_from_evidence (P : PromoterRegion)
    (E : PromoterRecognitionEvidence P) : PromoterRecognitionClosed P := by
  exact And.intro E.tataBoxRecognized (And.intro E.initiatorElementRecognized
    (And.intro E.downstreamCoreElementRecognized E.transcriptionStartSiteIdentified))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse

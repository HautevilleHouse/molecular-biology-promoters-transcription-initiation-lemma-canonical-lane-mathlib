import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionFactor where
  name : String
  bindingSite : String
  bound : Prop

structure BasalTranscriptionFactorPackage where
  tfiid : TranscriptionFactor
  tbp : TranscriptionFactor
  tfiia : TranscriptionFactor
  tfiib : TranscriptionFactor
  tfiie : TranscriptionFactor
  tfiif : TranscriptionFactor
  tfiih : TranscriptionFactor
  polII : TranscriptionFactor
  preInitiationClosed : Prop
  tfiidBound : tfiid.bound
  tbpBound : tbp.bound
  tfiiaBound : tfiia.bound
  tfiibBound : tfiib.bound
  tfiieBound : tfiie.bound
  tfiifBound : tfiif.bound
  tfiihBound : tfiih.bound
  polIIBound : polII.bound

def BasalTranscriptionFactorClosed (B : BasalTranscriptionFactorPackage) : Prop :=
  B.tfiidBound ∧ B.tbpBound ∧ B.tfiiaBound ∧ B.tfiibBound ∧ B.tfiieBound ∧ B.tfiifBound ∧ B.tfiihBound ∧ B.polIIBound

theorem basal_transcription_factor_closed (B : BasalTranscriptionFactorPackage) : BasalTranscriptionFactorClosed B := by
  exact And.intro B.tfiidBound (And.intro B.tbpBound (And.intro B.tfiiaBound (And.intro B.tfiibBound (And.intro B.tfiieBound (And.intro B.tfiifBound (And.intro B.tfiihBound B.polIIBound))))))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
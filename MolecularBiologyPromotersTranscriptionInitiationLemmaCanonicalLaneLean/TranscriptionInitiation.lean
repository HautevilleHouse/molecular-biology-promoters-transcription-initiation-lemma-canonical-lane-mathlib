import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.PromoterStructure

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionInitiationPackage (P : PromoterRegion) where
  preInitiationComplexFormation : Prop
  rnaPolymeraseIIBinds : Prop
  transcriptionBubbleOpens : Prop
  firstPhosphodiesterBondFormed : Prop

def TranscriptionInitiationEvidence {P : PromoterRegion} (T : TranscriptionInitiationPackage P) : Prop :=
  T.preInitiationComplexFormation ∧ T.rnaPolymeraseIIBinds ∧ T.transcriptionBubbleOpens ∧ T.firstPhosphodiesterBondFormed

def TranscriptionInitiationClosed {P : PromoterRegion} (T : TranscriptionInitiationPackage P) : Prop :=
  T.preInitiationComplexFormation ∧ T.rnaPolymeraseIIBinds ∧ T.transcriptionBubbleOpens ∧ T.firstPhosphodiesterBondFormed

theorem transcription_initiation_closed_from_evidence {P : PromoterRegion}
    (T : TranscriptionInitiationPackage P) (E : TranscriptionInitiationEvidence T) :
    TranscriptionInitiationClosed T := by
  exact And.intro E.preInitiationComplexFormationTerm (And.intro E.rnaPolymeraseIIBindsTerm
    (And.intro E.transcriptionBubbleOpensTerm E.firstPhosphodiesterBondFormedTerm))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.PromoterStructure
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.TranscriptionFactors

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure InitiationDynamicsPackage (C : CorePromoterPackage) (B : BasalTranscriptionFactorPackage) where
  promoterOpening : Prop
  transcriptionBubble : Prop
  firstPhosphodiesterBond : Prop
  promoterEscape : Prop
  openClosed : promoterOpening
  bubbleClosed : transcriptionBubble
  bondClosed : firstPhosphodiesterBond
  escapeClosed : promoterEscape

def InitiationDynamicsClosed (C : CorePromoterPackage) (B : BasalTranscriptionFactorPackage) (D : InitiationDynamicsPackage C B) : Prop :=
  D.promoterOpening ∧ D.transcriptionBubble ∧ D.firstPhosphodiesterBond ∧ D.promoterEscape

theorem initiation_dynamics_closed (C : CorePromoterPackage) (B : BasalTranscriptionFactorPackage) (D : InitiationDynamicsPackage C B) : InitiationDynamicsClosed C B D := by
  exact And.intro D.openClosed (And.intro D.bubbleClosed (And.intro D.bondClosed D.escapeClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
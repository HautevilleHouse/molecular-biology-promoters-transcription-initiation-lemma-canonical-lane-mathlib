import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.RegulatoryElementBridge

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

def ConstrainedTranscriptionInitiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_transcription_initiation_endgame (A : AdmissibleClass) :
    ConstrainedTranscriptionInitiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse

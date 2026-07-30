import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.PromoterEscapeAndElongation

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure RegulatoryFeedbackPackage {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A}
    {E : PromoterEscapePackage G A O} where
  enhancerBinding : Prop
  silencerBinding : Prop
  chromatinRemodeling : Prop
  methylationRegulation : Prop
  feedbackLoopTermination : Prop

structure RegulatoryFeedbackEvidence {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A}
    {E : PromoterEscapePackage G A O}
    (R : RegulatoryFeedbackPackage G A O E) where
  enhancerBindingClosed : R.enhancerBinding
  silencerBindingClosed : R.silencerBinding
  chromatinRemodelingClosed : R.chromatinRemodeling
  methylationRegulationClosed : R.methylationRegulation
  feedbackLoopTerminationClosed : R.feedbackLoopTermination

def RegulatoryFeedbackClosed {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A}
    {E : PromoterEscapePackage G A O}
    (R : RegulatoryFeedbackPackage G A O E) : Prop :=
  R.enhancerBinding ∧ R.silencerBinding ∧ R.chromatinRemodeling ∧
  R.methylationRegulation ∧ R.feedbackLoopTermination

theorem regulatory_feedback_closed_from_evidence
    {G : TranscriptionInitiationPackage} {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A} {E : PromoterEscapePackage G A O}
    (R : RegulatoryFeedbackPackage G A O E) (Ev : RegulatoryFeedbackEvidence R) :
    RegulatoryFeedbackClosed R := by
  exact And.intro Ev.enhancerBindingClosed
    (And.intro Ev.silencerBindingClosed
      (And.intro Ev.chromatinRemodelingClosed
        (And.intro Ev.methylationRegulationClosed Ev.feedbackLoopTerminationClosed)))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
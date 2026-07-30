import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionInitiationComplex where
  polymeraseType : String
  generalTranscriptionFactors : List String
  mediatorComplex : Bool
  chromatinState : String
  tssPosition : Nat

structure TranscriptionInitiationComplexEvidence (T : TranscriptionInitiationComplex) where
  polymeraseTypeClosed : T.polymeraseType ∈ ["RNAPII", "RNAPI", "RNAPIII"]
  generalTranscriptionFactorsClosed : T.generalTranscriptionFactors.length ≥ 6
  mediatorComplexClosed : T.mediatorComplex ∨ ¬T.mediatorComplex
  chromatinStateClosed : T.chromatinState ∈ ["open", "closed", "poised"]
  tssPositionClosed : T.tssPosition ≥ 0

def TranscriptionInitiationComplexClosed (T : TranscriptionInitiationComplex) : Prop :=
  T.polymeraseType ∈ ["RNAPII", "RNAPI", "RNAPIII"] ∧ T.generalTranscriptionFactors.length ≥ 6 ∧ T.chromatinState ∈ ["open", "closed", "poised"] ∧ T.tssPosition ≥ 0

theorem transcription_initiation_complex_closed_from_evidence (T : TranscriptionInitiationComplex) (E : TranscriptionInitiationComplexEvidence T) : TranscriptionInitiationComplexClosed T := by
  exact And.intro E.polymeraseTypeClosed (And.intro E.generalTranscriptionFactorsClosed (And.intro E.chromatinStateClosed E.tssPositionClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionFactorBindingSite where
  sequence : String
  position : Nat
  strand : String
  affinity : Float
  evidenceType : String

structure TranscriptionFactorBindingSiteEvidence (T : TranscriptionFactorBindingSite) where
  positionClosed : T.position ≥ 0
  affinityClosed : T.affinity > 0.0
  evidenceTypeClosed : T.evidenceType ∈ ["CHIP-seq", "EMSA", "Footprinting"]

def TranscriptionFactorBindingSiteClosed (T : TranscriptionFactorBindingSite) : Prop :=
  T.position ≥ 0 ∧ T.affinity > 0.0 ∧ T.evidenceType ∈ ["CHIP-seq", "EMSA", "Footprinting"]

theorem tfbs_closed_from_evidence (T : TranscriptionFactorBindingSite) (E : TranscriptionFactorBindingSiteEvidence T) : TranscriptionFactorBindingSiteClosed T := by
  exact And.intro E.positionClosed (And.intro E.affinityClosed E.evidenceTypeClosed)

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionFactor where
  name : String
  bindingMotif : String
  isGeneral : Bool
  isActivator : Bool

structure TranscriptionFactorBindingPackage where
  factors : List TranscriptionFactor
  bindingSites : List String
  cooperativity : Prop
  bindingClosed : cooperativity

structure TranscriptionFactorBindingEvidence (P : TranscriptionFactorBindingPackage) where
  generalFactorsPresent : ∀ f ∈ P.factors, f.isGeneral → f.bindingMotif ≠ ""
  activatorFactorsPresent : ∀ f ∈ P.factors, f.isActivator → f.bindingMotif ≠ ""
  cooperativityClosed : P.cooperativity

def TranscriptionFactorBindingClosed (P : TranscriptionFactorBindingPackage) : Prop :=
  P.cooperativity ∧ (∀ f ∈ P.factors, f.bindingMotif ≠ "")

theorem transcription_factor_binding_closed_from_evidence
    (P : TranscriptionFactorBindingPackage) (E : TranscriptionFactorBindingEvidence P) :
    TranscriptionFactorBindingClosed P := by
  refine And.intro E.cooperativityClosed ?_
  intro f hf
  have : f.bindingMotif ≠ "" := by
    cases f.isGeneral
    · exact E.generalFactorsPresent f hf
    · exact E.activatorFactorsPresent f hf
  exact this

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
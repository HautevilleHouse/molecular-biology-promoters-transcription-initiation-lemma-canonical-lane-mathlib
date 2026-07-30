import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure DNABindingDomain where
  domainType : Type
  motifSequence : String
  bindingAffinity : Float
  structuralMotif : Prop
  conservationScore : Float

structure DNABindingDomainEvidence (D : DNABindingDomain) where
  motifSequenceClosed : D.motifSequence.length > 0
  bindingAffinityClosed : D.bindingAffinity > 0.0
  structuralMotifClosed : D.structuralMotif
  conservationScoreClosed : D.conservationScore ≥ 0.0

def DNABindingDomainClosed (D : DNABindingDomain) : Prop :=
  D.motifSequence.length > 0 ∧ D.bindingAffinity > 0.0 ∧ D.structuralMotif ∧ D.conservationScore ≥ 0.0

theorem dna_binding_domain_closed_from_evidence (D : DNABindingDomain) (E : DNABindingDomainEvidence D) : DNABindingDomainClosed D := by
  exact And.intro E.motifSequenceClosed (And.intro E.bindingAffinityClosed (And.intro E.structuralMotifClosed E.conservationScoreClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
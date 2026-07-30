import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure RNAPolymeraseHoloenzymeAssembly where
  sigmaFactorBound : Prop
  closedComplexFormed : Prop
  promoterRecognition : Prop
  openComplexFormed : Prop
  transcriptionStart : Prop

structure RNAPolymeraseHoloenzymeAssemblyEvidence (A : RNAPolymeraseHoloenzymeAssembly) where
  sigmaFactorBoundClosed : A.sigmaFactorBound
  closedComplexFormedClosed : A.closedComplexFormed
  promoterRecognitionClosed : A.promoterRecognition
  openComplexFormedClosed : A.openComplexFormed
  transcriptionStartClosed : A.transcriptionStart

def RNAPolymeraseHoloenzymeAssemblyClosed (A : RNAPolymeraseHoloenzymeAssembly) : Prop :=
  A.sigmaFactorBound ∧ A.closedComplexFormed ∧ A.promoterRecognition ∧ A.openComplexFormed ∧ A.transcriptionStart

theorem rna_polymerase_holoenzyme_assembly_closed_from_evidence
    (A : RNAPolymeraseHoloenzymeAssembly) (E : RNAPolymeraseHoloenzymeAssemblyEvidence A) :
    RNAPolymeraseHoloenzymeAssemblyClosed A := by
  exact And.intro E.sigmaFactorBoundClosed
    (And.intro E.closedComplexFormedClosed
      (And.intro E.promoterRecognitionClosed
        (And.intro E.openComplexFormedClosed E.transcriptionStartClosed)))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionInitiationPackage where
  rnaPolymeraseBinding : Prop
  preInitiationComplexAssembly : Prop
  dnaTemplateStrand : Prop
  transcriptionStartSiteIdentified : Prop

structure TranscriptionInitiationEvidence (G : TranscriptionInitiationPackage) where
  rnaPolymeraseBindingClosed : G.rnaPolymeraseBinding
  preInitiationComplexAssemblyClosed : G.preInitiationComplexAssembly
  dnaTemplateStrandClosed : G.dnaTemplateStrand
  transcriptionStartSiteIdentifiedClosed : G.transcriptionStartSiteIdentified

def TranscriptionInitiationClosed (G : TranscriptionInitiationPackage) : Prop :=
  G.rnaPolymeraseBinding ∧ G.preInitiationComplexAssembly ∧
  G.dnaTemplateStrand ∧ G.transcriptionStartSiteIdentified

theorem transcription_initiation_closed_from_evidence
    (G : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence G) :
    TranscriptionInitiationClosed G := by
  exact And.intro E.rnaPolymeraseBindingClosed
    (And.intro E.preInitiationComplexAssemblyClosed
      (And.intro E.dnaTemplateStrandClosed E.transcriptionStartSiteIdentifiedClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
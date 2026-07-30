import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.TranscriptionInitiationComponents

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure TranscriptionFactorAssemblyPackage {G : TranscriptionInitiationPackage} where
  tfiidBinding : Prop
  tfiiaBinding : Prop
  tfiibRecruitment : Prop
  tfiifPolymeraseEntry : Prop
  tfiieHHelicaseActivity : Prop

structure TranscriptionFactorAssemblyEvidence {G : TranscriptionInitiationPackage}
    (A : TranscriptionFactorAssemblyPackage G) where
  tfiidBindingClosed : A.tfiidBinding
  tfiiaBindingClosed : A.tfiiaBinding
  tfiibRecruitmentClosed : A.tfiibRecruitment
  tfiifPolymeraseEntryClosed : A.tfiifPolymeraseEntry
  tfiieHHelicaseActivityClosed : A.tfiieHHelicaseActivity

def TranscriptionFactorAssemblyClosed {G : TranscriptionInitiationPackage}
    (A : TranscriptionFactorAssemblyPackage G) : Prop :=
  A.tfiidBinding ∧ A.tfiiaBinding ∧ A.tfiibRecruitment ∧
  A.tfiifPolymeraseEntry ∧ A.tfiieHHelicaseActivity

theorem transcription_factor_assembly_closed_from_evidence
    {G : TranscriptionInitiationPackage} (A : TranscriptionFactorAssemblyPackage G)
    (E : TranscriptionFactorAssemblyEvidence A) :
    TranscriptionFactorAssemblyClosed A := by
  exact And.intro E.tfiidBindingClosed
    (And.intro E.tfiiaBindingClosed
      (And.intro E.tfiibRecruitmentClosed
        (And.intro E.tfiifPolymeraseEntryClosed E.tfiieHHelicaseActivityClosed)))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
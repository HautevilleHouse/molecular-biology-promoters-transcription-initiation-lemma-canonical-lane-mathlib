import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.OpenComplexFormation

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure PromoterEscapePackage {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A} where
  abortiveInitiationResolved : Prop
  sigmaFactorRelease : Prop
  elongationComplexStabilization : Prop
  productiveElongationEntry : Prop

structure PromoterEscapeEvidence {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A}
    (E : PromoterEscapePackage G A O) where
  abortiveInitiationResolvedClosed : E.abortiveInitiationResolved
  sigmaFactorReleaseClosed : E.sigmaFactorRelease
  elongationComplexStabilizationClosed : E.elongationComplexStabilization
  productiveElongationEntryClosed : E.productiveElongationEntry

def PromoterEscapeClosed {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A}
    (E : PromoterEscapePackage G A O) : Prop :=
  E.abortiveInitiationResolved ∧ E.sigmaFactorRelease ∧
  E.elongationComplexStabilization ∧ E.productiveElongationEntry

theorem promoter_escape_closed_from_evidence
    {G : TranscriptionInitiationPackage} {A : TranscriptionFactorAssemblyPackage G}
    {O : OpenComplexFormationPackage G A} (E : PromoterEscapePackage G A O)
    (Ev : PromoterEscapeEvidence E) : PromoterEscapeClosed E := by
  exact And.intro Ev.abortiveInitiationResolvedClosed
    (And.intro Ev.sigmaFactorReleaseClosed
      (And.intro Ev.elongationComplexStabilizationClosed Ev.productiveElongationEntryClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
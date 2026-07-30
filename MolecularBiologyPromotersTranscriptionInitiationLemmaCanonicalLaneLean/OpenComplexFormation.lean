import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.TranscriptionFactorAssembly

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure OpenComplexFormationPackage {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G} where
  dnaMeltingAtStartSite : Prop
  templateStrandExposure : Prop
  rnaPolymeraseActiveSiteEngagement : Prop
  firstPhosphodiesterBondFormation : Prop

structure OpenComplexFormationEvidence {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    (O : OpenComplexFormationPackage G A) where
  dnaMeltingAtStartSiteClosed : O.dnaMeltingAtStartSite
  templateStrandExposureClosed : O.templateStrandExposure
  rnaPolymeraseActiveSiteEngagementClosed : O.rnaPolymeraseActiveSiteEngagement
  firstPhosphodiesterBondFormationClosed : O.firstPhosphodiesterBondFormation

def OpenComplexFormationClosed {G : TranscriptionInitiationPackage}
    {A : TranscriptionFactorAssemblyPackage G}
    (O : OpenComplexFormationPackage G A) : Prop :=
  O.dnaMeltingAtStartSite ∧ O.templateStrandExposure ∧
  O.rnaPolymeraseActiveSiteEngagement ∧ O.firstPhosphodiesterBondFormation

theorem open_complex_formation_closed_from_evidence
    {G : TranscriptionInitiationPackage} {A : TranscriptionFactorAssemblyPackage G}
    (O : OpenComplexFormationPackage G A) (E : OpenComplexFormationEvidence O) :
    OpenComplexFormationClosed O := by
  exact And.intro E.dnaMeltingAtStartSiteClosed
    (And.intro E.templateStrandExposureClosed
      (And.intro E.rnaPolymeraseActiveSiteEngagementClosed E.firstPhosphodiesterBondFormationClosed))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
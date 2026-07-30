import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean.TranscriptionInitiation

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure RegulatoryElementPackage {P : PromoterRegion} where
  enhancerBinding : Prop
  repressorBinding : Prop
  chromatinModification : Prop
  enhancerBindingTerm : enhancerBinding
  repressorBindingTerm : repressorBinding
  chromatinModificationTerm : chromatinModification

def RegulatoryElementEvidence {P : PromoterRegion} (R : RegulatoryElementPackage P) : Prop :=
  R.enhancerBinding ∧ R.repressorBinding ∧ R.chromatinModification

def RegulatoryElementClosed {P : PromoterRegion} (R : RegulatoryElementPackage P) : Prop :=
  R.enhancerBinding ∧ R.repressorBinding ∧ R.chromatinModification

theorem regulatory_element_closed_from_evidence {P : PromoterRegion}
    (R : RegulatoryElementPackage P) (E : RegulatoryElementEvidence R) :
    RegulatoryElementClosed R := by
  exact And.intro E.enhancerBindingTerm (And.intro E.repressorBindingTerm E.chromatinModificationTerm)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (P : PromoterRegion) (R : RegulatoryElementPackage P),
    RegulatoryElementClosed R

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure InitiationEfficiencyPackage where
  promoterStrength : Nat
  factorAffinity : Nat
  openComplexFormation : Prop
  initiationRate : Prop
  rateClosed : initiationRate

structure InitiationEfficiencyEvidence (P : InitiationEfficiencyPackage) where
  strengthPositive : P.promoterStrength > 0
  affinityPositive : P.factorAffinity > 0
  openComplexFormationClosed : P.openComplexFormation
  initiationRateClosed : P.initiationRate

def InitiationEfficiencyClosed (P : InitiationEfficiencyPackage) : Prop :=
  P.openComplexFormation ∧ P.initiationRate ∧ (P.promoterStrength > 0) ∧ (P.factorAffinity > 0)

theorem initiation_efficiency_closed_from_evidence
    (P : InitiationEfficiencyPackage) (E : InitiationEfficiencyEvidence P) :
    InitiationEfficiencyClosed P := by
  exact And.intro E.openComplexFormationClosed
    (And.intro E.initiationRateClosed (And.intro E.strengthPositive E.affinityPositive))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
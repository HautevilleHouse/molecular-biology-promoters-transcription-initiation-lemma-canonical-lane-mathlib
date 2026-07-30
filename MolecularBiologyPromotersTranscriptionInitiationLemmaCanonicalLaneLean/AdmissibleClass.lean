import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure PromoterAdmittedObject where
  sequence : String
  promoterClass : String
  closed : Prop

structure AdmissibleClass where
  object : PromoterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PromoterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
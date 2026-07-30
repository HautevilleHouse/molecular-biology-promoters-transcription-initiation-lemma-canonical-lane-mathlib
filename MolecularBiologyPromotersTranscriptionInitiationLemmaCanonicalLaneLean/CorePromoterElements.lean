import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean

structure CorePromoterElements where
  tataBoxPresent : Prop
  initiatorElementPresent : Prop
  downstreamCoreElementPresent : Prop
  breElementPresent : Prop
  dpeElementPresent : Prop

structure CorePromoterElementsEvidence (C : CorePromoterElements) where
  tataBoxPresentClosed : C.tataBoxPresent
  initiatorElementPresentClosed : C.initiatorElementPresent
  downstreamCoreElementPresentClosed : C.downstreamCoreElementPresent
  breElementPresentClosed : C.breElementPresent
  dpeElementPresentClosed : C.dpeElementPresent

def CorePromoterElementsClosed (C : CorePromoterElements) : Prop :=
  C.tataBoxPresent ∧ C.initiatorElementPresent ∧ C.downstreamCoreElementPresent ∧ C.breElementPresent ∧ C.dpeElementPresent

theorem core_promoter_elements_closed_from_evidence
    (C : CorePromoterElements) (E : CorePromoterElementsEvidence C) :
    CorePromoterElementsClosed C := by
  exact And.intro E.tataBoxPresentClosed
    (And.intro E.initiatorElementPresentClosed
      (And.intro E.downstreamCoreElementPresentClosed
        (And.intro E.breElementPresentClosed E.dpeElementPresentClosed)))

end MolecularBiologyPromotersTranscriptionInitiationLemmaCanonicalLaneLean
end HautevilleHouse
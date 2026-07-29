import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure InterruptControllerPackage where
  interruptLatencyBounded : Prop
  priorityResolverCorrect : Prop
  nestedInterruptsHandled : Prop
  vectorTableCorrect : Prop

structure InterruptControllerEvidence (I : InterruptControllerPackage) where
  interruptLatencyBoundedClosed : I.interruptLatencyBounded
  priorityResolverCorrectClosed : I.priorityResolverCorrect
  nestedInterruptsHandledClosed : I.nestedInterruptsHandled
  vectorTableCorrectClosed : I.vectorTableCorrect

def InterruptControllerClosed (I : InterruptControllerPackage) : Prop :=
  I.interruptLatencyBounded ∧ I.priorityResolverCorrect ∧ I.nestedInterruptsHandled ∧ I.vectorTableCorrect

theorem interrupt_controller_closed_from_evidence (I : InterruptControllerPackage) (E : InterruptControllerEvidence I) : InterruptControllerClosed I := by
  exact And.intro E.interruptLatencyBoundedClosed
    (And.intro E.priorityResolverCorrectClosed
      (And.intro E.nestedInterruptsHandledClosed E.vectorTableCorrectClosed))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
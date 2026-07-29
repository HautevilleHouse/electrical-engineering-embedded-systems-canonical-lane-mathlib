import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.RealTimeSchedulingPackage

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure SignalProcessingPackage {P : FirmwareVerificationPackage}
    {R : RealTimeSchedulingPackage P} where
  filterDesign : Type u
  frequencyResponse : Prop
  stabilityGuaranteed : Prop
  latencyBounds : Prop

structure SignalProcessingEvidence {P : FirmwareVerificationPackage}
    {R : RealTimeSchedulingPackage P} (S : SignalProcessingPackage R) where
  frequencyResponseClosed : S.frequencyResponse
  stabilityGuaranteedClosed : S.stabilityGuaranteed
  latencyBoundsClosed : S.latencyBounds

def SignalProcessingClosed {P : FirmwareVerificationPackage}
    {R : RealTimeSchedulingPackage P} (S : SignalProcessingPackage R) : Prop :=
  S.frequencyResponse ∧ S.stabilityGuaranteed ∧ S.latencyBounds

theorem signal_processing_closed_from_evidence
    {P : FirmwareVerificationPackage} {R : RealTimeSchedulingPackage P}
    (S : SignalProcessingPackage R) (E : SignalProcessingEvidence S) :
    SignalProcessingClosed S := by
  exact And.intro E.frequencyResponseClosed
    (And.intro E.stabilityGuaranteedClosed E.latencyBoundsClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
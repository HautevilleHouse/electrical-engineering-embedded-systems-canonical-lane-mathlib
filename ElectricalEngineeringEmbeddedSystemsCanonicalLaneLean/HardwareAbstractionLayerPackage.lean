import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.SignalProcessingPackage

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure HardwareAbstractionLayerPackage {P : FirmwareVerificationPackage}
    {R : RealTimeSchedulingPackage P} {S : SignalProcessingPackage R} where
  registerMap : Type u
  deviceDriverCorrect : Prop
  interruptHandling : Prop
  memoryProtection : Prop

structure HardwareAbstractionLayerEvidence {P : FirmwareVerificationPackage}
    {R : RealTimeSchedulingPackage P} {S : SignalProcessingPackage R}
    (H : HardwareAbstractionLayerPackage S) where
  deviceDriverCorrectClosed : H.deviceDriverCorrect
  interruptHandlingClosed : H.interruptHandling
  memoryProtectionClosed : H.memoryProtection

def HardwareAbstractionLayerClosed {P : FirmwareVerificationPackage}
    {R : RealTimeSchedulingPackage P} {S : SignalProcessingPackage R}
    (H : HardwareAbstractionLayerPackage S) : Prop :=
  H.deviceDriverCorrect ∧ H.interruptHandling ∧ H.memoryProtection

theorem hardware_abstraction_layer_closed_from_evidence
    {P : FirmwareVerificationPackage} {R : RealTimeSchedulingPackage P}
    {S : SignalProcessingPackage R} (H : HardwareAbstractionLayerPackage S)
    (E : HardwareAbstractionLayerEvidence H) : HardwareAbstractionLayerClosed H := by
  exact And.intro E.deviceDriverCorrectClosed
    (And.intro E.interruptHandlingClosed E.memoryProtectionClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.HardwareAbstractionPackage

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure VerificationBridgePackage {A : AdmissibleClass}
    (H : HardwareAbstractionPackage A) (C : EmbeddedControlPackage A) (S : RealTimeSchedulingPackage A) where
  hardwareControlConsistency : Prop
  schedulingControlConsistency : Prop
  endToEndCorrectness : Prop

structure VerificationBridgeEvidence {A : AdmissibleClass}
    {H : HardwareAbstractionPackage A} {C : EmbeddedControlPackage A} {S : RealTimeSchedulingPackage A}
    (V : VerificationBridgePackage H C S) where
  hardwareControlConsistencyClosed : V.hardwareControlConsistency
  schedulingControlConsistencyClosed : V.schedulingControlConsistency
  endToEndCorrectnessClosed : V.endToEndCorrectness

def VerificationBridgeClosed {A : AdmissibleClass}
    {H : HardwareAbstractionPackage A} {C : EmbeddedControlPackage A} {S : RealTimeSchedulingPackage A}
    (V : VerificationBridgePackage H C S) : Prop :=
  V.hardwareControlConsistency ∧ V.schedulingControlConsistency ∧ V.endToEndCorrectness

theorem verification_bridge_closed_from_evidence
    {A : AdmissibleClass} {H : HardwareAbstractionPackage A} {C : EmbeddedControlPackage A} {S : RealTimeSchedulingPackage A}
    (V : VerificationBridgePackage H C S) (E : VerificationBridgeEvidence V) :
    VerificationBridgeClosed V := by
  exact And.intro E.hardwareControlConsistencyClosed
    (And.intro E.schedulingControlConsistencyClosed E.endToEndCorrectnessClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
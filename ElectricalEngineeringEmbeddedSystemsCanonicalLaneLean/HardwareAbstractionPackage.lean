import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure HardwareAbstractionPackage (A : AdmissibleClass) where
  deviceDriversFunctional : Prop
  interruptHandlingCorrect : Prop
  memoryManagementSafe : Prop

structure HardwareAbstractionEvidence {A : AdmissibleClass} (H : HardwareAbstractionPackage A) where
  deviceDriversFunctionalClosed : H.deviceDriversFunctional
  interruptHandlingCorrectClosed : H.interruptHandlingCorrect
  memoryManagementSafeClosed : H.memoryManagementSafe

def HardwareAbstractionClosed {A : AdmissibleClass} (H : HardwareAbstractionPackage A) : Prop :=
  H.deviceDriversFunctional ∧ H.interruptHandlingCorrect ∧ H.memoryManagementSafe

theorem hardware_abstraction_closed_from_evidence
    {A : AdmissibleClass} (H : HardwareAbstractionPackage A)
    (E : HardwareAbstractionEvidence H) : HardwareAbstractionClosed H := by
  exact And.intro E.deviceDriversFunctionalClosed
    (And.intro E.interruptHandlingCorrectClosed E.memoryManagementSafeClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
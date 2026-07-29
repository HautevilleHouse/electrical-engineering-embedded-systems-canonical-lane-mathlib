import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure FirmwareVerificationPackage where
  formalModel : Type u
  specificationSatisfied : Prop
  correctnessProof : Prop
  runtimeAssertions : Prop

structure FirmwareVerificationEvidence (P : FirmwareVerificationPackage) where
  specificationSatisfiedClosed : P.specificationSatisfied
  correctnessProofClosed : P.correctnessProof
  runtimeAssertionsClosed : P.runtimeAssertions

def FirmwareVerificationClosed (P : FirmwareVerificationPackage) : Prop :=
  P.specificationSatisfied ∧ P.correctnessProof ∧ P.runtimeAssertions

theorem firmware_verification_closed_from_evidence
    (P : FirmwareVerificationPackage) (E : FirmwareVerificationEvidence P) :
    FirmwareVerificationClosed P := by
  exact And.intro E.specificationSatisfiedClosed
    (And.intro E.correctnessProofClosed E.runtimeAssertionsClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure EmbeddedControlPackage (A : AdmissibleClass) where
  controllerType : String
  stabilityGuaranteed : Prop
  observabilityEnsured : Prop
  controlLawImplemented : Prop

structure EmbeddedControlEvidence {A : AdmissibleClass} (C : EmbeddedControlPackage A) where
  stabilityGuaranteedClosed : C.stabilityGuaranteed
  observabilityEnsuredClosed : C.observabilityEnsured
  controlLawImplementedClosed : C.controlLawImplemented

def EmbeddedControlClosed {A : AdmissibleClass} (C : EmbeddedControlPackage A) : Prop :=
  C.stabilityGuaranteed ∧ C.observabilityEnsured ∧ C.controlLawImplemented

theorem embedded_control_closed_from_evidence
    {A : AdmissibleClass} (C : EmbeddedControlPackage A)
    (E : EmbeddedControlEvidence C) : EmbeddedControlClosed C := by
  exact And.intro E.stabilityGuaranteedClosed
    (And.intro E.observabilityEnsuredClosed E.controlLawImplementedClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
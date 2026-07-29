import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.FirmwareVerificationPackage

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure RealTimeSchedulingPackage {P : FirmwareVerificationPackage} where
  taskSet : Type u
  schedulabilityCondition : Prop
  deadlineMet : Prop
  resourceConflictFree : Prop

structure RealTimeSchedulingEvidence {P : FirmwareVerificationPackage}
    (R : RealTimeSchedulingPackage P) where
  schedulabilityConditionClosed : R.schedulabilityCondition
  deadlineMetClosed : R.deadlineMet
  resourceConflictFreeClosed : R.resourceConflictFree

def RealTimeSchedulingClosed {P : FirmwareVerificationPackage}
    (R : RealTimeSchedulingPackage P) : Prop :=
  R.schedulabilityCondition ∧ R.deadlineMet ∧ R.resourceConflictFree

theorem real_time_scheduling_closed_from_evidence
    {P : FirmwareVerificationPackage} (R : RealTimeSchedulingPackage P)
    (E : RealTimeSchedulingEvidence R) : RealTimeSchedulingClosed R := by
  exact And.intro E.schedulabilityConditionClosed
    (And.intro E.deadlineMetClosed E.resourceConflictFreeClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
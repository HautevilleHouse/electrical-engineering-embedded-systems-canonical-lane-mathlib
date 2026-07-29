import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure RealTimeSchedulingPackage where
  taskSet : Type u
  schedulingPolicy : Prop
  deadlineMonotonic : Prop
  schedulabilityTest : Prop
  worstCaseExecutionTime : Prop

structure RealTimeSchedulingEvidence (R : RealTimeSchedulingPackage) where
  schedulingPolicyClosed : R.schedulingPolicy
  deadlineMonotonicClosed : R.deadlineMonotonic
  schedulabilityTestClosed : R.schedulabilityTest
  worstCaseExecutionTimeClosed : R.worstCaseExecutionTime

def RealTimeSchedulingClosed (R : RealTimeSchedulingPackage) : Prop :=
  R.schedulingPolicy ∧ R.deadlineMonotonic ∧ R.schedulabilityTest ∧ R.worstCaseExecutionTime

theorem real_time_scheduling_closed_from_evidence (R : RealTimeSchedulingPackage) (E : RealTimeSchedulingEvidence R) : RealTimeSchedulingClosed R := by
  exact And.intro E.schedulingPolicyClosed (And.intro E.deadlineMonotonicClosed (And.intro E.schedulabilityTestClosed E.worstCaseExecutionTimeClosed))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
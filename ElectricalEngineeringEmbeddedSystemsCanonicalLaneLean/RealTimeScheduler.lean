import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure RealTimeSchedulerPackage where
  fixedPriorityScheduling : Prop
  rateMonotonicAnalysis : Prop
  deadlineMonotonicAnalysis : Prop
  schedulabilityTestPassed : Prop

structure RealTimeSchedulerEvidence (R : RealTimeSchedulerPackage) where
  fixedPrioritySchedulingClosed : R.fixedPriorityScheduling
  rateMonotonicAnalysisClosed : R.rateMonotonicAnalysis
  deadlineMonotonicAnalysisClosed : R.deadlineMonotonicAnalysis
  schedulabilityTestPassedClosed : R.schedulabilityTestPassed

def RealTimeSchedulerClosed (R : RealTimeSchedulerPackage) : Prop :=
  R.fixedPriorityScheduling ∧ R.rateMonotonicAnalysis ∧ R.deadlineMonotonicAnalysis ∧ R.schedulabilityTestPassed

theorem real_time_scheduler_closed_from_evidence (R : RealTimeSchedulerPackage) (E : RealTimeSchedulerEvidence R) : RealTimeSchedulerClosed R := by
  exact And.intro E.fixedPrioritySchedulingClosed
    (And.intro E.rateMonotonicAnalysisClosed
      (And.intro E.deadlineMonotonicAnalysisClosed E.schedulabilityTestPassedClosed))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure PowerDomainPackage where
  dynamicVoltageScaling : Prop
  powerGatingImplemented : Prop
  batteryLifeModeled : Prop
  thermalThrottlingEnabled : Prop

structure PowerDomainEvidence (P : PowerDomainPackage) where
  dynamicVoltageScalingClosed : P.dynamicVoltageScaling
  powerGatingImplementedClosed : P.powerGatingImplemented
  batteryLifeModeledClosed : P.batteryLifeModeled
  thermalThrottlingEnabledClosed : P.thermalThrottlingEnabled

def PowerDomainClosed (P : PowerDomainPackage) : Prop :=
  P.dynamicVoltageScaling ∧ P.powerGatingImplemented ∧ P.batteryLifeModeled ∧ P.thermalThrottlingEnabled

theorem power_domain_closed_from_evidence (P : PowerDomainPackage) (E : PowerDomainEvidence P) : PowerDomainClosed P := by
  exact And.intro E.dynamicVoltageScalingClosed
    (And.intro E.powerGatingImplementedClosed
      (And.intro E.batteryLifeModeledClosed E.thermalThrottlingEnabledClosed))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure PeripheralBusPackage where
  i2cProtocolCompliant : Prop
  spiTimingMet : Prop
  uartBaudRateCorrect : Prop
  canBusArbitrationCorrect : Prop

structure PeripheralBusEvidence (P : PeripheralBusPackage) where
  i2cProtocolCompliantClosed : P.i2cProtocolCompliant
  spiTimingMetClosed : P.spiTimingMet
  uartBaudRateCorrectClosed : P.uartBaudRateCorrect
  canBusArbitrationCorrectClosed : P.canBusArbitrationCorrect

def PeripheralBusClosed (P : PeripheralBusPackage) : Prop :=
  P.i2cProtocolCompliant ∧ P.spiTimingMet ∧ P.uartBaudRateCorrect ∧ P.canBusArbitrationCorrect

theorem peripheral_bus_closed_from_evidence (P : PeripheralBusPackage) (E : PeripheralBusEvidence P) : PeripheralBusClosed P := by
  exact And.intro E.i2cProtocolCompliantClosed
    (And.intro E.spiTimingMetClosed
      (And.intro E.uartBaudRateCorrectClosed E.canBusArbitrationCorrectClosed))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
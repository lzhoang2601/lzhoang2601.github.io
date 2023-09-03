DefinitionBlock ("", "SSDT", 2, "ZPSS", "IMEI", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)
    External (_SB_.PCI0.HECI, DeviceObj)
    External (_SB_.PCI0.MEI, DeviceObj)

    If ((!CondRefOf (\_SB.PCI0.IMEI) && !CondRefOf (\_SB.PCI0.HECI) && !CondRefOf (\_SB.PCI0.MEI)))
    {
        Scope (_SB.PCI0)
        {
            Device (IMEI)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}
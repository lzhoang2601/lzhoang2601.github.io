DefinitionBlock ("", "SSDT", 2, "ZPSS", "UNC", 0x00000000)
{
    External (_SB.UNC0, DeviceObj)
    External (PRBM, IntObj)

    Scope (_SB.UNC0)
    {
        Method (_INI, 0, NotSerialized)
        {
             If (_OSI ("Darwin")) {
                 PRBM = 0
             }
        }
    }
}
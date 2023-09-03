DefinitionBlock ("", "SSDT", 2, "ZPSS", "GPI0", 0x00000000)
{
    External (GPEN, FieldUnitObj)
    External (GPHD, FieldUnitObj)
    External (SBRG, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPEN = One
            SBRG = One
            GPHD = Zero
        }
    }
}


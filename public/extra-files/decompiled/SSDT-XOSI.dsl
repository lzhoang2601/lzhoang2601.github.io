DefinitionBlock ("", "SSDT", 2, "ZPSS", "XOSI", 0x00001000)
{
    Local0 = Package ()
        {
            "Windows 2001", 
            "Windows 2001.1", 
            "Windows 2001 SP1", 
            "Windows 2001 SP2", 
            "Windows 2001 SP3", 
            "Windows 2006", 
            "Windows 2006 SP1", 
            "Windows 2009", 
            "Windows 2012", 
            "Windows 2013",
            "Windows 2015",
            "Windows 2016",
            "Windows 2017",
            "Windows 2018",
            "Windows 2019",
            "Windows 2020",
            "Windows 2021",
            "Microsoft Windows NT", 
            "Microsoft Windows", 
            "Microsoft WindowsME: Millennium Edition"
        }
    If (_OSI ("Darwin"))
    {
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }
    Else
    {
        Return (_OSI (Arg0))
    }
}


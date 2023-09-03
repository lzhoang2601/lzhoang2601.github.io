DefinitionBlock ("", "SSDT", 2, "ZPSS", "RTCR", 0x00001000)
{
    // X99 Definitions
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPC0.RTC, DeviceObj)
    External (_SB_.PCI0.LPC0.RTC._STA, MethodObj)
    External (_SB_.PCI0.LPC0.RTC0, DeviceObj)
    External (_SB_.PCI0.LPC0.RTC0._STA, MethodObj)
    External (_SB_.PCI0.LPC.RTC, DeviceObj)
    External (_SB_.PCI0.LPC.RTC._STA, MethodObj)
    External (_SB_.PCI0.LPC.RTC0, DeviceObj)
    External (_SB_.PCI0.LPC.RTC0._STA, MethodObj)
    External (_SB_.PCI0.LPCB.RTC, DeviceObj)
    External (_SB_.PCI0.LPCB.RTC._STA, MethodObj)
    External (_SB_.PCI0.LPCB.RTC0, DeviceObj)
    External (_SB_.PCI0.LPCB.RTC0._STA, MethodObj)
    External (_SB_.PCI0.SBRG.RTC, DeviceObj)
    External (_SB_.PCI0.SBRG.RTC._STA, MethodObj)
    External (_SB_.PCI0.SBRG.RTC0, DeviceObj)
    External (_SB_.PCI0.SBRG.RTC0._STA, MethodObj)
    
    // X299 Definitions
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPC0.RTC, DeviceObj)
    External (_SB_.PC00.LPC0.RTC._STA, MethodObj)
    External (_SB_.PC00.LPC0.RTC0, DeviceObj)
    External (_SB_.PC00.LPC0.RTC0._STA, MethodObj)
    External (_SB_.PC00.LPC.RTC, DeviceObj)
    External (_SB_.PC00.LPC.RTC._STA, MethodObj)
    External (_SB_.PC00.LPC.RTC0, DeviceObj)
    External (_SB_.PC00.LPC.RTC0._STA, MethodObj)
    External (_SB_.PC00.LPCB.RTC, DeviceObj)
    External (_SB_.PC00.LPCB.RTC._STA, MethodObj)
    External (_SB_.PC00.LPCB.RTC0, DeviceObj)
    External (_SB_.PC00.LPCB.RTC0._STA, MethodObj)

    // LPC0 Naming
    // X99 - RTC_ Case
    If (CondRefOf (\_SB.PCI0.LPC0.RTC))
    {
        // Create RTC1 device
        Device (\_SB.PCI0.LPC0.RTC1)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.LPC0.RTC._STA))
        {
            Scope (\_SB.PCI0.LPC0.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X99 - RTC0 Case
    If (CondRefOf (\_SB.PCI0.LPC0.RTC0))
    {
        // Create RTC2 device
        Device (\_SB.PCI0.LPC0.RTC2)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.LPC0.RTC0._STA))
        {
            Scope (\_SB.PCI0.LPC0.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // LPC Naming
        If (CondRefOf (\_SB.PCI0.LPC.RTC))
    {
        // Create RTC1 device
        Device (\_SB.PCI0.LPC.RTC1)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.LPC.RTC._STA))
        {
            Scope (\_SB.PCI0.LPC.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X99 - RTC0 Case
    If (CondRefOf (\_SB.PCI0.LPC.RTC0))
    {
        // Create RTC2 device
        Device (\_SB.PCI0.LPC.RTC2)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.LPC.RTC0._STA))
        {
            Scope (\_SB.PCI0.LPC.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // LPCB Naming
        If (CondRefOf (\_SB.PCI0.LPCB.RTC))
    {
        // Create RTC1 device
        Device (\_SB.PCI0.LPCB.RTC1)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.LPCB.RTC._STA))
        {
            Scope (\_SB.PCI0.LPCB.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X99 - RTC0 Case
    If (CondRefOf (\_SB.PCI0.LPCB.RTC0))
    {
        // Create RTC2 device
        Device (\_SB.PCI0.LPCB.RTC2)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.LPCB.RTC0._STA))
        {
            Scope (\_SB.PCI0.LPCB.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // SBRG Naming
        If (CondRefOf (\_SB.PCI0.SBRG.RTC))
    {
        // Create RTC1 device
        Device (\_SB.PCI0.SBRG.RTC1)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.SBRG.RTC._STA))
        {
            Scope (\_SB.PCI0.SBRG.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X99 - RTC0 Case
    If (CondRefOf (\_SB.PCI0.SBRG.RTC0))
    {
        // Create RTC2 device
        Device (\_SB.PCI0.SBRG.RTC2)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PCI0.SBRG.RTC0._STA))
        {
            Scope (\_SB.PCI0.SBRG.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    
    // LPC0 Naming
    // X299 - RTC_ Case
    If (CondRefOf (\_SB.PC00.LPC0.RTC))
    {
        // Create RTC3 device
        Device (\_SB.PC00.LPC0.RTC3)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PC00.LPC0.RTC._STA))
        {
            Scope (\_SB.PC00.LPC0.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X299 - RTC0 Case
    If (CondRefOf (\_SB.PC00.LPC0.RTC0))
    {
        // Create RTC4 device
        Device (\_SB.PC00.LPC0.RTC4)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PC00.LPC0.RTC0._STA))
        {
            Scope (\_SB.PC00.LPC0.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // LPC Naming
    // X299 - RTC_ Case
    If (CondRefOf (\_SB.PC00.LPC.RTC))
    {
        // Create RTC3 device
        Device (\_SB.PC00.LPC.RTC3)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PC00.LPC.RTC._STA))
        {
            Scope (\_SB.PC00.LPC.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X299 - RTC0 Case
    If (CondRefOf (\_SB.PC00.LPC.RTC0))
    {
        // Create RTC4 device
        Device (\_SB.PC00.LPC.RTC4)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PC00.LPC.RTC0._STA))
        {
            Scope (\_SB.PC00.LPC.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // LPCB Naming
    // X299 - RTC_ Case
    If (CondRefOf (\_SB.PC00.LPCB.RTC))
    {
        // Create RTC3 device
        Device (\_SB.PC00.LPCB.RTC3)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PC00.LPCB.RTC._STA))
        {
            Scope (\_SB.PC00.LPCB.RTC)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
    // X299 - RTC0 Case
    If (CondRefOf (\_SB.PC00.LPCB.RTC0))
    {
        // Create RTC4 device
        Device (\_SB.PC00.LPCB.RTC4)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum 1
                    0x0070,             // Range Maximum 1
                    0x01,               // Alignment 1
                    0x04,               // Length 1      (Expanded to include 0x72 and 0x73)
                    )
                IO (Decode16,
                    0x0074,             // Range Minimum 2
                    0x0074,             // Range Maximum 2
                    0x01,               // Alignment 2
                    0x04,               // Length 2
                    )
                IRQNoFlags ()
                    {8}
            })
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
        If (!CondRefOf (\_SB.PC00.LPCB.RTC0._STA))
        {
            Scope (\_SB.PC00.LPCB.RTC0)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }
}

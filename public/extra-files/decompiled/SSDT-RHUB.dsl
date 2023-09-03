/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230331 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-RHUB.aml, Thu Aug  3 10:26:49 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000145 (325)
 *     Revision         0x02
 *     Checksum         0x08
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "RHUB"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "RHUB", 0x00001000)
{
    External (_SB_.PCI0.XHC1.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB, DeviceObj)

    If (CondRefOf (\_SB.PCI0.XHC.RHUB))
    {
        Scope (_SB.PCI0.XHC.RHUB)
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

    If (CondRefOf (\_SB.PCI0.XHCI.RHUB))
    {
        Scope (_SB.PCI0.XHCI.RHUB)
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

    If (CondRefOf (\_SB.PCI0.XHC1.RHUB))
    {
        Scope (_SB.PCI0.XHC1.RHUB)
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


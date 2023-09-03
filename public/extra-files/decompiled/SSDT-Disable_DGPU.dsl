/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230331 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-Disable_DGPU.aml, Thu Aug  3 14:09:54 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000844 (2116)
 *     Revision         0x02
 *     Checksum         0xC8
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "DGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "DGPU", 0x00000000)
{
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PG00._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0.PG00._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG1.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG1.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG2.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG2.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG_.VID_._PS0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG_.VID_._PS3, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG_.VID_.XDSM, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.PEGP.DGFX._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEGP.DGFX._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP._PS0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP._PS3, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP.XDSM, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.RP05.PXSX._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.PXSX._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX._PS0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX._PS3, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PXSX.XDSM, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.RP13.PXSX._PS0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP13.PXSX._PS3, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP13.PXSX.XDSM, MethodObj)    // 4 Arguments

    Device (DGPU)
    {
        Name (_HID, "DGPU1000")  // _HID: Hardware ID
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            _OFF ()
        }

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

        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            If (CondRefOf (\_SB.PCI0.PEG.VID._PS0))
            {
                \_SB.PCI0.PEG.VID._PS0 ()
            }

            If (CondRefOf (\_SB.PCI0.RP09.PXSX._PS0))
            {
                \_SB.PCI0.RP09.PXSX._PS0 ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PEGP._PS0))
            {
                \_SB.PCI0.RP01.PEGP._PS0 ()
            }

            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._ON))
            {
                \_SB.PCI0.PEG0.PEGP._ON ()
            }

            If (CondRefOf (\_SB.PCI0.PEG1.PEGP._ON))
            {
                \_SB.PCI0.PEG1.PEGP._ON ()
            }

            If (CondRefOf (\_SB.PCI0.PEG2.PEGP._ON))
            {
                \_SB.PCI0.PEG2.PEGP._ON ()
            }

            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._ON))
            {
                \_SB.PCI0.PEGP.DGFX._ON ()
            }

            If (CondRefOf (\_SB.PCI0.RP05.PXSX._ON))
            {
                \_SB.PCI0.RP05.PXSX._ON ()
            }

            If (CondRefOf (\_SB.PCI0.RP09.PEGP._ON))
            {
                \_SB.PCI0.RP09.PEGP._ON ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PEGP._ON))
            {
                \_SB.PCI0.RP01.PEGP._ON ()
            }

            If (CondRefOf (\_SB.PCI0.PEG0.PG00._ON))
            {
                \_SB.PCI0.PEG0.PG00._ON ()
            }

            If (CondRefOf (\_SB.PCI0.RP13.PXSX._PS0))
            {
                \_SB.PCI0.RP13.PXSX._PS0 ()
            }
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            If (CondRefOf (\_SB.PCI0.PEG.VID._PS3))
            {
                \_SB.PCI0.PEG.VID.XDSM (ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */, 0x0100, 0x1A, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x03                           // ....
                    })
                \_SB.PCI0.PEG.VID._PS3 ()
            }

            If (CondRefOf (\_SB.PCI0.RP09.PXSX._PS3))
            {
                \_SB.PCI0.RP09.PXSX.XDSM (ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */, 0x0100, 0x1A, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x03                           // ....
                    })
                \_SB.PCI0.RP09.PXSX._PS3 ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PEGP._PS3))
            {
                \_SB.PCI0.RP01.PEGP.XDSM (ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */, 0x0100, 0x1A, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x03                           // ....
                    })
                \_SB.PCI0.RP01.PEGP._PS3 ()
            }

            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF))
            {
                \_SB.PCI0.PEG0.PEGP._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.PEG1.PEGP._OFF))
            {
                \_SB.PCI0.PEG1.PEGP._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.PEG2.PEGP._OFF))
            {
                \_SB.PCI0.PEG2.PEGP._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._OFF))
            {
                \_SB.PCI0.PEGP.DGFX._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.RP05.PXSX._OFF))
            {
                \_SB.PCI0.RP05.PXSX._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.RP09.PEGP._OFF))
            {
                \_SB.PCI0.RP09.PEGP._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.RP01.PEGP._OFF))
            {
                \_SB.PCI0.RP01.PEGP._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.PEG0.PG00._OFF))
            {
                \_SB.PCI0.PEG0.PG00._OFF ()
            }

            If (CondRefOf (\_SB.PCI0.RP13.PXSX._PS3))
            {
                \_SB.PCI0.RP13.PXSX.XDSM (ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */, 0x0100, 0x1A, Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x03                           // ....
                    })
                \_SB.PCI0.RP13.PXSX._PS3 ()
            }
        }
    }
}


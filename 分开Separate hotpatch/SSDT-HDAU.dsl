
// HDAU (HDMI Audio) injection
// Note: Only for Haswell and Broadwell

DefinitionBlock("", "SSDT", 2, "G510", "HDAU", 0)
{
    External(_SB.PCI0.HDAU, DeviceObj)
    
    Method(_SB.PCI0.HDAU._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            
            "layout-id", Buffer() { 28, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },

        })
    }
}

// EOF

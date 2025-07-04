return [[
#81-710 update

[en]
Entities.gmod_subway_81-710_g.Name = 81-710 (BiLevel Cab Car)
Entities.gmod_subway_81-710_int_g.Name = 81-710 (BiLevel Cab-coach)
Entities.gmod_subway_81-508g.Name = 81-508T (BiLevel coach)

#Spawner
Spawner.710.RRI     = Radio-relay announcer #FIXME
Spawner.710.Ezh3Wagons = Use alternate intermediate cars
Spawner.710.RingType = Bell type
Spawner.710.HornType = @[Common.ALL.Horn]
Spawner.710.HornType.1 = K5LA (F40PH)
Spawner.710.HornType.2 = K5LA (GO 215)
Spawner.710.HornType.3 = K5LA (GO 238)
Spawner.710.HornType.4 = K5LA (GO 202)
Spawner.710.HornType.5 = K5LA (GO 219)
Spawner.710.HornType.6 = K5LA (GO 226)
Spawner.710.HornType.7 = K5LA (GO 244)
Spawner.710.HornType.8 = K5H (BC Rail)
Spawner.710.HornType.9 = K5LA (GO 201)
Spawner.710.HornType.10 = K5LA (GO 235)
Spawner.710.HornType.11 = K5LA (F59PH)
Spawner.710.HornType.12 = K5HL (CN/CP)
Spawner.710.HornType.13 = K3H (CP)
Spawner.710.HornType.14 = K3L (CN)
Spawner.710.HornType.15 = P2 (Metrolink)
Spawner.710.HornType.16 = P2 (CalTrain)
Spawner.710.HornType.17 = K5CA-LS (Full)
Spawner.710.HornType.18 = K5CA-LS (Soft)
Spawner.710.RingType.1 = Graham-White E-Bell
Spawner.710.RingType.2 = EMD Steel Bell (Fast)
Spawner.710.RingType.3 = GE Steel Bell
Spawner.710.RingType.4 = EMD Bronze Bell (Slow)
Spawner.710.RingType.5 = EMD Steel Bell 2
Spawner.710.RingType.6 = Hawker-Siddeley Brass Bell (Slow)
Spawner.710.RingType.7 = GE Steel Bell 2
Spawner.710.RingType.8 = Transtronic E-Bell (UTA)
Spawner.710.RingType.9 = Graham-White E-Bell 2
Spawner.710.RingType.10 = GE Steel Bell 3
Spawner.710.RingType.11 = EMD Steel Bell (Slow)
Spawner.710.RingType.12 = EMD Steel Bell 3
Spawner.710.RingType.13 = EMD Steel Bell 4
Spawner.710.RingType.14 = Hawker-Siddeley Brass Bell (Fast)
Spawner.710.RingType.15 = EMD Bronze Bell (Fast)
Spawner.710.RingType.16 = Ekyrail E-Bell

#######Buttons###########
#Common
Common.710.RK                   = Rheostat controller is in intermediate position
Common.710.SAMMSchemeOff        = SAMM stop button
Common.710.SAMMStart            = SAMM start button
Common.710.SAMMReset            = SAMM: Reset button
Common.710.SAMMXTLamp           = SAMM: Assemble drive/brake circuits by ATO
Common.710.SAMMSignal1          = SAMM: @[Common.ALL.Unsused1]
Common.710.SAMMSignal2          = SAMM: @[Common.ALL.Unsused1]
Common.710.SAMMOn               = SAMM: Switch (automatic train operation)
Common.710.SAMMUnit             = SAMM: Execution unit
Common.710.SAMMX2               = SAMM: X2 mode
Common.710.SAMMAhead            = SAMM: Catch-up mode
Common.710.SAMMAccept           = SAMM: Permission

#gmod_subway_81-710
Entities.gmod_subway_81-710_g.Buttons.AVMain.AVToggle       = @[Common.703.AV]
Entities.gmod_subway_81-710_g.Buttons.Battery.VBToggle      = @[Common.ALL.VB] @[Common.ALL.VB2]
Entities.gmod_subway_81-710_g.Buttons.AV1.VU1Toggle         = @[Common.703.VU1]
Entities.gmod_subway_81-710_g.Buttons.AV1.VU2Toggle         = @[Common.703.VU2]
Entities.gmod_subway_81-710_g.Buttons.AV1.VU3Toggle         = @[Common.703.VU3]
Entities.gmod_subway_81-710_g.Buttons.RUM.RUMToggle         = @[Common.ALL.RCARS]
Entities.gmod_subway_81-710_g.Buttons.KRR.KRRSet            = @[Common.703.KRR]
Entities.gmod_subway_81-710_g.Buttons.VU.VUToggle           = @[Common.ALL.VU]
Entities.gmod_subway_81-710_g.Buttons.VUHelper.VUToggle     = @[Common.ALL.VU]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMSchemeOffSet = @[Common.710.SAMMSchemeOff]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMStartSet     = @[Common.710.SAMMStart]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMResetSet     = @[Common.710.SAMMReset]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMXTLamp       = @[Common.710.SAMMXTLamp]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMSignal1      = @[Common.ALL.Unsused1]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMSignal2      = @[Common.ALL.Unsused1]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMOnToggle     = @[Common.710.SAMMOn]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMUnitToggle   = @[Common.710.SAMMUnit]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMX2Toggle     = @[Common.710.SAMMX2]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMAheadToggle  = @[Common.710.SAMMAhead]
Entities.gmod_subway_81-710_g.Buttons.Main.SAMMAcceptToggle = @[Common.710.SAMMAccept]
Entities.gmod_subway_81-710_g.Buttons.Main.V1Toggle         = @[Common.ALL.VMK]
Entities.gmod_subway_81-710_g.Buttons.Main.KU8Set           = @[Common.ALL.KSN]
Entities.gmod_subway_81-710_g.Buttons.Main.R_Program1Set    = @[Common.ALL.Program1]
Entities.gmod_subway_81-710_g.Buttons.Main.R_Program2Set    = @[Common.ALL.Program2]
Entities.gmod_subway_81-710_g.Buttons.Main.VU14Toggle       = Ditch lights
Entities.gmod_subway_81-710_g.Buttons.Main.DitchLightToggle = Ditch lights flashing
Entities.gmod_subway_81-710_g.Buttons.Main.GLightsToggle    = Console light
Entities.gmod_subway_81-710_g.Buttons.Main.VAHToggle        = @[Common.ALL.VAH]
Entities.gmod_subway_81-710_g.Buttons.Main.V4Set            = HEP/Lighting on
Entities.gmod_subway_81-710_g.Buttons.Main.V5Set            = HEP/Lighting off
Entities.gmod_subway_81-710_g.Buttons.Main.KU11Set          = @[Common.703.KSD]
Entities.gmod_subway_81-710_g.Buttons.Main.KVTSet           = R.S.C. Reset button
Entities.gmod_subway_81-710_g.Buttons.Main.KBSet            = @[Common.ARS.KB]
Entities.gmod_subway_81-710_g.Buttons.Main.RKLamp           = @[Common.710.RK]
Entities.gmod_subway_81-710_g.Buttons.Main.ARSToggle        = @[Common.ALL.ARS]
Entities.gmod_subway_81-710_g.Buttons.Main.R_UNchToggle     = @[Common.ALL.UNCh]
Entities.gmod_subway_81-710_g.Buttons.Main.V2Toggle         = @[Common.ALL.VUD]
Entities.gmod_subway_81-710_g.Buttons.Main.R_RadioToggle    = @[Common.ALL.R_Radio]
Entities.gmod_subway_81-710_g.Buttons.Main.ALSToggle        = @[Common.ALL.ALS]
Entities.gmod_subway_81-710_g.Buttons.Main.KU9Set           = @[Common.ALL.VRP]
Entities.gmod_subway_81-710_g.Buttons.Main.RingToggle       = Bell
Entities.gmod_subway_81-710_g.Buttons.Main.PLightsToggle    = @[Common.ALL.CabLights]
Entities.gmod_subway_81-710_g.Buttons.Main.V10Set           = @[Common.ALL.KRZD]
Entities.gmod_subway_81-710_g.Buttons.Main.PLightsToggle    = @[Common.ALL.CabLights]
Entities.gmod_subway_81-710_g.Buttons.Main.KU7Set           = @[Common.ALL.KDP]
Entities.gmod_subway_81-710_g.Buttons.Main.KU12Set          = @[Common.ALL.KDL]
Entities.gmod_subway_81-710_g.Buttons.Main.KAHSet           = @[Common.ALL.KAH]
Entities.gmod_subway_81-710_g.Buttons.Main.KU15Set          = @[Common.ALL.RMK]
Entities.gmod_subway_81-710_g.Buttons.Main.KU10Set          = @[Common.ALL.KRP]
Entities.gmod_subway_81-710_g.Buttons.Main.RSTToggle        = @[Common.ALL.VPR]
Entities.gmod_subway_81-710_g.Buttons.Main.R_GToggle        = @[Common.ALL.GCab]
Entities.gmod_subway_81-710_g.Buttons.Main.!AnnPlay         = @[Common.ALL.AnnPlay]
Entities.gmod_subway_81-710_g.Buttons.HelperPanel.V6Set         = @[Common.ALL.KDL]
Entities.gmod_subway_81-710_g.Buttons.HelperPanel.V3Toggle       = Close doors from conductor's side
Entities.gmod_subway_81-710_g.Buttons.HelperPanel.R_Program1HSet  = @[Common.ALL.Program1]
Entities.gmod_subway_81-710_g.Buttons.HelperPanel.R_Program2HSet  = @[Common.ALL.Program2]
Entities.gmod_subway_81-710_g.Buttons.RRIScreen.RRIUp             = @[Common.RRI.RRIUp]
Entities.gmod_subway_81-710_g.Buttons.RRIScreen.RRIDown           = @[Common.RRI.RRIDown]
Entities.gmod_subway_81-710_g.Buttons.RRIScreen.RRILeft           = @[Common.RRI.RRILeft]
Entities.gmod_subway_81-710_g.Buttons.RRIScreen.RRIRight          = @[Common.RRI.RRIRight]
Entities.gmod_subway_81-710_g.Buttons.RRI.RRIEnableToggle         = @[Common.RRI.RRIEnableToggle]
Entities.gmod_subway_81-710_g.Buttons.RRI.RRIRewindSet2           = @[Common.RRI.RRIRewindSet2]
Entities.gmod_subway_81-710_g.Buttons.RRI.RRIRewindSet0           = @[Common.RRI.RRIRewindSet0]
Entities.gmod_subway_81-710_g.Buttons.RRI.RRIAmplifierToggle      = @[Common.RRI.RRIAmplifierToggle]
Entities.gmod_subway_81-710_g.Buttons.RRI.!RRIOn                  = @[Common.RRI.RRIOn]
Entities.gmod_subway_81-710_g.Buttons.ASNP.R_ASNPMenuSet          = @[Common.ASNP.ASNPMenu]
Entities.gmod_subway_81-710_g.Buttons.ASNP.R_ASNPUpSet            = @[Common.ASNP.ASNPUp]
Entities.gmod_subway_81-710_g.Buttons.ASNP.R_ASNPDownSet          = @[Common.ASNP.ASNPDown]
Entities.gmod_subway_81-710_g.Buttons.ASNP.R_ASNPOnToggle         = @[Common.ASNP.ASNPOn]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.IGLA1USet       = @[Common.IGLA.Button1Up]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.IGLA1Set        = @[Common.IGLA.Button1]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.IGLA1DSet       = @[Common.IGLA.Button1Down]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.IGLA2USet       = @[Common.IGLA.Button2Up]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.IGLA2Set        = @[Common.IGLA.Button2]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.IGLA2DSet       = @[Common.IGLA.Button2Down]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.!IGLASR         = @[Common.IGLA.IGLASR]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.!IGLARX         = @[Common.IGLA.IGLARX]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.!IGLAErr        = @[Common.IGLA.IGLAErr]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.!IGLAOSP        = @[Common.IGLA.IGLAOSP]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.!IGLAPI         = @[Common.IGLA.IGLAPI]
Entities.gmod_subway_81-710_g.Buttons.IGLAButtons.!IGLAOff        = @[Common.IGLA.IGLAOff]
Entities.gmod_subway_81-710_g.Buttons.Stopkran.EmergencyBrakeValveToggle                      = @[Common.ALL.EmergencyBrakeValve]
Entities.gmod_subway_81-710_g.Buttons.ParkingBrake.ParkingBrakeLeft                           = @[Common.703.ParkingBrakeLeft]
Entities.gmod_subway_81-710_g.Buttons.ParkingBrake.ParkingBrakeRight                          = @[Common.703.ParkingBrakeRight]
Entities.gmod_subway_81-710_g.Buttons.UAVAPanel.UAVAToggle                                    = @[Common.ALL.UAVA]
Entities.gmod_subway_81-710_g.Buttons.UAVAPanel.UAVAContactSet                                = @[Common.ALL.UAVAContact]
Entities.gmod_subway_81-710_g.Buttons.DriverValveBLTLDisconnect.DriverValveBLDisconnectToggle = @[Common.ALL.DriverValveBLDisconnect]
Entities.gmod_subway_81-710_g.Buttons.DriverValveBLTLDisconnect.DriverValveTLDisconnectToggle = @[Common.ALL.DriverValveTLDisconnect]
Entities.gmod_subway_81-710_g.Buttons.EPKDisconnect.EPKToggle                                 = @[Common.ALL.EPK]
Entities.gmod_subway_81-710_g.Buttons.FrontPneumatic.FrontBrakeLineIsolationToggle            = @[Common.ALL.FrontBrakeLineIsolationToggle]
Entities.gmod_subway_81-710_g.Buttons.FrontPneumatic.FrontTrainLineIsolationToggle            = @[Common.ALL.FrontTrainLineIsolationToggle]
Entities.gmod_subway_81-710_g.Buttons.RearPneumatic.RearTrainLineIsolationToggle              = @[Common.ALL.RearTrainLineIsolationToggle]
Entities.gmod_subway_81-710_g.Buttons.RearPneumatic.RearBrakeLineIsolationToggle              = @[Common.ALL.RearBrakeLineIsolationToggle]
Entities.gmod_subway_81-710_g.Buttons.GV.GVToggle                                             = @[Common.ALL.GV]
Entities.gmod_subway_81-710_g.Buttons.AirDistributor.AirDistributorDisconnectToggle           = @[Common.ALL.AirDistributor]
Entities.gmod_subway_81-710_g.Buttons.PassengerDoor.PassengerDoor                             = @[Common.ALL.PassDoor]
Entities.gmod_subway_81-710_g.Buttons.PassengerDoor1.PassengerDoor                            = @[Common.ALL.PassDoor]
Entities.gmod_subway_81-710_g.Buttons.FrontDoor.FrontDoor                                     = @[Common.ALL.FrontDoor]
Entities.gmod_subway_81-710_g.Buttons.RearDoor.RearDoor                                       = @[Common.ALL.RearDoor]
Entities.gmod_subway_81-710_g.Buttons.CabinDoor.CabinDoor                                     = @[Common.ALL.CabinDoor]
Entities.gmod_subway_81-710_g.Buttons.Route.RouteNumber1+                                     = @[Common.ALL.RouteNumber1+]
Entities.gmod_subway_81-710_g.Buttons.Route.RouteNumber2+                                     = @[Common.ALL.RouteNumber2+]
Entities.gmod_subway_81-710_g.Buttons.Route.RouteNumber1-                                     = @[Common.ALL.RouteNumber1-]
Entities.gmod_subway_81-710_g.Buttons.Route.RouteNumber2-                                     = @[Common.ALL.RouteNumber2-]
Entities.gmod_subway_81-710_g.Buttons.LastStation.LastStation+                                = @[Common.ALL.LastStation+]
Entities.gmod_subway_81-710_g.Buttons.LastStation.LastStation-                                = @[Common.ALL.LastStation-]
Entities.gmod_subway_81-710_g.Buttons.Panel.!L04                                              = @[Common.ARS.04]
Entities.gmod_subway_81-710_g.Buttons.Panel.!L0                                               = @[Common.ARS.0]
Entities.gmod_subway_81-710_g.Buttons.Panel.!L40                                              = @[Common.ARS.40]
Entities.gmod_subway_81-710_g.Buttons.Panel.!L60                                              = @[Common.ARS.60]
Entities.gmod_subway_81-710_g.Buttons.Panel.!L70                                              = @[Common.ARS.70]
Entities.gmod_subway_81-710_g.Buttons.Panel.!L80                                              = @[Common.ARS.80]
Entities.gmod_subway_81-710_g.Buttons.Panel.!LKT                                              = @[Common.ARS.KT]
Entities.gmod_subway_81-710_g.Buttons.Panel.!LSN                                              = @[Common.ALL.SN]
Entities.gmod_subway_81-710_g.Buttons.Panel.!LKVD                                             = @[Common.ARS.VD]
Entities.gmod_subway_81-710_g.Buttons.Panel.!LRP                                              = @[Common.ALL.GRP]
Entities.gmod_subway_81-710_g.Buttons.Panel.!LPU                                              = @[Common.ALL.PU]
Entities.gmod_subway_81-710_g.Buttons.Panel.!LSD                                              = @[Common.703.SD]
Entities.gmod_subway_81-710_g.Buttons.Panel.!Speedometer                                      = @[Common.ALL.Speedometer]
Entities.gmod_subway_81-710_g.Buttons.Panel.!BLTLPressure                                     = @[Common.ALL.BLTLPressure]
Entities.gmod_subway_81-710_g.Buttons.Panel.!BCPressure                                       = @[Common.ALL.BCPressure]
Entities.gmod_subway_81-710_g.Buttons.Panel.!HighVoltage                                      = @[Common.ALL.HighVoltage]
Entities.gmod_subway_81-710_g.Buttons.Panel.!EnginesCurrent                                   = @[Common.ALL.EnginesCurrent]
Entities.gmod_subway_81-710_g.Buttons.Panel.!BatteryVoltage                                   = @[Common.ALL.BatteryVoltage]

#gmod_subway_81-508g
Entities.gmod_subway_81-508g.Buttons.AVMain.AVToggle       = @[Common.703.AV]
Entities.gmod_subway_81-508g.Buttons.Battery.VBToggle      = @[Common.ALL.VB] @[Common.ALL.VB2]
Entities.gmod_subway_81-508g.Buttons.AV1.VU1Toggle         = @[Common.703.VU1]
Entities.gmod_subway_81-508g.Buttons.AV1.VU2Toggle         = @[Common.703.VU2]
Entities.gmod_subway_81-508g.Buttons.AV1.VU3Toggle         = @[Common.703.VU3]
Entities.gmod_subway_81-508g.Buttons.RUM.RUMToggle         = @[Common.ALL.RCARS]
Entities.gmod_subway_81-508g.Buttons.KRR.KRRSet            = @[Common.703.KRR]
Entities.gmod_subway_81-508g.Buttons.VU.VUToggle           = @[Common.ALL.VU]
Entities.gmod_subway_81-508g.Buttons.VUHelper.VUToggle     = @[Common.ALL.VU]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMSchemeOffSet = @[Common.710.SAMMSchemeOff]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMStartSet     = @[Common.710.SAMMStart]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMResetSet     = @[Common.710.SAMMReset]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMXTLamp       = @[Common.710.SAMMXTLamp]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMSignal1      = @[Common.ALL.Unsused1]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMSignal2      = @[Common.ALL.Unsused1]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMOnToggle     = @[Common.710.SAMMOn]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMUnitToggle   = @[Common.710.SAMMUnit]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMX2Toggle     = @[Common.710.SAMMX2]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMAheadToggle  = @[Common.710.SAMMAhead]
Entities.gmod_subway_81-508g.Buttons.Main.SAMMAcceptToggle = @[Common.710.SAMMAccept]
Entities.gmod_subway_81-508g.Buttons.Main.V1Toggle         = @[Common.ALL.VMK]
Entities.gmod_subway_81-508g.Buttons.Main.KU8Set           = @[Common.ALL.KSN]
Entities.gmod_subway_81-508g.Buttons.Main.R_Program1Set    = @[Common.ALL.Program1]
Entities.gmod_subway_81-508g.Buttons.Main.R_Program2Set    = @[Common.ALL.Program2]
Entities.gmod_subway_81-508g.Buttons.Main.VU14Toggle       = @[Common.ALL.VUS]
Entities.gmod_subway_81-508g.Buttons.Main.GLightsToggle    = @[Common.ALL.GaugeLights]
Entities.gmod_subway_81-508g.Buttons.Main.VAHToggle        = @[Common.ALL.VAH]
Entities.gmod_subway_81-508g.Buttons.Main.V4Set            = @[Common.703.LOn]
Entities.gmod_subway_81-508g.Buttons.Main.V5Set            = @[Common.703.LOff]
Entities.gmod_subway_81-508g.Buttons.Main.KU11Set          = @[Common.703.KSD]
Entities.gmod_subway_81-508g.Buttons.Main.KVTSet           = @[Common.ARS.KVT]
Entities.gmod_subway_81-508g.Buttons.Main.KBSet            = @[Common.ARS.KB]
Entities.gmod_subway_81-508g.Buttons.Main.RKLamp           = @[Common.710.RK]
Entities.gmod_subway_81-508g.Buttons.Main.ARSToggle        = @[Common.ALL.ARS]
Entities.gmod_subway_81-508g.Buttons.Main.R_UNchToggle     = @[Common.ALL.UNCh]
Entities.gmod_subway_81-508g.Buttons.Main.V2Toggle         = @[Common.ALL.VUD]
Entities.gmod_subway_81-508g.Buttons.Main.R_RadioToggle    = @[Common.ALL.R_Radio]
Entities.gmod_subway_81-508g.Buttons.Main.ALSToggle        = @[Common.ALL.ALS]
Entities.gmod_subway_81-508g.Buttons.Main.KU9Set           = @[Common.ALL.VRP]
Entities.gmod_subway_81-508g.Buttons.Main.RingSet          = @[Common.ALL.Ring]
Entities.gmod_subway_81-508g.Buttons.Main.PLightsToggle    = @[Common.ALL.CabLights]
Entities.gmod_subway_81-508g.Buttons.Main.V10Set           = @[Common.ALL.KRZD]
Entities.gmod_subway_81-508g.Buttons.Main.PLightsToggle    = @[Common.ALL.CabLights]
Entities.gmod_subway_81-508g.Buttons.Main.KU7Set           = @[Common.ALL.KDP]
Entities.gmod_subway_81-508g.Buttons.Main.KU12Set          = @[Common.ALL.KDL]
Entities.gmod_subway_81-508g.Buttons.Main.KAHSet           = @[Common.ALL.KAH]
Entities.gmod_subway_81-508g.Buttons.Main.KU15Set          = @[Common.ALL.RMK]
Entities.gmod_subway_81-508g.Buttons.Main.KU10Set          = @[Common.ALL.KRP]
Entities.gmod_subway_81-508g.Buttons.Main.RSTToggle        = @[Common.ALL.VPR]
Entities.gmod_subway_81-508g.Buttons.Main.R_GToggle        = @[Common.ALL.GCab]
Entities.gmod_subway_81-508g.Buttons.Main.!AnnPlay         = @[Common.ALL.AnnPlay]
Entities.gmod_subway_81-508g.Buttons.HelperPanel.V6Set         = @[Common.ALL.KDL]
Entities.gmod_subway_81-508g.Buttons.HelperPanel.V3Toggle       = @[Common.ALL.VUD2]
Entities.gmod_subway_81-508g.Buttons.HelperPanel.R_Program1HSet  = @[Common.ALL.Program1]
Entities.gmod_subway_81-508g.Buttons.HelperPanel.R_Program2HSet  = @[Common.ALL.Program2]
Entities.gmod_subway_81-508g.Buttons.RRIScreen.RRIUp             = @[Common.RRI.RRIUp]
Entities.gmod_subway_81-508g.Buttons.RRIScreen.RRIDown           = @[Common.RRI.RRIDown]
Entities.gmod_subway_81-508g.Buttons.RRIScreen.RRILeft           = @[Common.RRI.RRILeft]
Entities.gmod_subway_81-508g.Buttons.RRIScreen.RRIRight          = @[Common.RRI.RRIRight]
Entities.gmod_subway_81-508g.Buttons.RRI.RRIEnableToggle         = @[Common.RRI.RRIEnableToggle]
Entities.gmod_subway_81-508g.Buttons.RRI.RRIRewindSet2           = @[Common.RRI.RRIRewindSet2]
Entities.gmod_subway_81-508g.Buttons.RRI.RRIRewindSet0           = @[Common.RRI.RRIRewindSet0]
Entities.gmod_subway_81-508g.Buttons.RRI.RRIAmplifierToggle      = @[Common.RRI.RRIAmplifierToggle]
Entities.gmod_subway_81-508g.Buttons.RRI.!RRIOn                  = @[Common.RRI.RRIOn]
Entities.gmod_subway_81-508g.Buttons.ASNP.R_ASNPMenuSet          = @[Common.ASNP.ASNPMenu]
Entities.gmod_subway_81-508g.Buttons.ASNP.R_ASNPUpSet            = @[Common.ASNP.ASNPUp]
Entities.gmod_subway_81-508g.Buttons.ASNP.R_ASNPDownSet          = @[Common.ASNP.ASNPDown]
Entities.gmod_subway_81-508g.Buttons.ASNP.R_ASNPOnToggle         = @[Common.ASNP.ASNPOn]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.IGLA1USet       = @[Common.IGLA.Button1Up]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.IGLA1Set        = @[Common.IGLA.Button1]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.IGLA1DSet       = @[Common.IGLA.Button1Down]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.IGLA2USet       = @[Common.IGLA.Button2Up]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.IGLA2Set        = @[Common.IGLA.Button2]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.IGLA2DSet       = @[Common.IGLA.Button2Down]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.!IGLASR         = @[Common.IGLA.IGLASR]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.!IGLARX         = @[Common.IGLA.IGLARX]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.!IGLAErr        = @[Common.IGLA.IGLAErr]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.!IGLAOSP        = @[Common.IGLA.IGLAOSP]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.!IGLAPI         = @[Common.IGLA.IGLAPI]
Entities.gmod_subway_81-508g.Buttons.IGLAButtons.!IGLAOff        = @[Common.IGLA.IGLAOff]
Entities.gmod_subway_81-508g.Buttons.Stopkran.EmergencyBrakeValveToggle                      = @[Common.ALL.EmergencyBrakeValve]
Entities.gmod_subway_81-508g.Buttons.ParkingBrake.ParkingBrakeLeft                           = @[Common.703.ParkingBrakeLeft]
Entities.gmod_subway_81-508g.Buttons.ParkingBrake.ParkingBrakeRight                          = @[Common.703.ParkingBrakeRight]
Entities.gmod_subway_81-508g.Buttons.UAVAPanel.UAVAToggle                                    = @[Common.ALL.UAVA]
Entities.gmod_subway_81-508g.Buttons.UAVAPanel.UAVAContactSet                                = @[Common.ALL.UAVAContact]
Entities.gmod_subway_81-508g.Buttons.DriverValveBLTLDisconnect.DriverValveBLDisconnectToggle = @[Common.ALL.DriverValveBLDisconnect]
Entities.gmod_subway_81-508g.Buttons.DriverValveBLTLDisconnect.DriverValveTLDisconnectToggle = @[Common.ALL.DriverValveTLDisconnect]
Entities.gmod_subway_81-508g.Buttons.EPKDisconnect.EPKToggle                                 = @[Common.ALL.EPK]
Entities.gmod_subway_81-508g.Buttons.FrontPneumatic.FrontBrakeLineIsolationToggle            = @[Common.ALL.FrontBrakeLineIsolationToggle]
Entities.gmod_subway_81-508g.Buttons.FrontPneumatic.FrontTrainLineIsolationToggle            = @[Common.ALL.FrontTrainLineIsolationToggle]
Entities.gmod_subway_81-508g.Buttons.RearPneumatic.RearTrainLineIsolationToggle              = @[Common.ALL.RearTrainLineIsolationToggle]
Entities.gmod_subway_81-508g.Buttons.RearPneumatic.RearBrakeLineIsolationToggle              = @[Common.ALL.RearBrakeLineIsolationToggle]
Entities.gmod_subway_81-508g.Buttons.GV.GVToggle                                             = @[Common.ALL.GV]
Entities.gmod_subway_81-508g.Buttons.AirDistributor.AirDistributorDisconnectToggle           = @[Common.ALL.AirDistributor]
Entities.gmod_subway_81-508g.Buttons.PassengerDoor.PassengerDoor                             = @[Common.ALL.PassDoor]
Entities.gmod_subway_81-508g.Buttons.PassengerDoor1.PassengerDoor                            = @[Common.ALL.PassDoor]
Entities.gmod_subway_81-508g.Buttons.FrontDoor.FrontDoor                                     = @[Common.ALL.FrontDoor]
Entities.gmod_subway_81-508g.Buttons.RearDoor.RearDoor                                       = @[Common.ALL.RearDoor]
Entities.gmod_subway_81-508g.Buttons.CabinDoor.CabinDoor                                     = @[Common.ALL.CabinDoor]
Entities.gmod_subway_81-508g.Buttons.Route.RouteNumber1+                                     = @[Common.ALL.RouteNumber1+]
Entities.gmod_subway_81-508g.Buttons.Route.RouteNumber2+                                     = @[Common.ALL.RouteNumber2+]
Entities.gmod_subway_81-508g.Buttons.Route.RouteNumber1-                                     = @[Common.ALL.RouteNumber1-]
Entities.gmod_subway_81-508g.Buttons.Route.RouteNumber2-                                     = @[Common.ALL.RouteNumber2-]
Entities.gmod_subway_81-508g.Buttons.LastStation.LastStation+                                = @[Common.ALL.LastStation+]
Entities.gmod_subway_81-508g.Buttons.LastStation.LastStation-                                = @[Common.ALL.LastStation-]
Entities.gmod_subway_81-508g.Buttons.Panel.!L04                                              = @[Common.ARS.04]
Entities.gmod_subway_81-508g.Buttons.Panel.!L0                                               = @[Common.ARS.0]
Entities.gmod_subway_81-508g.Buttons.Panel.!L40                                              = @[Common.ARS.40]
Entities.gmod_subway_81-508g.Buttons.Panel.!L60                                              = @[Common.ARS.60]
Entities.gmod_subway_81-508g.Buttons.Panel.!L70                                              = @[Common.ARS.70]
Entities.gmod_subway_81-508g.Buttons.Panel.!L80                                              = @[Common.ARS.80]
Entities.gmod_subway_81-508g.Buttons.Panel.!LKT                                              = @[Common.ARS.KT]
Entities.gmod_subway_81-508g.Buttons.Panel.!LSN                                              = @[Common.ALL.SN]
Entities.gmod_subway_81-508g.Buttons.Panel.!LKVD                                             = @[Common.ARS.VD]
Entities.gmod_subway_81-508g.Buttons.Panel.!LRP                                              = @[Common.ALL.GRP]
Entities.gmod_subway_81-508g.Buttons.Panel.!LPU                                              = @[Common.ALL.PU]
Entities.gmod_subway_81-508g.Buttons.Panel.!LSD                                              = @[Common.703.SD]
Entities.gmod_subway_81-508g.Buttons.Panel.!Speedometer                                      = @[Common.ALL.Speedometer]
Entities.gmod_subway_81-508g.Buttons.Panel.!BLTLPressure                                     = @[Common.ALL.BLTLPressure]
Entities.gmod_subway_81-508g.Buttons.Panel.!BCPressure                                       = @[Common.ALL.BCPressure]
Entities.gmod_subway_81-508g.Buttons.Panel.!HighVoltage                                      = @[Common.ALL.HighVoltage]
Entities.gmod_subway_81-508g.Buttons.Panel.!EnginesCurrent                                   = @[Common.ALL.EnginesCurrent]
Entities.gmod_subway_81-508g.Buttons.Panel.!BatteryVoltage                                   = @[Common.ALL.BatteryVoltage]

#Spawner:
Entities.gmod_subway_81-710_g.Spawner.Texture.Name          = @[Common.Spawner.Texture]
Entities.gmod_subway_81-710_g.Spawner.PassTexture.Name      = @[Common.Spawner.PassTexture]
Entities.gmod_subway_81-710_g.Spawner.CabTexture.Name       = @[Common.Spawner.CabTexture]
Entities.gmod_subway_81-710_g.Spawner.Announcer.Name        = @[Common.Spawner.Announcer]
Entities.gmod_subway_81-710_g.Spawner.Announcer.1           = @[Spawner.710.RRI]
Entities.gmod_subway_81-710_g.Spawner.SpawnMode.Name        = @[Common.Spawner.SpawnMode]
Entities.gmod_subway_81-710_g.Spawner.SpawnMode.1           = @[Common.Spawner.SpawnMode.Full]
Entities.gmod_subway_81-710_g.Spawner.SpawnMode.2           = @[Common.Spawner.SpawnMode.Deadlock]
Entities.gmod_subway_81-710_g.Spawner.SpawnMode.3           = @[Common.Spawner.SpawnMode.NightDeadlock]
Entities.gmod_subway_81-710_g.Spawner.SpawnMode.4           = @[Common.Spawner.SpawnMode.Depot]
Entities.gmod_subway_81-710_g.Spawner.Ezh3Wagons.Name       = @[Spawner.710.Ezh3Wagons]
Entities.gmod_subway_81-710_g.Spawner.RingType.1.Name       = @[Spawner.710.RingType.1]
Entities.gmod_subway_81-710_g.Spawner.RingType.2.Name       = @[Spawner.710.RingType.2]
Entities.gmod_subway_81-710_g.Spawner.RingType.3.Name       = @[Spawner.710.RingType.3]
Entities.gmod_subway_81-710_g.Spawner.RingType.4.Name       = @[Spawner.710.RingType.4]
Entities.gmod_subway_81-710_g.Spawner.RingType.5.Name       = @[Spawner.710.RingType.5]
Entities.gmod_subway_81-710_g.Spawner.RingType.6.Name       = @[Spawner.710.RingType.6]
Entities.gmod_subway_81-710_g.Spawner.RingType.7.Name       = @[Spawner.710.RingType.7]
Entities.gmod_subway_81-710_g.Spawner.RingType.8.Name       = @[Spawner.710.RingType.8]
Entities.gmod_subway_81-710_g.Spawner.RingType.9.Name       = @[Spawner.710.RingType.9]
Entities.gmod_subway_81-710_g.Spawner.RingType.10.Name       = @[Spawner.710.RingType.10]
Entities.gmod_subway_81-710_g.Spawner.RingType.11.Name       = @[Spawner.710.RingType.11]
Entities.gmod_subway_81-710_g.Spawner.RingType.12.Name       = @[Spawner.710.RingType.12]
Entities.gmod_subway_81-710_g.Spawner.RingType.13.Name       = @[Spawner.710.RingType.13]
Entities.gmod_subway_81-710_g.Spawner.RingType.14.Name       = @[Spawner.710.RingType.14]
Entities.gmod_subway_81-710_g.Spawner.RingType.15.Name       = @[Spawner.710.RingType.15]
Entities.gmod_subway_81-710_g.Spawner.RingType.16.Name       = @[Spawner.710.RingType.16]
Entities.gmod_subway_81-710_g.Spawner.RingType.Name       = @[Spawner.710.RingType]
Entities.gmod_subway_81-710_g.Spawner.HornType.1.Name       = @[Spawner.710.HornType.1]
Entities.gmod_subway_81-710_g.Spawner.HornType.2.Name       = @[Spawner.710.HornType.2]
Entities.gmod_subway_81-710_g.Spawner.HornType.3.Name       = @[Spawner.710.HornType.3]
Entities.gmod_subway_81-710_g.Spawner.HornType.4.Name       = @[Spawner.710.HornType.4]
Entities.gmod_subway_81-710_g.Spawner.HornType.5.Name       = @[Spawner.710.HornType.5]
Entities.gmod_subway_81-710_g.Spawner.HornType.6.Name       = @[Spawner.710.HornType.6]
Entities.gmod_subway_81-710_g.Spawner.HornType.7.Name       = @[Spawner.710.HornType.7]
Entities.gmod_subway_81-710_g.Spawner.HornType.8.Name       = @[Spawner.710.HornType.8]
Entities.gmod_subway_81-710_g.Spawner.HornType.9.Name       = @[Spawner.710.HornType.9]
Entities.gmod_subway_81-710_g.Spawner.HornType.10.Name       = @[Spawner.710.HornType.10]
Entities.gmod_subway_81-710_g.Spawner.HornType.11.Name       = @[Spawner.710.HornType.11]
Entities.gmod_subway_81-710_g.Spawner.HornType.12.Name       = @[Spawner.710.HornType.12]
Entities.gmod_subway_81-710_g.Spawner.HornType.13.Name       = @[Spawner.710.HornType.13]
Entities.gmod_subway_81-710_g.Spawner.HornType.14.Name       = @[Spawner.710.HornType.14]
Entities.gmod_subway_81-710_g.Spawner.HornType.15.Name       = @[Spawner.710.HornType.15]
Entities.gmod_subway_81-710_g.Spawner.HornType.16.Name       = @[Spawner.710.HornType.16]
Entities.gmod_subway_81-710_g.Spawner.HornType.17.Name       = @[Spawner.710.HornType.17]
Entities.gmod_subway_81-710_g.Spawner.HornType.18.Name       = @[Spawner.710.HornType.18]
Entities.gmod_subway_81-710_g.Spawner.HornType.Name       = @[Spawner.710.HornType]
]]
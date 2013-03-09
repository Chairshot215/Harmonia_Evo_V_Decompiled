.class public abstract Lcom/htc/laputa/engine/aidl/IRenderService$Stub;
.super Landroid/os/Binder;
.source "IRenderService.java"

# interfaces
.implements Lcom/htc/laputa/engine/aidl/IRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/IRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/aidl/IRenderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.laputa.engine.aidl.IRenderService"

.field static final TRANSACTION_JNIFinishGpsSatellite:I = 0x65

.field static final TRANSACTION_JNIInitializeGps:I = 0x5f

.field static final TRANSACTION_JNISetGpsPosition:I = 0x61

.field static final TRANSACTION_JNISetGpsSatellite:I = 0x64

.field static final TRANSACTION_JNISetGpsStatus:I = 0x62

.field static final TRANSACTION_JNIStartGpsSatellite:I = 0x63

.field static final TRANSACTION_JNIUninitializeGps:I = 0x60

.field static final TRANSACTION_LaputaCancelNavigation:I = 0x22

.field static final TRANSACTION_LaputaCancelSimulation:I = 0x20

.field static final TRANSACTION_LaputaClearRoute:I = 0x1e

.field static final TRANSACTION_LaputaEnterFilterAnimation:I = 0x13

.field static final TRANSACTION_LaputaExitFilterAnimation:I = 0x14

.field static final TRANSACTION_LaputaFlipMap:I = 0xf

.field static final TRANSACTION_LaputaGet3DMode:I = 0x6

.field static final TRANSACTION_LaputaGetLandmark:I = 0x15

.field static final TRANSACTION_LaputaGetLandmarkDetailByIndex:I = 0x16

.field static final TRANSACTION_LaputaGetLandmarkFilter:I = 0x17

.field static final TRANSACTION_LaputaGetNumRouteList:I = 0x23

.field static final TRANSACTION_LaputaGetNumZoomLevel:I = 0x8

.field static final TRANSACTION_LaputaGetRouteListDetailByIndex:I = 0x24

.field static final TRANSACTION_LaputaGetZoomLevel:I = 0x9

.field static final TRANSACTION_LaputaInitializeEngine:I = 0x4

.field static final TRANSACTION_LaputaPanMap:I = 0xe

.field static final TRANSACTION_LaputaRotateMap:I = 0x10

.field static final TRANSACTION_LaputaRotateMapToNorth:I = 0x11

.field static final TRANSACTION_LaputaSet3DMode:I = 0x7

.field static final TRANSACTION_LaputaSetDeparture:I = 0x1a

.field static final TRANSACTION_LaputaSetDestination:I = 0x1b

.field static final TRANSACTION_LaputaSetLandmarkFilter:I = 0x18

.field static final TRANSACTION_LaputaSetMapCenter:I = 0x19

.field static final TRANSACTION_LaputaSetZoomLevel:I = 0xa

.field static final TRANSACTION_LaputaSettingsGetApplyPOIFilter:I = 0x44

.field static final TRANSACTION_LaputaSettingsGetAvoidFerries:I = 0x2a

.field static final TRANSACTION_LaputaSettingsGetAvoidMotorways:I = 0x26

.field static final TRANSACTION_LaputaSettingsGetAvoidTollRoads:I = 0x28

.field static final TRANSACTION_LaputaSettingsGetCompass:I = 0x57

.field static final TRANSACTION_LaputaSettingsGetEnableDynamicVolume:I = 0x2c

.field static final TRANSACTION_LaputaSettingsGetEnableFootprintWarning:I = 0x40

.field static final TRANSACTION_LaputaSettingsGetEnableLaneInfo:I = 0x2f

.field static final TRANSACTION_LaputaSettingsGetEnableLanguageList:I = 0x48

.field static final TRANSACTION_LaputaSettingsGetEnablePOIWarning:I = 0x42

.field static final TRANSACTION_LaputaSettingsGetEnableSafetyCamera:I = 0x36

.field static final TRANSACTION_LaputaSettingsGetEnableSpeedWarning:I = 0x3e

.field static final TRANSACTION_LaputaSettingsGetEnableVoiceGuidance:I = 0x4c

.field static final TRANSACTION_LaputaSettingsGetFPS:I = 0x55

.field static final TRANSACTION_LaputaSettingsGetFollowGPS:I = 0x5b

.field static final TRANSACTION_LaputaSettingsGetGuidanceMode:I = 0x3a

.field static final TRANSACTION_LaputaSettingsGetInternet:I = 0x5d

.field static final TRANSACTION_LaputaSettingsGetLaneInfoContent:I = 0x2e

.field static final TRANSACTION_LaputaSettingsGetLanguageListByIndex:I = 0x47

.field static final TRANSACTION_LaputaSettingsGetMapScale:I = 0x59

.field static final TRANSACTION_LaputaSettingsGetNavigationMode:I = 0x38

.field static final TRANSACTION_LaputaSettingsGetNightDayColors:I = 0x51

.field static final TRANSACTION_LaputaSettingsGetNumLanguageList:I = 0x46

.field static final TRANSACTION_LaputaSettingsGetNumVoiceGuidanceList:I = 0x4a

.field static final TRANSACTION_LaputaSettingsGetSafetyCameraContent:I = 0x35

.field static final TRANSACTION_LaputaSettingsGetStreetInfo:I = 0x53

.field static final TRANSACTION_LaputaSettingsGetTrafficContent:I = 0x31

.field static final TRANSACTION_LaputaSettingsGetTrafficInterval:I = 0x33

.field static final TRANSACTION_LaputaSettingsGetUseMetric:I = 0x3c

.field static final TRANSACTION_LaputaSettingsGetVoiceGuidanceByIndex:I = 0x4b

.field static final TRANSACTION_LaputaSettingsGetVolume:I = 0x4e

.field static final TRANSACTION_LaputaSettingsSetApplyPOIFilter:I = 0x45

.field static final TRANSACTION_LaputaSettingsSetAvoidFerries:I = 0x2b

.field static final TRANSACTION_LaputaSettingsSetAvoidMotorways:I = 0x27

.field static final TRANSACTION_LaputaSettingsSetAvoidTollRoads:I = 0x29

.field static final TRANSACTION_LaputaSettingsSetCompass:I = 0x58

.field static final TRANSACTION_LaputaSettingsSetDpi:I = 0x50

.field static final TRANSACTION_LaputaSettingsSetEnableDynamicVolume:I = 0x2d

.field static final TRANSACTION_LaputaSettingsSetEnableFootprintWarning:I = 0x41

.field static final TRANSACTION_LaputaSettingsSetEnableLaneInfo:I = 0x30

.field static final TRANSACTION_LaputaSettingsSetEnableLanguageList:I = 0x49

.field static final TRANSACTION_LaputaSettingsSetEnablePOIWarning:I = 0x43

.field static final TRANSACTION_LaputaSettingsSetEnableSafetyCamera:I = 0x37

.field static final TRANSACTION_LaputaSettingsSetEnableSpeedWarning:I = 0x3f

.field static final TRANSACTION_LaputaSettingsSetEnableVoiceGuidance:I = 0x4d

.field static final TRANSACTION_LaputaSettingsSetFPS:I = 0x56

.field static final TRANSACTION_LaputaSettingsSetFollowGPS:I = 0x5c

.field static final TRANSACTION_LaputaSettingsSetGuidanceMode:I = 0x3b

.field static final TRANSACTION_LaputaSettingsSetInternet:I = 0x5e

.field static final TRANSACTION_LaputaSettingsSetMapScale:I = 0x5a

.field static final TRANSACTION_LaputaSettingsSetNavigationMode:I = 0x39

.field static final TRANSACTION_LaputaSettingsSetNightDayColors:I = 0x52

.field static final TRANSACTION_LaputaSettingsSetStreetInfo:I = 0x54

.field static final TRANSACTION_LaputaSettingsSetTrafficContent:I = 0x32

.field static final TRANSACTION_LaputaSettingsSetTrafficInterval:I = 0x34

.field static final TRANSACTION_LaputaSettingsSetUseMetric:I = 0x3d

.field static final TRANSACTION_LaputaSettingsSetVolume:I = 0x4f

.field static final TRANSACTION_LaputaStartNavigation:I = 0x21

.field static final TRANSACTION_LaputaStartRoutingForDrive:I = 0x1d

.field static final TRANSACTION_LaputaStartRoutingForWalk:I = 0x1c

.field static final TRANSACTION_LaputaStartSimulation:I = 0x1f

.field static final TRANSACTION_LaputaStartZoomInMap:I = 0xb

.field static final TRANSACTION_LaputaStartZoomOutMap:I = 0xc

.field static final TRANSACTION_LaputaStopZoom:I = 0xd

.field static final TRANSACTION_LaputaTest:I = 0x1

.field static final TRANSACTION_LaputaUninitializeEngine:I = 0x5

.field static final TRANSACTION_LaputaUpdateMap:I = 0x12

.field static final TRANSACTION_LaputaZoomToCoordinates:I = 0x25

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.htc.laputa.engine.aidl.IRenderService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IRenderService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.htc.laputa.engine.aidl.IRenderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/laputa/engine/aidl/IRenderService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/htc/laputa/engine/aidl/IRenderService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/htc/laputa/engine/aidl/IRenderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 956
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaTest(Ljava/lang/String;I)I

    move-result v30

    .line 55
    .local v30, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v30           #_result:I
    :sswitch_2
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/laputa/engine/aidl/IRenderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IRenderCallback;

    move-result-object v3

    .line 64
    .local v3, _arg0:Lcom/htc/laputa/engine/aidl/IRenderCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->registerCallback(Lcom/htc/laputa/engine/aidl/IRenderCallback;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    .end local v3           #_arg0:Lcom/htc/laputa/engine/aidl/IRenderCallback;
    :sswitch_3
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/laputa/engine/aidl/IRenderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IRenderCallback;

    move-result-object v3

    .line 73
    .restart local v3       #_arg0:Lcom/htc/laputa/engine/aidl/IRenderCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->unregisterCallback(Lcom/htc/laputa/engine/aidl/IRenderCallback;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v3           #_arg0:Lcom/htc/laputa/engine/aidl/IRenderCallback;
    :sswitch_4
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 82
    .local v3, _arg0:Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaInitializeEngine(Z)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 81
    .end local v3           #_arg0:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 88
    :sswitch_5
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaUninitializeEngine()V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 95
    :sswitch_6
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGet3DMode()Z

    move-result v30

    .line 97
    .local v30, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v30, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 98
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 103
    .end local v30           #_result:Z
    :sswitch_7
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 106
    .restart local v3       #_arg0:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSet3DMode(Z)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 105
    .end local v3           #_arg0:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 112
    :sswitch_8
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetNumZoomLevel()I

    move-result v30

    .line 114
    .local v30, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 120
    .end local v30           #_result:I
    :sswitch_9
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetZoomLevel()I

    move-result v30

    .line 122
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 128
    .end local v30           #_result:I
    :sswitch_a
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 135
    .local v7, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSetZoomLevel(III)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 141
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_b
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStartZoomInMap()V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 148
    :sswitch_c
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStartZoomOutMap()V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 155
    :sswitch_d
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStopZoom()V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 162
    :sswitch_e
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 167
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaPanMap(II)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 173
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_f
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaFlipMap(II)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 184
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_10
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaRotateMap(I)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 193
    .end local v3           #_arg0:I
    :sswitch_11
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaRotateMapToNorth()V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 200
    :sswitch_12
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaUpdateMap()V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 207
    :sswitch_13
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaEnterFilterAnimation()V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 214
    :sswitch_14
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaExitFilterAnimation()V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 221
    :sswitch_15
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetLandmark(II)I

    move-result v30

    .line 227
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 233
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    .end local v30           #_result:I
    :sswitch_16
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 239
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 240
    .restart local v7       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v7}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetLandmarkDetailByIndex(III)I

    move-result v30

    .line 241
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 247
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    .end local v30           #_result:I
    :sswitch_17
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetLandmarkFilter(I)Z

    move-result v30

    .line 251
    .local v30, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v30, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 252
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 257
    .end local v3           #_arg0:I
    .end local v30           #_result:Z
    :sswitch_18
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    .line 262
    .local v5, _arg1:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSetLandmarkFilter(IZ)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 261
    .end local v5           #_arg1:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 268
    .end local v3           #_arg0:I
    :sswitch_19
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 272
    .local v3, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 274
    .local v5, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 276
    .local v7, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg3:I
    move-object/from16 v2, p0

    .line 277
    invoke-virtual/range {v2 .. v9}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSetMapCenter(DDDI)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 283
    .end local v3           #_arg0:D
    .end local v5           #_arg1:D
    .end local v7           #_arg2:D
    .end local v9           #_arg3:I
    :sswitch_1a
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 287
    .restart local v3       #_arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 289
    .restart local v5       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .restart local v7       #_arg2:D
    move-object/from16 v2, p0

    .line 290
    invoke-virtual/range {v2 .. v8}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSetDeparture(DDD)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 296
    .end local v3           #_arg0:D
    .end local v5           #_arg1:D
    .end local v7           #_arg2:D
    :sswitch_1b
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 300
    .restart local v3       #_arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 302
    .restart local v5       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .restart local v7       #_arg2:D
    move-object/from16 v2, p0

    .line 303
    invoke-virtual/range {v2 .. v8}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSetDestination(DDD)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 309
    .end local v3           #_arg0:D
    .end local v5           #_arg1:D
    .end local v7           #_arg2:D
    :sswitch_1c
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStartRoutingForWalk()V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 316
    :sswitch_1d
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStartRoutingForDrive()V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 323
    :sswitch_1e
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaClearRoute()V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 330
    :sswitch_1f
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStartSimulation()V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 337
    :sswitch_20
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaCancelSimulation()V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 344
    :sswitch_21
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaStartNavigation()V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 351
    :sswitch_22
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaCancelNavigation()V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 358
    :sswitch_23
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetNumRouteList()I

    move-result v30

    .line 360
    .local v30, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    .end local v30           #_result:I
    :sswitch_24
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 369
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaGetRouteListDetailByIndex(I)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 375
    .end local v3           #_arg0:I
    :sswitch_25
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 379
    .local v3, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 381
    .restart local v5       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .restart local v7       #_arg2:D
    move-object/from16 v2, p0

    .line 382
    invoke-virtual/range {v2 .. v8}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaZoomToCoordinates(DDD)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 388
    .end local v3           #_arg0:D
    .end local v5           #_arg1:D
    .end local v7           #_arg2:D
    :sswitch_26
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetAvoidMotorways()Z

    move-result v30

    .line 390
    .local v30, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v30, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 391
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 396
    .end local v30           #_result:Z
    :sswitch_27
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 399
    .local v3, _arg0:Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetAvoidMotorways(Z)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 398
    .end local v3           #_arg0:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 405
    :sswitch_28
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetAvoidTollRoads()Z

    move-result v30

    .line 407
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v30, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 408
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 413
    .end local v30           #_result:Z
    :sswitch_29
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 416
    .restart local v3       #_arg0:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetAvoidTollRoads(Z)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 415
    .end local v3           #_arg0:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 422
    :sswitch_2a
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetAvoidFerries()Z

    move-result v30

    .line 424
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v30, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 425
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 430
    .end local v30           #_result:Z
    :sswitch_2b
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x1

    .line 433
    .restart local v3       #_arg0:Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetAvoidFerries(Z)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 432
    .end local v3           #_arg0:Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 439
    :sswitch_2c
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableDynamicVolume()Z

    move-result v30

    .line 441
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v30, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 442
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 447
    .end local v30           #_result:Z
    :sswitch_2d
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    .line 450
    .restart local v3       #_arg0:Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableDynamicVolume(Z)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 449
    .end local v3           #_arg0:Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 456
    :sswitch_2e
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetLaneInfoContent()Z

    move-result v30

    .line 458
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v30, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 459
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 464
    .end local v30           #_result:Z
    :sswitch_2f
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableLaneInfo()Z

    move-result v30

    .line 466
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v30, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 467
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 472
    .end local v30           #_result:Z
    :sswitch_30
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v3, 0x1

    .line 475
    .restart local v3       #_arg0:Z
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableLaneInfo(Z)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 474
    .end local v3           #_arg0:Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 481
    :sswitch_31
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetTrafficContent()Z

    move-result v30

    .line 483
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v30, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 484
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 489
    .end local v30           #_result:Z
    :sswitch_32
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    .line 492
    .restart local v3       #_arg0:Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetTrafficContent(Z)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 491
    .end local v3           #_arg0:Z
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 498
    :sswitch_33
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetTrafficInterval()I

    move-result v30

    .line 500
    .local v30, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 506
    .end local v30           #_result:I
    :sswitch_34
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 509
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetTrafficInterval(I)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 515
    .end local v3           #_arg0:I
    :sswitch_35
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetSafetyCameraContent()Z

    move-result v30

    .line 517
    .local v30, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v30, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 518
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 523
    .end local v30           #_result:Z
    :sswitch_36
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableSafetyCamera()Z

    move-result v30

    .line 525
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v30, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 526
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 531
    .end local v30           #_result:Z
    :sswitch_37
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v3, 0x1

    .line 534
    .local v3, _arg0:Z
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableSafetyCamera(Z)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 533
    .end local v3           #_arg0:Z
    :cond_14
    const/4 v3, 0x0

    goto :goto_15

    .line 540
    :sswitch_38
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetNavigationMode()I

    move-result v30

    .line 542
    .local v30, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 548
    .end local v30           #_result:I
    :sswitch_39
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 551
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetNavigationMode(I)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 557
    .end local v3           #_arg0:I
    :sswitch_3a
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetGuidanceMode()I

    move-result v30

    .line 559
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 565
    .end local v30           #_result:I
    :sswitch_3b
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 568
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetGuidanceMode(I)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 574
    .end local v3           #_arg0:I
    :sswitch_3c
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetUseMetric()Z

    move-result v30

    .line 576
    .local v30, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    if-eqz v30, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 577
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 582
    .end local v30           #_result:Z
    :sswitch_3d
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 585
    .local v3, _arg0:Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetUseMetric(Z)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 584
    .end local v3           #_arg0:Z
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .line 591
    :sswitch_3e
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableSpeedWarning()Z

    move-result v30

    .line 593
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v30, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 594
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 599
    .end local v30           #_result:Z
    :sswitch_3f
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v3, 0x1

    .line 602
    .restart local v3       #_arg0:Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableSpeedWarning(Z)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 601
    .end local v3           #_arg0:Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 608
    :sswitch_40
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableFootprintWarning()Z

    move-result v30

    .line 610
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v30, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 611
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 616
    .end local v30           #_result:Z
    :sswitch_41
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    .line 619
    .restart local v3       #_arg0:Z
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableFootprintWarning(Z)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 618
    .end local v3           #_arg0:Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 625
    :sswitch_42
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnablePOIWarning()Z

    move-result v30

    .line 627
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    if-eqz v30, :cond_1b

    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 628
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 633
    .end local v30           #_result:Z
    :sswitch_43
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v3, 0x1

    .line 636
    .restart local v3       #_arg0:Z
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnablePOIWarning(Z)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 635
    .end local v3           #_arg0:Z
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 642
    :sswitch_44
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetApplyPOIFilter()Z

    move-result v30

    .line 644
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v30, :cond_1d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 645
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 650
    .end local v30           #_result:Z
    :sswitch_45
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    .line 653
    .restart local v3       #_arg0:Z
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetApplyPOIFilter(Z)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 652
    .end local v3           #_arg0:Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 659
    :sswitch_46
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetNumLanguageList()I

    move-result v30

    .line 661
    .local v30, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 667
    .end local v30           #_result:I
    :sswitch_47
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 670
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetLanguageListByIndex(I)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 676
    .end local v3           #_arg0:I
    :sswitch_48
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableLanguageList()I

    move-result v30

    .line 678
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 684
    .end local v30           #_result:I
    :sswitch_49
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 687
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableLanguageList(I)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 693
    .end local v3           #_arg0:I
    :sswitch_4a
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetNumVoiceGuidanceList()I

    move-result v30

    .line 695
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 701
    .end local v30           #_result:I
    :sswitch_4b
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 704
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetVoiceGuidanceByIndex(I)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 710
    .end local v3           #_arg0:I
    :sswitch_4c
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetEnableVoiceGuidance()I

    move-result v30

    .line 712
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 718
    .end local v30           #_result:I
    :sswitch_4d
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 721
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetEnableVoiceGuidance(I)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 727
    .end local v3           #_arg0:I
    :sswitch_4e
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetVolume()I

    move-result v30

    .line 729
    .restart local v30       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 735
    .end local v30           #_result:I
    :sswitch_4f
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 738
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetVolume(I)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 744
    .end local v3           #_arg0:I
    :sswitch_50
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 748
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 749
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetDpi(II)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 755
    .end local v3           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_51
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetNightDayColors()Z

    move-result v30

    .line 757
    .local v30, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v30, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 758
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 763
    .end local v30           #_result:Z
    :sswitch_52
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x1

    .line 766
    .local v3, _arg0:Z
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetNightDayColors(Z)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 765
    .end local v3           #_arg0:Z
    :cond_20
    const/4 v3, 0x0

    goto :goto_21

    .line 772
    :sswitch_53
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetStreetInfo()Z

    move-result v30

    .line 774
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v30, :cond_21

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 775
    :cond_21
    const/4 v2, 0x0

    goto :goto_22

    .line 780
    .end local v30           #_result:Z
    :sswitch_54
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v3, 0x1

    .line 783
    .restart local v3       #_arg0:Z
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetStreetInfo(Z)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 782
    .end local v3           #_arg0:Z
    :cond_22
    const/4 v3, 0x0

    goto :goto_23

    .line 789
    :sswitch_55
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetFPS()Z

    move-result v30

    .line 791
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    if-eqz v30, :cond_23

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 792
    :cond_23
    const/4 v2, 0x0

    goto :goto_24

    .line 797
    .end local v30           #_result:Z
    :sswitch_56
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v3, 0x1

    .line 800
    .restart local v3       #_arg0:Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetFPS(Z)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 799
    .end local v3           #_arg0:Z
    :cond_24
    const/4 v3, 0x0

    goto :goto_25

    .line 806
    :sswitch_57
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetCompass()Z

    move-result v30

    .line 808
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    if-eqz v30, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 809
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 814
    .end local v30           #_result:Z
    :sswitch_58
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    const/4 v3, 0x1

    .line 817
    .restart local v3       #_arg0:Z
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetCompass(Z)V

    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 816
    .end local v3           #_arg0:Z
    :cond_26
    const/4 v3, 0x0

    goto :goto_27

    .line 823
    :sswitch_59
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetMapScale()Z

    move-result v30

    .line 825
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v30, :cond_27

    const/4 v2, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 826
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 831
    .end local v30           #_result:Z
    :sswitch_5a
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v3, 0x1

    .line 834
    .restart local v3       #_arg0:Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetMapScale(Z)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 833
    .end local v3           #_arg0:Z
    :cond_28
    const/4 v3, 0x0

    goto :goto_29

    .line 840
    :sswitch_5b
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetFollowGPS()Z

    move-result v30

    .line 842
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    if-eqz v30, :cond_29

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 843
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 848
    .end local v30           #_result:Z
    :sswitch_5c
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v3, 0x1

    .line 851
    .restart local v3       #_arg0:Z
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetFollowGPS(Z)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 850
    .end local v3           #_arg0:Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2b

    .line 857
    :sswitch_5d
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsGetInternet()Z

    move-result v30

    .line 859
    .restart local v30       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    if-eqz v30, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 860
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 865
    .end local v30           #_result:Z
    :sswitch_5e
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v3, 0x1

    .line 868
    .restart local v3       #_arg0:Z
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->LaputaSettingsSetInternet(Z)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 867
    .end local v3           #_arg0:Z
    :cond_2c
    const/4 v3, 0x0

    goto :goto_2d

    .line 874
    :sswitch_5f
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNIInitializeGps()V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 881
    :sswitch_60
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNIUninitializeGps()V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 888
    :sswitch_61
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 892
    .local v3, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 894
    .local v5, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 896
    .restart local v7       #_arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v9, 0x1

    .line 898
    .local v9, _arg3:Z
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 900
    .local v10, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v12, 0x1

    .line 902
    .local v12, _arg5:Z
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 904
    .local v13, _arg6:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v15, 0x1

    .line 906
    .local v15, _arg7:Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 908
    .local v16, _arg8:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    const/16 v18, 0x1

    .line 910
    .local v18, _arg9:Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .local v19, _arg10:D
    move-object/from16 v2, p0

    .line 911
    invoke-virtual/range {v2 .. v20}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNISetGpsPosition(JDDZDZDZDZD)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 896
    .end local v9           #_arg3:Z
    .end local v10           #_arg4:D
    .end local v12           #_arg5:Z
    .end local v13           #_arg6:D
    .end local v15           #_arg7:Z
    .end local v16           #_arg8:D
    .end local v18           #_arg9:Z
    .end local v19           #_arg10:D
    :cond_2d
    const/4 v9, 0x0

    goto :goto_2e

    .line 900
    .restart local v9       #_arg3:Z
    .restart local v10       #_arg4:D
    :cond_2e
    const/4 v12, 0x0

    goto :goto_2f

    .line 904
    .restart local v12       #_arg5:Z
    .restart local v13       #_arg6:D
    :cond_2f
    const/4 v15, 0x0

    goto :goto_30

    .line 908
    .restart local v15       #_arg7:Z
    .restart local v16       #_arg8:D
    :cond_30
    const/16 v18, 0x0

    goto :goto_31

    .line 917
    .end local v3           #_arg0:J
    .end local v5           #_arg1:D
    .end local v7           #_arg2:D
    .end local v9           #_arg3:Z
    .end local v10           #_arg4:D
    .end local v12           #_arg5:Z
    .end local v13           #_arg6:D
    .end local v15           #_arg7:Z
    .end local v16           #_arg8:D
    :sswitch_62
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 920
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNISetGpsStatus(I)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 926
    .end local v3           #_arg0:I
    :sswitch_63
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNIStartGpsSatellite()V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 933
    :sswitch_64
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 937
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 939
    .restart local v5       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 941
    .restart local v7       #_arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v27

    .line 943
    .local v27, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    const/4 v10, 0x1

    .local v10, _arg4:Z
    :goto_32
    move-object/from16 v21, p0

    move/from16 v22, v3

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move/from16 v29, v10

    .line 944
    invoke-virtual/range {v21 .. v29}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNISetGpsSatellite(IDDDZ)V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 943
    .end local v10           #_arg4:Z
    :cond_31
    const/4 v10, 0x0

    goto :goto_32

    .line 950
    .end local v3           #_arg0:I
    .end local v5           #_arg1:D
    .end local v7           #_arg2:D
    .end local v27           #_arg3:D
    :sswitch_65
    const-string v2, "com.htc.laputa.engine.aidl.IRenderService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/htc/laputa/engine/aidl/IRenderService$Stub;->JNIFinishGpsSatellite()V

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

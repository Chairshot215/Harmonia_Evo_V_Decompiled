.class public abstract Lcom/htc/laputa/engine/aidl/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Lcom/htc/laputa/engine/aidl/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/aidl/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.laputa.engine.aidl.IDataService"

.field static final TRANSACTION_LaputaMapCapture:I = 0x46

.field static final TRANSACTION_LaputaSettingsGetApplyPOIFilter:I = 0x24

.field static final TRANSACTION_LaputaSettingsGetAvoidFerries:I = 0xb

.field static final TRANSACTION_LaputaSettingsGetAvoidMotorways:I = 0x7

.field static final TRANSACTION_LaputaSettingsGetAvoidTollRoads:I = 0x9

.field static final TRANSACTION_LaputaSettingsGetBoolean:I = 0x38

.field static final TRANSACTION_LaputaSettingsGetCompass:I = 0x3e

.field static final TRANSACTION_LaputaSettingsGetEnableFootprintWarning:I = 0x20

.field static final TRANSACTION_LaputaSettingsGetEnableLaneInfo:I = 0xe

.field static final TRANSACTION_LaputaSettingsGetEnableLanguageList:I = 0x28

.field static final TRANSACTION_LaputaSettingsGetEnablePOIWarning:I = 0x22

.field static final TRANSACTION_LaputaSettingsGetEnableSafetyCamera:I = 0x16

.field static final TRANSACTION_LaputaSettingsGetEnableSpeedWarning:I = 0x1e

.field static final TRANSACTION_LaputaSettingsGetEnableVoiceGuidance:I = 0x2c

.field static final TRANSACTION_LaputaSettingsGetFPS:I = 0x36

.field static final TRANSACTION_LaputaSettingsGetFollowGPS:I = 0x42

.field static final TRANSACTION_LaputaSettingsGetGuidanceMode:I = 0x1a

.field static final TRANSACTION_LaputaSettingsGetInt:I = 0x3a

.field static final TRANSACTION_LaputaSettingsGetInternet:I = 0x44

.field static final TRANSACTION_LaputaSettingsGetLaneInfoContent:I = 0xd

.field static final TRANSACTION_LaputaSettingsGetLanguageListByIndex:I = 0x27

.field static final TRANSACTION_LaputaSettingsGetMapScale:I = 0x40

.field static final TRANSACTION_LaputaSettingsGetNavigationLicenseContent:I = 0x30

.field static final TRANSACTION_LaputaSettingsGetNavigationMode:I = 0x18

.field static final TRANSACTION_LaputaSettingsGetNightDayColors:I = 0x32

.field static final TRANSACTION_LaputaSettingsGetNumLanguageList:I = 0x26

.field static final TRANSACTION_LaputaSettingsGetNumVoiceGuidanceList:I = 0x2a

.field static final TRANSACTION_LaputaSettingsGetSafetyCameraContent:I = 0x15

.field static final TRANSACTION_LaputaSettingsGetStreetInfo:I = 0x34

.field static final TRANSACTION_LaputaSettingsGetString:I = 0x3c

.field static final TRANSACTION_LaputaSettingsGetTrafficContent:I = 0x10

.field static final TRANSACTION_LaputaSettingsGetTrafficInterval:I = 0x12

.field static final TRANSACTION_LaputaSettingsGetTrafficRadius:I = 0x13

.field static final TRANSACTION_LaputaSettingsGetUseMetric:I = 0x1c

.field static final TRANSACTION_LaputaSettingsGetVoiceGuidanceByIndex:I = 0x2b

.field static final TRANSACTION_LaputaSettingsGetVolume:I = 0x2e

.field static final TRANSACTION_LaputaSettingsSetApplyPOIFilter:I = 0x25

.field static final TRANSACTION_LaputaSettingsSetAvoidFerries:I = 0xc

.field static final TRANSACTION_LaputaSettingsSetAvoidMotorways:I = 0x8

.field static final TRANSACTION_LaputaSettingsSetAvoidTollRoads:I = 0xa

.field static final TRANSACTION_LaputaSettingsSetBoolean:I = 0x39

.field static final TRANSACTION_LaputaSettingsSetCompass:I = 0x3f

.field static final TRANSACTION_LaputaSettingsSetDpi:I = 0x31

.field static final TRANSACTION_LaputaSettingsSetEnableFootprintWarning:I = 0x21

.field static final TRANSACTION_LaputaSettingsSetEnableLaneInfo:I = 0xf

.field static final TRANSACTION_LaputaSettingsSetEnableLanguageList:I = 0x29

.field static final TRANSACTION_LaputaSettingsSetEnablePOIWarning:I = 0x23

.field static final TRANSACTION_LaputaSettingsSetEnableSafetyCamera:I = 0x17

.field static final TRANSACTION_LaputaSettingsSetEnableSpeedWarning:I = 0x1f

.field static final TRANSACTION_LaputaSettingsSetEnableVoiceGuidance:I = 0x2d

.field static final TRANSACTION_LaputaSettingsSetFPS:I = 0x37

.field static final TRANSACTION_LaputaSettingsSetFollowGPS:I = 0x43

.field static final TRANSACTION_LaputaSettingsSetGuidanceMode:I = 0x1b

.field static final TRANSACTION_LaputaSettingsSetInt:I = 0x3b

.field static final TRANSACTION_LaputaSettingsSetInternet:I = 0x45

.field static final TRANSACTION_LaputaSettingsSetMapScale:I = 0x41

.field static final TRANSACTION_LaputaSettingsSetNavigationMode:I = 0x19

.field static final TRANSACTION_LaputaSettingsSetNightDayColors:I = 0x33

.field static final TRANSACTION_LaputaSettingsSetStreetInfo:I = 0x35

.field static final TRANSACTION_LaputaSettingsSetString:I = 0x3d

.field static final TRANSACTION_LaputaSettingsSetTrafficContent:I = 0x11

.field static final TRANSACTION_LaputaSettingsSetTrafficPreference:I = 0x14

.field static final TRANSACTION_LaputaSettingsSetUseMetric:I = 0x1d

.field static final TRANSACTION_LaputaSettingsSetVolume:I = 0x2f

.field static final TRANSACTION_cancelTask:I = 0x3

.field static final TRANSACTION_createCmd:I = 0x1

.field static final TRANSACTION_registerContentStoreCallback:I = 0x6

.field static final TRANSACTION_releaseCmd:I = 0x2

.field static final TRANSACTION_runTaskA:I = 0x5

.field static final TRANSACTION_runTaskS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.htc.laputa.engine.aidl.IDataService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IDataService;
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
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/laputa/engine/aidl/IDataService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/htc/laputa/engine/aidl/IDataService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/htc/laputa/engine/aidl/IDataService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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

    .line 705
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->createCmd()I

    move-result v13

    .line 51
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    .end local v13           #_result:I
    :sswitch_2
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->releaseCmd(I)I

    move-result v13

    .line 61
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_3
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->cancelTask(II)I

    move-result v13

    .line 73
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:I
    :sswitch_4
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 92
    .local v4, _arg2:Landroid/os/Bundle;
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v12, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v2, v3, v4, v12}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->runTaskS(IILandroid/os/Bundle;Ljava/util/List;)I

    move-result v13

    .line 94
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 89
    .end local v4           #_arg2:Landroid/os/Bundle;
    .end local v12           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v13           #_result:I
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_1

    .line 101
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_5
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 114
    .restart local v4       #_arg2:Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/laputa/engine/aidl/IDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IDataCallback;

    move-result-object v5

    .line 115
    .local v5, _arg3:Lcom/htc/laputa/engine/aidl/IDataCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->runTaskA(IILandroid/os/Bundle;Lcom/htc/laputa/engine/aidl/IDataCallback;)I

    move-result v13

    .line 116
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 111
    .end local v4           #_arg2:Landroid/os/Bundle;
    .end local v5           #_arg3:Lcom/htc/laputa/engine/aidl/IDataCallback;
    .end local v13           #_result:I
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_2

    .line 122
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_6
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/laputa/engine/aidl/IContentStoreCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/laputa/engine/aidl/IContentStoreCallback;

    move-result-object v2

    .line 125
    .local v2, _arg0:Lcom/htc/laputa/engine/aidl/IContentStoreCallback;
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->registerContentStoreCallback(Lcom/htc/laputa/engine/aidl/IContentStoreCallback;)I

    move-result v13

    .line 126
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2           #_arg0:Lcom/htc/laputa/engine/aidl/IContentStoreCallback;
    .end local v13           #_result:I
    :sswitch_7
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetAvoidMotorways()Z

    move-result v13

    .line 134
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 135
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 140
    .end local v13           #_result:Z
    :sswitch_8
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 143
    .local v2, _arg0:Z
    :goto_4
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetAvoidMotorways(Z)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 142
    .end local v2           #_arg0:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 149
    :sswitch_9
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetAvoidTollRoads()Z

    move-result v13

    .line 151
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 152
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 157
    .end local v13           #_result:Z
    :sswitch_a
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    .line 160
    .restart local v2       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetAvoidTollRoads(Z)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 159
    .end local v2           #_arg0:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 166
    :sswitch_b
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetAvoidFerries()Z

    move-result v13

    .line 168
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v13, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 169
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 174
    .end local v13           #_result:Z
    :sswitch_c
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    .line 177
    .restart local v2       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetAvoidFerries(Z)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 176
    .end local v2           #_arg0:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 183
    :sswitch_d
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetLaneInfoContent()Z

    move-result v13

    .line 185
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 186
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 191
    .end local v13           #_result:Z
    :sswitch_e
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnableLaneInfo()Z

    move-result v13

    .line 193
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 194
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 199
    .end local v13           #_result:Z
    :sswitch_f
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 202
    .restart local v2       #_arg0:Z
    :goto_b
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnableLaneInfo(Z)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v2           #_arg0:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 208
    :sswitch_10
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetTrafficContent()Z

    move-result v13

    .line 210
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v13, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 211
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 216
    .end local v13           #_result:Z
    :sswitch_11
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    .line 219
    .restart local v2       #_arg0:Z
    :goto_d
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetTrafficContent(Z)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 218
    .end local v2           #_arg0:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 225
    :sswitch_12
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetTrafficInterval()I

    move-result v13

    .line 227
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 233
    .end local v13           #_result:I
    :sswitch_13
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetTrafficRadius()I

    move-result v13

    .line 235
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 241
    .end local v13           #_result:I
    :sswitch_14
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 245
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetTrafficPreference(II)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 252
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_15
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetSafetyCameraContent()Z

    move-result v13

    .line 254
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v13, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 255
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 260
    .end local v13           #_result:Z
    :sswitch_16
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnableSafetyCamera()Z

    move-result v13

    .line 262
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v13, :cond_e

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 263
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 268
    .end local v13           #_result:Z
    :sswitch_17
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    .line 271
    .local v2, _arg0:Z
    :goto_10
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnableSafetyCamera(Z)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 270
    .end local v2           #_arg0:Z
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 277
    :sswitch_18
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetNavigationMode()I

    move-result v13

    .line 279
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 285
    .end local v13           #_result:I
    :sswitch_19
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetNavigationMode(I)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 294
    .end local v2           #_arg0:I
    :sswitch_1a
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetGuidanceMode()I

    move-result v13

    .line 296
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 302
    .end local v13           #_result:I
    :sswitch_1b
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetGuidanceMode(I)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 311
    .end local v2           #_arg0:I
    :sswitch_1c
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetUseMetric()Z

    move-result v13

    .line 313
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v13, :cond_10

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 314
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 319
    .end local v13           #_result:Z
    :sswitch_1d
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    .line 322
    .local v2, _arg0:Z
    :goto_12
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetUseMetric(Z)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 321
    .end local v2           #_arg0:Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 328
    :sswitch_1e
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnableSpeedWarning()Z

    move-result v13

    .line 330
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v13, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 331
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 336
    .end local v13           #_result:Z
    :sswitch_1f
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    .line 339
    .restart local v2       #_arg0:Z
    :goto_14
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnableSpeedWarning(Z)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 338
    .end local v2           #_arg0:Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 345
    :sswitch_20
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnableFootprintWarning()Z

    move-result v13

    .line 347
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v13, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 348
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 353
    .end local v13           #_result:Z
    :sswitch_21
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    .line 356
    .restart local v2       #_arg0:Z
    :goto_16
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnableFootprintWarning(Z)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 355
    .end local v2           #_arg0:Z
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 362
    :sswitch_22
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnablePOIWarning()Z

    move-result v13

    .line 364
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v13, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 365
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 370
    .end local v13           #_result:Z
    :sswitch_23
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    .line 373
    .restart local v2       #_arg0:Z
    :goto_18
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnablePOIWarning(Z)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 372
    .end local v2           #_arg0:Z
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 379
    :sswitch_24
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetApplyPOIFilter()Z

    move-result v13

    .line 381
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v13, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 382
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 387
    .end local v13           #_result:Z
    :sswitch_25
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    .line 390
    .restart local v2       #_arg0:Z
    :goto_1a
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetApplyPOIFilter(Z)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 389
    .end local v2           #_arg0:Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 396
    :sswitch_26
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetNumLanguageList()I

    move-result v13

    .line 398
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 404
    .end local v13           #_result:I
    :sswitch_27
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 407
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetLanguageListByIndex(I)Ljava/lang/String;

    move-result-object v13

    .line 408
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 414
    .end local v2           #_arg0:I
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_28
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnableLanguageList()I

    move-result v13

    .line 416
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 422
    .end local v13           #_result:I
    :sswitch_29
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnableLanguageList(I)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 431
    .end local v2           #_arg0:I
    :sswitch_2a
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetNumVoiceGuidanceList()I

    move-result v13

    .line 433
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 439
    .end local v13           #_result:I
    :sswitch_2b
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetVoiceGuidanceByIndex(I)Ljava/lang/String;

    move-result-object v13

    .line 443
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 449
    .end local v2           #_arg0:I
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetEnableVoiceGuidance()I

    move-result v13

    .line 451
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 457
    .end local v13           #_result:I
    :sswitch_2d
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetEnableVoiceGuidance(I)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 466
    .end local v2           #_arg0:I
    :sswitch_2e
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetVolume()I

    move-result v13

    .line 468
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 474
    .end local v13           #_result:I
    :sswitch_2f
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 477
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetVolume(I)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 483
    .end local v2           #_arg0:I
    :sswitch_30
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetNavigationLicenseContent()Z

    move-result v13

    .line 485
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v13, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 486
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 491
    .end local v13           #_result:Z
    :sswitch_31
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 496
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetDpi(II)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 502
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_32
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetNightDayColors()Z

    move-result v13

    .line 504
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v13, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 505
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 510
    .end local v13           #_result:Z
    :sswitch_33
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    .line 513
    .local v2, _arg0:Z
    :goto_1d
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetNightDayColors(Z)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 512
    .end local v2           #_arg0:Z
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 519
    :sswitch_34
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetStreetInfo()Z

    move-result v13

    .line 521
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v13, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 522
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 527
    .end local v13           #_result:Z
    :sswitch_35
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    .line 530
    .restart local v2       #_arg0:Z
    :goto_1f
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetStreetInfo(Z)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 529
    .end local v2           #_arg0:Z
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1f

    .line 536
    :sswitch_36
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetFPS()Z

    move-result v13

    .line 538
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v13, :cond_1f

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 539
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 544
    .end local v13           #_result:Z
    :sswitch_37
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    .line 547
    .restart local v2       #_arg0:Z
    :goto_21
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetFPS(Z)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 546
    .end local v2           #_arg0:Z
    :cond_20
    const/4 v2, 0x0

    goto :goto_21

    .line 553
    :sswitch_38
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 557
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v13, :cond_21

    const/4 v1, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 558
    :cond_21
    const/4 v1, 0x0

    goto :goto_22

    .line 563
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_39
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 567
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v3, 0x1

    .line 568
    .local v3, _arg1:Z
    :goto_23
    invoke-virtual {p0, v2, v3}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetBoolean(Ljava/lang/String;Z)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 567
    .end local v3           #_arg1:Z
    :cond_22
    const/4 v3, 0x0

    goto :goto_23

    .line 574
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_3a
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 577
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetInt(Ljava/lang/String;)I

    move-result v13

    .line 578
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 584
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_3b
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 589
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetInt(Ljava/lang/String;I)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 595
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    :sswitch_3c
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 599
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 605
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_3d
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 609
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 616
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_3e
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetCompass()Z

    move-result v13

    .line 618
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v13, :cond_23

    const/4 v1, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 619
    :cond_23
    const/4 v1, 0x0

    goto :goto_24

    .line 624
    .end local v13           #_result:Z
    :sswitch_3f
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v2, 0x1

    .line 627
    .local v2, _arg0:Z
    :goto_25
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetCompass(Z)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 626
    .end local v2           #_arg0:Z
    :cond_24
    const/4 v2, 0x0

    goto :goto_25

    .line 633
    :sswitch_40
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetMapScale()Z

    move-result v13

    .line 635
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v13, :cond_25

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 636
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 641
    .end local v13           #_result:Z
    :sswitch_41
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    .line 644
    .restart local v2       #_arg0:Z
    :goto_27
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetMapScale(Z)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 643
    .end local v2           #_arg0:Z
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 650
    :sswitch_42
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetFollowGPS()Z

    move-result v13

    .line 652
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v13, :cond_27

    const/4 v1, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 653
    :cond_27
    const/4 v1, 0x0

    goto :goto_28

    .line 658
    .end local v13           #_result:Z
    :sswitch_43
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    const/4 v2, 0x1

    .line 661
    .restart local v2       #_arg0:Z
    :goto_29
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetFollowGPS(Z)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 660
    .end local v2           #_arg0:Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_29

    .line 667
    :sswitch_44
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsGetInternet()Z

    move-result v13

    .line 669
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    if-eqz v13, :cond_29

    const/4 v1, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 670
    :cond_29
    const/4 v1, 0x0

    goto :goto_2a

    .line 675
    .end local v13           #_result:Z
    :sswitch_45
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v2, 0x1

    .line 678
    .restart local v2       #_arg0:Z
    :goto_2b
    invoke-virtual {p0, v2}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaSettingsSetInternet(Z)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 677
    .end local v2           #_arg0:Z
    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .line 684
    :sswitch_46
    const-string v1, "com.htc.laputa.engine.aidl.IDataService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 692
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 694
    .local v5, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 696
    .local v7, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 698
    .local v9, _arg5:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg6:I
    move-object v1, p0

    .line 699
    invoke-virtual/range {v1 .. v11}, Lcom/htc/laputa/engine/aidl/IDataService$Stub;->LaputaMapCapture(Ljava/lang/String;IIDDDI)Z

    move-result v13

    .line 700
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v13, :cond_2b

    const/4 v1, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 701
    :cond_2b
    const/4 v1, 0x0

    goto :goto_2c

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

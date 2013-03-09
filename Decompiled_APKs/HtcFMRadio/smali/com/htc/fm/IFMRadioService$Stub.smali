.class public abstract Lcom/htc/fm/IFMRadioService$Stub;
.super Landroid/os/Binder;
.source "IFMRadioService.java"

# interfaces
.implements Lcom/htc/fm/IFMRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/IFMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/IFMRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.fm.IFMRadioService"

.field static final TRANSACTION_SetUIExist:I = 0x31

.field static final TRANSACTION_diableAudio:I = 0xc

.field static final TRANSACTION_enableTx:I = 0x32

.field static final TRANSACTION_getAirModeWarningMessage:I = 0x2f

.field static final TRANSACTION_getAudioMode:I = 0x22

.field static final TRANSACTION_getAudioPath:I = 0x15

.field static final TRANSACTION_getBand:I = 0x20

.field static final TRANSACTION_getCmdState:I = 0x17

.field static final TRANSACTION_getFirstPresetId:I = 0x2a

.field static final TRANSACTION_getFrequency:I = 0x18

.field static final TRANSACTION_getHeadsetWarningMessage:I = 0x2e

.field static final TRANSACTION_getPresetId:I = 0x1f

.field static final TRANSACTION_getRawRssi:I = 0x1a

.field static final TRANSACTION_getRdsData:I = 0x1b

.field static final TRANSACTION_getRdsPTYData:I = 0x1c

.field static final TRANSACTION_getRssi:I = 0x19

.field static final TRANSACTION_getState:I = 0x16

.field static final TRANSACTION_getStateMessage:I = 0x2b

.field static final TRANSACTION_getTxAudioMode:I = 0x3f

.field static final TRANSACTION_getTxCmdState:I = 0x40

.field static final TRANSACTION_getTxFrequency:I = 0x3e

.field static final TRANSACTION_getTxScanFreq:I = 0x41

.field static final TRANSACTION_getTxState:I = 0x3d

.field static final TRANSACTION_isBroadcasting:I = 0x14

.field static final TRANSACTION_isHeadsetPlugged:I = 0x2d

.field static final TRANSACTION_isMute:I = 0x21

.field static final TRANSACTION_isRdsEnabled:I = 0x1e

.field static final TRANSACTION_isRssiEnabled:I = 0x1d

.field static final TRANSACTION_isScanning:I = 0x29

.field static final TRANSACTION_isTxMute:I = 0x42

.field static final TRANSACTION_next:I = 0x6

.field static final TRANSACTION_onPresetUpdated:I = 0x30

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_play:I = 0x4

.field static final TRANSACTION_prev:I = 0x5

.field static final TRANSACTION_scan:I = 0x26

.field static final TRANSACTION_scanChans:I = 0x27

.field static final TRANSACTION_scanChansTx:I = 0x36

.field static final TRANSACTION_seekDown:I = 0xf

.field static final TRANSACTION_seekUp:I = 0xe

.field static final TRANSACTION_setAudoPrescanEnabled:I = 0x2c

.field static final TRANSACTION_setBand:I = 0x7

.field static final TRANSACTION_setHeadsetOut:I = 0xb

.field static final TRANSACTION_setMono:I = 0x23

.field static final TRANSACTION_setMonoTx:I = 0x3a

.field static final TRANSACTION_setMute:I = 0x8

.field static final TRANSACTION_setMuteTx:I = 0x38

.field static final TRANSACTION_setRdsOff:I = 0x13

.field static final TRANSACTION_setRdsOn:I = 0x11

.field static final TRANSACTION_setRssiOff:I = 0x12

.field static final TRANSACTION_setRssiOn:I = 0x10

.field static final TRANSACTION_setSpeakerOut:I = 0xa

.field static final TRANSACTION_setStereo:I = 0x24

.field static final TRANSACTION_setStereoTx:I = 0x3b

.field static final TRANSACTION_setUnMute:I = 0x9

.field static final TRANSACTION_setUnMuteTx:I = 0x39

.field static final TRANSACTION_setVolumeTx:I = 0x3c

.field static final TRANSACTION_stopScan:I = 0x28

.field static final TRANSACTION_stopScanTx:I = 0x37

.field static final TRANSACTION_tune:I = 0xd

.field static final TRANSACTION_tuneTx:I = 0x35

.field static final TRANSACTION_turnOff:I = 0x2

.field static final TRANSACTION_turnOffTx:I = 0x34

.field static final TRANSACTION_turnOn:I = 0x1

.field static final TRANSACTION_turnOnTx:I = 0x33

.field static final TRANSACTION_updateCmdStateComplete:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.fm.IFMRadioService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/fm/IFMRadioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.fm.IFMRadioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/fm/IFMRadioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/fm/IFMRadioService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/fm/IFMRadioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/fm/IFMRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 561
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->turnOn(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->turnOff()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->pause()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->play()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->prev()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :sswitch_6
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->next()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    :sswitch_7
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->setBand(I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setMute()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_9
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setUnMute()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 114
    :sswitch_a
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setSpeakerOut()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    :sswitch_b
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setHeadsetOut()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    :sswitch_c
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->diableAudio()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    :sswitch_d
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->tune(I)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:I
    :sswitch_e
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->seekUp()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    :sswitch_f
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->seekDown()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_10
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setRssiOn()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    :sswitch_11
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setRdsOn()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    :sswitch_12
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setRssiOff()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    :sswitch_13
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setRdsOff()V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    :sswitch_14
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isBroadcasting()Z

    move-result v1

    .line 188
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v1           #_result:Z
    :sswitch_15
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getAudioPath()I

    move-result v1

    .line 196
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 202
    .end local v1           #_result:I
    :sswitch_16
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getState()I

    move-result v1

    .line 204
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v1           #_result:I
    :sswitch_17
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getCmdState()I

    move-result v1

    .line 212
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v1           #_result:I
    :sswitch_18
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getFrequency()I

    move-result v1

    .line 220
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v1           #_result:I
    :sswitch_19
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getRssi()I

    move-result v1

    .line 228
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v1           #_result:I
    :sswitch_1a
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getRawRssi()I

    move-result v1

    .line 236
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 242
    .end local v1           #_result:I
    :sswitch_1b
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getRdsData()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getRdsPTYData()I

    move-result v1

    .line 252
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v1           #_result:I
    :sswitch_1d
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isRssiEnabled()Z

    move-result v1

    .line 260
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v1           #_result:Z
    :sswitch_1e
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isRdsEnabled()Z

    move-result v1

    .line 268
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v1           #_result:Z
    :sswitch_1f
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getPresetId()I

    move-result v1

    .line 276
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 282
    .end local v1           #_result:I
    :sswitch_20
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getBand()I

    move-result v1

    .line 284
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v1           #_result:I
    :sswitch_21
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isMute()Z

    move-result v1

    .line 292
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v1           #_result:Z
    :sswitch_22
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getAudioMode()I

    move-result v1

    .line 300
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v1           #_result:I
    :sswitch_23
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setMono()V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    :sswitch_24
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setStereo()V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 320
    :sswitch_25
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->updateCmdStateComplete(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 329
    .end local v0           #_arg0:I
    :sswitch_26
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->scan()V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 336
    :sswitch_27
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->scanChans(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v0           #_arg0:I
    :sswitch_28
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->stopScan()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 352
    :sswitch_29
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isScanning()Z

    move-result v1

    .line 354
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 360
    .end local v1           #_result:Z
    :sswitch_2a
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getFirstPresetId()I

    move-result v1

    .line 362
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v1           #_result:I
    :sswitch_2b
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getStateMessage()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .line 379
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->setAudoPrescanEnabled(Z)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v2

    .line 378
    goto :goto_1

    .line 385
    :sswitch_2d
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isHeadsetPlugged()Z

    move-result v1

    .line 387
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v1           #_result:Z
    :sswitch_2e
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getHeadsetWarningMessage()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getAirModeWarningMessage()Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_30
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->onPresetUpdated(I)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 418
    .end local v0           #_arg0:I
    :sswitch_31
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 421
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->SetUIExist(Z)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v2

    .line 420
    goto :goto_2

    .line 427
    :sswitch_32
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->enableTx()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 434
    :sswitch_33
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 437
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->turnOnTx(I)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 443
    .end local v0           #_arg0:I
    :sswitch_34
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->turnOffTx()V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 450
    :sswitch_35
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->tuneTx(I)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 459
    .end local v0           #_arg0:I
    :sswitch_36
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->scanChansTx(I)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 468
    .end local v0           #_arg0:I
    :sswitch_37
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->stopScanTx()V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 475
    :sswitch_38
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setMuteTx()V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 482
    :sswitch_39
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setUnMuteTx()V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 489
    :sswitch_3a
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setMonoTx()V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 496
    :sswitch_3b
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->setStereoTx()V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 503
    :sswitch_3c
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 506
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->setVolumeTx(I)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 512
    .end local v0           #_arg0:I
    :sswitch_3d
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getTxState()I

    move-result v1

    .line 514
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 520
    .end local v1           #_result:I
    :sswitch_3e
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getTxFrequency()I

    move-result v1

    .line 522
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 528
    .end local v1           #_result:I
    :sswitch_3f
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getTxAudioMode()I

    move-result v1

    .line 530
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 536
    .end local v1           #_result:I
    :sswitch_40
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->getTxCmdState()I

    move-result v1

    .line 538
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 544
    .end local v1           #_result:I
    :sswitch_41
    const-string v2, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/fm/IFMRadioService$Stub;->getTxScanFreq(I)I

    move-result v1

    .line 548
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 554
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_42
    const-string v4, "com.htc.fm.IFMRadioService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/htc/fm/IFMRadioService$Stub;->isTxMute()Z

    move-result v1

    .line 556
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

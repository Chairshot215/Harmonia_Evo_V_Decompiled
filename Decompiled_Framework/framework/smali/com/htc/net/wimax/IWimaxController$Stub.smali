.class public abstract Lcom/htc/net/wimax/IWimaxController$Stub;
.super Landroid/os/Binder;
.source "IWimaxController.java"

# interfaces
.implements Lcom/htc/net/wimax/IWimaxController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/IWimaxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/IWimaxController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.net.wimax.IWimaxController"

.field static final TRANSACTION_acquireWimaxLock:I = 0x14

.field static final TRANSACTION_addFrequency:I = 0x2b

.field static final TRANSACTION_addNetwork:I = 0x1d

.field static final TRANSACTION_cancelAlarmDhcpRenew:I = 0x11

.field static final TRANSACTION_cancelAlarmScanRetry:I = 0xf

.field static final TRANSACTION_changeToCorpNapid:I = 0x36

.field static final TRANSACTION_clearChannelList:I = 0x2a

.field static final TRANSACTION_cli:I = 0x4b

.field static final TRANSACTION_connectToDcs:I = 0x6

.field static final TRANSACTION_dcIsConnected:I = 0x9

.field static final TRANSACTION_debugChange:I = 0xd

.field static final TRANSACTION_disableNetwork:I = 0x21

.field static final TRANSACTION_disconnect:I = 0x27

.field static final TRANSACTION_disconnectFromDcs:I = 0x7

.field static final TRANSACTION_enableLogLevel:I = 0x17

.field static final TRANSACTION_enableNetwork:I = 0x20

.field static final TRANSACTION_getBoardName:I = 0xb

.field static final TRANSACTION_getConfiguredDefaultNetworks:I = 0x23

.field static final TRANSACTION_getConfiguredNetworks:I = 0x24

.field static final TRANSACTION_getDecoration:I = 0x48

.field static final TRANSACTION_getDeviceInfo:I = 0x1a

.field static final TRANSACTION_getDhcpInfo:I = 0x18

.field static final TRANSACTION_getInnerIdentity:I = 0x3e

.field static final TRANSACTION_getInnerMethodType:I = 0x46

.field static final TRANSACTION_getLastAkaNotificationCode:I = 0x34

.field static final TRANSACTION_getLastEapNotificationMsg:I = 0x35

.field static final TRANSACTION_getMethodType:I = 0x42

.field static final TRANSACTION_getNetworkInfo:I = 0x13

.field static final TRANSACTION_getOuterIdentity:I = 0x44

.field static final TRANSACTION_getPassword:I = 0x40

.field static final TRANSACTION_getRealm:I = 0x3c

.field static final TRANSACTION_getRfChipName:I = 0xc

.field static final TRANSACTION_getScanResults:I = 0x1b

.field static final TRANSACTION_getScanResultsUpdateTime:I = 0x1c

.field static final TRANSACTION_getSettingAuthMode:I = 0x2e

.field static final TRANSACTION_getSettingChannelList:I = 0x2c

.field static final TRANSACTION_getSettingIdleModeTimer:I = 0x32

.field static final TRANSACTION_getSettingTxPower:I = 0x30

.field static final TRANSACTION_getWimax4GInfo:I = 0x19

.field static final TRANSACTION_getWimaxProp:I = 0x4c

.field static final TRANSACTION_getWimaxState:I = 0x12

.field static final TRANSACTION_isAvailable:I = 0x16

.field static final TRANSACTION_isBackoffState:I = 0x5

.field static final TRANSACTION_isDeviceReady:I = 0xa

.field static final TRANSACTION_isPrivateNetwork:I = 0x38

.field static final TRANSACTION_mgtSetSsStarted:I = 0x8

.field static final TRANSACTION_reassociate:I = 0x29

.field static final TRANSACTION_reconnect:I = 0x28

.field static final TRANSACTION_refreshConnectionStatistics:I = 0x25

.field static final TRANSACTION_releaseWimaxLock:I = 0x15

.field static final TRANSACTION_removeNetwork:I = 0x1e

.field static final TRANSACTION_resetAuthConfig:I = 0x4a

.field static final TRANSACTION_resetConnectionStatistics:I = 0x26

.field static final TRANSACTION_resetPacketErrorRate:I = 0x33

.field static final TRANSACTION_revertToSprintNapid:I = 0x37

.field static final TRANSACTION_saveConfiguration:I = 0x22

.field static final TRANSACTION_setAlarmDhcpRenew:I = 0x10

.field static final TRANSACTION_setAlarmScanRetry:I = 0xe

.field static final TRANSACTION_setAuthMode:I = 0x2d

.field static final TRANSACTION_setDecoration:I = 0x49

.field static final TRANSACTION_setIdleModeTimer:I = 0x31

.field static final TRANSACTION_setInnerIdentity:I = 0x3f

.field static final TRANSACTION_setInnerMethodType:I = 0x47

.field static final TRANSACTION_setMethodType:I = 0x43

.field static final TRANSACTION_setOuterIdentity:I = 0x45

.field static final TRANSACTION_setPassword:I = 0x41

.field static final TRANSACTION_setRealm:I = 0x3d

.field static final TRANSACTION_setToggling:I = 0x39

.field static final TRANSACTION_setTxPower:I = 0x2f

.field static final TRANSACTION_setWimaxDunMode:I = 0x4

.field static final TRANSACTION_setWimaxEnabled:I = 0x1

.field static final TRANSACTION_setWimaxEnabledPersist:I = 0x2

.field static final TRANSACTION_setWimaxProp:I = 0x4d

.field static final TRANSACTION_startAccessOmaDmConfig:I = 0x3a

.field static final TRANSACTION_stopAccessOmaDmConfig:I = 0x3b

.field static final TRANSACTION_updateNetwork:I = 0x1f

.field static final TRANSACTION_wimaxRescan:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p0, p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.net.wimax.IWimaxController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/net/wimax/IWimaxController;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/net/wimax/IWimaxController;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/net/wimax/IWimaxController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/net/wimax/IWimaxController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v9, v8

    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    :sswitch_2
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v0, v8

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v2, v8

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxEnabledPersist(ZZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    move v9, v8

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_3
    move v0, v9

    goto :goto_2

    :cond_4
    move v2, v9

    goto :goto_3

    :sswitch_3
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->wimaxRescan()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v0, v8

    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxDunMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_5
    move v0, v9

    goto :goto_4

    :sswitch_5
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isBackoffState()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->connectToDcs()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    move v9, v8

    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->disconnectFromDcs()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_8

    move v9, v8

    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v0, v8

    :goto_5
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->mgtSetSsStarted(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v9

    goto :goto_5

    :sswitch_9
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->dcIsConnected()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_b

    move v9, v8

    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isDeviceReady()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_c

    move v9, v8

    :cond_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getBoardName(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_d

    move v9, v8

    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getRfChipName(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_e

    move v9, v8

    :cond_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    move v0, v8

    :goto_6
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->debugChange(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_f
    move v0, v9

    goto :goto_6

    :sswitch_e
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/net/wimax/IWimaxController$Stub;->setAlarmScanRetry(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->cancelAlarmScanRetry()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/net/wimax/IWimaxController$Stub;->setAlarmDhcpRenew(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_11
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->cancelAlarmDhcpRenew()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getWimaxState()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_10

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->acquireWimaxLock(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_11

    move v9, v8

    :cond_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->releaseWimaxLock(Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_12

    move v9, v8

    :cond_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isAvailable()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    move v9, v8

    :cond_13
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->enableLogLevel(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_14

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_19
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_15

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Lcom/htc/net/wimax/HTCWimax4GInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getDeviceInfo()Lcom/htc/net/FourG/DeviceInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_16

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Lcom/htc/net/FourG/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getScanResults()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getScanResultsUpdateTime()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_17

    sget-object v9, Lcom/htc/net/wimax/Wimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/Wimax4GConfiguration;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->addNetwork(Lcom/htc/net/wimax/Wimax4GConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_7

    :sswitch_1e
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->removeNetwork(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_18

    move v9, v8

    :cond_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    sget-object v10, Lcom/htc/net/FourG/FourGConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGConfiguration;

    :goto_8
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->updateNetwork(Lcom/htc/net/FourG/FourGConfiguration;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_19

    move v9, v8

    :cond_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_8

    :sswitch_20
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1c

    move v2, v8

    :goto_9
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->enableNetwork(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1b

    move v9, v8

    :cond_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1c
    move v2, v9

    goto :goto_9

    :sswitch_21
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->disableNetwork(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1d

    move v9, v8

    :cond_1d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_22
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->saveConfiguration()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1e

    move v9, v8

    :cond_1e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_23
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getConfiguredDefaultNetworks()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_24
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_25
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    sget-object v10, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_b
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->refreshConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_21

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v8}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a

    :cond_20
    const/4 v2, 0x0

    goto :goto_b

    :cond_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_26
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    sget-object v10, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_23

    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_d
    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_24

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v8}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_22
    const/4 v0, 0x0

    goto :goto_c

    :cond_23
    const/4 v2, 0x0

    goto :goto_d

    :cond_24
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_27
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->disconnect()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_25

    move v9, v8

    :cond_25
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_28
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->reconnect()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_26

    move v9, v8

    :cond_26
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_29
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->reassociate()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_27

    move v9, v8

    :cond_27
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2a
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->clearChannelList()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_28

    move v9, v8

    :cond_28
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2b
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController$Stub;->addFrequency(III)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_29

    move v9, v8

    :cond_29
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2c
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingChannelList()[I

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :sswitch_2d
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setAuthMode(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2a

    move v9, v8

    :cond_2a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingAuthMode()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setTxPower(F)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2b

    move v9, v8

    :cond_2b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_30
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingTxPower()F

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :sswitch_31
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setIdleModeTimer(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2c

    move v9, v8

    :cond_2c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_32
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getSettingIdleModeTimer()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_33
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->resetPacketErrorRate()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2d

    move v9, v8

    :cond_2d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_34
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getLastAkaNotificationCode()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_35
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getLastEapNotificationMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_36
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->changeToCorpNapid(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2e

    move v9, v8

    :cond_2e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_37
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->revertToSprintNapid()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2f

    move v9, v8

    :cond_2f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_38
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->isPrivateNetwork()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_30

    move v9, v8

    :cond_30
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_39
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_32

    move v0, v8

    :goto_e
    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->setToggling(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_31

    move v9, v8

    :cond_31
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_32
    move v0, v9

    goto :goto_e

    :sswitch_3a
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->startAccessOmaDmConfig()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3b
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->stopAccessOmaDmConfig()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3c
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getRealm(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3d
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setRealm(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_33

    move v9, v8

    :cond_33
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3e
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getInnerIdentity(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3f
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setInnerIdentity(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_34

    move v9, v8

    :cond_34
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_40
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getPassword(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_41
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setPassword(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_35

    move v9, v8

    :cond_35
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_42
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getMethodType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_43
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setMethodType(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_36

    move v9, v8

    :cond_36
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_44
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getOuterIdentity(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_45
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setOuterIdentity(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_37

    move v9, v8

    :cond_37
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_46
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getInnerMethodType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_47
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setInnerMethodType(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_38

    move v9, v8

    :cond_38
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_48
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getDecoration(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_49
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setDecoration(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_39

    move v9, v8

    :cond_39
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4a
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;->resetAuthConfig()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4b
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4c
    const-string v9, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/IWimaxController$Stub;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4d
    const-string v10, "com.htc.net.wimax.IWimaxController"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3a

    move v9, v8

    :cond_3a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

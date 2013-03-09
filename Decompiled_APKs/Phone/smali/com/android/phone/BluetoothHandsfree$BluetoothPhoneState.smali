.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# static fields
.field private static final PHONE_CDMA_CALL_WAITING:I = 0x5

.field private static final PRECISE_CALL_STATE_CHANGED:I = 0x2

.field private static final RETRY_SCO_TIME_WINDOW:I = 0x3e8

.field private static final RING:I = 0x3

.field private static final RINGING_STOP:I = 0x4

.field private static final SERVICE_STATE_CHANGED:I = 0x1


# instance fields
.field private final FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

.field private final htcCdma6LevelSignalStrength:Z

.field private mActiveConnection:Lcom/android/internal/telephony/Connection;

.field private mBattchg:I

.field private mCall:I

.field private mCallStartTime:J

.field private mCallheld:I

.field private mCallsetup:I

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStopRing:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 897
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 843
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 847
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 858
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    .line 1057
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v8, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v6, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa2

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x16

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x62

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa1

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x14

    if-ne v1, v4, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->htcCdma6LevelSignalStrength:Z

    .line 1067
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x94

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v8, :cond_2

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa1

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v8, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x14

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v6, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa2

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x16

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x62

    if-ne v1, v4, :cond_5

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    .line 1272
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 901
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    .line 902
    invoke-direct {p0, v2, v7}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    .line 903
    iput v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 905
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 911
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3, v7}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 913
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v7}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 915
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 916
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 919
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 924
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_4
    move v1, v2

    .line 1057
    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 1067
    goto/16 :goto_1
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 802
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateBeforeRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->fastUpdateForCallConnect()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->fastUpdateForCallDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePsCallStateChange(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private asuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1247
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1250
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 1217
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaLevelDirectly(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1218
    .local v0, iconLevel:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1219
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-ne v1, v2, :cond_3

    .line 1220
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isLte()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1243
    :cond_0
    :goto_0
    return v0

    .line 1222
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1223
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    .line 1225
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    .line 1227
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1228
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-eqz v1, :cond_4

    .line 1233
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    .line 1236
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    .line 1239
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized fastUpdateForCallConnect()V
    .locals 2

    .prologue
    .line 2023
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-eqz v0, :cond_0

    .line 2025
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 2026
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 2031
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 2,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2032
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2034
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2035
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2037
    :cond_0
    monitor-exit p0

    return-void

    .line 2023
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized fastUpdateForCallDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 2
    .parameter "cause"

    .prologue
    const/4 v1, 0x1

    .line 2040
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2041
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-ne v0, v1, :cond_1

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 2043
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 2,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2051
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v0, :cond_2

    .line 2052
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2053
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    :goto_1
    monitor-exit p0

    return-void

    .line 2044
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-eqz v0, :cond_0

    .line 2045
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 2046
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq p1, v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2055
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingBusyTone:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I
    .locals 2
    .parameter "currState"
    .parameter "prevState"

    .prologue
    .line 1818
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_1

    .line 1819
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p2, v1, :cond_0

    .line 1820
    const/4 v0, 0x0

    .line 1834
    .local v0, callheld:I
    :goto_0
    return v0

    .line 1822
    .end local v0           #callheld:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1825
    .end local v0           #callheld:I
    :cond_1
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_2

    .line 1826
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1828
    .end local v0           #callheld:I
    :cond_2
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SWITCH_PARTIES_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_3

    .line 1829
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1832
    .end local v0           #callheld:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #callheld:I
    goto :goto_0
.end method

.method private getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 12
    .parameter "signalStrength"

    .prologue
    const/16 v11, -0x64

    const/16 v10, -0x6e

    const/16 v9, -0x82

    const/16 v8, -0x96

    const/16 v7, -0x5a

    .line 1093
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1094
    .local v0, cdmaDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1095
    .local v1, cdmaEcio:I
    const/4 v3, 0x0

    .line 1096
    .local v3, levelDbm:I
    const/4 v4, 0x0

    .line 1097
    .local v4, levelEcio:I
    const/4 v5, 0x0

    .line 1098
    .local v5, scale:I
    const/4 v2, 0x0

    .line 1100
    .local v2, cdmaLevel:I
    iget-boolean v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-eqz v6, :cond_d

    .line 1102
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_0

    const/4 v3, 0x6

    .line 1110
    :goto_0
    if-lt v1, v7, :cond_6

    const/4 v4, 0x6

    .line 1118
    :goto_1
    const/4 v5, 0x6

    .line 1119
    if-ge v3, v4, :cond_c

    move v2, v3

    .line 1136
    :goto_2
    int-to-float v6, v2

    const/high16 v7, 0x40a0

    mul-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    return v6

    .line 1103
    :cond_0
    const/16 v6, -0x55

    if-lt v0, v6, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    .line 1104
    :cond_1
    if-lt v0, v7, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    .line 1105
    :cond_2
    const/16 v6, -0x5f

    if-lt v0, v6, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    .line 1106
    :cond_3
    if-lt v0, v11, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    .line 1107
    :cond_4
    const/16 v6, -0x69

    if-lt v0, v6, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    .line 1108
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1111
    :cond_6
    if-lt v1, v10, :cond_7

    const/4 v4, 0x5

    goto :goto_1

    .line 1112
    :cond_7
    const/16 v6, -0x78

    if-lt v1, v6, :cond_8

    const/4 v4, 0x4

    goto :goto_1

    .line 1113
    :cond_8
    if-lt v1, v9, :cond_9

    const/4 v4, 0x3

    goto :goto_1

    .line 1114
    :cond_9
    const/16 v6, -0x8c

    if-lt v1, v6, :cond_a

    const/4 v4, 0x2

    goto :goto_1

    .line 1115
    :cond_a
    if-lt v1, v8, :cond_b

    const/4 v4, 0x1

    goto :goto_1

    .line 1116
    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    :cond_c
    move v2, v4

    .line 1119
    goto :goto_2

    .line 1121
    :cond_d
    const/16 v6, -0x4b

    if-lt v0, v6, :cond_e

    const/4 v3, 0x4

    .line 1127
    :goto_3
    if-lt v1, v7, :cond_12

    const/4 v4, 0x4

    .line 1133
    :goto_4
    const/4 v5, 0x4

    .line 1134
    if-ge v3, v4, :cond_16

    move v2, v3

    :goto_5
    goto :goto_2

    .line 1122
    :cond_e
    const/16 v6, -0x55

    if-lt v0, v6, :cond_f

    const/4 v3, 0x3

    goto :goto_3

    .line 1123
    :cond_f
    const/16 v6, -0x5f

    if-lt v0, v6, :cond_10

    const/4 v3, 0x2

    goto :goto_3

    .line 1124
    :cond_10
    if-lt v0, v11, :cond_11

    const/4 v3, 0x1

    goto :goto_3

    .line 1125
    :cond_11
    const/4 v3, 0x0

    goto :goto_3

    .line 1128
    :cond_12
    if-lt v1, v10, :cond_13

    const/4 v4, 0x3

    goto :goto_4

    .line 1129
    :cond_13
    if-lt v1, v9, :cond_14

    const/4 v4, 0x2

    goto :goto_4

    .line 1130
    :cond_14
    if-lt v1, v8, :cond_15

    const/4 v4, 0x1

    goto :goto_4

    .line 1131
    :cond_15
    const/4 v4, 0x0

    goto :goto_4

    :cond_16
    move v2, v4

    .line 1134
    goto :goto_5
.end method

.method private getCdmaLevelDirectly(Landroid/telephony/SignalStrength;)I
    .locals 4
    .parameter "signalStrength"

    .prologue
    .line 1082
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1083
    .local v0, cdmaLevel:I
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->htcCdma6LevelSignalStrength:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    .line 1085
    .local v1, maxCdmaLevel:I
    :goto_0
    if-ltz v0, :cond_0

    if-le v0, v1, :cond_2

    .line 1086
    :cond_0
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "incorrect cdmaLevel!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v2, -0x1

    .line 1089
    :goto_1
    return v2

    .line 1083
    .end local v1           #maxCdmaLevel:I
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 1089
    .restart local v1       #maxCdmaLevel:I
    :cond_2
    int-to-float v2, v0

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2009
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 12
    .parameter "signalStrength"

    .prologue
    const/16 v11, -0x4b

    const/16 v10, -0x5a

    const/16 v9, -0x69

    .line 1140
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    .line 1141
    .local v1, evdoDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v3

    .line 1142
    .local v3, evdoSnr:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v2

    .line 1143
    .local v2, evdoEcio:I
    const/4 v4, 0x0

    .line 1144
    .local v4, levelEvdoDbm:I
    const/4 v6, 0x0

    .line 1145
    .local v6, levelEvdoSnr:I
    const/4 v5, 0x0

    .line 1146
    .local v5, levelEvdoEcio:I
    const/4 v7, 0x0

    .line 1147
    .local v7, scale:I
    const/4 v0, 0x0

    .line 1149
    .local v0, cdmaLevel:I
    iget-boolean v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    if-eqz v8, :cond_6

    .line 1150
    if-lt v1, v11, :cond_0

    const/4 v4, 0x6

    .line 1158
    :goto_0
    const/4 v7, 0x6

    .line 1159
    move v0, v4

    .line 1176
    :goto_1
    int-to-float v8, v0

    const/high16 v9, 0x40a0

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    return v8

    .line 1151
    :cond_0
    const/16 v8, -0x55

    if-lt v1, v8, :cond_1

    const/4 v4, 0x5

    goto :goto_0

    .line 1152
    :cond_1
    if-lt v1, v10, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    .line 1153
    :cond_2
    const/16 v8, -0x5f

    if-lt v1, v8, :cond_3

    const/4 v4, 0x3

    goto :goto_0

    .line 1154
    :cond_3
    const/16 v8, -0x64

    if-lt v1, v8, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    .line 1155
    :cond_4
    if-lt v1, v9, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    .line 1156
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 1161
    :cond_6
    const/16 v8, -0x41

    if-lt v1, v8, :cond_7

    const/4 v4, 0x4

    .line 1167
    :goto_2
    const/4 v8, 0x7

    if-lt v3, v8, :cond_b

    const/4 v6, 0x4

    .line 1173
    :goto_3
    const/4 v7, 0x6

    .line 1174
    if-ge v4, v6, :cond_f

    move v0, v4

    :goto_4
    goto :goto_1

    .line 1162
    :cond_7
    if-lt v1, v11, :cond_8

    const/4 v4, 0x3

    goto :goto_2

    .line 1163
    :cond_8
    if-lt v1, v10, :cond_9

    const/4 v4, 0x2

    goto :goto_2

    .line 1164
    :cond_9
    if-lt v1, v9, :cond_a

    const/4 v4, 0x1

    goto :goto_2

    .line 1165
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 1168
    :cond_b
    const/4 v8, 0x5

    if-lt v3, v8, :cond_c

    const/4 v6, 0x3

    goto :goto_3

    .line 1169
    :cond_c
    const/4 v8, 0x3

    if-lt v3, v8, :cond_d

    const/4 v6, 0x2

    goto :goto_3

    .line 1170
    :cond_d
    const/4 v8, 0x1

    if-lt v3, v8, :cond_e

    const/4 v6, 0x1

    goto :goto_3

    .line 1171
    :cond_e
    const/4 v6, 0x0

    goto :goto_3

    :cond_f
    move v0, v6

    .line 1174
    goto :goto_4
.end method

.method private getLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 7
    .parameter "signalStrength"

    .prologue
    .line 1180
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v4

    .line 1181
    .local v4, lteRsrp:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v3

    .line 1182
    .local v3, lteCqi:I
    const/4 v2, 0x0

    .line 1183
    .local v2, levelLteRsrp:I
    const/4 v1, 0x0

    .line 1184
    .local v1, levelLteCqi:I
    const/4 v0, 0x0

    .line 1186
    .local v0, cdmaLevel:I
    const/16 v5, -0x55

    if-lt v4, v5, :cond_0

    const/4 v2, 0x4

    .line 1192
    :goto_0
    const/16 v5, 0xb

    if-lt v3, v5, :cond_4

    const/4 v1, 0x4

    .line 1198
    :goto_1
    if-ge v2, v1, :cond_8

    move v0, v2

    .line 1199
    :goto_2
    int-to-float v5, v0

    const/high16 v6, 0x40a0

    mul-float/2addr v5, v6

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5

    .line 1187
    :cond_0
    const/16 v5, -0x5f

    if-lt v4, v5, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1188
    :cond_1
    const/16 v5, -0x69

    if-lt v4, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1189
    :cond_2
    const/16 v5, -0x73

    if-lt v4, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1190
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1193
    :cond_4
    const/4 v5, 0x7

    if-lt v3, v5, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    .line 1194
    :cond_5
    const/4 v5, 0x5

    if-lt v3, v5, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    .line 1195
    :cond_6
    const/4 v5, 0x3

    if-lt v3, v5, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    .line 1196
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    move v0, v1

    .line 1198
    goto :goto_2
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 14
    .parameter "signalStrength"

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0x8

    const/4 v11, 0x5

    const/16 v10, -0x50

    const/4 v9, 0x3

    .line 994
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 995
    .local v0, asu:I
    const/4 v6, 0x0

    .line 996
    .local v6, signalLevel:I
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_17

    .line 997
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 998
    .local v4, nwkType:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalDbm()I

    move-result v5

    .line 999
    .local v5, signalDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmEcno()I

    move-result v2

    .line 1000
    .local v2, ecno:I
    if-lt v4, v9, :cond_f

    .line 1002
    if-gtz v5, :cond_0

    if-lez v2, :cond_a

    .line 1003
    :cond_0
    mul-int/lit8 v5, v5, -0x1

    .line 1004
    mul-int/lit8 v2, v2, -0x1

    .line 1005
    const/4 v1, 0x1

    .line 1006
    .local v1, dbmLevel:I
    const/4 v3, 0x1

    .line 1007
    .local v3, ecnoLevel:I
    if-le v5, v10, :cond_1

    const/4 v1, 0x5

    .line 1013
    :goto_0
    const/16 v7, -0x14

    if-le v2, v7, :cond_5

    const/4 v3, 0x5

    .line 1019
    :goto_1
    if-le v1, v3, :cond_9

    move v6, v3

    .line 1047
    .end local v1           #dbmLevel:I
    .end local v2           #ecno:I
    .end local v3           #ecnoLevel:I
    .end local v4           #nwkType:I
    .end local v5           #signalDbm:I
    :goto_2
    return v6

    .line 1008
    .restart local v1       #dbmLevel:I
    .restart local v2       #ecno:I
    .restart local v3       #ecnoLevel:I
    .restart local v4       #nwkType:I
    .restart local v5       #signalDbm:I
    :cond_1
    const/16 v7, -0x5a

    if-le v5, v7, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 1009
    :cond_2
    const/16 v7, -0x64

    if-le v5, v7, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 1010
    :cond_3
    const/16 v7, -0x6a

    if-le v5, v7, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 1011
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1014
    :cond_5
    const/16 v7, -0x18

    if-le v2, v7, :cond_6

    const/4 v3, 0x4

    goto :goto_1

    .line 1015
    :cond_6
    const/16 v7, -0x1c

    if-le v2, v7, :cond_7

    const/4 v3, 0x3

    goto :goto_1

    .line 1016
    :cond_7
    const/16 v7, -0x20

    if-le v2, v7, :cond_8

    const/4 v3, 0x2

    goto :goto_1

    .line 1017
    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    move v6, v1

    .line 1019
    goto :goto_2

    .line 1021
    .end local v1           #dbmLevel:I
    .end local v3           #ecnoLevel:I
    :cond_a
    if-le v5, v10, :cond_b

    const/4 v6, 0x5

    goto :goto_2

    .line 1022
    :cond_b
    const/16 v7, -0x59

    if-le v5, v7, :cond_c

    const/4 v6, 0x4

    goto :goto_2

    .line 1023
    :cond_c
    const/16 v7, -0x62

    if-le v5, v7, :cond_d

    const/4 v6, 0x3

    goto :goto_2

    .line 1024
    :cond_d
    const/16 v7, -0x68

    if-le v5, v7, :cond_e

    const/4 v6, 0x2

    goto :goto_2

    .line 1025
    :cond_e
    const/4 v6, 0x1

    goto :goto_2

    .line 1030
    :cond_f
    if-lez v0, :cond_10

    const/16 v7, 0x63

    if-ne v0, v7, :cond_11

    :cond_10
    const/4 v6, 0x0

    goto :goto_2

    .line 1031
    :cond_11
    const/16 v7, 0x11

    if-lt v0, v7, :cond_12

    const/4 v6, 0x5

    goto :goto_2

    .line 1032
    :cond_12
    if-lt v0, v13, :cond_13

    const/4 v6, 0x4

    goto :goto_2

    .line 1033
    :cond_13
    if-lt v0, v12, :cond_14

    const/4 v6, 0x3

    goto :goto_2

    .line 1034
    :cond_14
    if-lt v0, v11, :cond_15

    const/4 v6, 0x2

    goto :goto_2

    .line 1035
    :cond_15
    if-lt v0, v9, :cond_16

    const/4 v6, 0x1

    goto :goto_2

    .line 1036
    :cond_16
    const/4 v6, 0x0

    goto :goto_2

    .line 1039
    .end local v2           #ecno:I
    .end local v4           #nwkType:I
    .end local v5           #signalDbm:I
    :cond_17
    if-lez v0, :cond_18

    const/16 v7, 0x63

    if-ne v0, v7, :cond_19

    :cond_18
    const/4 v6, 0x0

    goto :goto_2

    .line 1040
    :cond_19
    const/16 v7, 0x11

    if-lt v0, v7, :cond_1a

    const/4 v6, 0x5

    goto :goto_2

    .line 1041
    :cond_1a
    if-lt v0, v13, :cond_1b

    const/4 v6, 0x4

    goto :goto_2

    .line 1042
    :cond_1b
    if-lt v0, v12, :cond_1c

    const/4 v6, 0x3

    goto :goto_2

    .line 1043
    :cond_1c
    if-lt v0, v11, :cond_1d

    const/4 v6, 0x2

    goto :goto_2

    .line 1044
    :cond_1d
    if-lt v0, v9, :cond_1e

    const/4 v6, 0x1

    goto :goto_2

    .line 1045
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method private declared-synchronized handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    .locals 23
    .parameter "sendUpdate"
    .parameter "connection"

    .prologue
    .line 1419
    monitor-enter p0

    const/4 v11, 0x0

    .line 1420
    .local v11, establishSco:Z
    const/4 v6, 0x0

    .line 1421
    .local v6, call:I
    const/4 v9, 0x0

    .line 1422
    .local v9, callsetup:I
    const/4 v7, 0x0

    .line 1423
    .local v7, callheld:I
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1424
    .local v15, prevCallsetup:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    .line 1425
    .local v12, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1426
    .local v5, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1429
    .local v17, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v12, :cond_0

    if-eqz v5, :cond_0

    if-nez v17, :cond_1

    .line 1802
    .end local v12           #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1436
    .restart local v12       #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    .line 1437
    .local v13, newState:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v13, v0, :cond_2

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0, v13}, Lcom/android/phone/BluetoothHandsfree;->access$3402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 1439
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1453
    :cond_2
    :goto_1
    if-eqz v12, :cond_7

    .line 1454
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_1

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1495
    :cond_3
    :goto_2
    if-eqz v17, :cond_a

    .line 1496
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_2

    .line 1517
    :goto_3
    if-eqz v5, :cond_c

    .line 1518
    sget-object v19, Lcom/android/phone/BluetoothHandsfree$38;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_3

    .line 1539
    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    if-eqz v19, :cond_4

    if-eqz v9, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1302(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1541
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "Send fake mCallsetup for real call setup changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const-string v19, "Bluetooth HS/HF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mFakeCallsetup = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " callsetup = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 3,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1548
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v6, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1550
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "Send fake mCall for real call changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 2,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1558
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    .line 1560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v6, :cond_6

    .line 1561
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1563
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v9, :cond_0

    .line 1564
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1565
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_d

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CCWA: \"Phone\",129"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1419
    .end local v5           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v12           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v13           #newState:Lcom/android/internal/telephony/Phone$State;
    .end local v15           #prevCallsetup:I
    .end local v17           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1441
    .restart local v5       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v13       #newState:Lcom/android/internal/telephony/Phone$State;
    .restart local v15       #prevCallsetup:I
    .restart local v17       #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v19

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)Ljava/util/Queue;

    move-result-object v20

    monitor-enter v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mDTMFBurstCnfPending:Z
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mDTMFQueue:Ljava/util/Queue;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)Ljava/util/Queue;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Queue;->clear()V

    .line 1446
    monitor-exit v20

    goto/16 :goto_1

    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v19

    .line 1456
    :pswitch_2
    const/4 v6, 0x1

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_2

    .line 1460
    :pswitch_3
    const/4 v9, 0x2

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_2

    .line 1473
    :pswitch_4
    const/4 v9, 0x3

    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_2

    .line 1482
    :pswitch_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1483
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1484
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_2

    .line 1491
    :cond_7
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "foregroundCall is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_2

    .line 1499
    :pswitch_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1500
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "wired headset is plugged.. do not connect sco"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Ljava/lang/String;)V

    .line 1501
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1503
    :cond_9
    const/4 v9, 0x1

    .line 1504
    goto/16 :goto_3

    .line 1508
    :pswitch_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1509
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1510
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_3

    .line 1514
    :cond_a
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "ringingCall is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1520
    :pswitch_8
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_b

    .line 1521
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 1523
    :cond_b
    const/4 v6, 0x1

    .line 1524
    const/4 v7, 0x2

    .line 1526
    goto/16 :goto_4

    .line 1530
    :pswitch_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1531
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1532
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_4

    .line 1536
    :cond_c
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "backgroundCall is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1568
    :cond_d
    if-nez v9, :cond_0

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1570
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 4,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 4,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1578
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_f

    .line 1583
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v6, :cond_12

    .line 1584
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_10

    .line 1587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1589
    const/4 v11, 0x1

    .line 1591
    :cond_10
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1592
    if-eqz p1, :cond_12

    .line 1593
    if-nez v6, :cond_11

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_12

    .line 1594
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 2,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1598
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v9, :cond_15

    .line 1599
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1600
    if-eqz p1, :cond_14

    .line 1607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_14

    .line 1611
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    if-nez v19, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v20

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x3e8

    invoke-virtual/range {v19 .. v22}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1637
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1640
    if-eqz p1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,3"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1652
    :cond_15
    :goto_6
    if-eqz v11, :cond_16

    .line 1653
    const/4 v11, 0x0

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1657
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1658
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 1659
    .local v4, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 1660
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    .line 1662
    .local v10, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v16

    .line 1665
    .local v16, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v7

    .line 1667
    const-string v19, "Bluetooth HS/HF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prevCdma state: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", currCdma state: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v7

    .line 1671
    const-string v19, "Bluetooth HS/HF"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "cdma: callheld: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v10, :cond_19

    .line 1676
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCdmaIsSecondCallActive(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1682
    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_18

    iget-object v0, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 1687
    if-eqz p1, :cond_17

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_17

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 4,2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,3"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1699
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1707
    :cond_18
    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_19

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1710
    if-eqz p1, :cond_19

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_19

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 2,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const-string v20, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1718
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1722
    .end local v4           #app:Lcom/android/phone/PhoneApp;
    .end local v10           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v16           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1a
    const/4 v8, 0x0

    .line 1723
    .local v8, callsSwitched:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2b

    .line 1726
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_2a

    .line 1727
    check-cast v12, Lcom/android/internal/telephony/cdma/CdmaCall;

    .end local v12           #foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1728
    .local v3, activeConnection:Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mActiveConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mActiveConnection:Lcom/android/internal/telephony/Connection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 1730
    :cond_1b
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mActiveConnection:Lcom/android/internal/telephony/Connection;

    .line 1731
    const/4 v8, 0x1

    .line 1746
    .end local v3           #activeConnection:Lcom/android/internal/telephony/Connection;
    :cond_1c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v20

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v19 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$5002(Lcom/android/phone/BluetoothHandsfree;J)J

    .line 1748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v7, :cond_1d

    if-eqz v8, :cond_1e

    .line 1749
    :cond_1d
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1750
    if-eqz p1, :cond_1e

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 4,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1755
    :cond_1e
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_0

    if-eq v9, v15, :cond_0

    .line 1757
    const/4 v14, 0x0

    .line 1758
    .local v14, number:Ljava/lang/String;
    const/16 v18, 0x80

    .line 1760
    .local v18, type:I
    if-nez p2, :cond_1f

    .line 1761
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    .line 1762
    if-nez p2, :cond_1f

    .line 1763
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "Could not get a handle on Connection object for new incoming call"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_1f
    if-eqz p2, :cond_20

    .line 1768
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 1769
    if-eqz v14, :cond_20

    .line 1770
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v18

    .line 1773
    :cond_20
    if-nez v14, :cond_21

    .line 1774
    const-string v14, ""

    .line 1776
    :cond_21
    if-nez v6, :cond_22

    if-eqz v7, :cond_2e

    :cond_22
    if-eqz p1, :cond_2e

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCcwa:Z
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$5100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1779
    :cond_23
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CCWA: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1785
    :cond_24
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_0

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 3,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1615
    .end local v8           #callsSwitched:Z
    .end local v14           #number:Ljava/lang/String;
    .end local v18           #type:I
    .restart local v12       #foregroundCall:Lcom/android/internal/telephony/Call;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendColpUpdate()Z

    move-result v19

    if-eqz v19, :cond_26

    .line 1617
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v19

    if-eqz v19, :cond_28

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toColpString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1623
    :cond_26
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CIEV: 3,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    if-nez v19, :cond_14

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v15, v0, :cond_27

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v15, v0, :cond_14

    .line 1631
    :cond_27
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "Do early audioOff() for dialing canceled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    goto/16 :goto_5

    .line 1620
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toColpString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "+COLP"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v19 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1642
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v19

    if-nez v19, :cond_15

    .line 1646
    const-string v19, "Bluetooth HS/HF"

    const-string v20, "SCO not ready in mCallsetup == 3 !? Setup again"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto/16 :goto_6

    .line 1735
    .restart local v8       #callsSwitched:Z
    :cond_2a
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mActiveConnection:Lcom/android/internal/telephony/Connection;

    goto/16 :goto_7

    .line 1739
    :cond_2b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_2c

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2c

    const/4 v8, 0x1

    .line 1743
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v20

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v19 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$5002(Lcom/android/phone/BluetoothHandsfree;J)J

    goto/16 :goto_7

    .line 1739
    :cond_2c
    const/4 v8, 0x0

    goto :goto_a

    .line 1782
    .end local v12           #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v14       #number:Ljava/lang/String;
    .restart local v18       #type:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CCWA: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "+CCWA"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v19 .. v21}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1790
    :cond_2e
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 1791
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 1792
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1793
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v19

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_2f

    .line 1796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1799
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1454
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1496
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1518
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized handlePsCallStateChange(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2060
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v1

    .line 2061
    .local v1, sendUpdate:Z
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    .line 2062
    .local v0, prevPsCallState:I
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v2, p1}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2064
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2065
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1302(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2066
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Send fake mCallsetup for real call setup changed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFakeCallsetup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 3,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2069
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2070
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2073
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2074
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2075
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Send fake mCall for real call changed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 2,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2077
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2078
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 2081
    :cond_1
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-ne v2, v5, :cond_5

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 2082
    if-ne p1, v5, :cond_3

    .line 2083
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>We got an active cs call<<<< : ps.. waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 2085
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CCWA: \"Skype\",129"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2086
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 2088
    :cond_3
    if-ne p1, v6, :cond_4

    .line 2089
    if-ne v0, v5, :cond_2

    .line 2090
    :try_start_1
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>update CIEV in handlePsCallStateChange: 3,0;4,1;4,0<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2092
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 4,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2093
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 4,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2060
    .end local v0           #prevPsCallState:I
    .end local v1           #sendUpdate:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2095
    .restart local v0       #prevPsCallState:I
    .restart local v1       #sendUpdate:Z
    :cond_4
    if-nez p1, :cond_2

    .line 2096
    if-ne v0, v5, :cond_2

    .line 2097
    :try_start_2
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>update CIEV in handlePsCallStateChange: 3,0<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_0

    .line 2101
    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_d

    .line 2102
    if-nez p1, :cond_7

    .line 2103
    if-eqz v1, :cond_2

    .line 2104
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>update CIEV in handlePsCallStateChange<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    if-ne v0, v5, :cond_6

    .line 2106
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_0

    .line 2107
    :cond_6
    if-ne v0, v6, :cond_2

    .line 2108
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 2,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    goto :goto_0

    .line 2112
    :cond_7
    if-ne p1, v5, :cond_9

    .line 2113
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>update CIEV in handlePsCallStateChange: 3,1<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2115
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2116
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2118
    :cond_8
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2119
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2120
    const-string v2, "Skype"

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 2121
    const/16 v2, 0x81

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 2122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 2123
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 2124
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()V

    goto/16 :goto_0

    .line 2126
    :cond_9
    if-ne p1, v6, :cond_2

    .line 2127
    if-nez v0, :cond_b

    .line 2128
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>outgoing Skype call!!<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    if-eqz v1, :cond_a

    .line 2130
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mSkypeOut:Z
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2131
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2132
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,3"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2134
    :cond_a
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto/16 :goto_0

    .line 2136
    :cond_b
    if-ne v0, v5, :cond_2

    .line 2137
    const-string v2, "Bluetooth HS/HF"

    const-string v3, ">>>>>update CIEV in handlePsCallStateChange: 2,1&3,0<<<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    if-eqz v1, :cond_c

    .line 2139
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 2,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2140
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "+CIEV: 3,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2142
    :cond_c
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    goto/16 :goto_0

    .line 2146
    :cond_d
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Complicated Ps & Cs case!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized ignoreRing()V
    .locals 3

    .prologue
    .line 2015
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 2016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 2017
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CIEV: 3,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    :cond_0
    monitor-exit p0

    return-void

    .line 2015
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLte()Z
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchDeviceName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2
    .parameter "device"
    .parameter "deviceName"

    .prologue
    .line 1838
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1839
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1841
    const/4 v1, 0x1

    .line 1844
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized ring()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1851
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1896
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1856
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1857
    .local v0, mCall:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_2

    .line 1858
    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ring.. Error case : call is null and StopRing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1851
    .end local v0           #mCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1862
    .restart local v0       #mCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1866
    :cond_4
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1868
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1874
    :cond_5
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_0

    .line 1878
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v3, "RING"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRing:Z
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1882
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1884
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1885
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1886
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toClipString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1892
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1893
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1888
    .end local v1           #msg:Landroid/os/Message;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toClipString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+CLIP"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private scoClosed()V
    .locals 7

    .prologue
    .line 2151
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 2152
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    .line 2154
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2155
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2157
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 2158
    return-void

    .line 2157
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendClipUpdate()Z
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mClip:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendColpUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 976
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    if-nez v1, :cond_1

    .line 979
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "HBH-DS980"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->matchDeviceName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mColp:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendUpdate()Z
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private signalToRssi(I)I
    .locals 1
    .parameter "signal"

    .prologue
    const/4 v0, 0x0

    .line 1260
    packed-switch p1, :pswitch_data_0

    .line 1268
    :goto_0
    :pswitch_0
    return v0

    .line 1262
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1263
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1264
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 1265
    :pswitch_4
    const/16 v0, 0x13

    goto :goto_0

    .line 1266
    :pswitch_5
    const/16 v0, 0x1f

    goto :goto_0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private declared-synchronized stopRing()V
    .locals 2

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "[U53_BT]StopRing.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 987
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    monitor-exit p0

    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCindResult()Landroid/bluetooth/AtCommandResult;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1977
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1978
    .local v0, call:I
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1979
    .local v2, callsetup:I
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1980
    .local v1, callheld:I
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1981
    const/4 v0, 0x1

    .line 1982
    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-ne v5, v7, :cond_0

    const/4 v1, 0x0

    .line 1990
    :cond_0
    :goto_0
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1991
    .local v3, result:Landroid/bluetooth/AtCommandResult;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v5

    iput v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1993
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CIND: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v6

    if-nez v6, :cond_3

    .end local v0           #call:I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v6

    if-nez v6, :cond_4

    .end local v2           #callsetup:I
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1996
    .local v4, status:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    monitor-exit p0

    return-object v3

    .line 1983
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    .end local v4           #status:Ljava/lang/String;
    .restart local v0       #call:I
    .restart local v2       #callsetup:I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPsCallState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 1984
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1985
    :cond_2
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1986
    const/4 v0, 0x1

    .line 1987
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1993
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCall:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    goto :goto_1

    .end local v0           #call:I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mFakeCallsetup:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_2

    .line 1977
    .end local v1           #callheld:I
    .end local v2           #callsetup:I
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized toClipString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1904
    monitor-enter p0

    const/4 v1, 0x0

    .line 1910
    .local v1, callerID:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1911
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1912
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_1

    .line 1913
    const/4 v2, 0x0

    .line 1914
    .local v2, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1915
    .local v4, userDataObject:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_0

    .line 1916
    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 1919
    :cond_0
    if-eqz v2, :cond_1

    .line 1921
    iget-object v5, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1922
    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1928
    .end local v2           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #userDataObject:Ljava/lang/Object;
    :cond_1
    if-eqz v1, :cond_2

    .line 1929
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+CLIP: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",,,\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    :goto_0
    monitor-exit p0

    return-object v5

    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+CLIP: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1904
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized toColpString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1936
    monitor-enter p0

    const/4 v4, 0x0

    .line 1937
    .local v4, number:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1938
    .local v1, callerID:Ljava/lang/String;
    const/16 v5, 0x80

    .line 1940
    .local v5, type:I
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1941
    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 1942
    .local v2, connection:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_0

    .line 1943
    const-string v7, "Bluetooth HS/HF"

    const-string v8, "Could not get handle of Connection for new outgoing call"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    new-instance v7, Ljava/lang/String;

    const-string v8, "+COLP: \"UNKNOWN\",128"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    .end local v2           #connection:Lcom/android/internal/telephony/Connection;
    :goto_0
    monitor-exit p0

    return-object v7

    .line 1947
    .restart local v2       #connection:Lcom/android/internal/telephony/Connection;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1948
    if-eqz v4, :cond_1

    .line 1949
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    .line 1951
    :cond_1
    if-nez v4, :cond_2

    .line 1952
    const-string v4, ""

    .line 1955
    :cond_2
    const/4 v3, 0x0

    .line 1956
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 1957
    .local v6, userDataObject:Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_4

    .line 1958
    check-cast v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v6           #userDataObject:Ljava/lang/Object;
    iget-object v3, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1962
    :goto_1
    if-eqz v3, :cond_3

    .line 1963
    iget-object v7, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1964
    iget-object v1, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1967
    :cond_3
    if-eqz v1, :cond_5

    .line 1968
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+COLP: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1936
    .end local v2           #connection:Lcom/android/internal/telephony/Connection;
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1960
    .restart local v2       #connection:Lcom/android/internal/telephony/Connection;
    .restart local v3       #info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v6       #userDataObject:Ljava/lang/Object;
    :cond_4
    :try_start_2
    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    goto :goto_1

    .line 1970
    .end local v6           #userDataObject:Ljava/lang/Object;
    :cond_5
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+COLP: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1973
    .end local v2           #connection:Lcom/android/internal/telephony/Connection;
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_6
    new-instance v7, Ljava/lang/String;

    const-string v8, "+COLP: \"UNKNOWN\",128"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1900
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    .line 2001
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2002
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, status:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    monitor-exit p0

    return-object v0

    .line 2001
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #status:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 1332
    monitor-enter p0

    :try_start_0
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1333
    .local v0, batteryLevel:I
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1334
    .local v1, scale:I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 1344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1337
    :cond_1
    int-to-float v2, v0

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    :try_start_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1338
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_0

    .line 1339
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 1340
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)[I

    move-result-object v2

    const/4 v3, 0x6

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1341
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1332
    .end local v0           #batteryLevel:I
    .end local v1           #scale:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 953
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 955
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 961
    :cond_0
    return-void
.end method

.method private updateBtPhoneStateBeforeRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 931
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 932
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 934
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRing:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 940
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 941
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingAnswer:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 942
    return-void
.end method

.method private updateCdmaIsSecondCallActive(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    .locals 2
    .parameter "currState"
    .parameter "prevState"

    .prologue
    .line 1806
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v0, :cond_1

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 1812
    :cond_1
    return-void
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .locals 9
    .parameter "sendUpdate"
    .parameter "state"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1372
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1373
    :try_start_0
    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    .end local p2
    .local v4, state:Landroid/telephony/ServiceState;
    :try_start_1
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->setStateOutOfService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, v4

    .line 1377
    .end local v4           #state:Landroid/telephony/ServiceState;
    .restart local p2
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_6

    move v2, v5

    .line 1378
    .local v2, service:I
    :goto_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v5

    .line 1380
    .local v1, roam:I
    :cond_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1381
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v6, p2}, Lcom/android/phone/BluetoothHandsfree;->access$3302(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 1382
    if-nez v2, :cond_7

    .line 1383
    const/4 v3, 0x0

    .line 1388
    .local v3, stat:I
    :goto_1
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Bluetooth HS/HF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateServiceState DefualtPhone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_2
    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v2, v6, :cond_3

    .line 1392
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    .line 1393
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v6, v5, :cond_3

    .line 1395
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CIEV: 1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1398
    :cond_3
    iget v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v1, v6, :cond_4

    .line 1399
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    .line 1400
    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)[I

    move-result-object v6

    const/4 v7, 0x5

    aget v6, v6, v7

    if-ne v6, v5, :cond_4

    .line 1402
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+CIEV: 6,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1405
    :cond_4
    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v3, v5, :cond_5

    .line 1406
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    .line 1407
    if-eqz p1, :cond_5

    .line 1409
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1414
    :cond_5
    monitor-exit p0

    return-void

    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    .end local v3           #stat:I
    :cond_6
    move v2, v1

    .line 1377
    goto/16 :goto_0

    .line 1385
    .restart local v0       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v1       #roam:I
    .restart local v2       #service:I
    :cond_7
    if-ne v1, v5, :cond_8

    .restart local v3       #stat:I
    :goto_2
    goto/16 :goto_1

    .end local v3           #stat:I
    :cond_8
    move v3, v5

    goto :goto_2

    .line 1372
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit p0

    throw v5

    .end local p2
    .restart local v4       #state:Landroid/telephony/ServiceState;
    :catchall_1
    move-exception v5

    move-object p2, v4

    .end local v4           #state:Landroid/telephony/ServiceState;
    .restart local p2
    goto :goto_3
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1349
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1368
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1353
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 1356
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_2

    .line 1357
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1358
    .local v0, signal:I
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 1359
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v0, v2, :cond_0

    .line 1360
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1361
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)[I

    move-result-object v2

    const/4 v3, 0x4

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1362
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 5,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1349
    .end local v0           #signal:I
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1366
    .restart local v1       #signalStrength:Landroid/telephony/SignalStrength;
    :cond_2
    :try_start_2
    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Signal Strength null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

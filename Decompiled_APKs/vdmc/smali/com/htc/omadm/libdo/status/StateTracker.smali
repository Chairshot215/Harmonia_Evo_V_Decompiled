.class public Lcom/htc/omadm/libdo/status/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ConnMo"

.field private static me:Lcom/htc/omadm/libdo/status/StateTracker;


# instance fields
.field private bIsDormancy:Z

.field private listenerFlag:I

.field private mBatteryLevel:I

.field private mCallState:I

.field private mConnReceiver:Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDMChannelConnState:I

.field private mDataActivity:I

.field private mDataState:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneType:I

.field private mRoaming:Z

.field private mScreenState:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimState:I

.field private mSyncObject:Ljava/lang/Object;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mUMTSConnState:I

.field private mWiFiConnState:I

.field private mWiMAXConnState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/status/StateTracker;->me:Lcom/htc/omadm/libdo/status/StateTracker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;

    .line 36
    iput-object v3, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 37
    iput-object v3, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->listenerFlag:I

    .line 41
    iput-object v3, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mServiceState:Landroid/telephony/ServiceState;

    .line 42
    iput-boolean v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mRoaming:Z

    .line 44
    iput v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDMChannelConnState:I

    .line 45
    iput v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I

    .line 46
    iput v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I

    .line 47
    iput v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I

    .line 49
    iput v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I

    .line 50
    iput v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I

    .line 51
    iput v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I

    .line 52
    iput v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSimState:I

    .line 53
    iput v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneType:I

    .line 54
    iput-boolean v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->bIsDormancy:Z

    .line 56
    iput v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mBatteryLevel:I

    .line 57
    iput v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mScreenState:I

    .line 60
    new-instance v0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;-><init>(Lcom/htc/omadm/libdo/status/StateTracker;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mConnReceiver:Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;

    .line 167
    new-instance v0, Lcom/htc/omadm/libdo/status/StateTracker$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateTracker$1;-><init>(Lcom/htc/omadm/libdo/status/StateTracker;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 221
    iput-object p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 224
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mConnReceiver:Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;

    iget-object v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 231
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 237
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSimState:I

    .line 238
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneType:I

    .line 240
    const-string v0, "ConnMo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "ConnMo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 244
    new-instance v0, Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/status/StateTracker;->me:Lcom/htc/omadm/libdo/status/StateTracker;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/libdo/status/StateTracker;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDMChannelConnState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/omadm/libdo/status/StateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->bIsDormancy:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I

    return p1
.end method

.method static synthetic access$502(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$602(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mScreenState:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/omadm/libdo/status/StateTracker;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/omadm/libdo/status/StateTracker;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/omadm/libdo/status/StateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mRoaming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/omadm/libdo/status/StateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/omadm/libdo/status/StateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I

    return p1
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/status/StateTracker;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/htc/omadm/libdo/status/StateTracker;->me:Lcom/htc/omadm/libdo/status/StateTracker;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/status/StateTracker;->me:Lcom/htc/omadm/libdo/status/StateTracker;

    .line 250
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/status/StateTracker;->me:Lcom/htc/omadm/libdo/status/StateTracker;

    return-object v0
.end method


# virtual methods
.method public Destroy()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 339
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mBatteryLevel:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I

    return v0
.end method

.method public getDMChannelConnState()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDMChannelConnState:I

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I

    return v0
.end method

.method public getIsDormancy()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->bIsDormancy:Z

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneType:I

    .line 326
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mPhoneType:I

    return v0
.end method

.method public getRoamingState()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mRoaming:Z

    return v0
.end method

.method public getScreenState()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mScreenState:I

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSimState:I

    .line 321
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mSimState:I

    return v0
.end method

.method public getTelManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getUMTSConnState()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I

    return v0
.end method

.method public getWiFiConnState()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I

    return v0
.end method

.method public getWiMAXConnState()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I

    return v0
.end method

.method public setDMChannelConnState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 265
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mDMChannelConnState:I

    .line 268
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyDMChannelStateObservers(I)V

    .line 269
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyDMChannelStateHandler(I)V

    .line 270
    return-void
.end method

.method public setUMTSConnState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 276
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I

    .line 279
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyUMTSStateObservers(I)V

    .line 280
    return-void
.end method

.method public setWiFiConnState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 285
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I

    .line 288
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyWiFiStateObservers(I)V

    .line 289
    return-void
.end method

.method public setWiMAXConnState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 294
    iput p1, p0, Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I

    .line 297
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyWiMAXStateObservers(I)V

    .line 298
    return-void
.end method

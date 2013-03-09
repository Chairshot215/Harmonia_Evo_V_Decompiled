.class public Lcom/htc/lockscreen/app/LSState;
.super Ljava/lang/Object;
.source "LSState.java"

# interfaces
.implements Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;,
        Lcom/htc/lockscreen/app/LSState$MyUIHandler;,
        Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;,
        Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;,
        Lcom/htc/lockscreen/app/LSState$SDCardReceiver;,
        Lcom/htc/lockscreen/app/LSState$EventReceiver;,
        Lcom/htc/lockscreen/app/LSState$State;,
        Lcom/htc/lockscreen/app/LSState$Callback;
    }
.end annotation


# static fields
.field public static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field public static final CASE_SIM_CHANGED:Ljava/lang/String; = "com.htc.SIM_CHANGED"

.field private static final IMS_REGISTRATION:Ljava/lang/String; = "IMS_REGISTRATION"

.field private static final IMS_REG_STATUS:Ljava/lang/String; = "IMS_REG_STATUS"

.field public static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final LOG_PREFIX:Ljava/lang/String; = "LSState"

.field private static final LOW_BATTERY_THRESHOLD:I = 0xb

#the value of this static final field might be set in the static constructor
.field private static final NORMAL2_LOW_BATTERY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NORMAL_LOW_BATTERY:I = 0x0

.field private static final VERY_LOW_BATTERY:I = 0x5

.field private static final WHAT_NOUI_CUSTOMIZE:I = 0x65

.field private static final WHAT_NOUI_INIT:I = 0x64

.field public static final WHAT_ON_START_CAMERA:I = 0x66

.field private static final WHAT_UI_BACK_TO_LOCK:I = 0x4

.field private static final WHAT_UI_BATTERY:I = 0x1

.field private static final WHAT_UI_NETWORK_CHANGED:I = 0x3

.field private static final WHAT_UI_POKEWAKE_DELAY:I = 0x7

.field private static final WHAT_UI_RADIO_CHANGED:I = 0x8

.field private static final WHAT_UI_READY:I = 0x9

.field private static final WHAT_UI_RECREATE_ALL:I = 0x5

.field private static mInstance:Lcom/htc/lockscreen/app/LSState;


# instance fields
.field private mBatteryLevel:I

.field private mBatteryPluggedType:I

.field private mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

.field private mContext:Landroid/content/Context;

.field private mDevicePluggedIn:Z

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

.field private mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

.field private mImsRegistered:Z

.field private mIsAirPlaneMode:Z

.field private mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

.field private mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mLocale:Ljava/util/Locale;

.field private mMusicCtrl:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

.field private mNeedShowSimState:Z

.field private mNetworkServiceStatus:I

.field private mNonUiHandler:Landroid/os/Handler;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mOOBEDone:Z

.field private mOOBEListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

.field private mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;

.field public mPSensorUtil:Lcom/htc/lockscreen/app/util/PSensorUtil;

.field private mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

.field private mPlmn:Ljava/lang/CharSequence;

.field private mReminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

.field private mRemoteViewCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

.field private mSDCardReceiver:Landroid/content/BroadcastReceiver;

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSpn:Ljava/lang/CharSequence;

.field private mState:Lcom/htc/lockscreen/app/LSState$State;

.field private mUICCOperator:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;

.field private mUIModeType:I

.field private mUiccProvision:Z

.field private mUiccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 79
    invoke-static {}, Lcom/htc/lockscreen/app/util/MyUtil;->isBatteryAdjust()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sput v1, Lcom/htc/lockscreen/app/LSState;->NORMAL_LOW_BATTERY:I

    .line 81
    sput v1, Lcom/htc/lockscreen/app/LSState;->NORMAL2_LOW_BATTERY:I

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    const/16 v0, 0xf

    sput v0, Lcom/htc/lockscreen/app/LSState;->NORMAL_LOW_BATTERY:I

    .line 85
    const/16 v0, 0xa

    sput v0, Lcom/htc/lockscreen/app/LSState;->NORMAL2_LOW_BATTERY:I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    .line 108
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mImsRegistered:Z

    .line 134
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mMusicCtrl:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    .line 135
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mReminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    .line 137
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    .line 138
    new-instance v0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mRemoteViewCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    .line 139
    new-instance v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    .line 149
    sget-object v0, Lcom/htc/lockscreen/app/LSState$State;->NONE:Lcom/htc/lockscreen/app/LSState$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mState:Lcom/htc/lockscreen/app/LSState$State;

    .line 154
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    .line 155
    iput-boolean v3, p0, Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lockscreen/app/LSState;->mUiccState:I

    .line 159
    iput-boolean v3, p0, Lcom/htc/lockscreen/app/LSState;->mUiccProvision:Z

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUICCOperator:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/LSState$MyUIHandler;-><init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    .line 163
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    .line 164
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    .line 169
    iput v1, p0, Lcom/htc/lockscreen/app/LSState;->mUIModeType:I

    .line 172
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEDone:Z

    .line 1092
    new-instance v0, Lcom/htc/lockscreen/app/LSState$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/LSState$1;-><init>(Lcom/htc/lockscreen/app/LSState;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    .line 183
    return-void
.end method

.method private _backToLockScreen()V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 1010
    .local v0, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    if-nez v0, :cond_0

    .line 1011
    const-string v1, "LSState"

    const-string v2, "_backToLockScreen fail"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_0
    const-string v1, "LSState"

    const-string v2, "_backToLockScreen"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-interface {v0}, Lcom/htc/lockscreen/app/LSState$Callback;->backToLock()V

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/htc/lockscreen/app/LSState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/LSState;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;)Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/lockscreen/app/LSState;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEListener:Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/util/OOBEMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/lockscreen/app/LSState;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState;->registerLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/lockscreen/app/LSState;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/lockscreen/app/LSState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/lockscreen/app/LSState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/lockscreen/app/LSState;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lockscreen/app/LSState;->handleBatteryUpdate(III)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/lockscreen/app/LSState;->_backToLockScreen()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/lockscreen/app/LSState;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/app/LSState;->updatePlmnAndSpn(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/lockscreen/app/LSState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/LSState;->mUiccProvision:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/htc/lockscreen/app/LSState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/lockscreen/app/LSState;->mUiccState:I

    return p1
.end method

.method static synthetic access$2702(Lcom/htc/lockscreen/app/LSState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mUICCOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/htc/lockscreen/app/LSState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEDone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/app/LSState;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lockscreen/app/LSState;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/lockscreen/app/LSState;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/lockscreen/app/LSState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIModeType:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/lockscreen/app/LSState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/lockscreen/app/LSState;->mUIModeType:I

    return p1
.end method

.method static synthetic access$802(Lcom/htc/lockscreen/app/LSState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/lockscreen/app/LSState;->updateAirPlaneMode()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/htc/lockscreen/app/LSState;
    .locals 2

    .prologue
    .line 175
    const-class v1, Lcom/htc/lockscreen/app/LSState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/htc/lockscreen/app/LSState;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/LSState;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    .line 178
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUIModeType()I
    .locals 6

    .prologue
    .line 589
    const/4 v1, 0x0

    .line 591
    .local v1, mode:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 592
    .local v2, uiMng:Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getDockState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 596
    .end local v2           #uiMng:Landroid/app/UiModeManager;
    :goto_0
    const-string v3, "LSState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUIModeType mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LSState"

    const-string v4, "getUIModeType exceptiopn:"

    invoke-static {v3, v4, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleBatteryUpdate(III)V
    .locals 3
    .parameter "pluggedInStatus"
    .parameter "pluggedInType"
    .parameter "batteryLevel"

    .prologue
    .line 537
    const-string v1, "LSState"

    const-string v2, "handleBatteryUpdate"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState;->isPluggedIn(I)Z

    move-result v0

    .line 539
    .local v0, pluggedIn:Z
    invoke-direct {p0, v0, p3}, Lcom/htc/lockscreen/app/LSState;->isBatteryUpdateInteresting(ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-direct {p0, v0, p2, p3}, Lcom/htc/lockscreen/app/LSState;->powerNotifyWakeUp(ZII)V

    .line 541
    iput p3, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryLevel:I

    .line 542
    iput-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    .line 543
    iput p2, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryPluggedType:I

    .line 545
    :cond_0
    return-void
.end method

.method private initBGHandlerLocked()V
    .locals 2

    .prologue
    .line 853
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/LSState;->getNonUILooper()Landroid/os/Looper;

    move-result-object v0

    .line 855
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/lockscreen/app/LSState$LSNonUIHandler;-><init>(Lcom/htc/lockscreen/app/LSState;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    .line 857
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method private isBatteryUpdateInteresting(ZI)Z
    .locals 3
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/16 v2, 0xb

    const/4 v0, 0x1

    .line 602
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    if-eq v1, p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryLevel:I

    if-ne v1, p2, :cond_0

    .line 611
    :cond_2
    if-nez p1, :cond_4

    .line 616
    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryLevel:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryLevel:I

    if-ne v1, p2, :cond_0

    .line 620
    :cond_3
    if-gt p2, v2, :cond_4

    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryLevel:I

    if-ne v1, p2, :cond_0

    .line 624
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluggedIn(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 872
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private powerNotifyWakeUp(ZII)V
    .locals 11
    .parameter "plugged"
    .parameter "type"
    .parameter "level"

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 549
    const/4 v4, 0x0

    .line 552
    .local v4, wakeupCondition:Z
    invoke-static {}, Lcom/htc/lockscreen/app/util/MyUtil;->isChina()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 553
    const-string v7, "LSState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "powerNotifyWakeUp China plugged:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDevicePluggedIn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mBatteryPluggedType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryPluggedType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    if-nez p1, :cond_2

    iget-boolean v7, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryPluggedType:I

    if-ne v7, v10, :cond_2

    move v2, v5

    .line 559
    .local v2, condition1:Z
    :goto_0
    iget-boolean v7, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    if-nez v7, :cond_3

    if-eqz p1, :cond_3

    if-ne p2, v10, :cond_3

    move v3, v5

    .line 560
    .local v3, condition2:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    move v4, v5

    .line 567
    .end local v2           #condition1:Z
    .end local v3           #condition2:Z
    :goto_2
    iget-object v7, p0, Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v1

    .line 569
    .local v1, bKeyguardShow:Z
    const-string v7, "LSState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "powerNotifyWakeUp plugged:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bKeyguardShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wakeupCondition:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, bCheckDockMode:Z
    if-eqz p1, :cond_7

    iget v7, p0, Lcom/htc/lockscreen/app/LSState;->mUIModeType:I

    if-ne v7, v5, :cond_7

    move v0, v5

    .line 580
    :goto_3
    const-string v5, "LSState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLSStateBatteryChanged wakeup bCheckDockMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    .line 586
    .end local v0           #bCheckDockMode:Z
    :cond_1
    return-void

    .end local v1           #bKeyguardShow:Z
    :cond_2
    move v2, v6

    .line 558
    goto :goto_0

    .restart local v2       #condition1:Z
    :cond_3
    move v3, v6

    .line 559
    goto :goto_1

    .restart local v3       #condition2:Z
    :cond_4
    move v4, v6

    .line 560
    goto :goto_2

    .line 564
    .end local v2           #condition1:Z
    .end local v3           #condition2:Z
    :cond_5
    iget-boolean v7, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    if-eq v7, p1, :cond_6

    move v4, v5

    :goto_4
    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_4

    .restart local v0       #bCheckDockMode:Z
    .restart local v1       #bKeyguardShow:Z
    :cond_7
    move v0, v6

    .line 579
    goto :goto_3
.end method

.method private registerLocked(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 231
    const-string v2, "LSState"

    const-string v3, "register"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    iget-object v3, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p0, v3}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->init(Landroid/content/Context;Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 237
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mReminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    iget-object v3, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p0, v3}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->init(Landroid/content/Context;Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 238
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mRemoteViewCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    iget-object v3, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p0, v3}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->init(Landroid/content/Context;Lcom/htc/lockscreen/app/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 242
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v2, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->init(Landroid/content/Context;)V

    .line 244
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 245
    new-instance v2, Lcom/htc/lockscreen/app/LSState$EventReceiver;

    invoke-direct {v2, p0, v4}, Lcom/htc/lockscreen/app/LSState$EventReceiver;-><init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 258
    new-instance v2, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;

    invoke-direct {v2, p0, v4}, Lcom/htc/lockscreen/app/LSState$SDCardReceiver;-><init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v1, filterMedia:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    .end local v1           #filterMedia:Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isTmoRuby()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    new-instance v2, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;-><init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    .line 270
    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "IMS_REGISTRATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    :cond_2
    return-void
.end method

.method private unregisterLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string v0, "LSState"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/util/OOBEMonitor;->stopMonitor()V

    .line 280
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iput-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mImsReceiver:Lcom/htc/lockscreen/app/LSState$ImsBroadcastReceiver;

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mMusicCtrl:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->uninit()V

    .line 299
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->uninit()V

    .line 300
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mReminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->uninit()V

    .line 301
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mRemoteViewCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->uninit()V

    .line 302
    return-void
.end method

.method private updateAirPlaneMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    .line 227
    :goto_0
    const-string v0, "LSState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirPlaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 225
    :cond_0
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    goto :goto_0
.end method

.method private updatePlmnAndSpn(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 748
    const-string v1, "LSState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlmnAndSpn mIsAirPlaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNeedShowSimState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSimState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNetworkServiceStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_1

    .line 753
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 754
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-static {p1}, Lcom/htc/lockscreen/app/util/MyUtil;->clearFrontEndSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 758
    invoke-static {p2}, Lcom/htc/lockscreen/app/util/MyUtil;->clearFrontEndSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 759
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v5, :cond_3

    const/4 v0, 0x1

    .line 760
    .local v0, isAtt:Z
    :goto_1
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    .line 764
    :cond_2
    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    if-nez v1, :cond_6

    .line 765
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 766
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 767
    iput-object p2, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 759
    .end local v0           #isAtt:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 769
    .restart local v0       #isAtt:Z
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 770
    iput-object p2, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 771
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 774
    :cond_5
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 775
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 778
    :cond_6
    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    if-eq v1, v5, :cond_7

    invoke-virtual {p0}, Lcom/htc/lockscreen/app/LSState;->isUiccProblem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 780
    :cond_7
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 781
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 783
    :cond_8
    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 784
    if-eqz v0, :cond_9

    .line 785
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 790
    :goto_2
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 788
    :cond_9
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    goto :goto_2

    .line 793
    :cond_a
    if-eqz v0, :cond_b

    .line 794
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 806
    :goto_3
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 797
    :cond_b
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isTmoRuby()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mImsRegistered:Z

    if-eqz v1, :cond_c

    .line 798
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    .line 799
    iput-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    goto :goto_3

    .line 804
    :cond_c
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    goto :goto_3
.end method


# virtual methods
.method public backToLockScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1004
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1005
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 1006
    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/htc/lockscreen/app/LSState;->mBatteryLevel:I

    return v0
.end method

.method public getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    return-object v0
.end method

.method public getLockScreenViewMode()I
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 1086
    .local v0, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    if-eqz v0, :cond_0

    .line 1087
    invoke-interface {v0}, Lcom/htc/lockscreen/app/LSState$Callback;->getLockScreenViewMode()I

    move-result v1

    .line 1089
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMusicCtrl()Lcom/htc/lockscreen/app/ctrl/MusicCtrl;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mMusicCtrl:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    return-object v0
.end method

.method public getNetworkServiceStatus()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    return v0
.end method

.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 860
    monitor-enter p0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 862
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LSState thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, handerTread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 864
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    .line 866
    .end local v0           #handerTread:Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v1

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhoneCtrl()Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    return-object v0
.end method

.method public getPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mReminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    return-object v0
.end method

.method public getRemoteViewCtrl()Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mRemoteViewCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    return-object v0
.end method

.method public getScreenState()Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    .locals 2

    .prologue
    .line 1162
    const/4 v0, 0x0

    .line 1163
    .local v0, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    sget-object v1, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    if-eqz v1, :cond_0

    .line 1164
    sget-object v1, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    iget-object v0, v1, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 1166
    :cond_0
    if-eqz v0, :cond_1

    .line 1167
    invoke-interface {v0}, Lcom/htc/lockscreen/app/LSState$Callback;->getLockScreenScreenState()Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    move-result-object v1

    .line 1170
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->STOP:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    goto :goto_0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public getSpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyState()Lcom/htc/lockscreen/telephony/TelephonyState;
    .locals 8

    .prologue
    .line 1027
    new-instance v0, Lcom/htc/lockscreen/telephony/TelephonyState;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    iget v2, p0, Lcom/htc/lockscreen/app/LSState;->mNetworkServiceStatus:I

    iget-boolean v3, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    iget-object v4, p0, Lcom/htc/lockscreen/app/LSState;->mPlmn:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/htc/lockscreen/app/LSState;->mSpn:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/htc/lockscreen/app/LSState;->mUiccState:I

    iget-boolean v7, p0, Lcom/htc/lockscreen/app/LSState;->mUiccProvision:Z

    invoke-direct/range {v0 .. v7}, Lcom/htc/lockscreen/telephony/TelephonyState;-><init>(Lcom/android/internal/telephony/IccCard$State;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 1034
    .local v0, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mUICCOperator:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 1035
    return-object v0
.end method

.method public getUILooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, looper:Landroid/os/Looper;
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1023
    :cond_0
    return-object v0
.end method

.method public goToUnlock()V
    .locals 0

    .prologue
    .line 1078
    return-void
.end method

.method public handleNetworkChanged()V
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->onNetworkChanged()V

    .line 829
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 3
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "kgCallback"

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mState:Lcom/htc/lockscreen/app/LSState$State;

    sget-object v2, Lcom/htc/lockscreen/app/LSState$State;->START:Lcom/htc/lockscreen/app/LSState$State;

    if-eq v1, v2, :cond_0

    .line 200
    const-string v1, "LSState"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/htc/lockscreen/app/LSState$State;->START:Lcom/htc/lockscreen/app/LSState$State;

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mState:Lcom/htc/lockscreen/app/LSState$State;

    .line 202
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    .line 203
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 204
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mLocale:Ljava/util/Locale;

    .line 205
    invoke-direct {p0}, Lcom/htc/lockscreen/app/LSState;->getUIModeType()I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/app/LSState;->mUIModeType:I

    .line 207
    iput-object p2, p0, Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 208
    iput-object p3, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 209
    new-instance v1, Lcom/htc/lockscreen/app/util/PSensorUtil;

    invoke-direct {v1, p1}, Lcom/htc/lockscreen/app/util/PSensorUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mPSensorUtil:Lcom/htc/lockscreen/app/util/PSensorUtil;

    .line 210
    new-instance v1, Lcom/htc/lockscreen/app/util/OOBEMonitor;

    invoke-direct {v1, p1}, Lcom/htc/lockscreen/app/util/OOBEMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEMonitor:Lcom/htc/lockscreen/app/util/OOBEMonitor;

    .line 212
    invoke-direct {p0}, Lcom/htc/lockscreen/app/LSState;->initBGHandlerLocked()V

    .line 213
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 214
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 216
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAirPlaneMode()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    return v0
.end method

.method public isBatteryPlugged()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mDevicePluggedIn:Z

    return v0
.end method

.method public isDeviceCSLocked()Z
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLockType()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 1040
    const/4 v0, 0x1

    .line 1042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    sget-object v1, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    if-eqz v1, :cond_0

    .line 893
    sget-object v1, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    iget-object v0, v1, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 895
    :cond_0
    if-eqz v0, :cond_1

    .line 896
    invoke-interface {v0}, Lcom/htc/lockscreen/app/LSState$Callback;->isFocused()Z

    move-result v1

    .line 899
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOOBEDone()Z
    .locals 1

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mOOBEDone:Z

    return v0
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    sget-object v1, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    if-eqz v1, :cond_0

    .line 880
    sget-object v1, Lcom/htc/lockscreen/app/LSState;->mInstance:Lcom/htc/lockscreen/app/LSState;

    iget-object v0, v1, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 882
    :cond_0
    if-eqz v0, :cond_1

    .line 883
    invoke-interface {v0}, Lcom/htc/lockscreen/app/LSState$Callback;->isKeyguardShow()Z

    move-result v1

    .line 886
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowSimState()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z

    return v0
.end method

.method public isSimMissed()Z
    .locals 2

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mNeedShowSimState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mIsAirPlaneMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 983
    :cond_0
    const/4 v0, 0x1

    .line 985
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTMOIMSRegistered()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/LSState;->mImsRegistered:Z

    return v0
.end method

.method public isUiccProblem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 737
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/LSState;->mUiccProvision:Z

    if-nez v1, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mUiccState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/lockscreen/app/LSState;->mUiccState:I

    if-eq v1, v0, :cond_0

    .line 744
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStateChange(Lcom/htc/lockscreen/app/ctrl/BaseCtrl;ILjava/lang/Object;)V
    .locals 2
    .parameter "ctrl"
    .parameter "state"
    .parameter "extra"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mReminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    if-ne p1, v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v0, p2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->onReminderChanged(I)V

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    if-ne p1, v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mPhoneCtrl:Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->getPhoneState()Lcom/htc/lockscreen/telephony/PhoneState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    goto :goto_0

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mRemoteViewCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    if-ne p1, v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->onRemoteViewChanged()V

    goto :goto_0
.end method

.method public pokeWakeLock()V
    .locals 4

    .prologue
    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LSState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakeLock exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pokeWakeLock(I)V
    .locals 4
    .parameter "time"

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :goto_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LSState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakeLock exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pokeWakeLockDelay(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLockDelay(JZ)V

    .line 940
    return-void
.end method

.method public pokeWakeLockDelay(JZ)V
    .locals 3
    .parameter "delay"
    .parameter "needFar"

    .prologue
    .line 944
    if-eqz p3, :cond_0

    .line 945
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mPSensorUtil:Lcom/htc/lockscreen/app/util/PSensorUtil;

    iget-object v2, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Lcom/htc/lockscreen/app/util/PSensorUtil;->pokeWakeLockIfFar(Landroid/os/Handler;J)V

    .line 953
    :goto_0
    return-void

    .line 948
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 949
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 951
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p1, p2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    goto :goto_0
.end method

.method public predictLSShow()Z
    .locals 1

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendNetworkChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 823
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 824
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v3, v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 825
    return-void
.end method

.method public setCallback(Lcom/htc/lockscreen/app/LSState$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 188
    monitor-exit p0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNeedWaitFirstFrame(Z)V
    .locals 1
    .parameter "wait"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWaitFirstFrame(Z)V

    .line 1074
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setShowLiveWallpaper(Z)V

    .line 1063
    return-void
.end method

.method public startCSActivity()Z
    .locals 5

    .prologue
    .line 1046
    const/4 v2, 0x0

    .line 1048
    .local v2, result:Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1050
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.cs"

    const-string v4, "com.htc.cs.activity.dashboard.DeviceLockedScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const/high16 v3, 0x1080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1052
    iget-object v3, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    const/4 v2, 0x1

    .line 1058
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startCameraActivity(I)V
    .locals 8
    .parameter "keyCode"

    .prologue
    .line 1138
    const-string v6, "LSState"

    const-string v7, "startCameraActivity"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v0, "lockscreen_start_activity"

    .line 1140
    .local v0, KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String;
    const/4 v2, 0x1

    .line 1141
    .local v2, START_ACTIVITY_SHORTCUT:I
    const/4 v1, 0x2

    .line 1143
    .local v1, START_ACTIVITY_HOTKEY:I
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1145
    .local v5, intent:Landroid/content/Intent;
    const/16 v6, 0x1b

    if-ne p1, v6, :cond_0

    .line 1146
    const-string v3, "com.android.camera.CameraEntry"

    .line 1151
    .local v3, className:Ljava/lang/String;
    :goto_0
    const-string v6, "com.android.camera"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const/high16 v6, 0x1200

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1153
    const-string v6, "lockscreen_start_activity"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1159
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 1149
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.android.camera.CamcorderEntry"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #className:Ljava/lang/String;
    goto :goto_0

    .line 1156
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 1157
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startCameraActivityDelay(II)V
    .locals 4
    .parameter "keyCode"
    .parameter "delay"

    .prologue
    .line 1130
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1131
    .local v0, msg:Landroid/os/Message;
    const-string v1, "LSState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCameraActivityDelay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1133
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1134
    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-static {v1, v0, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 1135
    return-void
.end method

.method public stopFaceLock()V
    .locals 8

    .prologue
    .line 1108
    const-string v0, "com.android.internal.policy.impl.HtcIfKeyguardScreenCallback"

    .line 1109
    .local v0, CLASS_NAME:Ljava/lang/String;
    const-string v1, "forceStopFaceLock"

    .line 1112
    .local v1, METHOD:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1113
    .local v2, c:Ljava/lang/Class;
    :try_start_0
    const-string v5, "com.android.internal.policy.impl.HtcIfKeyguardScreenCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1114
    if-eqz v2, :cond_0

    .line 1115
    iget-object v5, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1116
    const-string v5, "forceStopFaceLock"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1117
    .local v4, m:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/htc/lockscreen/app/LSState;->mKgCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1127
    .end local v4           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v3

    .line 1122
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "LSState"

    const-string v6, "stopFaceLock no support"

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 1125
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "LSState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopFaceLock e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    sget-object v0, Lcom/htc/lockscreen/app/LSState$State;->STOP:Lcom/htc/lockscreen/app/LSState$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mState:Lcom/htc/lockscreen/app/LSState$State;

    .line 308
    const-string v0, "LSState"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mKgMonitor:Lcom/htc/lockscreen/app/LSState$LSKeyguardMonitor;

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/htc/lockscreen/app/LSState;->unregisterLocked()V

    .line 315
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiLooper:Landroid/os/Looper;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mNonUiHandler:Landroid/os/Handler;

    .line 320
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 321
    monitor-exit p0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockScreen()V
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/LSState;->unlockScreen(I)V

    .line 994
    return-void
.end method

.method public unlockScreen(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 998
    .local v0, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    if-nez v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 1001
    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/lockscreen/app/LSState$Callback;->unlock(I)V

    goto :goto_0
.end method

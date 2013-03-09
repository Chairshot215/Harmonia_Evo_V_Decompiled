.class public Lcom/htc/idlescreen/base/IdleState;
.super Ljava/lang/Object;
.source "IdleState.java"

# interfaces
.implements Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;
.implements Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;
.implements Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/IdleState$1;,
        Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;,
        Lcom/htc/idlescreen/base/IdleState$UIHandler;,
        Lcom/htc/idlescreen/base/IdleState$BGHandler;,
        Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;,
        Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;,
        Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;,
        Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;,
        Lcom/htc/idlescreen/base/IdleState$ViewCallback;,
        Lcom/htc/idlescreen/base/IdleState$ViewMode;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleState"

.field private static final LOW_BATTERY_THRESHOLD:I = 0xb

#the value of this static final field might be set in the static constructor
.field private static final NORMAL_LOW_BATTERY:I = 0x0

.field public static final SHORTCUT_CHANGED_ACTION:Ljava/lang/String; = "com.htc.idlescreen.shortcut.changed"

.field private static final VERY_LOW_BATTERY:I = 0x4

.field private static final WHAT_ON_BATTERY:I = 0x64

.field private static final WHAT_ON_DISMISS_BATTERY:I = 0x65

.field private static final WHAT_ON_SD_REMOVED:I = 0x67

.field private static final WHAT_ON_UPDATE_SHORTCUT:I = 0x66

.field private static final WHAT_UI_ANSWERCALL_TIMEOUT:I = 0x8

.field private static final WHAT_UI_ANSWER_CALL:I = 0x4

.field private static final WHAT_UI_APPCOUNT_UPDATE:I = 0x6

.field private static final WHAT_UI_HOLDDRAG_TIMEOUT:I = 0x9

.field private static final WHAT_UI_PHONEUI_READY:I = 0xa

.field private static final WHAT_UI_SHORTCUT_UPDATED:I = 0x7

.field private static final WHAT_UI_START_ACTIVITY:I = 0xb

.field private static final WHAT_UI_UNLOCK:I = 0x5

.field private static final WHAT_UI_UPDATE_TELEPHONY:I = 0x1

.field private static final WHAT_UI_UPDATE_TIME:I = 0x2

.field private static final WHAT_UI_UPDATE_VIEW_MODE:I = 0x3

.field private static sInstance:Lcom/htc/idlescreen/base/IdleState;


# instance fields
.field private mBatteryDismissed:Z

.field private mBatteryLevel:I

.field private mBatteryPluggedType:I

.field private mBgHandler:Landroid/os/Handler;

.field mBgLooper:Landroid/os/Looper;

.field mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

.field private mCheckMusic:Z

.field mContext:Landroid/content/Context;

.field private mCurDraggable:Lcom/htc/idlescreen/base/widget/IdleDraggable;

.field mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field private mDevicePluggedIn:Z

.field mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

.field mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mFreezeView:Z

.field private mGoingToUnlock:Z

.field mHideMenu:Z

.field mInMusic:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

.field private mNeedShowSimState:Z

.field private mNextHint:Ljava/lang/String;

.field private mNotifyPhoneUIReady:Z

.field private mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

.field private mOOBEDone:Z

.field private mOOBEMonitor:Lcom/htc/idlescreen/base/util/OOBEMonitor;

.field private mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

.field mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

.field private mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

.field private mRemoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

.field mResContext:Landroid/content/Context;

.field mSDCardReceiver:Landroid/content/BroadcastReceiver;

.field mShortcutDelay:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

.field private mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

.field mShowHint:Z

.field mSimTest:I

.field mStart:Z

.field mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

.field mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

.field private mTestCnt:I

.field mTestViewModes:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

.field private mThreeLMCtrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

.field private mTouchItem:Z

.field private mUICCRegistered:Z

.field private mUIHandler:Landroid/os/Handler;

.field mUIResume:Z

.field mUIStart:Z

.field private mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

.field private mWeatherData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isBatteryAdjust()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/16 v0, 0x8

    sput v0, Lcom/htc/idlescreen/base/IdleState;->NORMAL_LOW_BATTERY:I

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/16 v0, 0xe

    sput v0, Lcom/htc/idlescreen/base/IdleState;->NORMAL_LOW_BATTERY:I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mStart:Z

    .line 126
    new-instance v0, Lcom/htc/idlescreen/base/IdleState$UIHandler;

    invoke-direct {v0, p0, v3}, Lcom/htc/idlescreen/base/IdleState$UIHandler;-><init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    .line 129
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    .line 131
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    .line 132
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    .line 133
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    .line 134
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    .line 135
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mThreeLMCtrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    .line 136
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mNeedShowSimState:Z

    .line 137
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z

    .line 138
    iput-object v3, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    .line 141
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEDone:Z

    .line 142
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 145
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryDismissed:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    .line 148
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mFreezeView:Z

    .line 149
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mCheckMusic:Z

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    .line 153
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIStart:Z

    .line 154
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIResume:Z

    .line 155
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    .line 580
    iput v1, p0, Lcom/htc/idlescreen/base/IdleState;->mSimTest:I

    .line 773
    sget-object v0, Lcom/htc/idlescreen/base/debug/MyDebug;->S_TEST_VIEWMODE:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTestViewModes:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 774
    iput v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTestCnt:I

    .line 979
    iput-object v3, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    .line 980
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mNotifyPhoneUIReady:Z

    .line 1347
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mShowHint:Z

    .line 1359
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mHideMenu:Z

    .line 1717
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTouchItem:Z

    .line 200
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/idlescreen/base/IdleState;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/idlescreen/base/IdleState;->handleBatteryUpdate(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->handleDismissLowBattery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/idlescreen/base/IdleState;)Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->handleAppCountUpdate(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/IdleState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->updateShowSimFlag(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/idlescreen/base/IdleState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/idlescreen/base/IdleState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/idlescreen/base/IdleState;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->isPluggedIn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/idlescreen/base/IdleState;)Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    return-object v0
.end method

.method private convertBatteryLevel(I)I
    .locals 1
    .parameter "level"

    .prologue
    .line 754
    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 755
    const/4 v0, 0x1

    .line 760
    :goto_0
    return v0

    .line 757
    :cond_0
    sget v0, Lcom/htc/idlescreen/base/IdleState;->NORMAL_LOW_BATTERY:I

    if-gt p1, v0, :cond_1

    .line 758
    const/4 v0, 0x2

    goto :goto_0

    .line 760
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private genPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    .locals 2
    .parameter "phone"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 230
    :cond_0
    iget-object v1, p1, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 231
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/PhoneService;

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/htc/idlescreen/base/ctrl/PhoneService;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/telephony/PhoneState;)V

    .line 236
    .local v0, service:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    :goto_1
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->startService()V

    goto :goto_0

    .line 234
    .end local v0           #service:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    :cond_1
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/ctrl/HtcPhoneService;-><init>()V

    .restart local v0       #service:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/htc/idlescreen/base/IdleState;
    .locals 2

    .prologue
    .line 241
    const-class v1, Lcom/htc/idlescreen/base/IdleState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/idlescreen/base/IdleState;->sInstance:Lcom/htc/idlescreen/base/IdleState;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/htc/idlescreen/base/IdleState;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/IdleState;-><init>()V

    sput-object v0, Lcom/htc/idlescreen/base/IdleState;->sInstance:Lcom/htc/idlescreen/base/IdleState;

    .line 244
    :cond_0
    sget-object v0, Lcom/htc/idlescreen/base/IdleState;->sInstance:Lcom/htc/idlescreen/base/IdleState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    .locals 3
    .parameter "phone"

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const-string v0, "IdleState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneService phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lockscreen/telephony/PhoneState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    if-nez v0, :cond_2

    .line 209
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->genPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    .line 215
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    invoke-interface {v0, p1}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->sameService(Lcom/htc/lockscreen/telephony/PhoneState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->releasePhoneService()V

    .line 213
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->genPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    goto :goto_1
.end method

.method private getTestViewMode()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 3

    .prologue
    .line 776
    iget v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTestCnt:I

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTestViewModes:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 777
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTestCnt:I

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTestViewModes:[Lcom/htc/idlescreen/base/IdleState$ViewMode;

    iget v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTestCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/idlescreen/base/IdleState;->mTestCnt:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private handleAppCountUpdate(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1599
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1600
    invoke-interface {v0, p1}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->onAppCountUpdate(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 1602
    :cond_0
    return-void
.end method

.method private handleBatteryUpdate(III)V
    .locals 3
    .parameter "pluggedInStatus"
    .parameter "pluggedInType"
    .parameter "batteryLevel"

    .prologue
    .line 653
    const-string v1, "IdleState"

    const-string v2, "handleBatteryUpdate"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->isPluggedIn(I)Z

    move-result v0

    .line 655
    .local v0, pluggedIn:Z
    invoke-direct {p0, v0, p3}, Lcom/htc/idlescreen/base/IdleState;->isBatteryUpdateInteresting(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-eq v1, v0, :cond_0

    .line 657
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryDismissed:Z

    .line 664
    :cond_0
    iput p3, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    .line 665
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    .line 666
    iput p2, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryPluggedType:I

    .line 667
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    sget-object v2, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-eq v1, v2, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode()V

    .line 673
    :cond_1
    return-void
.end method

.method private handleDismissLowBattery()V
    .locals 2

    .prologue
    .line 1170
    iget v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-nez v0, :cond_0

    .line 1171
    const-string v0, "IdleState"

    const-string v1, "handleDismissLowBattery"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryDismissed:Z

    .line 1174
    :cond_0
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->updateViewModeLocked()V

    .line 1175
    return-void
.end method

.method private initBGHandler()V
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 515
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "idlescreen_base"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 517
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    .line 519
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Lcom/htc/idlescreen/base/IdleState$BGHandler;

    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/IdleState$BGHandler;-><init>(Lcom/htc/idlescreen/base/IdleState;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    .line 521
    :cond_1
    return-void
.end method

.method private isBatteryUpdateInteresting(ZI)Z
    .locals 3
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/16 v2, 0xb

    const/4 v0, 0x1

    .line 722
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-eq v1, p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    iget v1, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    if-le v1, v2, :cond_0

    if-le p2, v2, :cond_0

    .line 749
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluggedIn(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 715
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

.method private powerNotifyWakeUp(ZII)Z
    .locals 9
    .parameter "plugged"
    .parameter "type"
    .parameter "level"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 680
    const/4 v4, 0x0

    .line 681
    .local v4, wakup:Z
    const/4 v3, 0x0

    .line 684
    .local v3, wakeupCondition:Z
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isChina()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 685
    if-nez p1, :cond_5

    iget-boolean v7, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryPluggedType:I

    if-ne v7, v8, :cond_5

    move v1, v5

    .line 686
    .local v1, condition1:Z
    :goto_0
    iget-boolean v7, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-nez v7, :cond_6

    if-eqz p1, :cond_6

    if-ne p2, v8, :cond_6

    move v2, v5

    .line 687
    .local v2, condition2:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_7

    :cond_0
    move v3, v5

    .line 694
    .end local v1           #condition1:Z
    .end local v2           #condition2:Z
    :goto_2
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->isShow()Z

    move-result v0

    .line 696
    .local v0, bKeyguardShow:Z
    if-eqz v0, :cond_4

    iget v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    const/4 v5, 0x4

    if-le p3, v5, :cond_3

    :cond_1
    iget v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    const/16 v5, 0xa

    if-le p3, v5, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    .line 701
    :cond_3
    const/4 v4, 0x1

    .line 704
    :cond_4
    const-string v5, "IdleState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLSStateBatteryChanged plugged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wakeupCondition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bKeyguardShow:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wakup:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return v4

    .end local v0           #bKeyguardShow:Z
    :cond_5
    move v1, v6

    .line 685
    goto :goto_0

    .restart local v1       #condition1:Z
    :cond_6
    move v2, v6

    .line 686
    goto :goto_1

    .restart local v2       #condition2:Z
    :cond_7
    move v3, v6

    .line 687
    goto :goto_2

    .line 691
    .end local v1           #condition1:Z
    .end local v2           #condition2:Z
    :cond_8
    iget-boolean v7, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-eq v7, p1, :cond_9

    move v3, v5

    :goto_3
    goto :goto_2

    :cond_9
    move v3, v6

    goto :goto_3
.end method

.method private registerRegForShow()V
    .locals 3

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1606
    new-instance v1, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;-><init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

    .line 1607
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1608
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1609
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1610
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1611
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1614
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releasePhoneService()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->stopService()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    .line 223
    :cond_0
    return-void
.end method

.method private unregisterRegForShow()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mEvent4ShowReceiver:Landroid/content/BroadcastReceiver;

    .line 1621
    :cond_0
    return-void
.end method

.method private updateShowSimFlag(Z)V
    .locals 1
    .parameter "isCDMA"

    .prologue
    .line 326
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isLTE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isCT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isBothUIMSIMCard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNeedShowSimState:Z

    .line 330
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public MuteCall()V
    .locals 2

    .prologue
    .line 1680
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    .line 1681
    .local v0, phoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    if-eqz v0, :cond_0

    .line 1682
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->silent()V

    .line 1684
    :cond_0
    return-void
.end method

.method public OnOOBEDone(Z)V
    .locals 0
    .parameter "done"

    .prologue
    .line 1324
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEDone:Z

    .line 1325
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode()V

    .line 1326
    return-void
.end method

.method public answerCall()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1269
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 1270
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    .line 1271
    .local v0, phoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    if-eqz v0, :cond_0

    .line 1272
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->answerCall()V

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v1, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1279
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-static {v1, v4, v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1280
    return-void
.end method

.method public answerCall(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 1263
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1264
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1265
    return-void
.end method

.method public answerCallByVoice()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1665
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 1666
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    .line 1667
    .local v0, phoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    if-eqz v0, :cond_0

    .line 1668
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->answerCallByVoice()V

    .line 1670
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v1, :cond_1

    .line 1671
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 1674
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1675
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-static {v1, v4, v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1676
    return-void
.end method

.method public answerCallTimeout()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    .line 1285
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->unlock()V

    .line 1293
    return-void
.end method

.method public checkMusicPlaying()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->checkIsPlaying()V

    .line 529
    return-void
.end method

.method public dismissLowBattery()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 1164
    const-string v0, "IdleState"

    const-string v1, "dismissLowBattery"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1166
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 1167
    return-void
.end method

.method public dismissWeatherAlert()V
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 975
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->dismissWeather()V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    .line 977
    return-void
.end method

.method public endCall()V
    .locals 3

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    .line 1297
    .local v0, phoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    if-eqz v0, :cond_0

    .line 1298
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->rejectCall()V

    .line 1300
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v1, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 1303
    :cond_1
    return-void
.end method

.method public getBGLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    return v0
.end method

.method public getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1246
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1247
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v1

    .line 1249
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurDraggable()Lcom/htc/idlescreen/base/widget/IdleDraggable;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCurDraggable:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    return-object v0
.end method

.method public getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    move-result-object v0

    .line 1188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMissedCallCnt()I
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    .line 1567
    .local v0, receiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;
    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->getMissedCallCnt()I

    move-result v1

    .line 1570
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMusicCtrl()Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    return-object v0
.end method

.method public getNextHint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1392
    const-string v1, "IdleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextHint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    .line 1394
    .local v0, hint:Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    .line 1395
    return-object v0
.end method

.method public getNtfMonitor()Lcom/htc/idlescreen/base/ctrl/NtfMonitor;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    return-object v0
.end method

.method public getPhoneState()Lcom/htc/lockscreen/telephony/PhoneState;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    return-object v0
.end method

.method public getPlmnAndSpn()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1192
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1193
    .local v0, opNames:[Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-nez v2, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1195
    .local v1, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v1, :cond_0

    .line 1196
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    aput-object v3, v0, v2

    .line 1197
    const/4 v2, 0x1

    iget-object v3, v1, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    aput-object v3, v0, v2

    .line 1203
    .end local v1           #state:Lcom/htc/lockscreen/telephony/TelephonyState;
    :cond_0
    return-object v0
.end method

.method public getReminderCtrl()Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    return-object v0
.end method

.method public getRemoteView()Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mRemoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    return-object v0
.end method

.method public getRing()Lcom/htc/idlescreen/base/widget/IdleRing;
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1237
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1238
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v1

    .line 1240
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1254
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1255
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    move-result-object v1

    .line 1257
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTelephonyState()Lcom/htc/lockscreen/telephony/TelephonyState;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    return-object v0
.end method

.method public getThreeLMCtrl()Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mThreeLMCtrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUnreadMailCnt()I
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    .line 1583
    .local v0, receiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;
    if-eqz v0, :cond_0

    .line 1584
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->getUnreadMailCnt()I

    move-result v1

    .line 1586
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnreadMsgCnt()I
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    .line 1575
    .local v0, receiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;
    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->getUnreadMsgCnt()I

    move-result v1

    .line 1578
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewMode()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public getWeatherData()Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    return-object v0
.end method

.method public getXSpeed()F
    .locals 2

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    move-result-object v0

    .line 1330
    .local v0, callback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->getXSpeed()F

    move-result v1

    .line 1333
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handlePhoneUIReady()V
    .locals 2

    .prologue
    .line 1696
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    .line 1697
    .local v0, phoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    if-eqz v0, :cond_0

    .line 1698
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->phoneUIReady()V

    .line 1700
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mNotifyPhoneUIReady:Z

    .line 1701
    return-void
.end method

.method public inLocked()Z
    .locals 4

    .prologue
    .line 1754
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1755
    .local v1, kmg:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 1756
    .local v0, inSecure:Z
    return v0
.end method

.method public init(Landroid/content/Context;Landroid/content/Context;Lcom/htc/idlescreen/base/IdleState$ViewCallback;)V
    .locals 8
    .parameter "context"
    .parameter "resContext"
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    if-eq v4, p3, :cond_0

    .line 250
    const-string v4, "IdleState"

    const-string v5, "init instance changed"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-virtual {p0, v4}, Lcom/htc/idlescreen/base/IdleState;->uninit(Lcom/htc/idlescreen/base/IdleState$ViewCallback;)V

    .line 252
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/idlescreen/base/IdleState;->init(Landroid/content/Context;Landroid/content/Context;Lcom/htc/idlescreen/base/IdleState$ViewCallback;)V

    .line 253
    monitor-exit p0

    .line 322
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mStart:Z

    if-nez v4, :cond_6

    .line 256
    const-string v4, "IdleState"

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mStart:Z

    .line 258
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    .line 259
    iput-object p2, p0, Lcom/htc/idlescreen/base/IdleState;->mResContext:Landroid/content/Context;

    .line 260
    iput-object p3, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 261
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 262
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->initBGHandler()V

    .line 264
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 265
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 268
    .local v2, isCDMA:Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/IdleState;->updateShowSimFlag(Z)V

    .line 269
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 270
    new-instance v4, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/idlescreen/base/IdleState$MyEventReceiver;-><init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.idlescreen.shortcut.changed"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isKT()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_3

    .line 281
    new-instance v4, Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;-><init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v1, filterMedia:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    .end local v1           #filterMedia:Landroid/content/IntentFilter;
    :cond_3
    new-instance v4, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;-><init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 291
    invoke-interface {p3}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    invoke-interface {v4, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->registerTelephonyState(Lcom/htc/lockscreen/telephony/TelephonyListener;)V

    .line 293
    new-instance v4, Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;

    invoke-direct {v4, p0}, Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;-><init>(Lcom/htc/idlescreen/base/IdleState;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 294
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/idlescreen/base/IdleState;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 297
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1, p0, v5}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->init(Landroid/content/Context;Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 298
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1, p0, v5}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->init(Landroid/content/Context;Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 299
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1, p0, v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->init(Landroid/content/Context;Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 300
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-interface {v4}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->supportWeather()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 301
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1, p0, v5}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->init(Landroid/content/Context;Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 303
    :cond_4
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v4, :cond_5

    .line 304
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mThreeLMCtrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2, p0, v5}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->init(Landroid/content/Context;Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;Landroid/os/Handler;)V

    .line 306
    :cond_5
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->checkMusicPlaying()V

    .line 308
    new-instance v4, Lcom/htc/idlescreen/base/util/OOBEMonitor;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/idlescreen/base/util/OOBEMonitor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEMonitor:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    .line 309
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEMonitor:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    invoke-virtual {v4, p0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->startMonitor(Lcom/htc/idlescreen/base/util/OOBEMonitor$OOBEMonitorListener;)V

    .line 311
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 312
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    const-wide/16 v6, 0xc8

    invoke-static {v4, v5, v6, v7}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 314
    .end local v2           #isCDMA:Z
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    if-nez v4, :cond_7

    .line 315
    new-instance v4, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    invoke-direct {v4}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;-><init>()V

    iput-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    .line 316
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    invoke-virtual {v4, p0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->setCallback(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;)V

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 265
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public isAirplaneMode()Z
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1045
    .local v0, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-nez v0, :cond_0

    .line 1046
    const/4 v1, 0x0

    .line 1048
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    goto :goto_0
.end method

.method public isBatteryMode()Z
    .locals 2

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryDismissed:Z

    if-nez v0, :cond_0

    .line 1156
    iget v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBatteryLevel:I

    sget v1, Lcom/htc/idlescreen/base/IdleState;->NORMAL_LOW_BATTERY:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mDevicePluggedIn:Z

    if-nez v0, :cond_0

    .line 1157
    const/4 v0, 0x1

    .line 1160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraAp(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)Z
    .locals 10
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    .line 1776
    const/4 v1, 0x0

    .line 1778
    .local v1, cameraAp:Z
    :try_start_0
    iget-object v8, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1779
    .local v5, pmg:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1780
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x1

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1781
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1782
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1783
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    .line 1784
    const/4 v4, 0x0

    .line 1785
    .local v4, packageName:Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1786
    const-string v8, "android.permission.CAMERA"

    invoke-virtual {v5, v8, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    const/4 v1, 0x1

    .line 1794
    .end local v0           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #pmg:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #pmg:Landroid/content/pm/PackageManager;
    .restart local v6       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    move v1, v7

    .line 1786
    goto :goto_0

    .line 1789
    .end local v0           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #pmg:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v2

    .line 1791
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "IdleState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCameraAp e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCurrentScene(Lcom/htc/fusion/fx/FxScene;)Z
    .locals 2
    .parameter "scene"

    .prologue
    .line 1219
    const/4 v1, 0x0

    .line 1220
    .local v1, isCurrent:Z
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1221
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1222
    invoke-interface {v0, p1}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->isCurrentScene(Lcom/htc/fusion/fx/FxScene;)Z

    move-result v1

    .line 1224
    :cond_0
    return v1
.end method

.method public isGoningUnlock()Z
    .locals 1

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mFreezeView:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideMenu()Z
    .locals 2

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mHideMenu:Z

    .line 1362
    .local v0, value:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mHideMenu:Z

    .line 1363
    return v0
.end method

.method public isNoSignal()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1103
    const/4 v0, 0x0

    .line 1104
    .local v0, noSignal:Z
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v6, :cond_0

    move v1, v0

    .line 1119
    .end local v0           #noSignal:Z
    .local v1, noSignal:I
    :goto_0
    return v1

    .line 1107
    .end local v1           #noSignal:I
    .restart local v0       #noSignal:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1108
    .local v4, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v4, :cond_2

    .line 1109
    invoke-virtual {v4}, Lcom/htc/lockscreen/telephony/TelephonyState;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 1110
    .local v3, simState:Lcom/android/internal/telephony/IccCard$State;
    iget v2, v4, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 1111
    .local v2, serviceState:I
    iget-boolean v5, p0, Lcom/htc/idlescreen/base/IdleState;->mNeedShowSimState:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    if-nez v5, :cond_2

    .line 1112
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v5, :cond_2

    if-ne v2, v6, :cond_2

    .line 1115
    :cond_1
    const/4 v0, 0x1

    .end local v2           #serviceState:I
    .end local v3           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    move v1, v0

    .line 1119
    .restart local v1       #noSignal:I
    goto :goto_0
.end method

.method public isOOBEDone()Z
    .locals 1

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEDone:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1229
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1230
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->isPortrait()Z

    move-result v1

    .line 1232
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/idlescreen/base/util/MyUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    .line 1407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 1015
    const/4 v1, 0x0

    .line 1016
    .local v1, isShow:Z
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1017
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v0, :cond_0

    .line 1018
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->isShow()Z

    move-result v1

    .line 1020
    :cond_0
    return v1
.end method

.method public isShowHint()Z
    .locals 2

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShowHint:Z

    .line 1350
    .local v0, value:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mShowHint:Z

    .line 1351
    return v0
.end method

.method public isSimMissed()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1052
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isWorldPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return v2

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1056
    .local v1, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v1, :cond_0

    .line 1059
    invoke-virtual {v1}, Lcom/htc/lockscreen/telephony/TelephonyState;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1060
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/IdleState;->mNeedShowSimState:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_0

    .line 1064
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSimProblem()Z
    .locals 4

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, simProblem:Z
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1085
    .local v2, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v2, :cond_1

    .line 1086
    invoke-virtual {v2}, Lcom/htc/lockscreen/telephony/TelephonyState;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 1087
    .local v1, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/IdleState;->mNeedShowSimState:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    if-nez v3, :cond_1

    .line 1088
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_1

    .line 1095
    :cond_0
    const/4 v0, 0x1

    .line 1099
    .end local v1           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_1
    return v0
.end method

.method public isTouchItem()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTouchItem:Z

    return v0
.end method

.method public isUICCRegistered()Z
    .locals 1

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z

    return v0
.end method

.method public isUIResume()Z
    .locals 1

    .prologue
    .line 1727
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIResume:Z

    return v0
.end method

.method public isUiccProblem()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1123
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1124
    .local v0, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v0, :cond_2

    .line 1125
    iget-boolean v1, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 1126
    .local v1, uiccProvisioned:Z
    iget v2, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 1127
    .local v2, uiccState:I
    if-nez v1, :cond_1

    .line 1135
    .end local v1           #uiccProvisioned:Z
    .end local v2           #uiccState:I
    :cond_0
    :goto_0
    return v3

    .line 1130
    .restart local v1       #uiccProvisioned:Z
    .restart local v2       #uiccState:I
    :cond_1
    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    .line 1135
    .end local v1           #uiccProvisioned:Z
    .end local v2           #uiccState:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isVZWSIM()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1139
    const-string v0, "311480"

    .line 1140
    .local v0, VZW_OP1:Ljava/lang/String;
    const-string v1, "20404"

    .line 1141
    .local v1, VZW_OP2:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1142
    .local v3, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v3, :cond_0

    .line 1143
    iget-object v2, v3, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 1144
    .local v2, opNum:Ljava/lang/String;
    const-string v5, "IdleState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVZWSIM opNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v5, "311480"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "20404"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1151
    .end local v2           #opNum:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1149
    .restart local v2       #opNum:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isWiFiOnlySIM()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1070
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 1071
    .local v1, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v1, :cond_0

    .line 1072
    invoke-virtual {v1}, Lcom/htc/lockscreen/telephony/TelephonyState;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1073
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_0

    const-string v3, "gsm.sim.numeric.types"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1076
    const/4 v2, 0x1

    .line 1079
    .end local v0           #simState:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    return v2
.end method

.method public needStopFaceLock(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)Z
    .locals 7
    .parameter "icon"

    .prologue
    .line 1738
    const/4 v2, 0x0

    .line 1739
    .local v2, delay:Z
    const-string v1, "com.android.camera"

    .line 1740
    .local v1, CAMERA_PACKAGE:Ljava/lang/String;
    const-string v0, "com.android.camera.CameraEntry"

    .line 1742
    .local v0, CAMERA_CLASS:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1743
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1744
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "com.android.camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1745
    const/4 v2, 0x1

    .line 1748
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    const-string v4, "IdleState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needUnlockDelay delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    return v2
.end method

.method public onAppNotifyCountUpdate(Ljava/lang/String;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 2
    .parameter "packageName"
    .parameter "info"

    .prologue
    .line 1591
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1592
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1593
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1594
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 1595
    return-void
.end method

.method public onAppNotifyUpdate()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 1733
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1734
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1735
    return-void
.end method

.method public onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 982
    const-wide/16 v0, 0x12c

    .line 983
    .local v0, delay:J
    if-eqz p1, :cond_3

    iget v2, p1, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    if-ne v2, v3, :cond_3

    .line 984
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    .line 985
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iget v2, v2, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    if-eq v2, v3, :cond_1

    .line 986
    :cond_0
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/IdleState;->mNotifyPhoneUIReady:Z

    .line 987
    const-wide/16 v0, 0x0

    .line 994
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget v2, p1, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 995
    const-wide/16 v0, 0x7d0

    .line 997
    :cond_2
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    .line 998
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 999
    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode(J)V

    .line 1004
    :goto_1
    return-void

    .line 991
    :cond_3
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->releasePhoneService()V

    goto :goto_0

    .line 1002
    :cond_4
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->updateViewModeLocked()V

    goto :goto_1
.end method

.method public onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->viewModeWakeLock(Landroid/content/Context;Z)V

    .line 1626
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState;->mRemoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 1627
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode()V

    .line 1628
    return-void
.end method

.method public onStateChange(Lcom/htc/idlescreen/base/ctrl/BaseCtrl;ILjava/lang/Object;)V
    .locals 9
    .parameter "ctrl"
    .parameter "state"
    .parameter "extra"

    .prologue
    const/4 v8, 0x0

    .line 915
    const-string v6, "IdleState"

    const-string v7, "onStateChange"

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 917
    .local v0, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-nez v0, :cond_0

    .line 918
    const-string v6, "IdleState"

    const-string v7, "onStateChange in not callback"

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    if-ne p1, v6, :cond_5

    .line 922
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v6, v8}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->isMusicPlaying(Z)Z

    move-result v4

    .line 923
    .local v4, isMusicPlaying:Z
    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->isShow()Z

    move-result v3

    .line 924
    .local v3, isLockScreenShow:Z
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    .line 925
    .local v2, isInMusicView:Z
    iget-boolean v6, p0, Lcom/htc/idlescreen/base/IdleState;->mCheckMusic:Z

    if-eqz v6, :cond_3

    .line 926
    and-int/lit8 v6, p2, 0x1

    if-lez v6, :cond_2

    .line 927
    iput-boolean v8, p0, Lcom/htc/idlescreen/base/IdleState;->mCheckMusic:Z

    .line 928
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 929
    :cond_1
    iput-boolean v8, p0, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    .line 930
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    .line 964
    .end local v2           #isInMusicView:Z
    .end local v3           #isLockScreenShow:Z
    .end local v4           #isMusicPlaying:Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode()V

    goto :goto_0

    .line 935
    .restart local v2       #isInMusicView:Z
    .restart local v3       #isLockScreenShow:Z
    .restart local v4       #isMusicPlaying:Z
    :cond_3
    if-eqz v3, :cond_4

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 937
    :cond_4
    iput-boolean v8, p0, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    .line 938
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    goto :goto_1

    .line 942
    .end local v2           #isInMusicView:Z
    .end local v3           #isLockScreenShow:Z
    .end local v4           #isMusicPlaying:Z
    :cond_5
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    if-ne p1, v6, :cond_7

    .line 943
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getViewMode()Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-result-object v6

    sget-object v7, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    if-ne v6, v7, :cond_2

    .line 944
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    iget-object v6, v6, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-boolean v6, v6, Lcom/htc/lockscreen/reminder/ReminderState;->mIsActive:Z

    if-nez v6, :cond_2

    .line 945
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    iget-object v6, v6, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    iget-object v1, v6, Lcom/htc/lockscreen/reminder/ReminderState;->mIntent:Landroid/content/Intent;

    .line 946
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 947
    const-string v6, "com.htc.intent.action.alarm_timeout.volumekey."

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 948
    .local v5, type:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 949
    const v6, 0x7f040025

    invoke-virtual {p0, v6}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 950
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/widget/IdleContainer;->showHint()V

    goto :goto_1

    .line 952
    :cond_6
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 953
    const v6, 0x7f040024

    invoke-virtual {p0, v6}, Lcom/htc/idlescreen/base/IdleState;->setNextHint(I)V

    .line 954
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/widget/IdleContainer;->showHint()V

    goto :goto_1

    .line 961
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #type:I
    :cond_7
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    if-ne p1, v6, :cond_2

    .line 962
    iget-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-virtual {v6}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->getData()Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    goto :goto_1
.end method

.method public onUIPause()V
    .locals 2

    .prologue
    .line 1488
    const-string v0, "IdleState"

    const-string v1, "onUIPause"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIResume:Z

    .line 1491
    return-void
.end method

.method public onUIResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1478
    const-string v0, "IdleState"

    const-string v1, "onUIResume"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIResume:Z

    .line 1481
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    .line 1482
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/IdleState;->mFreezeView:Z

    .line 1483
    iput-object v3, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutDelay:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 1484
    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/IdleState;->setCurDraggable(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    .line 1485
    return-void
.end method

.method public onUIStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1457
    const-string v1, "IdleState"

    const-string v2, "onUIStart"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    .line 1459
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mFreezeView:Z

    .line 1460
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/IdleState;->mUIStart:Z

    .line 1461
    iput-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutDelay:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 1463
    invoke-virtual {p0, v5}, Lcom/htc/idlescreen/base/IdleState;->setCurDraggable(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V

    .line 1464
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1465
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1466
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    .line 1467
    .local v0, musicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->isMusicPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/IdleState;->mCheckMusic:Z

    .line 1469
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->startMusicService()V

    .line 1471
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-virtual {v1, v3}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->setStart(Z)V

    .line 1472
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->registerRegForShow()V

    .line 1473
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->updateViewModeLocked()V

    .line 1474
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->onTimeChange()V

    .line 1475
    return-void
.end method

.method public onUIStop()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    .line 1494
    const-string v2, "IdleState"

    const-string v3, "onUIStop"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1497
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1498
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutDelay:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 1499
    .local v1, shortcut:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    if-eqz v1, :cond_0

    .line 1500
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 1501
    const/4 v1, 0x0

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    .line 1505
    .local v0, musicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
    if-eqz v0, :cond_1

    .line 1506
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    .line 1508
    :cond_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-virtual {v2, v4}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->setStart(Z)V

    .line 1509
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-virtual {v2, v5, v6}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->removeAll(J)V

    .line 1510
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->unregisterRegForShow()V

    .line 1511
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    .line 1512
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mFreezeView:Z

    .line 1513
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mUIStart:Z

    .line 1514
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mUIResume:Z

    .line 1515
    iput-boolean v4, p0, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    .line 1516
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setUnlockFrame()V

    .line 1517
    invoke-virtual {p0, v5, v6}, Lcom/htc/idlescreen/base/IdleState;->updateViewMode(J)V

    .line 1518
    return-void
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    move-result-object v0

    .line 1636
    .local v0, callback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v0, :cond_0

    .line 1637
    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->pauseRender()V

    .line 1639
    :cond_0
    return-void
.end method

.method public phoneUIReady(J)V
    .locals 2
    .parameter "delay"

    .prologue
    const/16 v1, 0xa

    .line 1691
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1692
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1693
    return-void
.end method

.method public pokeWakeLock()V
    .locals 2

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-interface {v1}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    .line 1027
    .local v0, callback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
    if-eqz v0, :cond_0

    .line 1028
    invoke-interface {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->pokeWakeLock()V

    .line 1031
    :cond_0
    return-void
.end method

.method public pokeWakeLock(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-interface {v1}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    .line 1037
    .local v0, callback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
    if-eqz v0, :cond_0

    .line 1038
    invoke-interface {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->pokeWakeLock(I)V

    .line 1041
    :cond_0
    return-void
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->getFxEngineCallback()Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    move-result-object v0

    .line 1643
    .local v0, callback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    if-eqz v0, :cond_0

    .line 1644
    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->resumeRender()V

    .line 1646
    :cond_0
    return-void
.end method

.method public sendMessagetoRejectCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1651
    const-string v1, "IdleState"

    const-string v2, "Send Message to reject call"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 1653
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/IdleState;->getPhoneService(Lcom/htc/lockscreen/telephony/PhoneState;)Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;

    move-result-object v0

    .line 1654
    .local v0, phoneService:Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;
    if-eqz v0, :cond_0

    .line 1655
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/PhoneServiceIntf;->sendMessage()V

    .line 1657
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    if-eqz v1, :cond_1

    .line 1658
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    iput v3, v1, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 1660
    :cond_1
    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/idlescreen/base/IdleState;->unlock(JI)V

    .line 1661
    return-void
.end method

.method public setCurDraggable(Lcom/htc/idlescreen/base/widget/IdleDraggable;)V
    .locals 4
    .parameter "draggable"

    .prologue
    const/16 v3, 0x9

    .line 1710
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState;->mCurDraggable:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    .line 1711
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCurDraggable:Lcom/htc/idlescreen/base/widget/IdleDraggable;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1713
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1715
    :cond_0
    return-void
.end method

.method public setFreezeView(Z)V
    .locals 0
    .parameter "freeze"

    .prologue
    .line 1430
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/IdleState;->mFreezeView:Z

    .line 1431
    return-void
.end method

.method public setNextHint(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mResContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    .line 1385
    :goto_0
    return-void

    .line 1382
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNextHint(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState;->mNextHint:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method public setTouchItem(Z)V
    .locals 0
    .parameter "touched"

    .prologue
    .line 1719
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/IdleState;->mTouchItem:Z

    .line 1720
    return-void
.end method

.method public skipHideMenu()V
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mHideMenu:Z

    .line 1368
    return-void
.end method

.method public skipShowHint()V
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShowHint:Z

    .line 1356
    return-void
.end method

.method public startActivityDelay(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1761
    const-string v1, "IdleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityDelay info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->isCameraAp(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1763
    const-string v1, "IdleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startApplication it\'s camera ap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/IdleState;->usingFaceLock()Z

    move-result v0

    .line 1765
    .local v0, facelock:Z
    const-string v1, "IdleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startApplication facelock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    if-eqz v0, :cond_0

    .line 1767
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutDelay:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 1773
    .end local v0           #facelock:Z
    :goto_0
    return-void

    .line 1772
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/IdleState;->startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    goto :goto_0
.end method

.method public startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 8
    .parameter "shortcut"

    .prologue
    .line 1529
    const-string v5, "IdleState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startApplication shortcut:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "lockscreen_start_activity"

    .line 1531
    .local v0, KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String;
    const/4 v2, 0x1

    .line 1532
    .local v2, START_ACTIVITY_SHORTCUT:I
    const/4 v1, 0x2

    .line 1535
    .local v1, START_ACTIVITY_HOTKEY:I
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1536
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "lockscreen_start_activity"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getItemType()I

    move-result v5

    if-nez v5, :cond_0

    .line 1539
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1550
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1541
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_0
    const-string v5, "folder_id"

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1542
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1543
    iget-object v5, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1545
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 1547
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "IdleState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startApplication e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startApplication(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;J)V
    .locals 4
    .parameter "shortcut"
    .parameter "delay"

    .prologue
    .line 1521
    const-string v1, "IdleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startApplication delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1523
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1524
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1525
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 1526
    return-void
.end method

.method public uninit(Lcom/htc/idlescreen/base/IdleState$ViewCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    if-ne v0, p1, :cond_5

    .line 335
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 336
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 337
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 338
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 340
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 341
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 342
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 343
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 344
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 345
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 346
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 347
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 349
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mStart:Z

    if-eqz v0, :cond_3

    .line 350
    const-string v0, "IdleState"

    const-string v1, "uninit"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/IdleState;->mStart:Z

    .line 352
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->unregisterRegForShow()V

    .line 361
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-interface {v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;->unregisterTelephonyState()V

    .line 362
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->uninit()V

    .line 367
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->uninit()V

    .line 368
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->uninit()V

    .line 369
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->uninit()V

    .line 370
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mThreeLMCtrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->uninit()V

    .line 371
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEMonitor:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEMonitor:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->stopMonitor()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mOOBEMonitor:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    .line 376
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 377
    invoke-direct {p0}, Lcom/htc/idlescreen/base/IdleState;->releasePhoneService()V

    .line 378
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgLooper:Landroid/os/Looper;

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    .line 383
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/idlescreen/base/IdleState;->sInstance:Lcom/htc/idlescreen/base/IdleState;

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    if-eqz v0, :cond_6

    .line 387
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mShortcutReceiver:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;

    .line 390
    :cond_6
    monitor-exit p0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/IdleState;->unlock(I)V

    .line 1427
    return-void
.end method

.method public unlock(I)V
    .locals 6
    .parameter "type"

    .prologue
    .line 1434
    const-string v3, "IdleState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlock type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1437
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/idlescreen/base/IdleState;->setFreezeView(Z)V

    .line 1438
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 1439
    .local v2, viewcallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-eqz v2, :cond_1

    .line 1440
    invoke-interface {v2}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 1441
    .local v0, callback:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    if-eqz v0, :cond_0

    .line 1442
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1443
    .local v1, extra:Landroid/os/Bundle;
    const-string v3, "Key_UnlockTpye"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1444
    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->unlock(Landroid/os/Bundle;)V

    .line 1454
    .end local v0           #callback:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .end local v1           #extra:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1447
    .restart local v0       #callback:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    :cond_0
    const-string v3, "IdleState"

    const-string v4, "unlock IdleScreenCallback is null"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    .end local v0           #callback:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    :cond_1
    const-string v3, "IdleState"

    const-string v4, "unlock viewcallback is null"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unlock(JI)V
    .locals 3
    .parameter "delay"
    .parameter "unlockType"

    .prologue
    const/4 v2, 0x5

    .line 1415
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    if-nez v1, :cond_0

    .line 1416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/IdleState;->mGoingToUnlock:Z

    .line 1417
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1418
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1419
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1420
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1421
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p1, p2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 1423
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public updateShortCut()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 493
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 494
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 495
    return-void
.end method

.method public updateViewMode()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 769
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 770
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 771
    return-void
.end method

.method public updateViewMode(J)V
    .locals 2
    .parameter "delay"

    .prologue
    const/4 v1, 0x3

    .line 764
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 765
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 766
    return-void
.end method

.method public updateViewModeLocked()V
    .locals 24

    .prologue
    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/idlescreen/base/IdleState;->mCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 785
    .local v4, callback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;
    if-nez v4, :cond_0

    .line 906
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-interface {v4}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->getIdleScreenCallback()Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    move-result-object v21

    check-cast v21, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isPreview()Z

    move-result v12

    .line 790
    .local v12, isPreview:Z
    if-nez v12, :cond_1e

    invoke-interface {v4}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->isShow()Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 791
    const/4 v10, 0x0

    .line 792
    .local v10, isIncomingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mPhoneState:Lcom/htc/lockscreen/telephony/PhoneState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    .line 795
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->isMusicPlaying()Z

    move-result v2

    .line 796
    .local v2, bMusicPlayering:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mMusicCtrl:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->isSDCardReady()Z

    move-result v3

    .line 797
    .local v3, bSDCardReady:Z
    if-eqz v3, :cond_2

    .line 798
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    move/from16 v21, v0

    or-int v2, v2, v21

    .line 800
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->IsAlarmRinging()Z

    move-result v7

    .line 801
    .local v7, isAlarmActive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->IsCalendarRinging()Z

    move-result v8

    .line 802
    .local v8, isCalendarActive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->IsTimerRinging()Z

    move-result v16

    .line 804
    .local v16, isTimerActive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mReminderCtrl:Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/ReminderCtrl;->isTaskRinging()Z

    move-result v15

    .line 805
    .local v15, isTaskActive:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isWiFiOnlySIM()Z

    move-result v20

    .line 806
    .local v20, isWiFiOnlySIM:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/idlescreen/base/IdleState;->mUICCRegistered:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v17, 0x1

    .line 807
    .local v17, isUICCUnregistereed:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isSimMissed()Z

    move-result v13

    .line 808
    .local v13, isSimMissed:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isAirplaneMode()Z

    move-result v6

    .line 809
    .local v6, isAirplane:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isSimProblem()Z

    move-result v14

    .line 810
    .local v14, isSimProblem:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isNoSignal()Z

    move-result v11

    .line 811
    .local v11, isNoSignal:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isUiccProblem()Z

    move-result v18

    .line 812
    .local v18, isUiccProblem:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mThreeLMCtrl:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->inEmergencyMode()Z

    move-result v9

    .line 813
    .local v9, isEmergencyMode:Z
    const/16 v19, 0x0

    .line 814
    .local v19, isWeatherAlert:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mWeatherData:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 815
    const/16 v19, 0x1

    .line 818
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mNtfMonitor:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->getCurrentNtf()Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    move-result-object v5

    .line 819
    .local v5, curNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    if-eqz v10, :cond_7

    .line 820
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    .line 900
    .end local v2           #bMusicPlayering:Z
    .end local v3           #bSDCardReady:Z
    .end local v5           #curNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    .end local v6           #isAirplane:Z
    .end local v7           #isAlarmActive:Z
    .end local v8           #isCalendarActive:Z
    .end local v9           #isEmergencyMode:Z
    .end local v10           #isIncomingCall:Z
    .end local v11           #isNoSignal:Z
    .end local v13           #isSimMissed:Z
    .end local v14           #isSimProblem:Z
    .end local v15           #isTaskActive:Z
    .end local v16           #isTimerActive:Z
    .end local v17           #isUICCUnregistereed:Z
    .end local v18           #isUiccProblem:Z
    .end local v19           #isWeatherAlert:Z
    .end local v20           #isWiFiOnlySIM:Z
    :goto_3
    const-string v21, "IdleState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateViewModeUI~ mCurViewMode:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/idlescreen/base/IdleState;->mUIStart:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 902
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/idlescreen/base/IdleState;->mInMusic:Z

    .line 904
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lcom/htc/idlescreen/base/IdleState$ViewCallback;->onViewModeChanged(Lcom/htc/idlescreen/base/IdleState$ViewMode;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->viewModeWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 793
    .restart local v10       #isIncomingCall:Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 806
    .restart local v2       #bMusicPlayering:Z
    .restart local v3       #bSDCardReady:Z
    .restart local v7       #isAlarmActive:Z
    .restart local v8       #isCalendarActive:Z
    .restart local v15       #isTaskActive:Z
    .restart local v16       #isTimerActive:Z
    .restart local v20       #isWiFiOnlySIM:Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 822
    .restart local v5       #curNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    .restart local v6       #isAirplane:Z
    .restart local v9       #isEmergencyMode:Z
    .restart local v11       #isNoSignal:Z
    .restart local v13       #isSimMissed:Z
    .restart local v14       #isSimProblem:Z
    .restart local v17       #isUICCUnregistereed:Z
    .restart local v18       #isUiccProblem:Z
    .restart local v19       #isWeatherAlert:Z
    :cond_7
    if-eqz v7, :cond_8

    .line 823
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->ALARM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto :goto_3

    .line 825
    :cond_8
    if-eqz v8, :cond_9

    if-nez v9, :cond_9

    .line 826
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->CALENDAR_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto :goto_3

    .line 828
    :cond_9
    if-eqz v16, :cond_a

    .line 829
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TIMER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto :goto_3

    .line 831
    :cond_a
    if-eqz v15, :cond_b

    if-nez v9, :cond_b

    .line 832
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->TASK_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 834
    :cond_b
    if-eqz v9, :cond_c

    .line 835
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->EMERENCY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 837
    :cond_c
    if-nez v6, :cond_d

    if-eqz v20, :cond_d

    .line 838
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 840
    :cond_d
    if-nez v6, :cond_e

    if-nez v13, :cond_e

    if-eqz v14, :cond_e

    .line 841
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->SIMLOCK_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 843
    :cond_e
    if-nez v6, :cond_f

    if-eqz v17, :cond_f

    .line 844
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 846
    :cond_f
    if-nez v6, :cond_10

    if-nez v13, :cond_10

    if-eqz v18, :cond_10

    .line 847
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 849
    :cond_10
    if-nez v6, :cond_11

    if-nez v13, :cond_11

    if-eqz v11, :cond_11

    .line 850
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIGNAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 852
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/idlescreen/base/IdleState;->isBatteryMode()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 853
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->BATTERY_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 855
    :cond_12
    if-eqz v2, :cond_13

    .line 856
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MUSIC_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 858
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/IdleState;->mRemoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 859
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->REMOTE_VIEW_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 861
    :cond_14
    if-eqz v6, :cond_15

    .line 862
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->AIRPLANE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 864
    :cond_15
    if-eqz v13, :cond_16

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 865
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIM_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 867
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/idlescreen/base/IdleState;->mOOBEDone:Z

    move/from16 v21, v0

    if-nez v21, :cond_17

    .line 868
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->OOBERUN_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 870
    :cond_17
    if-eqz v5, :cond_1c

    .line 871
    iget v0, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 872
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MISSCALL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 874
    :cond_18
    iget v0, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 875
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->MESSAGE_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 877
    :cond_19
    iget v0, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    iget v0, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 879
    :cond_1a
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->VOICEMAIL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 882
    :cond_1b
    const-string v21, "IdleState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateViewModeUI~ ntf type unknown:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 886
    :cond_1c
    if-eqz v19, :cond_1d

    .line 887
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->WEATHER_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 890
    :cond_1d
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3

    .line 898
    .end local v2           #bMusicPlayering:Z
    .end local v3           #bSDCardReady:Z
    .end local v5           #curNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    .end local v6           #isAirplane:Z
    .end local v7           #isAlarmActive:Z
    .end local v8           #isCalendarActive:Z
    .end local v9           #isEmergencyMode:Z
    .end local v10           #isIncomingCall:Z
    .end local v11           #isNoSignal:Z
    .end local v13           #isSimMissed:Z
    .end local v14           #isSimProblem:Z
    .end local v15           #isTaskActive:Z
    .end local v16           #isTimerActive:Z
    .end local v17           #isUICCUnregistereed:Z
    .end local v18           #isUiccProblem:Z
    .end local v19           #isWeatherAlert:Z
    .end local v20           #isWiFiOnlySIM:Z
    :cond_1e
    sget-object v21, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NORMAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/IdleState;->mCurViewMode:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    goto/16 :goto_3
.end method

.method public usingFaceLock()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1799
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/idlescreen/base/IdleState;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1803
    :cond_0
    return v0
.end method

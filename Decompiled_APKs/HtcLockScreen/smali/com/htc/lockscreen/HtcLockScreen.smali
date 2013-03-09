.class public Lcom/htc/lockscreen/HtcLockScreen;
.super Lcom/htc/lockscreen/LockScreeenClass;
.source "HtcLockScreen.java"

# interfaces
.implements Lcom/htc/lockscreen/HtcLockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    }
.end annotation


# static fields
.field static final LOG_PREFIX:Ljava/lang/String; = "HtcLockScreen"

.field private static final TOUCH_SKIP_TIME:J = 0x14L

.field public static final VIEW_MODE_NORMAL:I = 0x0

.field public static final VIEW_MODE_UNFOCUS:I = 0x2

.field public static final VIEW_MODE_UNLOCK:I = 0x1

.field public static final WHAT_UI_LAUNCH_CS:I = 0x3eb

.field public static final WHAT_UI_START:I = 0x3ea

.field public static final WHAT_UI_UNLOCK:I = 0x3ec

.field public static final WHAT_UI_UPDATEMODE:I = 0x3ed

.field public static final WHAT_UI_UPDATE_HIDDEN:I = 0x3ee


# instance fields
.field cameradelaytime:I

.field private mDestroyed:Z

.field public mLSStateCallback:Lcom/htc/lockscreen/app/LSState$Callback;

.field private mLastToucEventTime:J

.field private mLayout:Landroid/view/View;

.field mPreX:F

.field mPreY:F

.field private mScreenStart:Z

.field private mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

.field private mStartcamera:Z

.field private mTouched:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mWindowFocus:Z

.field unlockdelaytime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
    .locals 3
    .parameter "systemContext"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "thisContext"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct/range {p0 .. p6}, Lcom/htc/lockscreen/LockScreeenClass;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V

    .line 51
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mStartcamera:Z

    .line 52
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mDestroyed:Z

    .line 53
    sget-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->START:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 98
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/HtcLockScreen$1;-><init>(Lcom/htc/lockscreen/HtcLockScreen;)V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    .line 171
    iput v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreX:F

    .line 172
    iput v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreY:F

    .line 173
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mTouched:Z

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLastToucEventTime:J

    .line 237
    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->unlockdelaytime:I

    .line 238
    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->cameradelaytime:I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenStart:Z

    .line 432
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    .line 697
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$3;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/HtcLockScreen$3;-><init>(Lcom/htc/lockscreen/HtcLockScreen;)V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLSStateCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 73
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->onConstruct()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
    .locals 3
    .parameter "systemContext"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "thisContext"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/htc/lockscreen/LockScreeenClass;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V

    .line 51
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mStartcamera:Z

    .line 52
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mDestroyed:Z

    .line 53
    sget-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->START:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 98
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/HtcLockScreen$1;-><init>(Lcom/htc/lockscreen/HtcLockScreen;)V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    .line 171
    iput v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreX:F

    .line 172
    iput v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreY:F

    .line 173
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mTouched:Z

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLastToucEventTime:J

    .line 237
    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->unlockdelaytime:I

    .line 238
    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->cameradelaytime:I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenStart:Z

    .line 432
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    .line 697
    new-instance v0, Lcom/htc/lockscreen/HtcLockScreen$3;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/HtcLockScreen$3;-><init>(Lcom/htc/lockscreen/HtcLockScreen;)V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLSStateCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    .line 85
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->onConstruct()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/HtcLockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/HtcLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/HtcLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/HtcLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isDeviceCSLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/HtcLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/HtcLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->handleUpdateHidden()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/lockscreen/HtcLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/lockscreen/HtcLockScreen;)Lcom/htc/lockscreen/HtcLockScreen$ScreenState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    return-object v0
.end method

.method private handleUpdateHidden()V
    .locals 5

    .prologue
    .line 443
    iget-object v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isHidden()Z

    move-result v0

    .line 444
    .local v0, isHidden:Z
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateHidden mWindowFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isHidden:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    if-eqz v2, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z

    move-result v1

    .line 448
    .local v1, showing:Z
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateHidden showing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-eqz v1, :cond_0

    .line 450
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLockScreen;->showIdleScreen(Z)V

    .line 451
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode()V

    .line 459
    .end local v1           #showing:Z
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    if-eqz v0, :cond_0

    .line 456
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode(I)V

    goto :goto_0
.end method

.method private isDeviceCSLocked()Z
    .locals 1

    .prologue
    .line 661
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->isDeviceCSLocked()Z

    move-result v0

    return v0
.end method

.method private isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenStart:Z

    return v0
.end method

.method private startCameraActivity(I)V
    .locals 8
    .parameter "keyCode"

    .prologue
    .line 291
    const-string v0, "lockscreen_start_activity"

    .line 292
    .local v0, KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String;
    const/4 v2, 0x1

    .line 293
    .local v2, START_ACTIVITY_SHORTCUT:I
    const/4 v1, 0x2

    .line 295
    .local v1, START_ACTIVITY_HOTKEY:I
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v5, intent:Landroid/content/Intent;
    const/16 v6, 0x1b

    if-ne p1, v6, :cond_0

    .line 298
    const-string v3, "com.android.camera.CameraEntry"

    .line 303
    .local v3, className:Ljava/lang/String;
    :goto_0
    const-string v6, "com.android.camera"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const/high16 v6, 0x1200

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    const-string v6, "lockscreen_start_activity"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget-object v6, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 301
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.android.camera.CamcorderEntry"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #className:Ljava/lang/String;
    goto :goto_0

    .line 309
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 310
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 633
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    .line 634
    .local v2, lsState:Lcom/htc/lockscreen/app/LSState;
    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->isAirPlaneMode()Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    .line 657
    :cond_0
    :goto_0
    return v5

    .line 638
    :cond_1
    iget-object v6, p0, Lcom/htc/lockscreen/LockScreeenClass;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 640
    .local v3, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isStuckNetworkLock()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 641
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v6, :cond_0

    .line 646
    :cond_2
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 649
    .local v0, bNeedSim:Z
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_7

    :cond_3
    move v1, v5

    .line 652
    .local v1, bSimProblem:Z
    :goto_1
    invoke-static {}, Lcom/htc/lockscreen/app/util/MyUtil;->isSBM()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 653
    if-nez v1, :cond_4

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_8

    :cond_4
    move v1, v5

    .line 657
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    :cond_6
    move v5, v4

    goto :goto_0

    .end local v1           #bSimProblem:Z
    :cond_7
    move v1, v4

    .line 649
    goto :goto_1

    .restart local v1       #bSimProblem:Z
    :cond_8
    move v1, v4

    .line 653
    goto :goto_2
.end method

.method private supportCSUnlockView()Z
    .locals 2

    .prologue
    .line 623
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_1

    .line 627
    :cond_0
    const/4 v0, 0x1

    .line 629
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/htc/lockscreen/LockScreeenClass;->cleanUp()V

    .line 161
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->uninit()V

    .line 162
    return-void
.end method

.method public clearIdleScreen()V
    .locals 3

    .prologue
    .line 472
    const-string v1, "clearIdleScreen~"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 474
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 475
    const-string v1, "setIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->clearIdleScreen()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 286
    const-string v0, "HtcLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-super {p0, p1}, Lcom/htc/lockscreen/LockScreeenClass;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPointToIdleScreen(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 667
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 668
    .local v0, isMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 669
    const-string v1, "dispatchPointToIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 670
    const/4 v1, 0x0

    .line 676
    :goto_0
    return v1

    .line 673
    :cond_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/HtcLockScreen;->fitTouchToIdlescreen(Landroid/view/MotionEvent;)V

    .line 676
    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->dispatchPoint(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public fitTouchToIdlescreen(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 682
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 683
    .local v4, y:F
    iget-object v5, p0, Lcom/htc/lockscreen/HtcLockScreen;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 684
    .local v0, dp:Landroid/view/Display;
    iget-object v5, p0, Lcom/htc/lockscreen/HtcLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 685
    .local v2, statusY:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 691
    .local v1, height:I
    sub-int v5, v1, v2

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 692
    sub-int v5, v1, v2

    add-int/lit8 v5, v5, -0xa

    int-to-float v4, v5

    .line 694
    :cond_0
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 695
    return-void
.end method

.method public getIdleScreenInfo()Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdleScreenLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 568
    const-string v1, "getIdleScreenLabel~"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 570
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 571
    const-string v1, "getIdleScreenLabel~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 572
    const/4 v1, 0x0

    .line 574
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLockScreenViewMode()I
    .locals 4

    .prologue
    .line 525
    iget-object v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isHidden()Z

    move-result v1

    .line 526
    .local v1, isHidden:Z
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 527
    const/4 v2, 0x2

    .line 538
    :goto_0
    return v2

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v0

    .line 531
    .local v0, inLockScreen:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenViewMode~ inLockScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 533
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    sget-object v3, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->STOP:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    if-eq v2, v3, :cond_1

    .line 535
    const/4 v2, 0x0

    goto :goto_0

    .line 538
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getPokeWakelockTimeForCustomized()I
    .locals 5

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, time:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_pokewakelocktime"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 348
    :goto_0
    if-gez v1, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 351
    :cond_0
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPokeWakelockTimeForCustomized time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(I)V

    .line 579
    return-void
.end method

.method public goToUnlockScreen(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(ZI)V

    .line 592
    return-void
.end method

.method public goToUnlockScreen(II)V
    .locals 4
    .parameter "type"
    .parameter "delay"

    .prologue
    const/16 v2, 0x3ec

    .line 582
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 584
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 585
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 586
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-static {v1, v0, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 588
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public goToUnlockScreen(Z)V
    .locals 1
    .parameter "bKeyboardChanged"

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(ZI)V

    .line 596
    return-void
.end method

.method public goToUnlockScreen(ZI)V
    .locals 3
    .parameter "bKeyboardChanged"
    .parameter "type"

    .prologue
    .line 599
    const-string v0, "HtcLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToUnlockScreen bKeyboardChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->handleAllAlert(Z)V

    .line 604
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isDeviceCSLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->startCSActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen(I)V

    goto :goto_0

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen(I)V

    goto :goto_0
.end method

.method public hideIdleScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 515
    const-string v1, "hideIdleScreen~"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 517
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 518
    const-string v1, "hideIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {v0, v3, v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setVisibility(ZZ)V

    goto :goto_0
.end method

.method public initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mResContext:Landroid/content/Context;

    const v2, 0x7f030008

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const-string v1, "HtcLockScreen"

    const-string v2, "initView"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const v1, 0x7f0a0021

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLayout:Landroid/view/View;

    .line 147
    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/HtcLockScreen;->setFocusable(Z)V

    .line 148
    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/HtcLockScreen;->setFocusableInTouchMode(Z)V

    .line 149
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcLockScreen;->setDescendantFocusability(I)V

    .line 150
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLayout:Landroid/view/View;

    new-instance v2, Lcom/htc/lockscreen/HtcLockScreen$2;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/HtcLockScreen$2;-><init>(Lcom/htc/lockscreen/HtcLockScreen;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resources Not Found, inflate layout fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isUseIdleScreen()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    return v0
.end method

.method public needWaitFirstFrame()Z
    .locals 3

    .prologue
    .line 760
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 761
    .local v0, isMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 762
    const-string v1, "needWaitFirstFrame~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 763
    const/4 v1, 0x1

    .line 765
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->isSurfaceReady()Z

    move-result v1

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public onConstruct()V
    .locals 3

    .prologue
    const/16 v2, 0x3ea

    .line 90
    const-string v0, "HtcLockScreen"

    const-string v1, "constructor start!"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    .line 93
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->initView()V

    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 95
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 96
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 179
    .local v0, action:I
    if-nez v0, :cond_2

    .line 180
    const-string v6, "HtcLockScreen"

    const-string v7, "onInterceptTouchEvent ACTION_DOWN"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/htc/lockscreen/HtcLockScreen;->mTouched:Z

    if-nez v6, :cond_4

    .line 190
    const-string v6, "HtcLockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent mScreenState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    :goto_1
    return v10

    .line 182
    :cond_2
    if-ne v0, v8, :cond_3

    .line 183
    const-string v6, "HtcLockScreen"

    const-string v7, "onInterceptTouchEvent ACTION_UP"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    if-ne v0, v9, :cond_0

    .line 186
    const-string v6, "HtcLockScreen"

    const-string v7, "onInterceptTouchEvent ACTION_CANCEL"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v6

    if-nez v6, :cond_5

    .line 194
    const-string v6, "HtcLockScreen"

    const-string v7, "onInterceptTouchEvent system not ready"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_5
    if-nez v0, :cond_8

    .line 198
    iput-boolean v8, p0, Lcom/htc/lockscreen/HtcLockScreen;->mTouched:Z

    .line 205
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 206
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 207
    .local v5, y:F
    iget v6, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    add-int v1, v6, v7

    .line 208
    .local v1, distance:I
    const/16 v6, 0xa

    if-le v1, v6, :cond_7

    invoke-direct {p0}, Lcom/htc/lockscreen/HtcLockScreen;->isKeyguardShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eq v0, v9, :cond_7

    .line 211
    iput v4, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreX:F

    .line 212
    iput v5, p0, Lcom/htc/lockscreen/HtcLockScreen;->mPreY:F

    .line 213
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    .line 215
    :cond_7
    const/4 v6, 0x2

    if-ne v0, v6, :cond_a

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 217
    .local v2, eventTime:J
    iget-wide v6, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLastToucEventTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x14

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 218
    iput-wide v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLastToucEventTime:J

    .line 219
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/HtcLockScreen;->dispatchPointToIdleScreen(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 200
    .end local v1           #distance:I
    .end local v2           #eventTime:J
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_8
    if-eq v0, v8, :cond_9

    if-ne v0, v9, :cond_6

    .line 202
    :cond_9
    iput-boolean v10, p0, Lcom/htc/lockscreen/HtcLockScreen;->mTouched:Z

    goto :goto_2

    .line 223
    .restart local v1       #distance:I
    .restart local v4       #x:F
    .restart local v5       #y:F
    :cond_a
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/lockscreen/HtcLockScreen;->mLastToucEventTime:J

    .line 224
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/HtcLockScreen;->dispatchPointToIdleScreen(Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isCameraKeySupport()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->isOOBEDone()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    invoke-static {p1}, Lcom/htc/lockscreen/app/util/MyUtil;->isCameraKey(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    .line 249
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 250
    :cond_2
    const-string v2, "HtcLockScreen"

    const-string v3, "camera long press"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->usingFaceLock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->unlockdelaytime:I

    .line 254
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->cameradelaytime:I

    .line 255
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->stopFaceLock()V

    .line 260
    :goto_1
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mStartcamera:Z

    if-nez v2, :cond_3

    .line 261
    iget v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->cameradelaytime:I

    if-lez v2, :cond_5

    .line 263
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/HtcLockScreen;->cameradelaytime:I

    invoke-virtual {v2, p1, v3}, Lcom/htc/lockscreen/app/LSState;->startCameraActivityDelay(II)V

    .line 267
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mStartcamera:Z

    .line 269
    :cond_3
    iget v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->unlockdelaytime:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(II)V

    goto :goto_0

    .line 257
    :cond_4
    const/16 v2, 0x2bc

    iput v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->unlockdelaytime:I

    .line 258
    iput v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->cameradelaytime:I

    goto :goto_1

    .line 265
    :cond_5
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/lockscreen/app/LSState;->startCameraActivity(I)V

    goto :goto_2

    .line 275
    :cond_6
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 276
    .local v0, isMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v2

    sget-object v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v2, v3, :cond_7

    .line 277
    const-string v2, "onKeyDown~ not start"

    invoke-static {v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    :goto_0
    return v1

    .line 319
    :cond_0
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 320
    .local v0, isMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v2

    sget-object v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v2, v3, :cond_1

    .line 321
    const-string v2, "onKeyUp~ not start"

    invoke-static {v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyboardChange(Z)V
    .locals 3
    .parameter "isKeyboardOpen"

    .prologue
    .line 232
    const-string v0, "HtcLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyboardChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 3
    .parameter "inPortrait"

    .prologue
    .line 331
    const-string v0, "HtcLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChange: inPortrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 406
    sget-object v2, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->PAUSE:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 407
    iget-object v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 408
    .local v0, isgoingToUnlockScreen:Z
    :goto_0
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause isgoingToUnlockScreen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->pauseIdleScreen()V

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode(I)V

    .line 413
    :cond_0
    return-void

    .line 407
    .end local v0           #isgoingToUnlockScreen:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 373
    iget-boolean v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenStart:Z

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    sget-object v2, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->RESUME:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    if-eq v1, v2, :cond_0

    .line 377
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->resumeIdleScreen()V

    .line 384
    sget-object v1, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->RESUME:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    iput-object v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mStartcamera:Z

    .line 394
    const-string v1, "HtcLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume mScreenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-boolean v1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcLockScreen;->showIdleScreen(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode()V

    .line 402
    :cond_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onScreenPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    const-string v0, "HtcLockScreen"

    const-string v1, "onScreenPause"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenStart:Z

    .line 419
    sget-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->STOP:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 420
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 422
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/LSState;->setNeedWaitFirstFrame(Z)V

    .line 423
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->getRemoteViewCtrl()Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->removeAll()V

    .line 424
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->clearCalendarEvent()V

    .line 425
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->clearTaskEvent()V

    .line 426
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->hideIdleScreen()V

    .line 427
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    .line 428
    return-void
.end method

.method public onScreenRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 358
    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenStart:Z

    .line 359
    const-string v0, "HtcLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenRestart mWindowFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->predictLSShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    .line 363
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/HtcLockScreen$ScreenState;->START:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    .line 364
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/HtcLockScreen;->showIdleScreen(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode()V

    .line 368
    :cond_1
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/16 v1, 0x3ed

    .line 769
    invoke-super {p0, p1, p2}, Lcom/htc/lockscreen/LockScreeenClass;->onVisibilityChanged(Landroid/view/View;I)V

    .line 770
    if-ne p1, p0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 772
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 774
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "bFocus"

    .prologue
    const/16 v3, 0x3ee

    .line 435
    invoke-super {p0, p1}, Lcom/htc/lockscreen/LockScreeenClass;->onWindowFocusChanged(Z)V

    .line 436
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    .line 437
    const-string v0, "HtcLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged mWindowFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 439
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-static {v0, v3, v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 440
    return-void
.end method

.method public pauseIdleScreen()V
    .locals 3

    .prologue
    .line 506
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 507
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 508
    const-string v1, "pauseIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setLockScreenResume(Z)V

    goto :goto_0
.end method

.method public resumeIdleScreen()V
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 498
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 499
    const-string v1, "resumeIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setLockScreenResume(Z)V

    goto :goto_0
.end method

.method public setIdleScreen(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIdleScreen~ name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 464
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 465
    const-string v1, "setIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setIdleScreen(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/16 v3, 0x3ee

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility visibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 786
    invoke-super {p0, p1}, Lcom/htc/lockscreen/LockScreeenClass;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 788
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 789
    return-void
.end method

.method public showIdleScreen()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/HtcLockScreen;->showIdleScreen(Z)V

    .line 483
    return-void
.end method

.method public showIdleScreen(Z)V
    .locals 3
    .parameter "recreateIfDead"

    .prologue
    .line 486
    const-string v1, "showIdleScreen~"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 488
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 489
    const-string v1, "showIdleScreen~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setVisibility(ZZ)V

    .line 493
    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/HtcLockScreen;->mDestroyed:Z

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->removeCallback()V

    .line 168
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateIdleViewMode()V
    .locals 3

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcLockScreen;->getLockScreenViewMode()I

    move-result v0

    .line 546
    .local v0, viewMode:I
    if-nez v0, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIdleViewMode~ mScreenState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLockScreen;->mScreenState:Lcom/htc/lockscreen/HtcLockScreen$ScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyguardCallback.isLockScreen():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 550
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode(I)V

    .line 551
    return-void
.end method

.method public updateIdleViewMode(I)V
    .locals 3
    .parameter "viewMode"

    .prologue
    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIdleViewMode~ viewMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    .line 556
    .local v0, ISMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    move-result-object v1

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-eq v1, v2, :cond_0

    .line 557
    const-string v1, "updateIdleViewMode~ not start"

    invoke-static {v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->updateViewMode(I)V

    goto :goto_0
.end method

.method public usingFaceLock()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 777
    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 781
    :cond_0
    return v0
.end method

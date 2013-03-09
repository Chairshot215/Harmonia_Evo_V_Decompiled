.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.super Ljava/lang/Object;
.source "IdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenEngine"

.field public static final WAKELOCK_TIME:I = 0x3a98


# instance fields
.field mDestroyed:Z

.field private mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

.field mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

.field mInitializing:Z

.field private mIsResume:Z

.field final mLock:Ljava/lang/Object;

.field private mLockScreenState:I

.field mPendingMove:Landroid/view/MotionEvent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

.field mRenderable:Z

.field mReportedVisible:Z

.field mScreenOn:Z

.field protected mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

.field mStarted:Z

.field mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field private mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

.field private mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method attach(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setSurfaceSize()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->attach()V

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCreate(Landroid/view/SurfaceHolder;)V

    iput-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    invoke-virtual {p0, v4, v4, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    goto :goto_0
.end method

.method detach()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged(false): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->detach()V

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDestroy()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IdleScreenEngine"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dismissReminder(IJ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "idleScreenReminderDismiss"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method doCommand(Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    const-string v3, "idleScreenTelephonyUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    move-object/from16 v21, v0

    if-eqz v11, :cond_1

    const-string v3, "Key_TelephonyState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/TelephonyState;

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/telephony/TelephonyListener;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "idleScreenReminderUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    move-object/from16 v16, v0

    if-eqz v11, :cond_1

    const-string v3, "Key_ReminderState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/reminder/ReminderState;

    const-string v3, "Key_ReminderType"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/lockscreen/reminder/ReminderListener;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    goto :goto_0

    :cond_4
    const-string v3, "idleScreenIsResume"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v11, :cond_5

    const-string v3, "Key_IsResume"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    :cond_5
    const-string v3, "idleScreen_Survive"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto :goto_0

    :cond_6
    const-string v3, "idleScreenViewMode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v11, :cond_1

    const-string v3, "Key_ViewMode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    const-string v3, "IdleScreenEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_LOCKSCREEN_VIEW_MODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onLockScreenStateChanged(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v3, :cond_7

    const/16 v24, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setWindowShow(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x0

    goto :goto_1

    :cond_8
    const-string v3, "idlescreen_Phone_state_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Key_PhoneState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/PhoneState;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "idleScreen_key_down"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v11, :cond_1

    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyDown(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "idleScreen_key_up"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v11, :cond_1

    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyUp(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "idleScreen_remote_view"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v11, :cond_1

    const-string v3, "Key_remoteView"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "idlescreen_shortcut_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v11, :cond_1

    const/16 v19, 0x0

    const-string v3, "Key_shortcut_visibility"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    const-string v3, "Key_shortcut_list"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    array-length v15, v0

    new-array v0, v15, [Lcom/htc/lockscreen/widget/ShortcutInfo;

    move-object/from16 v19, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_e

    aget-object v3, v18, v12

    if-eqz v3, :cond_d

    aget-object v3, v18, v12

    check-cast v3, Lcom/htc/lockscreen/widget/ShortcutInfo;

    aput-object v3, v19, v12

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->z:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->sync:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public doCreate(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method doDesiredSizeChanged(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v0, :cond_0

    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesiredSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDesiredSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDestroy()V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->doDestroy()V

    return-void
.end method

.method public doPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPause()V

    return-void
.end method

.method public doResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onResume()V

    return-void
.end method

.method public doStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStart()V

    const-string v0, "idlescreen_surface_create"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public doStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStop()V

    return-void
.end method

.method doVisibilityChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v1, :cond_2

    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStart()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    :cond_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStop()V

    goto :goto_0
.end method

.method finishDrawing()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->finishDrawing()V

    return-void
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getIdleWindow()Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    return-object v0
.end method

.method public getLockScreenViewMode()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    return v0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSession()Landroid/view/IWindowSession;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimation()I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowAnimation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowFlag()I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getWindowFlag()I

    move-result v0

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowType()I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowType:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method protected goToPause()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    :cond_0
    return-void
.end method

.method protected goToResume()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    :cond_3
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    goto :goto_0
.end method

.method protected goToStart()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    :cond_1
    return-void
.end method

.method protected goToStop()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0
.end method

.method public handleAllReminder(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "idleScreenReminderSnoozeAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "idleScreenReminderHandleAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-boolean v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    return v0
.end method

.method public isResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    return v0
.end method

.method public isScreenStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method protected onLockScreenStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method protected onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 0

    return-void
.end method

.method protected onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 0

    return-void
.end method

.method protected onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0

    return-void
.end method

.method public onRenderableChange(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onScreenOnOffChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V
    .locals 0

    return-void
.end method

.method protected onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onViewModeChange(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onWindowResize(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public pokeWakeLock()V
    .locals 1

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    return-void
.end method

.method public pokeWakeLock(I)V
    .locals 2

    const-string v0, "idleScreenWakeLock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareUnlock()V
    .locals 2

    const-string v0, "idleScreenPrepareUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerReminderState(Lcom/htc/lockscreen/reminder/ReminderListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    const-string v0, "idleScreenReminderRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerTelephonyState(Lcom/htc/lockscreen/telephony/TelephonyListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    const-string v0, "idleScreenTelephonyRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method reportVisibility()V
    .locals 5

    const-string v2, "IdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportVisibility mVisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsResume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockScreenState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-static {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRenderableChange(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    const-string v2, "IdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToResume()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToPause()V

    goto :goto_1
.end method

.method public reportWindowResized(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x272e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public reportWindowVisible(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public requestUpdateSurface()V
    .locals 3

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public requestUpdateSurface(J)V
    .locals 3

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    iput-object p1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v3, 0x2742

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setShowLiveWallpaper(Z)V

    return-void
.end method

.method setSurfaceFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setFormat(I)V

    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_0
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowFlag(I)V

    return-void
.end method

.method setWindowShow(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowShow(Z)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    return-void
.end method

.method public snoozeReminder(IJLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "Key_ReminderAction"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idleScreenReminderSnooze"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityAndUnlock(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ACTION_LOCKSCREEN_START_PENDING"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityAndUnlock(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "startActivityAndUnlock"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unlock()V
    .locals 2

    const-string v0, "idleScreenUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unlock(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "idleScreenUnlock"

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterReminderState()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    const-string v0, "idleScreenReminderUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterTelephonyState()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    const-string v0, "idleScreenTelephonyUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method updateSurface(ZZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    return-void
.end method

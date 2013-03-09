.class public Lcom/htc/android/worldclock/AlarmAlert;
.super Landroid/app/Activity;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/AlarmAlert$16;,
        Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;,
        Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;
    }
.end annotation


# static fields
.field private static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field public static final ALARMTYPE:Ljava/lang/String; = "alarm_type"

.field public static final ALARM_NORMAL:I = 0x10

.field private static final ALARM_NOTIFICATION_ID:I = 0x5

.field public static final ALARM_OFFALARM_DIALOG:I = 0x11

.field public static final ALARM_SILENT_DIALOG:I = 0x12

.field private static final DEFAULT_VOLUME_BEHAVIOR:Ljava/lang/String; = "1"

.field private static final DIALOG_NORMAL:I = 0x0

.field private static final DIALOG_OFFALAM:I = 0x2

.field private static final DIALOG_SILENT:I = 0x1

.field private static final DISMISS:I = 0x2

.field private static final KILLED:I = 0x3

.field public static final LOCKSCREEN:Ljava/lang/String; = "lock_screen"

.field private static final SNOOZE:I = 0x1

.field private static final UNKNOWN:I

.field private static mUserActionDown:Z


# instance fields
.field private final WHAT_ON_ALARMALERT:I

.field private final WHAT_ON_ALARM_INTENT:I

.field private final WHAT_ON_ALARM_NEXT:I

.field private final WHAT_ON_INIT:I

.field private m24HourMode:Z

.field private mAlarm:Landroid/widget/ImageView;

.field private mAlarmAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mAlarmDescription:Ljava/lang/String;

.field private mAlarmId:I

.field private mAlarmType:I

.field private mAlertDescription:Landroid/widget/TextView;

.field private mCancelAlert:Z

.field private mDestroyed:Z

.field private mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mInit:Z

.field protected mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

.field private mIsActive:Z

.field private mIsDismissed:Z

.field private mIsLockScreenExist:Z

.field private mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

.field private mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

.field private mKlaxonLock:Ljava/lang/Object;

.field protected mLooper:Landroid/os/Looper;

.field private mNewIntent:Landroid/content/Intent;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field final mOpenDrawer:Ljava/lang/Runnable;

.field private mSetNextAlarm:Z

.field private mSnoozeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSnoozeMinutes:I

.field private mSnoozed:Z

.field private mState:I

.field private mVolumeBehavior:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

.field private mWakeLockRelease:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->WHAT_ON_INIT:I

    .line 70
    const/16 v0, 0x191

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->WHAT_ON_ALARM_INTENT:I

    .line 71
    const/16 v0, 0x194

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->WHAT_ON_ALARM_NEXT:I

    .line 87
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    .line 90
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsActive:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxonLock:Ljava/lang/Object;

    .line 98
    const/16 v0, 0x12d

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->WHAT_ON_ALARMALERT:I

    .line 99
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mLooper:Landroid/os/Looper;

    .line 101
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    .line 102
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mInit:Z

    .line 103
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSetNextAlarm:Z

    .line 105
    iput v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozeMinutes:I

    .line 108
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->m24HourMode:Z

    .line 109
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mWakeLockRelease:Z

    .line 110
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mCancelAlert:Z

    .line 111
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    .line 119
    sget-object v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_None:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mVolumeBehavior:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    .line 124
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$1;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mOpenDrawer:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$5;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    .line 741
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$13;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$13;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 789
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$14;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$14;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 804
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$15;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$15;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 857
    return-void
.end method

.method private AlarmNext()V
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 285
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)I

    .line 286
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I

    invoke-static {p0, v0}, Lcom/htc/android/worldclock/Alarms;->disableAlert(Landroid/content/Context;I)V

    .line 287
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSetNextAlarm:Z

    .line 289
    return-void
.end method

.method private StopAlarm()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 339
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$6;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$6;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/AlarmAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->onInitParent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/AlarmAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/worldclock/AlarmAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/AlarmAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/android/worldclock/AlarmAlert;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/android/worldclock/AlarmAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozed:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/android/worldclock/AlarmAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozed:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->StopAlarm()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->releaseLocks()V

    return-void
.end method

.method static synthetic access$1702(Lcom/htc/android/worldclock/AlarmAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxonLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/worldclock/AlarmAlert;)Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/android/worldclock/AlarmAlert;Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->onAlarmIntent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->disableKeyguard()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/android/worldclock/AlarmAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozeMinutes:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->doActionVolumeKey()V

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/htc/android/worldclock/AlarmAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mCancelAlert:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->AlarmNext()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/AlarmAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/worldclock/AlarmAlert;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/AlarmAlert;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/AlarmAlert;->showDialogView(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/AlarmAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/AlarmAlert;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/AlarmAlert;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlertDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->doResume()V

    return-void
.end method

.method private detectGotoHome()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 447
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 448
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 449
    .local v2, myActivityManager:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 452
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 453
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 459
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 456
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 459
    goto :goto_0
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 1

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 596
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 601
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    :cond_0
    :try_start_1
    const-string v0, "disableKeyguard"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismissHtcAlartDialog()V
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 821
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 825
    :cond_0
    return-void
.end method

.method private doActionVolumeKey()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 828
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 829
    sget-object v0, Lcom/htc/android/worldclock/AlarmAlert$16;->$SwitchMap$com$htc$android$worldclock$AlarmAlert$VolumeBehavior:[I

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mVolumeBehavior:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 855
    :goto_0
    :pswitch_0
    return-void

    .line 833
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    if-nez v0, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V

    .line 837
    :cond_0
    sget-boolean v0, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    if-nez v0, :cond_1

    .line 838
    sput-boolean v2, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    .line 839
    invoke-static {p0}, Lcom/htc/android/worldclock/AlertUtils;->getSnoozeMinute(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/android/worldclock/AlarmAlert;->snooze(ZI)V

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_0

    .line 844
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    if-nez v0, :cond_2

    .line 846
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V

    .line 848
    :cond_2
    sget-boolean v0, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    if-nez v0, :cond_3

    .line 849
    sput-boolean v2, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    .line 850
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->dismiss()V

    .line 852
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 474
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 475
    const-string v0, "doResume"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 477
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 484
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 490
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->disableKeyguard()V

    .line 491
    iput-boolean v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsActive:Z

    .line 492
    iput-boolean v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mInit:Z

    .line 493
    const-string v0, "mInit done"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 589
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 592
    :cond_0
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 188
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlarmAlert"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandlerThread:Landroid/os/HandlerThread;

    .line 189
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mLooper:Landroid/os/Looper;

    .line 191
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$2;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/AlarmAlert$2;-><init>(Lcom/htc/android/worldclock/AlarmAlert;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method private muteAlarm()V
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 354
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$7;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$7;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 364
    return-void
.end method

.method private onAlarmIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 385
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mNewIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 393
    const-string v0, "AlarmAlert.OnNewIntent()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$8;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$8;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmAlert;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 404
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmKlaxon;->setKillerCallback(Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;)V

    .line 405
    iput v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    .line 406
    iput-boolean v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z

    .line 408
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mNewIntent:Landroid/content/Intent;

    const-string v1, "alarm_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    .line 409
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mNewIntent:Landroid/content/Intent;

    const-string v1, "alarm_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I

    .line 410
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mNewIntent:Landroid/content/Intent;

    const-string v1, "alarm_description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    .line 412
    const/16 v0, 0x194

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/AlarmAlert;->sendEmptyMessage(I)V

    .line 414
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$9;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmAlert$9;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmAlert;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mNewIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmAlert;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onInitParent()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 216
    iget-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->m24HourMode:Z

    .line 222
    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$3;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    iget v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsDismissed:Z

    .line 253
    const/16 v1, 0x194

    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->sendEmptyMessage(I)V

    .line 256
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "volume_button_setting"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, vol:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    :goto_1
    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$4;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$4;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 263
    :pswitch_0
    sget-object v1, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_None:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mVolumeBehavior:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    goto :goto_1

    .line 266
    :pswitch_1
    sget-object v1, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_Snooze:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mVolumeBehavior:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    goto :goto_1

    .line 269
    :pswitch_2
    sget-object v1, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_Dismiss:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mVolumeBehavior:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized releaseLocks()V
    .locals 1

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 608
    const-string v0, "releaseLocks"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 609
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mWakeLockRelease:Z

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mWakeLockRelease:Z

    .line 611
    invoke-static {}, Lcom/htc/android/worldclock/AlarmAlertWakeLock;->release()V

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->enableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendEmptyMessage(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 533
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 534
    monitor-enter p0

    .line 535
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    :cond_0
    monitor-exit p0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showDialogView(I)V
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f08001b

    const v9, 0x7f08001a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 694
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 695
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v6

    .line 696
    .local v2, description:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f030011

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/DigitalClock;

    .line 697
    .local v1, dc:Lcom/htc/android/worldclock/DigitalClock;
    invoke-virtual {v1, v7}, Lcom/htc/android/worldclock/DigitalClock;->setColorChanging(Z)V

    .line 698
    invoke-virtual {v1, v6}, Lcom/htc/android/worldclock/DigitalClock;->setSingleViewEnabled(Z)V

    .line 699
    iget-boolean v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->m24HourMode:Z

    invoke-virtual {v1, v5}, Lcom/htc/android/worldclock/DigitalClock;->set24HourMode(Z)V

    .line 700
    if-nez v2, :cond_0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 701
    :cond_0
    const v5, 0x7f0b0040

    invoke-virtual {v1, v5}, Lcom/htc/android/worldclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :goto_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 707
    .local v4, mTimeFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 708
    .local v3, mCalendar:Ljava/util/Calendar;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    .local v0, alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f020016

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 710
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 711
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 712
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showDialogView : getTime = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 716
    if-eqz v2, :cond_1

    .line 717
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 720
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 736
    :goto_2
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V

    .line 737
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 738
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 739
    return-void

    .end local v0           #alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dc:Lcom/htc/android/worldclock/DigitalClock;
    .end local v2           #description:Z
    .end local v3           #mCalendar:Ljava/util/Calendar;
    .end local v4           #mTimeFormat:Ljava/text/DateFormat;
    :cond_2
    move v2, v7

    .line 695
    goto/16 :goto_0

    .line 703
    .restart local v1       #dc:Lcom/htc/android/worldclock/DigitalClock;
    .restart local v2       #description:Z
    :cond_3
    const v5, 0x7f0b003f

    invoke-virtual {v1, v5}, Lcom/htc/android/worldclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 723
    .restart local v0       #alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v3       #mCalendar:Ljava/util/Calendar;
    .restart local v4       #mTimeFormat:Ljava/text/DateFormat;
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 725
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_2

    .line 729
    :pswitch_1
    invoke-virtual {v0, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 730
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 732
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_2

    .line 720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 660
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 661
    const-string v1, "[ATS][com.htc.android.worldclock][alarm_sound][stop]"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 662
    iget v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    .line 691
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    .line 669
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$12;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$12;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 690
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 894
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 895
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 896
    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 897
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 899
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmAlert;->setContentView(I)V

    .line 901
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlertDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 905
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 136
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string v1, "onCreate"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 140
    sput-boolean v5, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    .line 143
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmService;->setAlarmAlertStartActivity(Z)V

    .line 145
    invoke-static {}, Lcom/htc/android/worldclock/AlarmKlaxon;->getInstance()Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "alarm_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmId:I

    .line 148
    const-string v1, "alarm_description"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmDescription:Ljava/lang/String;

    .line 149
    const-string v1, "lock_screen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    .line 150
    const-string v1, "alarm_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAlarmType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsLockScreenExist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 152
    iput v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    .line 154
    iget v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    if-eq v1, v4, :cond_0

    .line 155
    iput-boolean v3, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSetNextAlarm:Z

    .line 158
    :cond_0
    iget v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    if-nez v1, :cond_2

    .line 165
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mKillerCalback:Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/AlarmKlaxon;->setKillerCallback(Lcom/htc/android/worldclock/AlarmKlaxon$KillerCallback;)V

    .line 166
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->initHandler()V

    .line 167
    const/16 v1, 0x190

    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->sendEmptyMessage(I)V

    .line 168
    return-void

    .line 162
    :cond_2
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 544
    monitor-enter p0

    .line 545
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    .line 546
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    const-string v1, "onDestroy"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 551
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 553
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x194

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mCancelAlert:Z

    if-nez v1, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->StopAlarm()V

    .line 567
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->releaseLocks()V

    .line 569
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 573
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSetNextAlarm:Z

    if-nez v1, :cond_3

    .line 574
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/AlarmAlert$10;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/AlarmAlert$10;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 582
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->dismissHtcAlartDialog()V

    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 585
    return-void

    .line 546
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AlarmAlert not register power off"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 373
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 374
    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSetNextAlarm:Z

    .line 375
    sput-boolean v0, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    .line 376
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mNewIntent:Landroid/content/Intent;

    .line 380
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/htc/android/worldclock/AlarmAlert;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 499
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 501
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 502
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 512
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsLockScreenExist:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 510
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIsActive:Z

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 464
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 466
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 467
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mInit:Z

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmAlert;->doResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 174
    const-string v1, "AlarmAlert.onStart()"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "cancel_alert"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "com.htc.lockscreen.volumekey"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/AlarmAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 184
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 517
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 519
    iget v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mAlarmType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 520
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmAlert;->mCancelAlert:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/htc/android/worldclock/AlarmAlert;->mUserActionDown:Z

    if-nez v0, :cond_2

    .line 524
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/htc/android/worldclock/AlertUtils;->getSnoozeMinute(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/worldclock/AlarmAlert;->snooze(ZI)V

    .line 526
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 527
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_0
.end method

.method public snooze(ZI)V
    .locals 6
    .parameter "showToast"
    .parameter "snoozeMinutes"

    .prologue
    const/4 v5, 0x1

    .line 617
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmAlert: snooze function: mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 619
    iget v1, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    if-eqz v1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iput v5, p0, Lcom/htc/android/worldclock/AlarmAlert;->mState:I

    .line 624
    iput p2, p0, Lcom/htc/android/worldclock/AlarmAlert;->mSnoozeMinutes:I

    .line 625
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlarmAlert$11;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmAlert$11;-><init>(Lcom/htc/android/worldclock/AlarmAlert;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 650
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 652
    if-eqz p1, :cond_0

    .line 653
    const v1, 0x7f08004a

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/worldclock/AlarmAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

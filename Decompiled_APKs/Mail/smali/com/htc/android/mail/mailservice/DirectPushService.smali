.class public Lcom/htc/android/mail/mailservice/DirectPushService;
.super Landroid/app/Service;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/mailservice/DirectPushService$1;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HuxStopState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$IdleState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$PollState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$DpState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$StopState;,
        Lcom/htc/android/mail/mailservice/DirectPushService$State;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;,
        Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;,
        Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;,
        Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;,
        Lcom/htc/android/mail/mailservice/DirectPushService$Event;,
        Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;,
        Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;,
        Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;,
        Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInterface;,
        Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;,
        Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushHandler;,
        Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$StartDpRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$NetworkDisconnectedRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;,
        Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_ADDITIONAL_SYNC_WHEN_ERROR:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_ADDITIONAL_SYNC_WHEN_ERROR"

.field public static final ACTION_CHANGE_TO_IDLE:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_CHANGE_TO_IDLE"

.field public static final ACTION_CHECK_SERVICE:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_CHECK_SERIVCE"

.field public static final ACTION_CLEAR_PUSH_MAIL_SYNC_ERROR:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_CLEAR_PUSH_MAIL_SYNC_ERROR"

.field public static final ACTION_HANDLE_PUSH_MAIL_SYNC_ERROR:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_HANDLE_PUSH_MAIL_SYNC_ERROR"

.field public static final ACTION_NETWORK_CONNECTED:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_NETWORK_CONNECTED"

.field public static final ACTION_NETWORK_DISCONNECTED:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_NETWORK_DISCONNECTED"

.field public static final ACTION_RECEIVE_HUX_SMS:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_RECEIVE_HUX_SMS"

.field public static final ACTION_RESTART_DP:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_RESTART_DP"

.field public static final ACTION_SCHEDULE_SYNC:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_SCHEDULE_SYNC"

.field public static final ACTION_START_DP:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_START_DP"

.field public static final ACTION_STOP_DP:Ljava/lang/String; = "com.htc.android.mail.intent.action.ACTION_STOP_DP"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DirectPushService"

.field private static final sNextAdditionalSyncWhenError:J = 0xdbba0L

.field private static final sNextChangeToIdleTime:J = 0x493e0L

.field private static final sNextRestartDpTime:J = 0x1a8ce0L

.field private static final sNextScheduledSyncTime:J = 0xdbba0L

.field private static final sNextStartDpTime:J = 0x493e0L


# instance fields
.field private mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

.field private mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

.field private mDriectPushHandler:Landroid/os/Handler;

.field private mInitialDirectPushRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;

.field private mServiceCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/DirectPushService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    invoke-static {}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mServiceCreated:Z

    .line 71
    iput-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    .line 2094
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->cancelScheduleSyncAlarm(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/content/Context;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/mailservice/DirectPushService;->addScheduleSyncAlarm(Landroid/content/Context;JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/mail/mailservice/DirectPushService;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;)Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mConnectivityChangedBroadcastReceiver:Lcom/htc/android/mail/mailservice/DirectPushService$ConnectivityChangedBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/Context;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorEnabled(Landroid/content/Context;JZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static addChangeToIdleAlarm(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "delay"

    .prologue
    .line 774
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DirectPushService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addChangeToIdleAlarm, accountId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.android.mail.intent.action.ACTION_CHANGE_TO_IDLE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/accounts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 776
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.mail"

    const-string v6, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string v5, "accountId"

    invoke-virtual {v1, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 778
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 779
    .local v4, pi:Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 780
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v2, v5, p3

    .line 781
    .local v2, nextTime:J
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 782
    return-void
.end method

.method public static addRestartDpAlarm(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "delay"

    .prologue
    .line 754
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DirectPushService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRestartDpAlarm, accountId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.android.mail.intent.action.ACTION_RESTART_DP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/accounts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 756
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.mail"

    const-string v6, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v5, "accountId"

    invoke-virtual {v1, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 758
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 759
    .local v4, pi:Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 760
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v2, v5, p3

    .line 761
    .local v2, nextTime:J
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 762
    return-void
.end method

.method private static addScheduleSyncAlarm(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "delay"

    .prologue
    .line 632
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DirectPushService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addScheduleSyncAlarm, accountId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.android.mail.intent.action.ACTION_SCHEDULE_SYNC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mail/accounts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 634
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.mail"

    const-string v6, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 636
    .local v4, pi:Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 637
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v2, v5, p3

    .line 638
    .local v2, nextTime:J
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 639
    return-void
.end method

.method public static cancelChangeToIdleAlarm(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 765
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelChangeToIdleAlarm, accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.action.ACTION_CHANGE_TO_IDLE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 767
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 769
    .local v2, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 770
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 771
    return-void
.end method

.method public static cancelRestartDpAlarm(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 745
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelRestartDpAlarm, accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.action.ACTION_RESTART_DP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 747
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 749
    .local v2, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 750
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 751
    return-void
.end method

.method private static cancelScheduleSyncAlarm(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 623
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelScheduleSyncAlarm, accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.action.ACTION_SCHEDULE_SYNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 625
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 627
    .local v2, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 628
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 629
    return-void
.end method

.method public static changeToIdle(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 868
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeToIdle, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 871
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 872
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "account is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_1
    :goto_0
    return-void

    .line 875
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 876
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "DirectPushService"

    const-string v3, "account is Hux account"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    :cond_3
    const-wide p1, 0x7ffffffffffffffdL

    .line 880
    :cond_4
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    .line 881
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not item arrive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.ACTION_CHANGE_TO_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 888
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static checkService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 924
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "checkService"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.action.ACTION_CHECK_SERIVCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 928
    return-void
.end method

.method public static clearPushMailSyncError(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 642
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPushMailSyncError, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 644
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 646
    const-wide p1, 0x7ffffffffffffffdL

    .line 647
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "change to 9223372036854775805"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.ACTION_CLEAR_PUSH_MAIL_SYNC_ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 651
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 654
    return-void
.end method

.method public static forceStopDp(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 785
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopDp(Landroid/content/Context;JZ)V

    .line 786
    return-void
.end method

.method public static handlePushMailSyncError(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 657
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePushMailSyncError, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 659
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    .line 660
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 661
    const-wide p1, 0x7ffffffffffffffdL

    .line 662
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "change to 9223372036854775805"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.ACTION_HANDLE_PUSH_MAIL_SYNC_ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 666
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 669
    return-void
.end method

.method private static isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 680
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAdditionalSyncWhenErrorEnabled, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 682
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->isAdditionalSyncWhenErrorEnabled()Z

    move-result v1

    .line 684
    .local v1, enabled:Z
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAdditionalSyncWhenErrorEnabled, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .end local v1           #enabled:Z
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAirPlaneModeOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2305
    const/4 v0, 0x0

    .line 2306
    .local v0, result:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2308
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirPlaneModeOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static isAnyNetworkSettingOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 2273
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2277
    :cond_0
    :goto_0
    return v0

    .line 2274
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isWiMaxSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2275
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isUsbNetSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2276
    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->isMoileDataSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2277
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMoileDataSettingOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2297
    const/4 v0, 0x0

    .line 2298
    .local v0, result:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2300
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMoileDataSettingOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static isUsbNetSettingOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2289
    const/4 v0, 0x0

    .line 2290
    .local v0, result:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usbnet_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2292
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbNetSettingOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static isWiMaxSettingOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2281
    const/4 v0, 0x0

    .line 2282
    .local v0, result:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wimax_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2284
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWiMaxSettingOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static isWifiSettingOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2313
    const/4 v0, 0x0

    .line 2314
    .local v0, result:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2316
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiSettingOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static networkConnected(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 892
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "networkCconnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.action.ACTION_NETWORK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 896
    return-void
.end method

.method public static networkDisconnected(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 899
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "networkDisconnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.action.ACTION_NETWORK_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 903
    return-void
.end method

.method public static receiveHuxSms(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 844
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveHuxSms, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 847
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 848
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "account is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_1
    :goto_0
    return-void

    .line 851
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 852
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "DirectPushService"

    const-string v3, "account is Hux account"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_3
    const-wide p1, 0x7ffffffffffffffdL

    .line 856
    :cond_4
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    .line 857
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not item arrive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.ACTION_RECEIVE_HUX_SMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 864
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static restartDp(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 906
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restartDp, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 909
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 910
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "account is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_1
    :goto_0
    return-void

    .line 913
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 914
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "DirectPushService"

    const-string v3, "account is Hux account"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_3
    const-wide p1, 0x7ffffffffffffffdL

    .line 917
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.ACTION_RESTART_DP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 918
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "fsm"
    .parameter "enabled"

    .prologue
    const-wide/32 v9, 0xdbba0

    .line 691
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "DirectPushService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAdditionalSyncWhenErrorAlarmEnabled, accountId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delay: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 693
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 695
    const-wide p1, 0x7ffffffffffffffdL

    .line 698
    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->isAdditionalSyncWhenErrorAlarmEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 699
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "DirectPushService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdditionalSyncWhenErrorAlarm is already enabled, accountId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_2
    :goto_0
    return-void

    .line 703
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.android.mail.intent.action.ACTION_ADDITIONAL_SYNC_WHEN_ERROR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://mail/accounts/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 704
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 706
    .local v5, pi:Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 707
    .local v1, am:Landroid/app/AlarmManager;
    if-eqz p4, :cond_4

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v3, v6, v9

    .line 709
    .local v3, nextTime:J
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 713
    .end local v3           #nextTime:J
    :goto_1
    invoke-virtual {p3, p4}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->setAdditionalSyncWhenErrorAlarmEnabled(Z)V

    goto :goto_0

    .line 711
    :cond_4
    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private static setAdditionalSyncWhenErrorEnabled(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "enabled"

    .prologue
    .line 672
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdditionalSyncWhenErrorEnabled, accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 674
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0, p3}, Lcom/htc/android/mail/Account;->setAdditionalSyncWhenErrorEnabled(Z)V

    .line 677
    :cond_1
    return-void
.end method

.method private static setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 1196
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock lock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1198
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1199
    .local v1, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1200
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1201
    :cond_1
    return-object v1
.end method

.method private static setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 3
    .parameter "wakeLock"
    .parameter "tag"

    .prologue
    .line 1205
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1207
    :cond_1
    return-void
.end method

.method public static startDp(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 820
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDp, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 823
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 824
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "account is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_1
    :goto_0
    return-void

    .line 827
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 828
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "DirectPushService"

    const-string v3, "account is Hux account"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_3
    const-wide p1, 0x7ffffffffffffffdL

    .line 832
    :cond_4
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    .line 833
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not item arrive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.action.ACTION_START_DP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static startSync(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v7, 0x1

    .line 718
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSync, accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 720
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 721
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "DirectPushService"

    const-string v4, "account is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_1
    :goto_0
    return-void

    .line 724
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 725
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "DirectPushService"

    const-string v4, "account is Hux account"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_3
    const-wide v3, 0x7ffffffffffffffdL

    invoke-static {p0, v3, v4}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 727
    .local v1, huxUnifiedAccount:Lcom/htc/android/mail/Account;
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 728
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hux accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.action.MAIL_SERVICE_SYNC_MAIL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 730
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v3, "checkAccountID"

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 732
    const-string v3, "isPushMail"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 736
    .end local v1           #huxUnifiedAccount:Lcom/htc/android/mail/Account;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.action.MAIL_SERVICE_SYNC_MAIL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/accounts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 737
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.MailService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v3, "checkAccountID"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 739
    const-string v3, "isPushMail"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public static stopDp(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopDp(Landroid/content/Context;JZ)V

    .line 790
    return-void
.end method

.method public static stopDp(Landroid/content/Context;JZ)V
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter "isForce"

    .prologue
    .line 793
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "DirectPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopDp, accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 796
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 797
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "DirectPushService"

    const-string v4, "account is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 800
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 801
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "DirectPushService"

    const-string v4, "account is Hux account"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_3
    const-wide p1, 0x7ffffffffffffffdL

    .line 803
    if-nez p3, :cond_4

    .line 804
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 806
    .local v1, huxAccount:Lcom/htc/android/mail/Account;
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    .line 807
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "DirectPushService"

    const-string v4, "the push of hux account still is enabled"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    .end local v1           #huxAccount:Lcom/htc/android/mail/Account;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.intent.action.ACTION_STOP_DP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.mailservice.DirectPushService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v3, "accountId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 75
    sget-boolean v0, Lcom/htc/android/mail/mailservice/DirectPushService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 77
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService;->mInitialDirectPushRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;

    .line 78
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 23
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 82
    const/16 v22, 0x0

    .line 84
    .local v22, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    const-string v4, "onStartCommand"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    .line 85
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DirectPushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand: intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mServiceCreated:Z

    if-nez v4, :cond_1

    .line 87
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mServiceCreated:Z

    .line 88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mInitialDirectPushRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->setStartId(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mInitialDirectPushRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_1
    if-eqz p1, :cond_1b

    .line 93
    const-string v4, "com.htc.android.mail.intent.action.ACTION_START_DP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    const-string v4, "accountId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 95
    .local v7, accountId:J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v7, v4

    if-nez v4, :cond_4

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v17

    .line 97
    .local v17, accounts:[Lcom/htc/android/mail/Account;
    if-eqz v17, :cond_5

    .line 98
    move-object/from16 v18, v17

    .local v18, arr$:[Lcom/htc/android/mail/Account;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v16, v18, v20

    .line 99
    .local v16, account:Lcom/htc/android/mail/Account;
    if-nez v16, :cond_3

    .line 98
    :cond_2
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 101
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getCheckFreq(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 102
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->startDp(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 204
    .end local v7           #accountId:J
    .end local v16           #account:Lcom/htc/android/mail/Account;
    .end local v17           #accounts:[Lcom/htc/android/mail/Account;
    .end local v18           #arr$:[Lcom/htc/android/mail/Account;
    .end local v20           #i$:I
    .end local v21           #len$:I
    :catchall_0
    move-exception v4

    const-string v5, "onStartCommand"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v4

    .line 106
    .restart local v7       #accountId:J
    :cond_4
    :try_start_1
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$StartDpRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/DirectPushService$StartDpRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 107
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$StartDpRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$StartDpRunnable;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/mailservice/DirectPushService;->checkService(Landroid/content/Context;)V

    .line 202
    .end local v7           #accountId:J
    :cond_6
    :goto_2
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 204
    const-string v5, "onStartCommand"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 202
    return v4

    .line 110
    :cond_7
    :try_start_2
    const-string v4, "com.htc.android.mail.intent.action.ACTION_STOP_DP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 111
    const-string v4, "accountId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 112
    .restart local v7       #accountId:J
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 113
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 114
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$StopDpRunnable;
    .end local v7           #accountId:J
    :cond_8
    const-string v4, "com.htc.android.mail.intent.action.ACTION_RESTART_DP"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 115
    const-string v4, "accountId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 116
    .restart local v7       #accountId:J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v7, v4

    if-nez v4, :cond_c

    .line 117
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;

    move-result-object v17

    .line 118
    .restart local v17       #accounts:[Lcom/htc/android/mail/Account;
    if-eqz v17, :cond_6

    .line 119
    move-object/from16 v18, v17

    .restart local v18       #arr$:[Lcom/htc/android/mail/Account;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    aget-object v16, v18, v20

    .line 120
    .restart local v16       #account:Lcom/htc/android/mail/Account;
    if-nez v16, :cond_a

    .line 119
    :cond_9
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 121
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 122
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->forceStopDp(Landroid/content/Context;J)V

    goto :goto_4

    .line 124
    .end local v16           #account:Lcom/htc/android/mail/Account;
    :cond_b
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v16, v18, v20

    .line 125
    .restart local v16       #account:Lcom/htc/android/mail/Account;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->startDp(Landroid/content/Context;J)V

    .line 124
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 129
    .end local v16           #account:Lcom/htc/android/mail/Account;
    .end local v17           #accounts:[Lcom/htc/android/mail/Account;
    .end local v18           #arr$:[Lcom/htc/android/mail/Account;
    .end local v20           #i$:I
    .end local v21           #len$:I
    :cond_c
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->forceStopDp(Landroid/content/Context;J)V

    .line 130
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->startDp(Landroid/content/Context;J)V

    goto/16 :goto_2

    .line 132
    .end local v7           #accountId:J
    :cond_d
    const-string v4, "com.htc.android.mail.intent.action.ACTION_SCHEDULE_SYNC"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 134
    .restart local v7       #accountId:J
    new-instance v9, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v10, p3

    move-object/from16 v11, p0

    move-wide v13, v7

    invoke-direct/range {v9 .. v14}, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 135
    .local v9, ScheduleSyncRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 136
    .end local v7           #accountId:J
    .end local v9           #ScheduleSyncRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;
    :cond_e
    const-string v4, "com.htc.android.mail.intent.action.ACTION_CHECK_SERIVCE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 137
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 138
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 139
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_f
    const-string v4, "com.htc.android.mail.intent.action.ACTION_NETWORK_CONNECTED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 140
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 141
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 144
    .local v19, checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 145
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_10
    const-string v4, "com.htc.android.mail.intent.action.ACTION_NETWORK_DISCONNECTED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 146
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkDisconnectedRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkDisconnectedRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 147
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$NetworkDisconnectedRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 150
    .restart local v19       #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 151
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$NetworkDisconnectedRunnable;
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_11
    const-string v4, "com.htc.android.mail.intent.action.ACTION_CHANGE_TO_IDLE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 153
    .restart local v7       #accountId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-lez v4, :cond_12

    .line 154
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 155
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;
    :cond_12
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 159
    .restart local v19       #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 160
    .end local v7           #accountId:J
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_13
    const-string v4, "com.htc.android.mail.intent.action.ACTION_RECEIVE_HUX_SMS"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 161
    const-string v4, "accountId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 162
    .restart local v7       #accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v7, v4

    if-eqz v4, :cond_14

    .line 163
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 164
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$ReceiveHuxSmsRunnable;
    :cond_14
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 167
    .restart local v19       #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 168
    .end local v7           #accountId:J
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_15
    const-string v4, "com.htc.android.mail.intent.action.ACTION_ADDITIONAL_SYNC_WHEN_ERROR"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 170
    .restart local v7       #accountId:J
    new-instance v10, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v11, p3

    move-object/from16 v12, p0

    move-wide v14, v7

    invoke-direct/range {v10 .. v15}, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 171
    .local v10, additionalSyncWhenErrorRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 174
    .restart local v19       #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 175
    .end local v7           #accountId:J
    .end local v10           #additionalSyncWhenErrorRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_16
    const-string v4, "com.htc.android.mail.intent.action.ACTION_HANDLE_PUSH_MAIL_SYNC_ERROR"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 176
    const-string v4, "accountId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 177
    .restart local v7       #accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v7, v4

    if-eqz v4, :cond_17

    .line 178
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 179
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;
    :cond_17
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 183
    .restart local v19       #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 184
    .end local v7           #accountId:J
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_18
    const-string v4, "com.htc.android.mail.intent.action.ACTION_CLEAR_PUSH_MAIL_SYNC_ERROR"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 185
    const-string v4, "accountId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 186
    .restart local v7       #accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v7, v4

    if-eqz v4, :cond_19

    .line 187
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v4, p3

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V

    .line 188
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;
    :cond_19
    new-instance v19, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move-object/from16 v0, v19

    move/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 192
    .restart local v19       #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 194
    .end local v7           #accountId:J
    .end local v19           #checkServiceRunnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_1a
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 195
    .local v3, runnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 198
    .end local v3           #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    :cond_1b
    new-instance v3, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;-><init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V

    .line 199
    .restart local v3       #runnable:Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/mailservice/DirectPushService;->mDriectPushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.class public Lcom/android/mms/transaction/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiver$ServiceThread;
    }
.end annotation


# static fields
.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/mms/transaction/SmsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    sget-object v2, Lcom/android/mms/transaction/SmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "READY"

    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LOADED"

    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "SmsReceiver"

    const-string v3, "Don\'t handle ACTION_SIM_STATE_CHANGED not ready action "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit v2

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 116
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 118
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 120
    sget-object v1, Lcom/android/mms/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 122
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 123
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 132
    sget-object v1, Lcom/android/mms/transaction/SmsReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/mms/transaction/SmsReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/android/mms/transaction/SmsReceiver;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/mms/transaction/SmsReceiver;->sInstance:Lcom/android/mms/transaction/SmsReceiver;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/SmsReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiver;->sInstance:Lcom/android/mms/transaction/SmsReceiver;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/SmsReceiver;->sInstance:Lcom/android/mms/transaction/SmsReceiver;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/mms/transaction/SmsReceiver;->onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/SmsReceiver;->setResultCode(I)V

    .line 58
    :cond_0
    return-void
.end method

.method protected onReceiveWithPrivilege(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "privileged"

    .prologue
    .line 65
    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;-><init>(Lcom/android/mms/transaction/SmsReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiver$ServiceThread;->start()V

    goto :goto_0
.end method

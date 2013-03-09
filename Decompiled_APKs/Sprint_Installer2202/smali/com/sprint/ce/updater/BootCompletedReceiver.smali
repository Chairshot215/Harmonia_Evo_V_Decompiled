.class public Lcom/sprint/ce/updater/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "SprintUpdater"

    sput-object v0, Lcom/sprint/ce/updater/BootCompletedReceiver;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/sprint/ce/updater/BootCompletedReceiver;->mInterval:I

    .line 10
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 18
    sget-boolean v4, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sprint/ce/updater/BootCompletedReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Boot complete, sleeping for 20 seconds"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.action.RESCHEDULE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v3, updateIntent:Landroid/content/Intent;
    const-class v4, Lcom/sprint/ce/updater/UpdaterService;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 24
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/AlarmManager;

    .line 25
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v7, p0, Lcom/sprint/ce/updater/BootCompletedReceiver;->mInterval:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sprint.action.CLEANUP_FILES"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, cleanupIntent:Landroid/content/Intent;
    const-class v4, Lcom/sprint/ce/updater/UpdaterService;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #cleanupIntent:Landroid/content/Intent;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    .end local v3           #updateIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

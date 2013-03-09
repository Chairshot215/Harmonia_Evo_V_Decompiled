.class public Lcom/htc/store/receiver/SyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncReceiver.java"


# static fields
.field public static final ACTION_START_SYNC:Ljava/lang/String; = "com.htc.store.start.sync"

.field public static final ACTION_SYNC_STATE_CHANGE:Ljava/lang/String; = "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/store/receiver/SyncReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/receiver/SyncReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/receiver/SyncReceiver;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-string v4, "com.htc.store.start.sync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    sget-object v4, Lcom/htc/store/receiver/SyncReceiver;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "HTC Store starts syncing..."

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {p1}, Lcom/htc/store/util/SyncUtils;->isAutoSyncForHtcHub(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 33
    invoke-static {p1}, Lcom/htc/store/util/NotificationUtils;->cancelCheckingUpdatesSchedule(Landroid/content/Context;)V

    .line 34
    sget-object v4, Lcom/htc/store/receiver/SyncReceiver;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "no Auto-Sync "

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p1}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-static {p1, v4, v5}, Lcom/htc/store/util/NotificationUtils;->scheduleCheckingUpdates(Landroid/content/Context;J)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/htc/store/util/NotificationUtils;->scheduleNextCheckingUpdates(Landroid/content/Context;)V

    .line 40
    sget-object v4, Lcom/htc/store/receiver/SyncReceiver;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "network error..."

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_3
    const-string v4, "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const-string v4, "intent_extra"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 46
    .local v2, extraBundle:Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, type:Ljava/lang/String;
    const-string v4, "authority"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, authority:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/receiver/SyncReceiver;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTO SYNC FLAG CHANGED (Account Manager), type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", authority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v4, "com.htc.cs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.htc.store.provider.ContentProvider"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.store.start.sync"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

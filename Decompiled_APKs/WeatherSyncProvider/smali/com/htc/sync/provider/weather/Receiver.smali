.class public Lcom/htc/sync/provider/weather/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# static fields
.field public static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field public static final CASE_SIM_CHANGED:Ljava/lang/String; = "com.htc.SIM_CHANGED"

.field private static final INTENT_ACTION_NOTIFY_AUTOSYNC_AGENT:Ljava/lang/String; = "com.htc.sync.provider.weather.NOTIFY_AUTOSYNC_AGENT"

.field private static final INTENT_ACTION_START_SYNC_SERVICE:Ljava/lang/String; = "com.htc.sync.provider.weather.START_AUTOSYNC_SERVICE"

.field public static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[Receiver] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"

.field private static final SETTING_KEY_SYNC_SKIPPED:Ljava/lang/String; = "com.htc.sync.provider.weather.syncskipped"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/htc/sync/provider/weather/Receiver;->sendAutoSyncAgentIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/htc/sync/provider/weather/Receiver;->generateSyncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static generateSyncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.sync.provider.weather.START_AUTOSYNC_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static scheduleSync(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v4

    .line 54
    .local v4, updateInterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v1, v6, v4

    .line 55
    .local v1, nextAutoSyncTime:J
    invoke-static {p0}, Lcom/htc/sync/provider/weather/Receiver;->generateSyncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 56
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 57
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 58
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 60
    return-void
.end method

.method private static sendAutoSyncAgentIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.sync.provider.weather.NOTIFY_AUTOSYNC_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.htclocationservice.currentlocation.updated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$1;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$1;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$2;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$2;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 142
    :cond_2
    const-string v2, "com.htc.sync.provider.weather.NOTIFY_AUTOSYNC_AGENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$3;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$3;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 163
    :cond_3
    const-string v2, "com.htc.sync.provider.weather.START_AUTOSYNC_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$4;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$4;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 224
    :cond_4
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    const-string v2, "com.htc.FOTA_UPGRADE"

    const-string v3, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$5;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$5;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 235
    :cond_5
    const-string v2, "WSP"

    const-string v3, "[Receiver] not FOTA UPGRADE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_6
    const-string v2, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CID"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 240
    const-string v2, "com.htc.FOTA_UPGRADE"

    const-string v3, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 242
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$6;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$6;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 252
    :cond_7
    const-string v2, "WSP"

    const-string v3, "[Receiver] not FOTA UPGRADE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/sync/provider/weather/ReceiverIntentService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, i:Landroid/content/Intent;
    const-string v2, "event"

    const-string v3, "customization"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 260
    .end local v1           #i:Landroid/content/Intent;
    :cond_8
    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 261
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$7;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$7;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 268
    :cond_9
    const-string v2, "com.htc.util.weather.WSPUtility"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 269
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$8;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$8;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 276
    :cond_a
    const-string v2, "com.htc.settings.accountsync.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 277
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$9;

    invoke-direct {v3, p0, p2, p1}, Lcom/htc/sync/provider/weather/Receiver$9;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 291
    :cond_b
    const-string v2, "com.htc.settings.accountsync.ACTION_SYNC_SCHEDULE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 292
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$10;

    invoke-direct {v3, p0, p2, p1}, Lcom/htc/sync/provider/weather/Receiver$10;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 318
    :cond_c
    const-string v2, "com.htc.sync.provider.weather.CANCEL_ALL_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sync/provider/weather/Receiver$11;

    invoke-direct {v3, p0, p1}, Lcom/htc/sync/provider/weather/Receiver$11;-><init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

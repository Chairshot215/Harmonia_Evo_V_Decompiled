.class Lcom/htc/sync/provider/weather/Receiver$3;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sync/provider/weather/Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sync/provider/weather/Receiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$3;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 145
    iget-object v3, p0, Lcom/htc/sync/provider/weather/Receiver$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v1

    .line 147
    .local v1, isAutoSyncEnable:Z
    iget-object v3, p0, Lcom/htc/sync/provider/weather/Receiver$3;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/sync/provider/weather/Receiver;->generateSyncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/htc/sync/provider/weather/Receiver;->access$100(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 148
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 149
    const-string v3, "WSP"

    const-string v4, "[Receiver] auto sync agent, auto sync is enabled, reset schedule"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/htc/sync/provider/weather/Receiver$3;->val$context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 152
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 153
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 160
    :goto_0
    return-void

    .line 155
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    const-string v3, "WSP"

    const-string v4, "[Receiver] auto sync agent, auto sync is diabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/htc/sync/provider/weather/Receiver$3;->val$context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 158
    .restart local v0       #am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

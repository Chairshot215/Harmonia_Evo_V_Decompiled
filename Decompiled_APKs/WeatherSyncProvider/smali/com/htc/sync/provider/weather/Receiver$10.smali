.class Lcom/htc/sync/provider/weather/Receiver$10;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$10;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$10;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/sync/provider/weather/Receiver$10;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 294
    iget-object v4, p0, Lcom/htc/sync/provider/weather/Receiver$10;->val$intent:Landroid/content/Intent;

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sync/provider/weather/Receiver$10;->val$intent:Landroid/content/Intent;

    const-string v5, "sync_interval"

    const/16 v6, 0x2a30

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, mSyncInterval:I
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Receiver] EVENT - ACTION_SYNC_SCHEDULE_CHANGE (Account Manager), account type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sync interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v4, "com.htc.sync.provider.weather"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, strSyncInterval:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 309
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v4, p0, Lcom/htc/sync/provider/weather/Receiver$10;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    iget-object v4, p0, Lcom/htc/sync/provider/weather/Receiver$10;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/sync/provider/weather/Receiver;->sendAutoSyncAgentIntent(Landroid/content/Context;)V
    invoke-static {v4}, Lcom/htc/sync/provider/weather/Receiver;->access$000(Landroid/content/Context;)V

    .line 316
    .end local v2           #strSyncInterval:Ljava/lang/String;
    :cond_0
    return-void

    .line 304
    .restart local v2       #strSyncInterval:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 306
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Receiver] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

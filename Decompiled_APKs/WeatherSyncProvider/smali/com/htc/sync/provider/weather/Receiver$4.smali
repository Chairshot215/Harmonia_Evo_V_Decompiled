.class Lcom/htc/sync/provider/weather/Receiver$4;
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
    .line 164
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$4;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 166
    const-string v9, "WSP"

    const-string v10, "[Receiver] EVENT - ALARM MANAGER (AUTO-SYNC)"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v9, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v4

    .line 170
    .local v4, isAutoSyncEnable:Z
    if-eqz v4, :cond_7

    .line 172
    iget-object v9, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/sync/provider/weather/Receiver;->scheduleSync(Landroid/content/Context;)V

    .line 175
    const/4 v5, 0x1

    .line 176
    .local v5, performSync:Z
    sget-object v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v10, "3.5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 177
    iget-object v9, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 178
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_6

    .line 179
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 180
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    .line 181
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    if-eq v9, v8, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_1

    .line 186
    :cond_0
    iget-object v9, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.htc.sync.provider.weather.syncskipped"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v2, v7

    .line 187
    .local v2, hasSkippedOnce:Z
    :goto_0
    if-nez v2, :cond_4

    .line 189
    const-string v9, "WSP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Receiver] skip this update, due to low speed network type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v5, 0x0

    .line 191
    iget-object v9, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.htc.sync.provider.weather.syncskipped"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #hasSkippedOnce:Z
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 205
    iget-object v9, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.htc.sync.provider.weather.syncskipped"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v7, p0, Lcom/htc/sync/provider/weather/Receiver$4;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/util/weather/WSPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v6

    .line 210
    .local v6, weatherAccount:Landroid/accounts/Account;
    if-eqz v6, :cond_2

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "isFromAlarm"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    const-string v7, "com.htc.sync.provider.weather"

    invoke-static {v6, v7, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 221
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #performSync:Z
    .end local v6           #weatherAccount:Landroid/accounts/Account;
    :cond_2
    :goto_2
    return-void

    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #info:Landroid/net/NetworkInfo;
    .restart local v5       #performSync:Z
    :cond_3
    move v2, v8

    .line 186
    goto :goto_0

    .line 193
    .restart local v2       #hasSkippedOnce:Z
    :cond_4
    const-string v9, "WSP"

    const-string v10, "[Receiver] skipped once, sync on low speed network"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    .end local v2           #hasSkippedOnce:Z
    :cond_5
    const-string v9, "WSP"

    const-string v10, "[Receiver] can\'t get active network info"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v9, "WSP"

    const-string v10, "[Receiver] can\'t get connectivity manager"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v5           #performSync:Z
    :cond_7
    const-string v7, "WSP"

    const-string v8, "[Receiver] receive auto-sync event from alarm manager, but auto-sync is disabled."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

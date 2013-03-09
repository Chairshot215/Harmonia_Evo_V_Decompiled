.class Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2$1;
.super Ljava/lang/Object;
.source "RunAppUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2$1;->this$1:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 246
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 247
    :try_start_0
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v5, "Another thread is running for mDownloadDiscardReceiver."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    monitor-exit v4

    .line 279
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 253
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "Start to perform download discard prodedure!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1500()V

    .line 262
    const/4 v3, 0x0

    const/4 v4, 0x0

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 263
    .local v1, objAPStatus:Lorg/json/JSONObject;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.server.checkin.APPUPDATE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, successIntent:Landroid/content/Intent;
    const-string v3, "apkinfo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    const-string v3, "package_name"

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :cond_1
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1900()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "Send intent: [android.server.checkin.APPUPDATE_SUCCESS]"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V

    .line 271
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeDLMgrRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$2000()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 276
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 277
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 253
    .end local v1           #objAPStatus:Lorg/json/JSONObject;
    .end local v2           #successIntent:Landroid/content/Intent;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "FOTA.AppUpdate.Run"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Err in mDownloadDiscardReceiver(). Err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 275
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 276
    const/4 v3, 0x0

    :try_start_5
    invoke-static {v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 277
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 275
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v3

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 276
    const/4 v5, 0x0

    :try_start_6
    invoke-static {v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 277
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v3

    :catchall_4
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3
.end method

.class Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmartSyncScreenOnOffTimeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartSyncServiceStartAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 502
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 503
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 504
    .local v1, mWakeLock:Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 505
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 506
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$600()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 507
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getTodayGoldenTableList(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$700(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Landroid/content/Context;)V

    .line 508
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getUserScreenOnOffTimeTableList(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$800(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Landroid/content/Context;)V

    .line 509
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 514
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    .end local v1           #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    return-object v3

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground() SQLiteDatabaseCorruptException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v3

    throw v3

    .line 520
    :catch_1
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground() Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 537
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 532
    return-void
.end method

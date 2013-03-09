.class Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmartSyncScreenOnOffTimeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartSyncUpdateScreenOnAsyncTask"
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
    .line 589
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 589
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    .line 598
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v7

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 599
    .local v6, pm:Landroid/os/PowerManager;
    const/4 v7, 0x1

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 600
    .local v5, mWakeLock:Landroid/os/PowerManager$WakeLock;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 601
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v4, mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 610
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 612
    new-instance v3, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v3}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 613
    .local v3, mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    check-cast v3, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 614
    .restart local v3       #mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    .end local v3           #mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :cond_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->UpdateToScreenOnOffTimeArrayListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 619
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 621
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 623
    new-instance v0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 624
    .local v0, ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    check-cast v0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 625
    .restart local v0       #ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    #calls: Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    invoke-static {v7, v0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1200(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 616
    .end local v0           #ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 645
    .end local v2           #index:I
    .end local v4           #mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    .end local v5           #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v6           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v1

    .line 646
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_5
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground() SQLiteDatabaseCorruptException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 653
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :cond_1
    :goto_2
    const/4 v7, 0x0

    aget-object v7, p1, v7

    return-object v7

    .line 629
    .restart local v2       #index:I
    .restart local v4       #mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    .restart local v5       #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .restart local v6       #pm:Landroid/os/PowerManager;
    :cond_2
    :try_start_6
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-ne v7, v9, :cond_1

    .line 630
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 632
    :try_start_7
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 633
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 638
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1302(J)J

    .line 639
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 647
    .end local v2           #index:I
    .end local v4           #mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    .end local v5           #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v6           #pm:Landroid/os/PowerManager;
    :catch_1
    move-exception v1

    .line 648
    .local v1, e:Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground() Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 651
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    throw v7

    .line 633
    .restart local v2       #index:I
    .restart local v4       #mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    .restart local v5       #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .restart local v6       #pm:Landroid/os/PowerManager;
    :catchall_2
    move-exception v7

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 589
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 664
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 589
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 659
    return-void
.end method

.class Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmartSyncScreenOnOffTimeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartSyncUpdateGoldenAsyncTask"
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
    .line 667
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "params"

    .prologue
    .line 676
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v16

    const-string v17, "power"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 677
    .local v15, pm:Landroid/os/PowerManager;
    const/16 v16, 0x1

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 678
    .local v12, mWakeLock:Landroid/os/PowerManager$WakeLock;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 679
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1400(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "PREF_POWER_SLEEP_MODE"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 683
    .local v3, SmartSynServiceRunning:Z
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_1

    .line 686
    invoke-virtual {v15}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v16

    if-nez v16, :cond_0

    .line 689
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 691
    new-instance v4, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 692
    .local v4, UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 693
    :try_start_1
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-object v4, v0

    .line 694
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    if-eqz v4, :cond_0

    .line 698
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 699
    .local v5, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 700
    .local v13, now:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 701
    new-instance v9, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v9}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 704
    .local v9, mOldDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 706
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMonth()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 707
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 708
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 709
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 711
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMonth()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 712
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 714
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1600()J

    move-result-wide v16

    sub-long v16, v13, v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 730
    :goto_0
    const/16 v16, 0x17

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 731
    const/16 v16, 0x3b

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 733
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v17

    monitor-enter v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 734
    :try_start_3
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 745
    .end local v4           #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v5           #c:Ljava/util/Calendar;
    .end local v9           #mOldDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v13           #now:J
    :cond_0
    :try_start_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v11, mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v17

    monitor-enter v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 752
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    .line 754
    new-instance v10, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v10}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 755
    .local v10, mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    check-cast v10, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 756
    .restart local v10       #mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 752
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 694
    .end local v7           #index:I
    .end local v10           #mTempScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v11           #mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    .restart local v4       #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :catchall_0
    move-exception v16

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 823
    .end local v3           #SmartSynServiceRunning:Z
    .end local v4           #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v12           #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v15           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v6

    .line 824
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_8
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "doInBackground() SQLiteDatabaseCorruptException"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 831
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :cond_1
    :goto_2
    const/16 v16, 0x0

    aget-object v16, p1, v16

    return-object v16

    .line 720
    .restart local v3       #SmartSynServiceRunning:Z
    .restart local v4       #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v9       #mOldDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .restart local v12       #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .restart local v13       #now:J
    .restart local v15       #pm:Landroid/os/PowerManager;
    :cond_2
    const/16 v16, 0x2

    :try_start_9
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 721
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 722
    const/16 v16, 0x17

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 723
    const/16 v16, 0x3b

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 725
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 726
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 727
    const-wide/16 v16, 0x4d2

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 825
    .end local v3           #SmartSynServiceRunning:Z
    .end local v4           #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v5           #c:Ljava/util/Calendar;
    .end local v9           #mOldDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v12           #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v13           #now:J
    .end local v15           #pm:Landroid/os/PowerManager;
    :catch_1
    move-exception v6

    .line 826
    .local v6, e:Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$500()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "doInBackground() Exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 829
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v16

    throw v16

    .line 735
    .restart local v3       #SmartSynServiceRunning:Z
    .restart local v4       #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v9       #mOldDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .restart local v12       #mWakeLock:Landroid/os/PowerManager$WakeLock;
    .restart local v13       #now:J
    .restart local v15       #pm:Landroid/os/PowerManager;
    :catchall_2
    move-exception v16

    :try_start_b
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 758
    .end local v4           #UpdateGoldeScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v5           #c:Ljava/util/Calendar;
    .end local v9           #mOldDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v13           #now:J
    .restart local v7       #index:I
    .restart local v11       #mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    :cond_3
    :try_start_d
    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 759
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->UpdateToScreenOnOffTimeArrayListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 761
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_4

    .line 763
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    .line 765
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 766
    .local v2, ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    check-cast v2, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 767
    .restart local v2       #ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    invoke-static {v0, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1200(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 763
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 758
    .end local v2           #ScreenOnOffTimeSetting:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :catchall_3
    move-exception v16

    :try_start_f
    monitor-exit v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v16

    .line 772
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->this$0:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$400()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->UpdateNewGoldenTable(Landroid/content/Context;)V

    .line 774
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v17

    monitor-enter v17
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 775
    :try_start_11
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 776
    monitor-exit v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 778
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1302(J)J

    .line 780
    invoke-virtual {v15}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v16

    if-nez v16, :cond_5

    .line 782
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v17

    monitor-enter v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 784
    :try_start_13
    new-instance v8, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v8}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 785
    .local v8, mNewDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1602(J)J

    .line 787
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 788
    .restart local v5       #c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 789
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1602(J)J

    .line 792
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 793
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 794
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 795
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-result-object v16

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 806
    :goto_4
    monitor-exit v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 813
    .end local v5           #c:Ljava/util/Calendar;
    .end local v8           #mNewDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :cond_5
    :try_start_14
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 818
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_2

    .line 776
    :catchall_4
    move-exception v16

    :try_start_15
    monitor-exit v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    .line 800
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v8       #mNewDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :cond_6
    const/16 v16, 0x2

    :try_start_17
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 801
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 802
    const/16 v16, 0xb

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 803
    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 804
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->access$1100()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 806
    .end local v5           #c:Ljava/util/Calendar;
    .end local v8           #mNewDayScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :catchall_5
    move-exception v16

    monitor-exit v17
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v16
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 842
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 837
    return-void
.end method

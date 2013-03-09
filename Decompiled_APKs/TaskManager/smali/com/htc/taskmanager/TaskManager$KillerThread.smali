.class Lcom/htc/taskmanager/TaskManager$KillerThread;
.super Ljava/lang/Thread;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KillerThread"
.end annotation


# static fields
.field private static final RETRIES_NUMBER_DEFAULT:I = 0x5

.field private static final SLEEP_TIME_DEFAULT:I = 0x64


# instance fields
.field private taskToKill:Lcom/htc/taskmanager/TaskInfo;

.field final synthetic this$0:Lcom/htc/taskmanager/TaskManager;


# direct methods
.method public constructor <init>(Lcom/htc/taskmanager/TaskManager;Lcom/htc/taskmanager/TaskInfo;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 469
    iput-object p2, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    .line 470
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 473
    const/4 v8, 0x0

    .line 474
    .local v8, tries:I
    const/4 v3, 0x5

    .line 477
    .local v3, retriesNum:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v6, v9, Lcom/htc/taskmanager/TaskInfo;->mServices:Ljava/util/List;

    .line 479
    .local v6, servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .local v4, serviceToKill:Landroid/content/ComponentName;
    :try_start_1
    const-string v9, "TaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stop service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$000(Lcom/htc/taskmanager/TaskManager;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 530
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #serviceToKill:Landroid/content/ComponentName;
    .end local v6           #servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 535
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 537
    :try_start_4
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 541
    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_1
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 543
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 544
    :try_start_6
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v11, v11, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 545
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 547
    :goto_2
    return-void

    .line 490
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_0
    const/4 v1, 0x1

    .line 493
    .local v1, finished:Z
    :cond_1
    const/4 v1, 0x1

    .line 495
    :try_start_7
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$100(Lcom/htc/taskmanager/TaskManager;)Landroid/app/ActivityManager;

    move-result-object v9

    const/16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 496
    .local v5, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 497
    .local v7, srv:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v9

    if-eqz v9, :cond_2

    .line 498
    const/4 v1, 0x0

    .line 504
    .end local v7           #srv:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    const-wide/16 v9, 0x5

    :try_start_8
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1

    .line 509
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 511
    if-le v8, v3, :cond_4

    .line 512
    :try_start_9
    invoke-static {}, Lcom/htc/taskmanager/TaskManager;->access$200()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v10, v10, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 513
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #calls: Lcom/htc/taskmanager/TaskManager;->forceStopServices(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v9, v5, v6}, Lcom/htc/taskmanager/TaskManager;->access$300(Lcom/htc/taskmanager/TaskManager;Ljava/util/List;Ljava/util/List;)V

    .line 524
    :cond_4
    :goto_4
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/taskmanager/TaskManager$KillerThread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_5

    if-le v8, v3, :cond_1

    .line 526
    :cond_5
    const-string v9, "TaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "force stop package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v11, v11, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$100(Lcom/htc/taskmanager/TaskManager;)Landroid/app/ActivityManager;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v10, v10, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1

    .line 535
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 537
    :try_start_a
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    .line 541
    :goto_5
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 543
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 544
    :try_start_c
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/taskmanager/TaskManager;->access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v11, v11, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 545
    monitor-exit v10

    goto/16 :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v9

    .line 505
    :catch_2
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_3

    .line 535
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #finished:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v6           #servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;
    invoke-static {v10}, Lcom/htc/taskmanager/TaskManager;->access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 537
    :try_start_e
    iget-object v11, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mUpdateListSem:Ljava/lang/Object;
    invoke-static {v11}, Lcom/htc/taskmanager/TaskManager;->access$400(Lcom/htc/taskmanager/TaskManager;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5

    .line 541
    :goto_6
    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 543
    iget-object v10, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/taskmanager/TaskManager;->access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 544
    :try_start_10
    iget-object v11, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #getter for: Lcom/htc/taskmanager/TaskManager;->mNotKilledYet:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/taskmanager/TaskManager;->access$500(Lcom/htc/taskmanager/TaskManager;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->taskToKill:Lcom/htc/taskmanager/TaskInfo;

    iget-object v12, v12, Lcom/htc/taskmanager/TaskInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 545
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v9

    .line 516
    .restart local v1       #finished:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v6       #servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_6
    const/4 v9, 0x5

    if-ne v3, v9, :cond_7

    .line 517
    mul-int/lit8 v3, v3, 0x2

    goto/16 :goto_4

    .line 519
    :cond_7
    :try_start_11
    iget-object v9, p0, Lcom/htc/taskmanager/TaskManager$KillerThread;->this$0:Lcom/htc/taskmanager/TaskManager;

    #calls: Lcom/htc/taskmanager/TaskManager;->forceStopServices(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v9, v5, v6}, Lcom/htc/taskmanager/TaskManager;->access$300(Lcom/htc/taskmanager/TaskManager;Ljava/util/List;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_4

    .line 538
    :catch_3
    move-exception v0

    .line 539
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 541
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v9

    .line 538
    .end local v1           #finished:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v6           #servicesToKill:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v0, e:Ljava/lang/SecurityException;
    :catch_4
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 541
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v9

    .line 545
    :catchall_4
    move-exception v9

    :try_start_14
    monitor-exit v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v9

    .line 538
    :catch_5
    move-exception v0

    .line 539
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 541
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v9

    .line 545
    :catchall_6
    move-exception v9

    :try_start_16
    monitor-exit v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    throw v9
.end method

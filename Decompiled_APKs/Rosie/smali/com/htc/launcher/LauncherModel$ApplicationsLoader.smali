.class Lcom/htc/launcher/LauncherModel$ApplicationsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsLoader"
.end annotation


# instance fields
.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/htc/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LauncherModel;Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter
    .parameter "launcher"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 557
    return-void
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/htc/launcher/LauncherModel;->access$100(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 571
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 572
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    const-string v13, "VivoWCTGBS_246"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LauncherModel.ApplicationsLoader.run: begin. thread="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v10, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 576
    .local v10, mainIntent:Landroid/content/Intent;
    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/Launcher;

    .line 579
    .local v9, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 580
    .local v11, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    iget-object v13, v13, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v13}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->clear()V

    .line 581
    const/4 v13, 0x0

    invoke-virtual {v11, v10, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 582
    .local v3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060007

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 583
    .local v12, needChangeStr:[Ljava/lang/String;
    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, changeStr:[Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v1

    .line 587
    .local v1, am:Lcom/htc/launcher/ApplicationManager;
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v13, :cond_4

    .line 588
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 589
    .local v6, count:I
    const-string v13, "VivoWCTGBS_246"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LauncherModel.ApplicationsLoader.run: count="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v4, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/htc/launcher/LauncherModel;->access$200(Lcom/htc/launcher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    .line 596
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v13, :cond_2

    .line 597
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 598
    .local v8, info:Landroid/content/pm/ResolveInfo;
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v13, v15, v0}, Lcom/htc/launcher/ApplicationManager;->inHideCustomizationList(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-eqz v13, :cond_1

    .line 596
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 572
    .end local v1           #am:Lcom/htc/launcher/ApplicationManager;
    .end local v3           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    .end local v5           #changeStr:[Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #i:I
    .end local v8           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #launcher:Lcom/htc/launcher/Launcher;
    .end local v10           #mainIntent:Landroid/content/Intent;
    .end local v11           #manager:Landroid/content/pm/PackageManager;
    .end local v12           #needChangeStr:[Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 602
    .restart local v1       #am:Lcom/htc/launcher/ApplicationManager;
    .restart local v3       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    .restart local v5       #changeStr:[Ljava/lang/String;
    .restart local v6       #count:I
    .restart local v7       #i:I
    .restart local v8       #info:Landroid/content/pm/ResolveInfo;
    .restart local v9       #launcher:Lcom/htc/launcher/Launcher;
    .restart local v10       #mainIntent:Landroid/content/Intent;
    .restart local v11       #manager:Landroid/content/pm/PackageManager;
    .restart local v12       #needChangeStr:[Ljava/lang/String;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/htc/launcher/LauncherModel;->access$200(Lcom/htc/launcher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v15

    #calls: Lcom/htc/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;
    invoke-static {v13, v11, v15, v8, v9}, Lcom/htc/launcher/LauncherModel;->access$300(Lcom/htc/launcher/LauncherModel;Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v2

    .line 605
    .local v2, application:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x4

    if-lt v13, v15, :cond_0

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    iget-object v13, v13, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v13, v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->addAll(Ljava/util/Collection;)Z

    .line 609
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget-object v13, v9, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #calls: Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;
    invoke-static {v15}, Lcom/htc/launcher/LauncherModel;->access$400(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #calls: Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/launcher/LauncherModel;->access$400(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 620
    .end local v2           #application:Lcom/htc/launcher/ApplicationInfo;
    .end local v8           #info:Landroid/content/pm/ResolveInfo;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 614
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v13, :cond_3

    .line 615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    iget-object v13, v13, Lcom/htc/launcher/LauncherModel;->mApplications:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    invoke-virtual {v13, v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->addAll(Ljava/util/Collection;)Z

    .line 616
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 617
    iget-object v13, v9, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #calls: Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;
    invoke-static {v15}, Lcom/htc/launcher/LauncherModel;->access$400(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #calls: Lcom/htc/launcher/LauncherModel;->getDataSetChangeNotified()Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/htc/launcher/LauncherModel;->access$400(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 620
    :cond_3
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 623
    .end local v4           #buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    .end local v6           #count:I
    .end local v7           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v13, :cond_5

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    const/4 v14, 0x1

    #setter for: Lcom/htc/launcher/LauncherModel;->mApplicationsLoaded:Z
    invoke-static {v13, v14}, Lcom/htc/launcher/LauncherModel;->access$502(Lcom/htc/launcher/LauncherModel;Z)Z

    .line 625
    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->applicationLoaded()V

    .line 627
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/htc/launcher/LauncherModel;->access$100(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 628
    const/4 v13, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->appLoaderLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/htc/launcher/LauncherModel;->access$100(Lcom/htc/launcher/LauncherModel;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 631
    const-string v13, "VivoWCTGBS_246"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LauncherModel.ApplicationsLoader.run: end. thread="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mStopped="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return-void

    .line 630
    :catchall_2
    move-exception v13

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v13
.end method

.method stop()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    .line 561
    return-void
.end method

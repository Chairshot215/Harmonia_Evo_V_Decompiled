.class Lcom/htc/launcher/LauncherModel$3;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/LauncherModel;->outputAllDeskItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel$3;->this$0:Lcom/htc/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 2672
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    :goto_0
    sget-object v9, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/Launcher;

    .line 2679
    .local v6, launcher:Lcom/htc/launcher/Launcher;
    if-nez v6, :cond_0

    .line 2732
    :goto_1
    return-void

    .line 2673
    .end local v6           #launcher:Lcom/htc/launcher/Launcher;
    :catch_0
    move-exception v0

    .line 2675
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2683
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v6       #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    const-string v7, ""

    .line 2684
    .local v7, output:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2688
    .local v8, seqNo:I
    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/launcher/DesktopItemController;->getFxShortcutItems()Ljava/util/List;

    move-result-object v2

    .line 2689
    .local v2, fxShortCutItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    monitor-enter v2

    .line 2690
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    .line 2691
    .local v1, fxItem:Lcom/htc/launcher/FxItem;
    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    .line 2692
    .local v5, item:Lcom/htc/launcher/ItemInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getUlog()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2693
    add-int/lit8 v8, v8, 0x1

    .line 2694
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "widget_info"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getUlog()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",item_name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getItemName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 2700
    .end local v1           #fxItem:Lcom/htc/launcher/FxItem;
    .end local v5           #item:Lcom/htc/launcher/ItemInfo;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2703
    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/launcher/DesktopItemController;->getFxWidgetItems()Ljava/util/List;

    move-result-object v3

    .line 2704
    .local v3, fxWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    monitor-enter v3

    .line 2705
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 2706
    .local v5, item:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v5, :cond_3

    .line 2707
    add-int/lit8 v8, v8, 0x1

    .line 2708
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "widget_info"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getUlog()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",item_name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getItemName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    goto :goto_3

    .line 2700
    .end local v3           #fxWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 2714
    .restart local v3       #fxWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2717
    iget-object v9, p0, Lcom/htc/launcher/LauncherModel$3;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/launcher/LauncherModel;->access$1100(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10

    .line 2718
    :try_start_5
    iget-object v9, p0, Lcom/htc/launcher/LauncherModel$3;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/htc/launcher/LauncherModel;->access$1100(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 2719
    .local v5, item:Lcom/htc/launcher/ItemInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/htc/launcher/LauncherAppWidgetInfo;->getUlog()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2720
    add-int/lit8 v8, v8, 0x1

    .line 2721
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "widget_info"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/launcher/LauncherAppWidgetInfo;->getUlog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",item_name"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/launcher/LauncherAppWidgetInfo;->getItemName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    goto :goto_4

    .line 2714
    .end local v5           #item:Lcom/htc/launcher/ItemInfo;
    :catchall_1
    move-exception v9

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 2725
    :cond_6
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2727
    const-string v9, "com.htc.launcher"

    const-string v10, "layout"

    const-string v11, "widget_info"

    invoke-static {v9, v10, v11, v7}, Lcom/htc/launcher/Logger;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const-string v9, "HomeLoaders"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTC user profiling"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2725
    :catchall_2
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v9
.end method

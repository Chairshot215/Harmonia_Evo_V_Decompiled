.class Lcom/htc/launcher/Launcher$OrientationIdleHandler;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationIdleHandler"
.end annotation


# static fields
.field static final MODE_SCROLLBAR_FIRST:I = 0x1

.field static final MODE_WORKSPACE_FIRST:I


# instance fields
.field mCurrentScreen:I

.field mMode:I

.field mStage:I

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7630
    iput-object p1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7635
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    .line 7636
    iput v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    .line 7637
    iput v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mMode:I

    return-void
.end method

.method private doScrollbar()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7806
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2500(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->restoreRemovedChildren()V

    .line 7807
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/launcher/Launcher;->onOrientationChanged(Z)V

    .line 7808
    return-void

    .line 7807
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doWidgetOrientationChangeComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7795
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "onOrientationChangeComplete + : "

    invoke-static {v4, v2}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7796
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/HostWidgetManager;->onOrientationChangeComplete(I)V

    .line 7797
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 7798
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7799
    iget v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    if-eq v1, v2, :cond_1

    .line 7800
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->onOrientationChangeComplete(I)V

    .line 7798
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7802
    :cond_2
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "onOrientationChangeComplete - : "

    invoke-static {v4, v2}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7803
    :cond_3
    return-void
.end method

.method private doWorkspace(Z)V
    .locals 6
    .parameter "screenOnly"

    .prologue
    .line 7812
    iget-object v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v0, v1, p1}, Lcom/htc/launcher/Workspace;->restoreRemovedChildren(IZ)V

    .line 7814
    iget-object v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v3

    iget v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/WidgetsManager;->onOrientationChanged(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;IIZ)V

    .line 7816
    iget-object v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$9800(Lcom/htc/launcher/Launcher;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    iget v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;->onAppWidgetOrientationChanged(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Landroid/appwidget/AppWidgetManager;Lcom/htc/launcher/LauncherAppWidgetHost;IZ)V

    .line 7820
    return-void
.end method


# virtual methods
.method doStageOne()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7823
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$9400(Lcom/htc/launcher/Launcher;)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/launcher/DesktopItemController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7824
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v2, v1}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 7825
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->removeDropTargetsOfDropBar()V
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$9500(Lcom/htc/launcher/Launcher;)V

    .line 7826
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$9400(Lcom/htc/launcher/Launcher;)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateFxWorkspace(Landroid/content/res/Configuration;)V

    .line 7827
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 7828
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v2

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v2}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 7829
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 7830
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7832
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->setScrollBarControlVisibility(Z)V

    .line 7834
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/htc/launcher/Workspace;->updateOrientation(Z)V

    .line 7835
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doWorkspace(Z)V

    .line 7836
    iget-object v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v2

    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/htc/launcher/Workspace;->updateBubbleText(IIZ)V

    .line 7837
    iget-object v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->getDropTargetsOfDropBar()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$9600(Lcom/htc/launcher/Launcher;)V

    .line 7838
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 7646
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->queueIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7647
    return-void
.end method

.method public queueIdle()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7651
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Rotate.Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueIdle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentScreen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7653
    :cond_0
    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mMode:I

    if-nez v3, :cond_c

    .line 7654
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> queueIdle + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7655
    :cond_1
    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    packed-switch v3, :pswitch_data_0

    .line 7712
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "queueIdle - end: "

    invoke-static {v1, v2}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7714
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$9310(Lcom/htc/launcher/Launcher;)I

    .line 7715
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mChangingOrientation:Z
    invoke-static {v2, v1}, Lcom/htc/launcher/Launcher;->access$6202(Lcom/htc/launcher/Launcher;Z)Z

    .line 7716
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v2, v1}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 7791
    :goto_0
    return v1

    .line 7658
    :pswitch_0
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "First Frame: "

    invoke-static {v1, v3}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7719
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> queueIdle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7789
    :cond_4
    :goto_2
    iget v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    .line 7790
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mEmptyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$9700(Lcom/htc/launcher/Launcher;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    .line 7791
    goto :goto_0

    .line 7665
    :pswitch_1
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_5

    const-string v3, "queueIdle - 1: "

    invoke-static {v1, v3}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7667
    :cond_5
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doScrollbar()V

    goto :goto_1

    .line 7670
    :pswitch_2
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_6

    const-string v3, "queueIdle - 2: "

    invoke-static {v1, v3}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7671
    :cond_6
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doWorkspace(Z)V

    .line 7672
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doWidgetOrientationChangeComplete()V

    .line 7673
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v4

    iget v5, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/htc/launcher/Workspace;->updateBubbleText(IIZ)V

    .line 7675
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->onOrientationChangeEnd()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$8800(Lcom/htc/launcher/Launcher;)V

    .line 7676
    sget-object v1, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v1}, Lcom/htc/launcher/OrientationMonitor;->end()V

    .line 7677
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->drawAllScreens()V

    .line 7679
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mFreezeable:Z
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher;->access$8902(Lcom/htc/launcher/Launcher;Z)Z

    .line 7680
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    .line 7681
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 7683
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    goto/16 :goto_1

    .line 7686
    :pswitch_3
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->checkUnlockFrameSet()Z

    move-result v3

    if-nez v3, :cond_7

    .line 7688
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->pulseFreezeAllScreens()V

    .line 7690
    :cond_7
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_8

    const-string v3, "queueIdle - 3: "

    invoke-static {v1, v3}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7691
    :cond_8
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9000(Lcom/htc/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7692
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->showTutorialNotice()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9100(Lcom/htc/launcher/Launcher;)V

    goto/16 :goto_1

    .line 7696
    :pswitch_4
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "queueIdle - 4: "

    invoke-static {v1, v3}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7697
    :cond_9
    sget-boolean v3, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    if-eqz v3, :cond_a

    .line 7699
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    sget v4, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    sget v5, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    sget-object v6, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    .line 7700
    sput v1, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    .line 7701
    sput v1, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    .line 7702
    sput-object v7, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    .line 7703
    sput-boolean v1, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    .line 7705
    :cond_a
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v3, v1}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    goto/16 :goto_1

    .line 7708
    :pswitch_5
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_b

    const-string v3, "queueIdle - 5: handleOrientationChangedPendingTask"

    invoke-static {v1, v3}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7709
    :cond_b
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->handleOrientationChangedPendingTask()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9200(Lcom/htc/launcher/Launcher;)V

    goto/16 :goto_1

    .line 7721
    :cond_c
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_d

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> queueIdle + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7722
    :cond_d
    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    packed-switch v3, :pswitch_data_1

    .line 7780
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$9310(Lcom/htc/launcher/Launcher;)I

    .line 7781
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 7782
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->enableTilt(Z)V
    invoke-static {v3, v2}, Lcom/htc/launcher/Launcher;->access$8600(Lcom/htc/launcher/Launcher;Z)V

    .line 7783
    iget-object v2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mChangingOrientation:Z
    invoke-static {v2, v1}, Lcom/htc/launcher/Launcher;->access$6202(Lcom/htc/launcher/Launcher;Z)Z

    goto/16 :goto_0

    .line 7725
    :pswitch_6
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$9400(Lcom/htc/launcher/Launcher;)Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/launcher/DesktopItemController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7726
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->enableTilt(Z)V
    invoke-static {v3, v1}, Lcom/htc/launcher/Launcher;->access$8600(Lcom/htc/launcher/Launcher;Z)V

    .line 7727
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v4

    if-ne v4, v2, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Lcom/htc/launcher/Workspace;->updateOrientation(Z)V

    .line 7728
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doScrollbar()V

    .line 7729
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$3000(Lcom/htc/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mAllAppsBarEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_f

    .line 7730
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7731
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_f

    .line 7732
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mAllAppsBarEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 7786
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    :goto_3
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> queueIdle - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7736
    :pswitch_7
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->removeDropTargetsOfDropBar()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9500(Lcom/htc/launcher/Launcher;)V

    .line 7737
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$9400(Lcom/htc/launcher/Launcher;)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateFxWorkspace(Landroid/content/res/Configuration;)V

    .line 7738
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 7739
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v1

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 7740
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v1, v3}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 7741
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doWorkspace(Z)V

    .line 7742
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v3

    iget v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/htc/launcher/Workspace;->updateBubbleText(IIZ)V

    goto :goto_3

    .line 7745
    :pswitch_8
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->populateOtherScreens()V

    .line 7746
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doWorkspace(Z)V

    .line 7747
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doWidgetOrientationChangeComplete()V

    .line 7748
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mCurrentOrientation:I
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$8700(Lcom/htc/launcher/Launcher;)I

    move-result v4

    iget v5, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/htc/launcher/Workspace;->updateBubbleText(IIZ)V

    .line 7749
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->getDropTargetsOfDropBar()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9600(Lcom/htc/launcher/Launcher;)V

    .line 7751
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->onOrientationChangeEnd()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$8800(Lcom/htc/launcher/Launcher;)V

    .line 7752
    sget-object v1, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v1}, Lcom/htc/launcher/OrientationMonitor;->end()V

    .line 7753
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mFreezeable:Z
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher;->access$8902(Lcom/htc/launcher/Launcher;Z)Z

    .line 7754
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->unlock()V

    goto/16 :goto_3

    .line 7758
    :pswitch_9
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->checkUnlockFrameSet()Z

    move-result v1

    if-nez v1, :cond_10

    .line 7760
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->pulseFreezeAllScreens()V

    .line 7762
    :cond_10
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9000(Lcom/htc/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7763
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->showTutorialNotice()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9100(Lcom/htc/launcher/Launcher;)V

    goto/16 :goto_3

    .line 7767
    :pswitch_a
    sget-boolean v3, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    if-eqz v3, :cond_f

    .line 7768
    iget-object v3, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    sget v4, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    sget v5, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    sget-object v6, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    .line 7769
    sput v1, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    .line 7770
    sput v1, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    .line 7771
    sput-object v7, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    .line 7772
    sput-boolean v1, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    goto/16 :goto_3

    .line 7776
    :pswitch_b
    iget-object v1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->handleOrientationChangedPendingTask()V
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9200(Lcom/htc/launcher/Launcher;)V

    goto/16 :goto_3

    .line 7655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 7722
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public reset(II)V
    .locals 1
    .parameter "currentPage"
    .parameter "mode"

    .prologue
    .line 7640
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mStage:I

    .line 7641
    iput p1, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mCurrentScreen:I

    .line 7642
    iput p2, p0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->mMode:I

    .line 7643
    return-void
.end method

.class Lcom/htc/launcher/Launcher$DrawerManager;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;
.implements Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerManager"
.end annotation


# instance fields
.field private mOpen:Z

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 6493
    iput-object p1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6493
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$DrawerManager;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 6588
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6589
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 6593
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher$DrawerManager;->mOpen:Z

    .line 6609
    :cond_0
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.resume"

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 6611
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/htc/launcher/Launcher;->updateWallpaperVisibility(Z)V

    .line 6612
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v7}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    .line 6615
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->removeDragView()V

    .line 6618
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V
    invoke-static {v0, v3, v6}, Lcom/htc/launcher/Launcher;->access$7200(Lcom/htc/launcher/Launcher;ZLjava/lang/String;)V

    .line 6622
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 6623
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->setFocusable(Z)V

    .line 6625
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2500(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6626
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 6641
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Workspace;->setIsRootNamespace(Z)V

    .line 6642
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Workspace;->setDrawingCacheEnabled(Z)V

    .line 6643
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Workspace;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 6644
    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAddHtcWidgetByOtherActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$5100(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsOpenSlideWhenLeaveLaunch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$7300(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6648
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$7000(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$5100(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$7300(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6650
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/WidgetsManager;->onActivityResume(Lcom/htc/launcher/Launcher;I)V

    .line 6654
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/Launcher;->access$7002(Lcom/htc/launcher/Launcher;Z)Z

    .line 6656
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/Launcher;->access$7302(Lcom/htc/launcher/Launcher;Z)Z

    .line 6658
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iput-boolean v3, v0, Lcom/htc/launcher/Launcher;->mIsOpenPersonalizeBySetting:Z

    .line 6660
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-boolean v0, v0, Lcom/htc/launcher/Launcher;->isNeedLaunchAddToHome:Z

    if-eqz v0, :cond_4

    .line 6661
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iput-boolean v3, v0, Lcom/htc/launcher/Launcher;->isNeedLaunchAddToHome:Z

    .line 6662
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v6}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    .line 6697
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->closeOptionsMenu()V

    .line 6699
    invoke-static {}, Lcom/htc/launcher/UpdateShortcutReceiver;->unregisterObserver()V

    .line 6701
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v0

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(I)V

    .line 6704
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v0, v3}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 6707
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    .line 6709
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 6710
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6711
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mControl:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$7400(Lcom/htc/launcher/Launcher;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6712
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->restore_layout()V

    .line 6714
    :cond_5
    return-void
.end method

.method public onDrawerOpened()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 6500
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-boolean v0, v0, Lcom/htc/launcher/Launcher;->mIsAllProgramSliding:Z

    if-eqz v0, :cond_0

    .line 6507
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iput-boolean v3, v0, Lcom/htc/launcher/Launcher;->mIsAllProgramSliding:Z

    .line 6509
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/Launcher;->access$7002(Lcom/htc/launcher/Launcher;Z)Z

    .line 6510
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->mOpen:Z

    if-nez v0, :cond_1

    .line 6517
    iput-boolean v10, p0, Lcom/htc/launcher/Launcher$DrawerManager;->mOpen:Z

    .line 6520
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->postInvalidate()V

    .line 6524
    :cond_1
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.pause"

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 6526
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    .line 6527
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    .line 6539
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->destroyDrawingCache()V

    .line 6540
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v10}, Lcom/htc/launcher/Workspace;->setIsRootNamespace(Z)V

    .line 6542
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->getAllContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 6543
    .local v7, c:Landroid/view/ViewGroup;
    instance-of v0, v7, Lcom/htc/launcher/AllAppsGridView;

    if-eqz v0, :cond_2

    .line 6544
    check-cast v7, Lcom/htc/launcher/AllAppsGridView;

    .end local v7           #c:Landroid/view/ViewGroup;
    invoke-virtual {v7, v10}, Lcom/htc/launcher/AllAppsGridView;->setFocusable(Z)V

    goto :goto_0

    .line 6548
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v10, :cond_4

    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6552
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 6554
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-static {v0}, Lcom/htc/launcher/UpdateShortcutReceiver;->registerObserver(Landroid/widget/BaseAdapter;)V

    .line 6555
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->ask2NotifyHint:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$7100(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6556
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->ask2NotifyHint:Z
    invoke-static {v0, v10}, Lcom/htc/launcher/Launcher;->access$7102(Lcom/htc/launcher/Launcher;Z)Z

    .line 6557
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6558
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "favorite_item_id"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6559
    const-string v0, "favorite_intent"

    const-string v1, "component=com.htc.android.mail/.MailListTab"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6560
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, v9}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 6563
    .end local v9           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/android/rosie/home/HostWidgetManager;->pauseAllWidgets(Z)V

    .line 6566
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v0, v10}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 6569
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6570
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 6573
    :cond_6
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    iget-object v1, v1, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 6574
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    iget-object v1, v1, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/launcher/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6575
    return-void
.end method

.method public onScrollEnded()V
    .locals 0

    .prologue
    .line 6734
    return-void
.end method

.method public onScrollStarted()V
    .locals 2

    .prologue
    .line 6721
    iget-object v0, p0, Lcom/htc/launcher/Launcher$DrawerManager;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 6727
    return-void
.end method

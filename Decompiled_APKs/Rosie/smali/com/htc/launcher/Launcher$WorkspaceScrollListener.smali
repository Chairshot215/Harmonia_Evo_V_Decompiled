.class Lcom/htc/launcher/Launcher$WorkspaceScrollListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceScrollListener"
.end annotation


# instance fields
.field mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 2678
    iput-object p1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2679
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    .line 2680
    return-void
.end method


# virtual methods
.method public onBeginFling()V
    .locals 0

    .prologue
    .line 2684
    return-void
.end method

.method public onBeginScroll(ZII)V
    .locals 5
    .parameter "isSnap"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2688
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v1

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/HostWidgetManager;->pauseWidgets(IZ)V

    .line 2689
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v1, v4}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 2690
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 2693
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2694
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    invoke-virtual {v1}, Lcom/htc/launcher/WallpaperManager;->isCircularWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2701
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2702
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2703
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 2704
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2706
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void

    .line 2697
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method public onEndScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2710
    iget-object v0, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v0

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(I)V

    .line 2711
    iget-object v0, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->freezeTilt(Z)V
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$2100(Lcom/htc/launcher/Launcher;Z)V

    .line 2712
    iget-object v0, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 2718
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    invoke-virtual {v0}, Lcom/htc/launcher/WallpaperManager;->isCircularWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2722
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method public updateSnapInfo(II)V
    .locals 0
    .parameter "endScreen"
    .parameter "snapOffset"

    .prologue
    .line 2731
    return-void
.end method

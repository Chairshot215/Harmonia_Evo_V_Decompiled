.class Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavbarStickyModeHandler"
.end annotation


# instance fields
.field private m_NavBarButtonItemInfo:Lcom/htc/launcher/FxShortcutInfo;

.field private m_lSelectTime:J

.field private m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

.field private m_nNavbarButtonIndex:I

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 9636
    iput-object p1, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9631
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_nNavbarButtonIndex:I

    .line 9632
    iput-object v1, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_NavBarButtonItemInfo:Lcom/htc/launcher/FxShortcutInfo;

    .line 9633
    iput-object v1, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    .line 9634
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_lSelectTime:J

    .line 9636
    return-void
.end method


# virtual methods
.method public isInStickyMode()Z
    .locals 1

    .prologue
    .line 9640
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mStickyMode:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$10800(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    return v0
.end method

.method public isTabOnEmptyCell()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9661
    iget-object v1, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    if-nez v1, :cond_1

    .line 9664
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelect(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 9645
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->getNavbarButtonIndex(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_nNavbarButtonIndex:I

    .line 9647
    iget v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_nNavbarButtonIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9648
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_nNavbarButtonIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    .line 9649
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9650
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FxShortcutInfo;

    iput-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_NavBarButtonItemInfo:Lcom/htc/launcher/FxShortcutInfo;

    .line 9652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_lSelectTime:J

    .line 9654
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setMotionEvent(Landroid/view/MotionEvent;)V

    .line 9657
    :cond_0
    return-void
.end method

.method public onTapEmptyCell()V
    .locals 2

    .prologue
    .line 9669
    iget-object v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 9670
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_lSelectTime:J

    .line 9671
    return-void
.end method

.method public onTouchMove(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "motionEvent"

    .prologue
    .line 9675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_lSelectTime:J

    sub-long v0, v2, v4

    .line 9677
    .local v0, elapseTime:J
    iget v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_nNavbarButtonIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 9696
    :cond_0
    :goto_0
    return-void

    .line 9680
    :cond_1
    iget-wide v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_lSelectTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_launcherBar:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->getItem()Lcom/htc/launcher/FxItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9681
    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isStartDrag()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9682
    const-string v2, "Rosie"

    const-string v3, "[LauncherBar] There is already something that be drag "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9684
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->isSlideFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9687
    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->isNeedDropBack()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9691
    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_NavBarButtonItemInfo:Lcom/htc/launcher/FxShortcutInfo;

    const-wide/16 v3, -0x3e5

    iput-wide v3, v2, Lcom/htc/launcher/FxShortcutInfo;->container:J

    .line 9693
    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v2}, Lcom/htc/launcher/DesktopItemController;->pauseRenderring()V

    .line 9694
    iget-object v2, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v3, p0, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;->m_nNavbarButtonIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->startDragFromNavBar(I)V

    goto :goto_0
.end method

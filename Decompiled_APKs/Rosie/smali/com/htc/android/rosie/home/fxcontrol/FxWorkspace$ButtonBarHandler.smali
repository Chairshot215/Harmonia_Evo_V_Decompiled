.class public final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;
.super Ljava/lang/Object;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ButtonBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2605
    return-void
.end method

.method static synthetic access$2400(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2602
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V

    return-void
.end method

.method private buttonBarImageTextVisibility(IZ)V
    .locals 2
    .parameter "index"
    .parameter "show"

    .prologue
    .line 2655
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showCustomizeShortcut(IZ)V

    .line 2656
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showCustomizeShortcut(IZ)V

    .line 2659
    if-eqz p2, :cond_0

    .line 2660
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeFull:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$2000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, scope:[Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 2665
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mButtonBarDropControl:[Lcom/htc/fusion/fx/controls/FxDropControl;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 2666
    return-void

    .line 2662
    .end local v0           #scope:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->m_strScopeEmpty:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$2100(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #scope:[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addAndBindButtonBarItem(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 5
    .parameter "app"

    .prologue
    .line 2610
    :try_start_0
    new-instance v1, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v1, p1}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .line 2612
    .local v1, newApplicationInfo:Lcom/htc/launcher/ApplicationInfo;
    iget v2, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->setDynamicImageAndText(Lcom/htc/launcher/ApplicationInfo;I)V

    .line 2614
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v2

    iget v3, v1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 2616
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2618
    iget v2, v1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    .end local v1           #newApplicationInfo:Lcom/htc/launcher/ApplicationInfo;
    :goto_0
    return-void

    .line 2619
    :catch_0
    move-exception v0

    .line 2620
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addButtonBarAppOrShortcut(Lcom/htc/launcher/ApplicationInfo;I)V
    .locals 9
    .parameter "info"
    .parameter "indexOfButtonBar"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2626
    if-nez p1, :cond_1

    .line 2627
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addButtonBarAppOrShortcut: info is null"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    const-wide/16 v2, -0x64

    const/16 v6, 0xa

    move-object v1, p1

    move v5, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 2635
    iput p2, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    .line 2637
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2638
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v0

    aput-boolean v8, v0, p2

    .line 2640
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->setDynamicImageAndText(Lcom/htc/launcher/ApplicationInfo;I)V

    .line 2642
    invoke-direct {p0, p2, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V

    .line 2645
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->resetMiddleButton()V

    .line 2647
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 2648
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->update2DButtonBarViews()V

    .line 2649
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/LauncherModel;->getButtonBarOccupied()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showMiddleBackgroundImageControls([Z)V

    goto :goto_0
.end method

.method public dropBackToButtonBar(Lcom/htc/launcher/ApplicationInfo;I)V
    .locals 2
    .parameter "appInfo"
    .parameter "index"

    .prologue
    .line 2711
    if-nez p1, :cond_0

    .line 2712
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dropBackToButtonBar when appInfo is null"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    :goto_0
    return-void

    .line 2716
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->addButtonBarAppOrShortcut(Lcom/htc/launcher/ApplicationInfo;I)V

    .line 2717
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 2720
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->setTargetCantDrop()V

    goto :goto_0
.end method

.method public getButtonBarItemNum()I
    .locals 1

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getButtonBarLongClickX(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getButtonBarLongClickX(FF)I

    move-result v0

    return v0
.end method

.method public getButtonInfo(I)Lcom/htc/launcher/ApplicationInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    return-object v0
.end method

.method public getIsButtonBarNull(I)Z
    .locals 2
    .parameter "x"

    .prologue
    const/4 v0, 0x0

    .line 2698
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 2705
    :cond_0
    :goto_0
    return v0

    .line 2702
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2703
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMiddleButtonBarPosition([II)V
    .locals 8
    .parameter "pos"
    .parameter "clickPosition"

    .prologue
    const v7, 0x7f0a0043

    const v6, 0x7f0a0041

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2777
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2778
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    const v2, 0x7f0a0040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, p1, v1

    .line 2779
    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v5

    .line 2780
    if-ne p2, v5, :cond_1

    .line 2782
    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v3

    .line 2783
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v4

    .line 2795
    :cond_0
    :goto_0
    return-void

    .line 2785
    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 2787
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v3

    .line 2788
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v4

    goto :goto_0

    .line 2790
    :cond_2
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 2792
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v3

    .line 2793
    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, p1, v4

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2685
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2687
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2689
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v1

    aput-boolean v3, v1, v0

    .line 2690
    invoke-direct {p0, v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V

    .line 2691
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2694
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public removeOriButtonInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2751
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mEvStartX:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mEvStartY:I
    invoke-static {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$2300(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->getButtonBarLongClickX(FF)I

    move-result v0

    .line 2752
    .local v0, indexX:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2753
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2754
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 2756
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-direct {v1, v0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V

    .line 2758
    :cond_0
    return-void
.end method

.method public removeOriButtonInfo(I)V
    .locals 3
    .parameter "indexX"

    .prologue
    const/4 v2, 0x0

    .line 2762
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2764
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v0

    aput-boolean v2, v0, p1

    .line 2766
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-direct {v0, p1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V

    .line 2768
    :cond_0
    return-void
.end method

.method public setDynamicImageAndText(Lcom/htc/launcher/ApplicationInfo;I)V
    .locals 1
    .parameter "info"
    .parameter "index"

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->updateCustomizeShortut(ILcom/htc/launcher/ApplicationInfo;)V

    .line 2740
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->updateCustomizeShortut(ILcom/htc/launcher/ApplicationInfo;)V

    .line 2741
    return-void
.end method

.method public setNullDataForButtonBar()V
    .locals 3

    .prologue
    .line 2670
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2672
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2674
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonbarCount:[Z
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 2676
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->buttonBarImageTextVisibility(IZ)V

    .line 2677
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mApplicationInfoSaved:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2672
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2681
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public setTargetCantDrop()V
    .locals 4

    .prologue
    .line 2725
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mWorkspaces:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getDropBar()Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->getDropZones()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 2726
    .local v1, z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2727
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getTarget()Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;->acceptDrop:Z

    goto :goto_0

    .line 2730
    .end local v1           #z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    :cond_1
    return-void
.end method

.class public Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;
.super Ljava/lang/Object;
.source "LeapRearrangeController.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;


# static fields
.field private static final DRAG:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "LeapRearrangeController"

.field private static final MARKER_DISABLE:Ljava/lang/String; = "disable"

.field private static final NONDRAG:I


# instance fields
.field private mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mHasDropJobNotDone:Z

.field private mHasLeapChanged:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field pm:Lcom/htc/launcher/PagesManager;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxScene;I)V
    .locals 2
    .parameter "fxWorkspace"
    .parameter "scene"
    .parameter "overlayColor"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 23
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    .line 24
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mVibrator:Landroid/os/Vibrator;

    .line 78
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasDropJobNotDone:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    .line 80
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->pm:Lcom/htc/launcher/PagesManager;

    .line 30
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 32
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1, p3, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;-><init>(Lcom/htc/fusion/fx/FxScene;IILcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    .line 33
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->setFxLeapRearrangeListener(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;)V

    .line 34
    return-void
.end method

.method private onDrop()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 82
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-nez v4, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    if-eqz v4, :cond_0

    .line 87
    const-string v4, "LeapRearrangeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v4

    if-nez v4, :cond_2

    .line 94
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "LeapRearrangeController"

    const-string v5, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapRearrangeController.onLeapRearrangeDragDrop() is moving, return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    iget-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v4

    if-nez v4, :cond_4

    .line 99
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "LeapRearrangeController"

    const-string v5, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapRearrangeController.onLeapRearrangeDragDrop() no Leap changed, return!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->reset()V

    .line 101
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 102
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideRemoveHeaderBar()V

    goto :goto_0

    .line 106
    :cond_4
    iput-boolean v7, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasDropJobNotDone:Z

    .line 107
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasDropJobNotDone:Z

    .line 109
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "LeapRearrangeController"

    const-string v5, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapRearrangeController.onLeapRearrangeDragDrop() is moving, return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_5
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreens()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 114
    .local v1, numOfScreen:I
    new-array v2, v1, [I

    .line 116
    .local v2, orginalScreenIndices:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 117
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapDragOriginalScreen(I)I

    move-result v3

    .line 119
    .local v3, originalScreen:I
    aput v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v3           #originalScreen:I
    :cond_6
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->isRemoveType()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 125
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getOriginalScreen()I

    move-result v3

    .line 127
    .restart local v3       #originalScreen:I
    iget-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->pm:Lcom/htc/launcher/PagesManager;

    invoke-virtual {v4}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_7

    .line 128
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->reset()V

    .line 130
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 131
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideRemoveHeaderBar()V

    .line 132
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showEditHeaderBar()V

    goto/16 :goto_0

    .line 135
    :cond_7
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateScreenIndices([I)V

    .line 136
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->resetAllDrags()V

    .line 137
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4, v8, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    .line 139
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/PagesManager;->removePage()V

    .line 140
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_8

    const-string v4, "LeapRearrangeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LEAP_REMOVE] CurrentPageCount ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_8
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 143
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideRemoveHeaderBar()V

    goto/16 :goto_0

    .line 148
    .end local v3           #originalScreen:I
    :cond_9
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateScreenIndices([I)V

    .line 149
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 150
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideRemoveHeaderBar()V

    .line 154
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->resetAllDrags()V

    .line 156
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4, v8, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->switchMode(II)V

    .line 160
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showAllScreens()V

    .line 162
    iput-boolean v7, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->clean()V

    goto :goto_0
.end method

.method public getFxLeapRearrangeController()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    return-object v0
.end method

.method getLeapRearrangeContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1
    .parameter "screen"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getLeapRearrangeContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    return-object v0
.end method

.method public onLeapRearrangeDrag(I)V
    .locals 5
    .parameter "from"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "LeapRearrangeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapRearrangeController.onLeapRearrangeDrag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    .line 43
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 45
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxRemoveContentDrop()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxDropControl;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxRemoveContentDrop()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDropControl;->playMarker(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 49
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showRemoveHeaderBar()V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxRemoveContentDrop()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDropControl;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 53
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->showRemoveHeaderBar()V

    goto :goto_0
.end method

.method public onLeapRearrangeDragDrop()V
    .locals 3

    .prologue
    .line 58
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "LeapRearrangeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapRearrangeController.onLeapRearrangeDragDrop() HasLeapChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->onDrop()V

    .line 60
    return-void
.end method

.method public onLeapRearrangeDragDropCancel()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "LeapRearrangeController"

    const-string v1, "[LEAP_REARRANGE_DEBUG] onLeapRearrangeDragCancel()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->setEditHeaderText(I)V

    .line 73
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavigationBar()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavigationBar;->hideRemoveHeaderBar()V

    .line 74
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->reset()V

    .line 75
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->resetAllDrags()V

    goto :goto_0
.end method

.method public onLeapRearrangeDragEnd()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onLeapRearrangeDrop(I)V
    .locals 0
    .parameter "to"

    .prologue
    .line 176
    return-void
.end method

.method public onMoveAnimationEnd()V
    .locals 3

    .prologue
    .line 200
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "LeapRearrangeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] LeapRearrangeController.onLeapRearrangeDragDrop() mHasDropJobNotDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasDropJobNotDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasLeapChanged:Z

    .line 203
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mHasDropJobNotDone:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->onDrop()V

    .line 206
    :cond_1
    return-void
.end method

.method public setDragEenable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->setDragEnable(Z)V

    goto :goto_0
.end method

.method public setDragEnable(ZI)V
    .locals 1
    .parameter "enable"
    .parameter "page"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->setDragEnable(ZI)V

    goto :goto_0
.end method

.method public showPosition()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/LeapRearrangeController;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->showPosition()V

    goto :goto_0
.end method

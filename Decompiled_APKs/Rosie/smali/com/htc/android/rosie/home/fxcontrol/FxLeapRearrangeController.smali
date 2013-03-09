.class public Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;
.super Ljava/lang/Object;
.source "FxLeapRearrangeController.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;


# static fields
.field private static final ADD_CONTETN_TIMELINE_FX_BG:Ljava/lang/String; = "timeline.NavBar_add_bg"

.field private static final ADD_CONTETN_TIMELINE_FX_NAME:Ljava/lang/String; = "timeline.NavBar_add_content"

.field private static final ADD_MIDDLE_PRESS_BUTTON_FX_NAME:Ljava/lang/String; = "btn.add_middle_press"

.field private static final DRAGDROP_SCOPE:[Ljava/lang/String; = null

.field private static final DROP_REMOVE_CONTENT_FX_BG:Ljava/lang/String; = "drop.NavBar_remove_bg"

.field private static final DROP_REMOVE_CONTENT_FX_NAME:Ljava/lang/String; = "drop.NavBar_remove_content"

.field private static final HOME_PAGE_TIMELINE_FX_NAME:Ljava/lang/String; = "timeline.homepage"

.field private static final ID_DRAG_PREFIX:Ljava/lang/String; = "drag.leap_view_panel_"

.field private static final ID_DRAG_SCENE_CONTAINER_PREFIX:Ljava/lang/String; = "scenecontainer.container_main_"

.field private static final ID_DRAG_TIMELINE_PREFIX:Ljava/lang/String; = "timeline.leap_view_rearrange"

.field private static final ID_DROP_PREFIX:Ljava/lang/String; = "drop.Leap_Main_"

.field private static final ID_DROP_TIMELINE_PREFIX:Ljava/lang/String; = "timeline.Leap_Main_"

.field private static final ID_INDICATOR:Ljava/lang/String; = "timeline.Insert_Indicator_Main"

.field private static final ID_INDICATOR_MARKER_PREFIX:Ljava/lang/String; = "rearrange_P"

.field private static final MARKER_DISABLE:Ljava/lang/String; = "disable"

.field private static final NAVBAR_M10:Ljava/lang/String; = "Rosie_navbar.m10"

.field private static final TAG:Ljava/lang/String; = "FxLeapRearrangeController"

.field public static final TIME_DELAY_TO_MOVE:I = 0x15e

.field public static final TIME_MOVE_DURATION:I = 0x0

.field public static final WHAT_MOVE_BACKWARD:I = 0x1

.field public static final WHAT_MOVE_FORWARD:I = 0x2

.field private static final WHAT_MOVE_LEFT:I = 0x0

.field public static final WHAT_MOVE_RESET:I = 0x0

.field private static final WHAT_MOVE_RIGHT:I = 0x1

.field public static final WHAT_UPDATE_TITLE:I = 0x3

.field public static localLOGD:Z


# instance fields
.field private fxRemoveContentDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private fxRemoveContentDropBg:Lcom/htc/fusion/fx/FxTimelineControl;

.field private leap_remove:I

.field private mCurrentIndex:I

.field private mDragSource:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

.field private mDropTarget:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mIsMoving:Z

.field private mIsPortrait:Z

.field private mLastMoveTime:J

.field public mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

.field public mLeapDragsCache:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

.field public mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

.field private mLeapRearrangeListener:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

.field public mLeapRemoveContentDrops:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

.field mMoveAnimationHandler:Landroid/os/Handler;

.field private mMoveFrom:I

.field private mMoveTo:I

.field private mNavbarScene:Lcom/htc/fusion/fx/FxScene;

.field private mNumOfLeap:I

.field private mTLIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

.field private overlayColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->DRAGDROP_SCOPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;IILcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 8
    .parameter "scene"
    .parameter "numOfLeap"
    .parameter "overlayColor"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v3, 0x8

    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 26
    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapRearrangeListener:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    .line 33
    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mDragSource:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .line 34
    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mDropTarget:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    .line 36
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsPortrait:Z

    .line 37
    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mTLIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 38
    iput v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveFrom:I

    .line 39
    iput v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveTo:I

    .line 44
    iput-boolean v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z

    .line 132
    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->leap_remove:I

    .line 352
    iput v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mCurrentIndex:I

    .line 383
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;

    invoke-direct {v3, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveAnimationHandler:Landroid/os/Handler;

    .line 435
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLastMoveTime:J

    .line 83
    iput p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->overlayColor:I

    .line 84
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    .line 89
    const-string v3, "timeline.Insert_Indicator_Main"

    invoke-virtual {p1, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mTLIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 91
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    new-array v3, v3, [Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    .line 92
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    new-array v3, v3, [Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .line 93
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    new-array v3, v3, [Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDragsCache:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .line 94
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    if-ge v2, v3, :cond_5

    .line 96
    invoke-direct {p0, p1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxDragControl(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v0

    .line 97
    .local v0, fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    if-nez v0, :cond_2

    .line 94
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    new-instance v6, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-direct {v6, v2, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;-><init>(ILcom/htc/fusion/fx/controls/FxDragControl;)V

    aput-object v6, v3, v2

    .line 101
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    invoke-virtual {v3, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setNumOfScreen(I)V

    .line 102
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setFxLeapRearrangeController(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;)V

    .line 103
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-direct {p0, p1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragPositionTimeLine(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setPositionTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 104
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-direct {p0, p1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSceneContainer(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setSceneContainer(Lcom/htc/fusion/fx/controls/FxSceneContainer;)V

    .line 105
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-direct {p0, v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getHomePageTimeLine(Lcom/htc/fusion/fx/controls/FxDragControl;I)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setHomePageTimeLine(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 106
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 107
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v6, "FxLeapRearrangeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Leap["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] has SceneContainer?("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getSceneContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->initMoveToCenter()V

    .line 111
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDragsCache:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v6, v6, v2

    aput-object v6, v3, v2

    .line 113
    invoke-direct {p0, p1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxDropControl(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v1

    .line 114
    .local v1, fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    new-instance v6, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-direct {v6, v2, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;-><init>(ILcom/htc/fusion/fx/controls/FxDropControl;)V

    aput-object v6, v3, v2

    .line 115
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->setFxLeapRearrangeController(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;)V

    goto/16 :goto_2

    .end local v1           #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    :cond_4
    move v3, v5

    .line 107
    goto :goto_3

    .line 119
    .end local v0           #fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    :cond_5
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mleapDrags.length"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",currentPagesCount() ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    array-length v2, v3

    :goto_4
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 121
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 122
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getFxDrag()Lcom/htc/fusion/fx/controls/FxDragControl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxDragControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 123
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->getFxDrop()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxDropControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 120
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 126
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->initFxAddRemovePanelAndHomePage()V

    .line 128
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->hideIndicator()V

    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->moveBackward(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->moveForward(II)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLastMoveTime:J

    return-wide p1
.end method

.method private delay(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 524
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 528
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDragControlId(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 205
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drag.leap_view_panel_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drag.leap_view_panel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDragMoveTimelineId(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 238
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeline.leap_view_rearrange0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeline.leap_view_rearrange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDragPositionTimeLine(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "scene"
    .parameter "index"

    .prologue
    .line 252
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragMoveTimelineId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method private getDragSceneContainer(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1
    .parameter "scene"
    .parameter "index"

    .prologue
    .line 269
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSceneContainerId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method private getDragSceneContainerId(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 262
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scenecontainer.container_main_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scenecontainer.container_main_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDropControlId(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 212
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop.Leap_Main_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop.Leap_Main_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDropMoveTimelineId(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 245
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeline.Leap_Main_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeline.Leap_Main_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDropPositionTimeLine(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "scene"
    .parameter "index"

    .prologue
    .line 257
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropMoveTimelineId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method private getFxDragControl(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/controls/FxDragControl;
    .locals 2
    .parameter "scene"
    .parameter "index"

    .prologue
    .line 219
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragControlId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 221
    .local v0, fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 225
    .end local v0           #fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    :goto_0
    return-object v0

    .line 224
    .restart local v0       #fxDrag:Lcom/htc/fusion/fx/controls/FxDragControl;
    :cond_0
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->DRAGDROP_SCOPE:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setDragScope([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFxDropControl(Lcom/htc/fusion/fx/FxScene;I)Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 2
    .parameter "scene"
    .parameter "index"

    .prologue
    .line 229
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropControlId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 231
    .local v0, fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    .end local v0           #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    :goto_0
    return-object v0

    .line 233
    .restart local v0       #fxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;
    :cond_0
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->DRAGDROP_SCOPE:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHomePageTimeLine(Lcom/htc/fusion/fx/controls/FxDragControl;I)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "dragCotrol"
    .parameter "i"

    .prologue
    .line 172
    const-string v0, "timeline.homepage"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/controls/FxDragControl;->getChild(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method private getLeftIndcatorMarkerId(I)Ljava/lang/String;
    .locals 4
    .parameter "emptyId"

    .prologue
    .line 281
    const/4 v0, -0x1

    .line 283
    .local v0, id:I
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    .line 284
    add-int/lit8 v0, p1, 0x1

    .line 286
    :cond_0
    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_1

    .line 287
    add-int/lit8 v0, p1, 0x2

    .line 289
    :cond_1
    const/4 v2, 0x5

    if-lt p1, v2, :cond_2

    const/4 v2, 0x7

    if-gt p1, v2, :cond_2

    .line 290
    add-int/lit8 v0, p1, 0x3

    .line 292
    :cond_2
    const-string v1, ""

    .line 293
    .local v1, markerId:Ljava/lang/String;
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rearrange_P0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 296
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rearrange_P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getRightIndcatorMarkerId(I)Ljava/lang/String;
    .locals 4
    .parameter "emptyId"

    .prologue
    .line 303
    const/4 v0, -0x1

    .line 305
    .local v0, id:I
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    .line 306
    add-int/lit8 v0, p1, 0x2

    .line 308
    :cond_0
    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_1

    .line 309
    add-int/lit8 v0, p1, 0x3

    .line 311
    :cond_1
    const/4 v2, 0x5

    if-lt p1, v2, :cond_2

    const/4 v2, 0x7

    if-gt p1, v2, :cond_2

    .line 312
    add-int/lit8 v0, p1, 0x4

    .line 314
    :cond_2
    const-string v1, ""

    .line 315
    .local v1, markerId:Ljava/lang/String;
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rearrange_P0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 318
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rearrange_P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initFxAddRemovePanelAndHomePage()V
    .locals 6

    .prologue
    .line 135
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v3, 0x0

    const-string v4, "tweaks_rosie_navbar_mode"

    invoke-static {v5, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v4, "Rosie_navbar.m10"

    const/4 v3, 0x0

    if-eq v5, v3, :cond_0

    const-string v4, "Rosie_navbar_notext.m10"

    const/4 v3, 0x1

    if-eq v5, v3, :cond_0

    const-string v4, "Rosie_navbar_transp.m10"

    const/16 v3, 0x2

    if-eq v5, v3, :cond_0

    const-string v4, "Rosie_navbar_transp_notext.m10"

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v3

    iget-boolean v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsPortrait:Z

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    .line 136
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "drop.NavBar_remove_content"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDropControl;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->fxRemoveContentDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 137
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "drop.NavBar_remove_bg"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->fxRemoveContentDropBg:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 138
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->fxRemoveContentDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->DRAGDROP_SCOPE:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 140
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->fxRemoveContentDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->leap_remove:I

    invoke-direct {v3, v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;-><init>(Lcom/htc/fusion/fx/controls/FxDropControl;I)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapRemoveContentDrops:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    .line 141
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapRemoveContentDrops:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    invoke-virtual {v3, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->setFxLeapRearrangeController(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;)V

    .line 144
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->isPageFull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "timeline.NavBar_add_content"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 146
    .local v1, fxAddContentTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    const-string v3, "disable"

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "timeline.NavBar_add_bg"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 149
    .local v2, fxAddContentTimelineBg:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v2, :cond_1

    const-string v3, "disable"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 150
    const-string v3, "disable"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNavbarScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "btn.add_middle_press"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    .line 153
    .local v0, fxAddBtn:Lcom/htc/fusion/fx/controls/FxButton;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 157
    .end local v0           #fxAddBtn:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v1           #fxAddContentTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v2           #fxAddContentTimelineBg:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_2
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 158
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "home index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method private move(IIJ)V
    .locals 5
    .parameter "from"
    .parameter "to"
    .parameter "ms"

    .prologue
    .line 488
    if-ne p1, p2, :cond_1

    .line 489
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "FxLeapRearrangeController"

    const-string v3, "[ROSIE_DEBUG][LEAP_REARRANGE] moveLeap() from=to, return!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z

    if-eqz v2, :cond_2

    .line 494
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "FxLeapRearrangeController"

    const-string v3, "[ROSIE_DEBUG][LEAP_REARRANGE] moveLeap() is moving, return!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_2
    const/4 v1, 0x0

    .line 506
    .local v1, type:I
    if-ge p1, p2, :cond_3

    .line 507
    const/4 v1, 0x0

    .line 510
    :cond_3
    if-le p1, p2, :cond_4

    .line 511
    const/4 v1, 0x1

    .line 513
    :cond_4
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "FxLeapRearrangeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ROSIE_DEBUG][LEAP_REARRANGE] Move Leap From "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " To "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_5
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 517
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 518
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 519
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 520
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private moveBackward(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 325
    if-lt p1, p2, :cond_1

    .line 335
    :cond_0
    return-void

    .line 328
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 329
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->moveLeft()V

    .line 330
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 331
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "FxLeapRearrangeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[leap] [move]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Drag["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] WHAT_MOVE_BACKWARD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->delay(J)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private moveForward(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 339
    if-gt p1, p2, :cond_1

    .line 350
    :cond_0
    return-void

    .line 342
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 343
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->moveRight()V

    .line 344
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 345
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "FxLeapRearrangeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[leap] [move]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Drag["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] WHAT_MOVE_FORWARD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_2
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->delay(J)V

    .line 342
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 568
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .local v0, arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_0
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-eqz v4, :cond_2

    .line 572
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 573
    .local v1, drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    if-nez v1, :cond_1

    .line 572
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :cond_1
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->clean()V

    goto :goto_2

    .line 579
    .end local v1           #drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    :cond_2
    iput-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    .line 580
    iput-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .line 581
    iput-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDragsCache:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .line 582
    return-void
.end method

.method public getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mDragSource:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    return-object v0
.end method

.method public getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mDropTarget:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    return-object v0
.end method

.method public getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapRearrangeListener:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    return-object v0
.end method

.method public getFxRemoveContentDrop()Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->fxRemoveContentDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    return-object v0
.end method

.method public getFxRemoveContentDropBg()Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->fxRemoveContentDropBg:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method public getLeapDragInfo(I)Ljava/lang/String;
    .locals 1
    .parameter "screen"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeapDragOriginalScreen(I)I
    .locals 1
    .parameter "screen"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getOriginalScreen()I

    move-result v0

    return v0
.end method

.method public getLeapDrags()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    return-object v0
.end method

.method public getLeapDrops()[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrops:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    return-object v0
.end method

.method public getLeapRearrangeContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1
    .parameter "screen"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getSceneContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    return-object v0
.end method

.method public getMoveFrom()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveFrom:I

    return v0
.end method

.method public getMoveTo()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveTo:I

    return v0
.end method

.method public getOverlayColor()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->overlayColor:I

    return v0
.end method

.method public hideIndicator()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mTLIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mTLIndicator:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z

    return v0
.end method

.method public moveOthersDown(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
    .locals 5
    .parameter "fixDrag"

    .prologue
    .line 610
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-eqz v4, :cond_2

    .line 611
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .local v0, arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 612
    .local v1, drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_1

    .line 611
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->zOrderDown()V

    goto :goto_1

    .line 617
    .end local v0           #arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .end local v1           #drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method

.method public moveOthersUp(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
    .locals 5
    .parameter "fixDrag"

    .prologue
    .line 620
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-eqz v4, :cond_2

    .line 621
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .local v0, arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 622
    .local v1, drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_1

    .line 621
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->zOrderUp()V

    goto :goto_1

    .line 627
    .end local v0           #arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .end local v1           #drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method

.method public resetAllDrags()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->hideIndicator()V

    .line 178
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v0

    .line 179
    .local v0, homeIndex:I
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HOMEIndex now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mNumOfLeap:I

    if-ge v1, v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDragsCache:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getOriginalScreen()I

    move-result v2

    .line 183
    .local v2, originalScreen:I
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDragsCache:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 186
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->moveToCenter(Z)V

    .line 189
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setScreen(I)V

    .line 192
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2           #originalScreen:I
    :cond_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->getHomePageTimeLine()Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 200
    invoke-virtual {p0, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->setDragSource(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V

    .line 201
    invoke-virtual {p0, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->setDropTarget(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    .line 202
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 589
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-nez v2, :cond_1

    .line 597
    :cond_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v1

    .line 592
    .local v1, pagesCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 593
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 592
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_2
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setEnable(Z)V

    goto :goto_1
.end method

.method public setDragEnable(ZI)V
    .locals 1
    .parameter "enable"
    .parameter "page"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-nez v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setEnable(Z)V

    goto :goto_0
.end method

.method public setDragSource(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;)V
    .locals 0
    .parameter "dragSource"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mDragSource:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .line 549
    return-void
.end method

.method public setDropTarget(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V
    .locals 0
    .parameter "dropTarget"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mDropTarget:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    .line 557
    return-void
.end method

.method public setFxLeapRearrangeListener(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;)V
    .locals 0
    .parameter "leapRearrangeListener"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapRearrangeListener:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    .line 537
    return-void
.end method

.method public setMoveFrom(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveFrom:I

    .line 48
    return-void
.end method

.method public setMoveTo(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveTo:I

    .line 52
    return-void
.end method

.method public showIndicator(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 356
    return-void
.end method

.method public showPosition()V
    .locals 5

    .prologue
    .line 630
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-eqz v4, :cond_1

    .line 631
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    .local v0, arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 632
    .local v1, drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    if-nez v1, :cond_0

    .line 631
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->showPosition()V

    goto :goto_1

    .line 637
    .end local v0           #arr$:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .end local v1           #drag:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method

.method public startMoveAnimation(J)V
    .locals 3
    .parameter "ms"

    .prologue
    const/4 v1, -0x1

    .line 446
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "FxLeapRearrangeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ROSIE_DEBUG][LEAP_REARRANGE] startMoveAnimation() IsMoving("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getMoveFrom()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 454
    const-string v0, "FxLeapRearrangeController"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] startMoveAnimation() MoveFrom = -1 return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getMoveTo()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 461
    const-string v0, "FxLeapRearrangeController"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] startMoveAnimation() MoveTo = -1 return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDragSource()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    move-result-object v0

    if-nez v0, :cond_3

    .line 468
    const-string v0, "FxLeapRearrangeController"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] startMoveAnimation() DragSource = null return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getDropTarget()Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;

    move-result-object v0

    if-nez v0, :cond_4

    .line 476
    const-string v0, "FxLeapRearrangeController"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] startMoveAnimation() DropTarget = null return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->stopMoveAnimation()V

    .line 484
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getMoveFrom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getMoveTo()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->move(IIJ)V

    goto :goto_0
.end method

.method public stopMoveAnimation()V
    .locals 2

    .prologue
    .line 438
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "FxLeapRearrangeController"

    const-string v1, "[ROSIE_DEBUG][LEAP_REARRANGE] stopMoveAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mMoveAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    return-void
.end method

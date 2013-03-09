.class public Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.super Ljava/lang/Object;
.source "FxScreen.java"

# interfaces
.implements Lcom/htc/launcher/CellLayout$OccupiedDelegation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;,
        Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;,
        Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FusionException;,
        Lcom/htc/android/rosie/home/fxcontrol/FxScreen$ItemNotFoundException;,
        Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;,
        Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BACK_PANEL_AUTO:I = 0x0

.field public static final BACK_PANEL_FORCE_HIDE:I = 0x2

.field public static final BACK_PANEL_FORCE_SHOW:I = 0x1

.field private static final CONTAINER_FOLDER_FX_NAME:Ljava/lang/String; = "scenecontainer.Folder"

.field private static final DROP_CONTAINER_FX_NAME:Ljava/lang/String; = "scenecontainer.DropArea"

.field static final FREEZE_TIMEOUT:J = 0x1f4L

.field public static final INVALID_CELL:I = -0x1

.field public static final INVALID_ID:I = -0x1

.field private static final ITEM_CONTAINER_FX_NAME:Ljava/lang/String; = "cellcontainer.Page"

.field public static IsOnFloating:Z = false

.field static final LOG_TAG:Ljava/lang/String; = null

.field private static final MARKER_NAME_PANEL_OFF:Ljava/lang/String; = "off"

.field private static final MARKER_NAME_PANEL_ON:Ljava/lang/String; = "on"

.field private static final SCREEN_M10:Ljava/lang/String; = "Rosie_screen.m10"

.field private static final TIPS_HITBOX_1ST:Ljava/lang/String; = "hitbox.Tip_bubbles_01"

.field private static final TIPS_HITBOX_2ND:Ljava/lang/String; = "hitbox.Tip_bubbles_02"

.field private static final TIPS_TEXT_1ST:Ljava/lang/String; = "text.label_01"

.field private static final TIPS_TEXT_2ND:Ljava/lang/String; = "text.label_02"

.field private static final TIP_BUBBLE_FX_NAME:Ljava/lang/String; = "timeline.Tip_Bubbles_Main"

.field private static final localLOGD:Z


# instance fields
.field private final columns:I

.field private downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mActivity:Landroid/app/Activity;

.field private mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBackPanelMode:I

.field mDraggeeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Draggee;",
            ">;"
        }
    .end annotation
.end field

.field private mDropAreaIndicator:Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;

.field private mFrozen:Z

.field private mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

.field private mFxDropContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIsPortrait:Z

.field private mIsShowDropArea:Z

.field private mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

.field private mMoveSceneInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMovedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;",
            "Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mOccupiedBitmap:[[Z

.field private mShowBackPanel:Z

.field private mTimerRunnable:Ljava/lang/Runnable;

.field private mVisible:Z

.field private final rows:I

.field private final tipDownClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final tipUpClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->$assertionsDisabled:Z

    .line 87
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    .line 88
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    .line 277
    sput-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->IsOnFloating:Z

    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;IZ)V
    .locals 7
    .parameter "activity"
    .parameter "id"
    .parameter "isPortrait"

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$1;

    invoke-direct {v3, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipUpClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 80
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$2;

    invoke-direct {v3, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipDownClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 113
    iput v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I

    .line 125
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMovedItems:Ljava/util/Map;

    .line 132
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsPortrait:Z

    .line 739
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMoveSceneInfo:Ljava/util/ArrayList;

    .line 827
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDraggeeList:Ljava/util/ArrayList;

    .line 1571
    iput-boolean v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsShowDropArea:Z

    .line 135
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    .line 136
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;

    .line 137
    iput-boolean p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsPortrait:Z

    .line 139
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-direct {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    .line 141
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->loadFxScene()V

    .line 143
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->GetCellProperties()Landroid/graphics/RectF;

    move-result-object v0

    .line 144
    .local v0, r:Landroid/graphics/RectF;
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->rows:I

    .line 145
    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->columns:I

    .line 146
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell container layout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->rows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->columns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->columns:I

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->rows:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    .line 148
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->rows:I

    if-ge v2, v3, :cond_2

    .line 149
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->columns:I

    if-ge v1, v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v3, v3, v1

    aput-boolean v6, v3, v2

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v1           #x:I
    :cond_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private applyMoveScenes(Z)V
    .locals 7
    .parameter "bAnimation"

    .prologue
    .line 742
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMoveSceneInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 743
    .local v5, size:I
    if-nez v5, :cond_0

    .line 764
    :goto_0
    return-void

    .line 747
    :cond_0
    new-array v4, v5, [Lcom/htc/fusion/fx/FxScene;

    .line 748
    .local v4, scenes:[Lcom/htc/fusion/fx/FxScene;
    new-array v3, v5, [Landroid/graphics/Rect;

    .line 749
    .local v3, rects:[Landroid/graphics/Rect;
    new-array v0, v5, [F

    .line 750
    .local v0, durations:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 751
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMoveSceneInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;

    .line 752
    .local v2, info:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;
    iget-object v6, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->scene:Lcom/htc/fusion/fx/FxScene;

    aput-object v6, v4, v1

    .line 753
    iget-object v6, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->rect:Landroid/graphics/Rect;

    aput-object v6, v3, v1

    .line 754
    iget v6, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->duration:F

    aput v6, v0, v1

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 757
    .end local v2           #info:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;
    :cond_1
    if-eqz p1, :cond_2

    .line 758
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v6, v4, v3, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->moveScenes([Lcom/htc/fusion/fx/FxScene;[Landroid/graphics/Rect;[F)V

    .line 763
    :goto_2
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMoveSceneInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 760
    :cond_2
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v6, v4}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->removeScenes([Lcom/htc/fusion/fx/FxScene;)Z

    .line 761
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v6, v4, v3}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->addScenes([Lcom/htc/fusion/fx/FxScene;[Landroid/graphics/Rect;)Z

    goto :goto_2
.end method

.method private columnString([Z)Ljava/lang/String;
    .locals 4
    .parameter "column"

    .prologue
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v0, p1

    .line 538
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 539
    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    const-string v3, " "

    goto :goto_1

    .line 540
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDesktopItem(J)Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
    .locals 1
    .parameter "id"

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    if-nez v0, :cond_0

    .line 1638
    const/4 v0, 0x0

    .line 1639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v0

    goto :goto_0
.end method

.method private hasRoom(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 7
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    .line 852
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 853
    .local v0, r:Landroid/graphics/Rect;
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "space check for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->isValidLayout(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 855
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout out of bound:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    return v3

    .line 858
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .local v2, y:I
    :goto_1
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v4, :cond_4

    .line 859
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .local v1, x:I
    :goto_2
    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v4, :cond_3

    .line 860
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_2

    .line 861
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") should be empty but is not!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 859
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 858
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 866
    .end local v1           #x:I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private declared-synchronized hideBackPanel(Z)V
    .locals 7
    .parameter "animated"

    .prologue
    .line 1478
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mShowBackPanel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1515
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1481
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hideBackPanel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1484
    const/4 p1, 0x0

    .line 1486
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 1487
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 1488
    .local v6, m:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_4

    .line 1489
    if-eqz p1, :cond_7

    .line 1490
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget v2, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    const/4 v3, 0x0

    const/high16 v4, 0x40a0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 1500
    .end local v6           #m:Lcom/htc/fusion/fx/Marker;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_5

    .line 1502
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipUpClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1503
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 1504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1507
    :cond_5
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_6

    .line 1509
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipDownClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1510
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 1511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1514
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mShowBackPanel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1494
    .restart local v6       #m:Lcom/htc/fusion/fx/Marker;
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1495
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isValidLayout(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "rect"

    .prologue
    .line 847
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->columns:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->rows:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 10
    .parameter "id"
    .parameter "screen"
    .parameter "layout"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 544
    sget-object v8, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[EDIT_DEBUG] FxScreen.moveItem()"

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v8, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v1

    .line 546
    .local v1, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    if-nez v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v6

    .line 549
    :cond_1
    iput-boolean v6, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->isDragging:Z

    .line 551
    invoke-virtual {p4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 552
    .local v3, to:Landroid/graphics/Rect;
    iget-object v8, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 553
    .local v0, from:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 555
    .local v2, ok:Z
    if-eqz p3, :cond_2

    if-ne p3, p0, :cond_5

    .line 557
    :cond_2
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v1, v8, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->attachTo(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;Landroid/graphics/Rect;)Z

    move-result v2

    .line 559
    if-eqz v2, :cond_0

    .line 569
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .local v5, y:I
    :goto_1
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_4

    .line 570
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .local v4, x:I
    :goto_2
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ge v4, v6, :cond_3

    .line 571
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v6, v6, v4

    aput-boolean v7, v6, v5

    .line 570
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 569
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 575
    .end local v4           #x:I
    :cond_4
    iget v6, p4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget v8, p4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    invoke-virtual {v1, v6, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->moveTo(II)V

    move v6, v7

    .line 577
    goto :goto_0

    .line 580
    .end local v5           #y:I
    :cond_5
    iget-object v8, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v1, v8, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->attachTo(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;Landroid/graphics/Rect;)Z

    .line 583
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->remove(Ljava/lang/Long;)V

    .line 585
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .restart local v5       #y:I
    :goto_3
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v8, :cond_7

    .line 586
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .restart local v4       #x:I
    :goto_4
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-ge v4, v8, :cond_6

    .line 587
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v8, v8, v4

    aput-boolean v6, v8, v5

    .line 586
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 585
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 589
    .end local v4           #x:I
    :cond_7
    iget-object v6, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v6, p1, p2, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->add(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V

    .line 591
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v6, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->moveTo(II)V

    .line 592
    iget v5, v3, Landroid/graphics/Rect;->top:I

    :goto_5
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_9

    .line 593
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .restart local v4       #x:I
    :goto_6
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ge v4, v6, :cond_8

    .line 594
    iget-object v6, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v6, v6, v4

    aput-boolean v7, v6, v5

    .line 593
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 592
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .end local v4           #x:I
    :cond_9
    move v6, v7

    .line 595
    goto/16 :goto_0
.end method

.method private needToShowBackPanel()Z
    .locals 1

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private occupied(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 7
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    .line 870
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 871
    .local v0, r:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->isValidLayout(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 872
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout out of bound:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    :goto_0
    return v3

    .line 875
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .local v2, y:I
    :goto_1
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v4, :cond_4

    .line 876
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .local v1, x:I
    :goto_2
    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v4, :cond_3

    .line 877
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    if-nez v4, :cond_2

    .line 878
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") should be occupied but is not!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 875
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 883
    .end local v1           #x:I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private remove(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z
    .locals 10
    .parameter "id"
    .parameter "item"
    .parameter "animateBackPanel"

    .prologue
    const/4 v5, 0x0

    .line 418
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EDIT_DEBUG] FxScreen.remove("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") from FxScreen#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->detach()Z

    move-result v0

    .line 422
    .local v0, ok:Z
    if-nez v0, :cond_0

    .line 423
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v7, "removeScene fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return v5

    .line 427
    :cond_0
    iget-object v6, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v6, v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    iget-object v7, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v7, v7, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getM10PathByWH(II)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v6

    long-to-int v7, p1

    iget-boolean v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsPortrait:Z

    invoke-virtual {v6, v1, v7, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->deleteFxScene(Ljava/lang/String;IZ)V

    .line 430
    iget-object v6, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 431
    .local v2, r:Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .local v4, y:I
    :goto_1
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v6, :cond_2

    .line 432
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .local v3, x:I
    :goto_2
    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-ge v3, v6, :cond_1

    .line 433
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v6, v6, v3

    aput-boolean v5, v6, v4

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 431
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 436
    .end local v3           #x:I
    :cond_2
    iget-object v5, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->destroy()V

    .line 437
    const/4 v5, 0x0

    iput-object v5, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    .line 438
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->remove(Ljava/lang/Long;)V

    .line 440
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->needToShowBackPanel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 441
    invoke-direct {p0, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showBackPanel(Z)V

    .line 444
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 445
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxScene;->pulseFreeze()V

    .line 447
    :cond_4
    sget-object v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EDIT_DEBUG] FxScreen.remove("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private removeItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z
    .locals 3
    .parameter "id"
    .parameter "item"
    .parameter "animateBackPanel"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in this screen. Won\'t remove it!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->remove(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private removeItemScene(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)Z
    .locals 5
    .parameter "id"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 393
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FxScreen.removeItemScene("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v2

    if-nez v2, :cond_0

    .line 395
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in this screen. Won\'t remove it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return v1

    .line 399
    :cond_0
    invoke-virtual {p3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->detach()Z

    move-result v0

    .line 400
    .local v0, ok:Z
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FxScreen.removeItemScene("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ok:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-nez v0, :cond_1

    .line 402
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "removeScene fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized showBackPanel(Z)V
    .locals 5
    .parameter "animated"

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mShowBackPanel:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1475
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1428
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showBackPanel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1431
    const/4 p1, 0x0

    .line 1433
    :cond_3
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_4

    .line 1434
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "on"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 1435
    .local v1, m:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_4

    .line 1436
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1437
    if-eqz p1, :cond_6

    .line 1438
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v3, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget v4, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 1447
    .end local v1           #m:Lcom/htc/fusion/fx/Marker;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v2, :cond_7

    .line 1448
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 1449
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 1474
    :cond_5
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mShowBackPanel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1425
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1441
    .restart local v1       #m:Lcom/htc/fusion/fx/Marker;
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v3, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_1

    .line 1451
    .end local v1           #m:Lcom/htc/fusion/fx/Marker;
    :cond_7
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 1454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1455
    .local v0, controls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/fusion/fx/FxObject;>;"
    const-string v2, "hitbox.Tip_bubbles_01"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string v2, "hitbox.Tip_bubbles_02"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->getInstance()Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v3, v0}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->find(Lcom/htc/fusion/fx/FxObject;Ljava/util/Map;)V

    .line 1459
    const-string v2, "hitbox.Tip_bubbles_01"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1460
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v2, :cond_8

    .line 1461
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 1462
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipUpClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1463
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 1466
    :cond_8
    const-string v2, "hitbox.Tip_bubbles_02"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1467
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v2, :cond_5

    .line 1468
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 1469
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipDownClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1470
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public addItem(JLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 15
    .parameter "id"
    .parameter "fxItem"
    .parameter "layout"

    .prologue
    .line 280
    const-string v2, "FxScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FxScreen.addItem() IsOnFloat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->IsOnFloating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Screen#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 290
    :cond_0
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->IsOnFloating:Z

    if-eqz v2, :cond_1

    .line 291
    const-string v2, "FxScreen"

    const-string v3, "[EDIT_DEBUG] FxScreen.addItem() - IsOnFloating, return!"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v2, 0x0

    .line 327
    :goto_0
    return v2

    .line 296
    :cond_1
    move-object/from16 v0, p4

    iget v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->GetCellProperties()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 297
    const/4 v2, 0x0

    goto :goto_0

    .line 301
    :cond_2
    move-object/from16 v0, p4

    iget v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    move-object/from16 v0, p4

    iget v3, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getM10PathByWH(II)Ljava/lang/String;

    move-result-object v11

    .line 302
    .local v11, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v2

    move-wide/from16 v0, p1

    long-to-int v3, v0

    iget-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsPortrait:Z

    invoke-virtual {v2, v11, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;IZ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v6

    .line 305
    .local v6, child:Lcom/htc/fusion/fx/FxScene;
    const/4 v8, 0x1

    move-object v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->createItem(JLcom/htc/launcher/FxItem;Lcom/htc/fusion/fx/FxScene;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;Z)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v9

    .line 306
    .local v9, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    invoke-virtual/range {p4 .. p4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 307
    .local v12, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v9, v2, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->attachTo(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;Landroid/graphics/Rect;)Z

    move-result v10

    .line 308
    .local v10, ok:Z
    if-nez v10, :cond_3

    .line 309
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[EDIT_DEBUG] addScene fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    goto :goto_0

    .line 313
    :cond_3
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->add(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V

    .line 315
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .local v14, y:I
    :goto_1
    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v2, :cond_5

    .line 316
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .local v13, x:I
    :goto_2
    iget v2, v12, Landroid/graphics/Rect;->right:I

    if-ge v13, v2, :cond_4

    .line 317
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v2, v2, v13

    const/4 v3, 0x1

    aput-boolean v3, v2, v14

    .line 316
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 315
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 319
    .end local v13           #x:I
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->needToShowBackPanel()Z

    move-result v2

    if-nez v2, :cond_6

    .line 320
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideBackPanel(Z)V

    .line 323
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 324
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->pulseFreeze()V

    .line 327
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method createItem(JLcom/htc/launcher/FxItem;Lcom/htc/fusion/fx/FxScene;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;Z)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .locals 10
    .parameter "id"
    .parameter "fxItem"
    .parameter "containerScene"
    .parameter "layout"
    .parameter "attach"

    .prologue
    .line 332
    new-instance v8, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    invoke-direct {v8}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;-><init>()V

    .line 335
    .local v8, icb:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    invoke-virtual {p3}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {v8, p4}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setContainer(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    const-string v2, "Drag"

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setDrag(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->build()Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    move-result-object v5

    .line 354
    .local v5, ic:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    :goto_0
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    move-object v1, p0

    move-object v2, p3

    move/from16 v4, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/launcher/FxItem;Lcom/htc/fusion/fx/controls/FxCellSceneContainer;ZLcom/htc/android/rosie/home/fxcontrol/ItemContainer;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)V

    .line 355
    .local v0, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    invoke-virtual {p3}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v2

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;-><init>(JLcom/htc/android/rosie/home/fxcontrol/DesktopItem;Lcom/htc/launcher/Draggee;)V

    invoke-virtual {p3, v1}, Lcom/htc/launcher/FxItem;->setDraggee(Lcom/htc/launcher/Draggee;)V

    .line 357
    return-object v0

    .line 342
    .end local v0           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v5           #ic:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    :cond_0
    invoke-virtual {p3}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    .line 343
    .local v9, info:Lcom/htc/launcher/ItemInfo;
    iget v1, v9, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v7, 0x1

    .line 346
    .local v7, bCanDrop:Z
    :goto_1
    invoke-virtual {v8, p4}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setContainer(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setItem(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    const-string v2, "Drag"

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setDrag(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setDrop(Z)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->build()Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    move-result-object v5

    .restart local v5       #ic:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    goto :goto_0

    .line 343
    .end local v5           #ic:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    .end local v7           #bCanDrop:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public deleteItem(Ljava/lang/Long;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)Z
    .locals 3
    .parameter "id"
    .parameter "item"

    .prologue
    .line 1623
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->remove(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z

    move-result v0

    return v0
.end method

.method public dumpItems()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Long;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Long;

    .line 269
    .local v5, keys:[Ljava/lang/Long;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, Info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/Long;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v1, v3

    .line 271
    .local v4, key:Ljava/lang/Long;
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v2

    .line 272
    .local v2, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v7, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v7}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v2           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v4           #key:Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method public fadeBackPanel(I)Z
    .locals 7
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 1544
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return v3

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 1549
    .local v6, off:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_0

    .line 1550
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->needToShowBackPanel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1552
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget v2, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    const/high16 v4, 0x3f80

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 1555
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Z)V
    .locals 16
    .parameter "dragCell"
    .parameter
    .parameter "bCheckOriginalPositions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/CellInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 932
    .local p2, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    monitor-enter v13

    .line 933
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 934
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v12}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 935
    .local v4, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v6

    .line 936
    .local v6, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-boolean v12, v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->isDragging:Z

    if-nez v12, :cond_0

    .line 944
    if-eqz p3, :cond_6

    .line 945
    iget-object v12, v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v12}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    .line 946
    .local v5, info:Lcom/htc/launcher/ItemInfo;
    iget v10, v5, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 947
    .local v10, nX1:I
    iget v11, v5, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 948
    .local v11, nY1:I
    iget v8, v5, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 949
    .local v8, nCellHSpan:I
    iget v9, v5, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 957
    .end local v5           #info:Lcom/htc/launcher/ItemInfo;
    .local v9, nCellVSpan:I
    :goto_1
    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-gt v10, v12, :cond_1

    add-int v12, v10, v8

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-ge v12, v14, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-gt v12, v10, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v12, v14

    add-int/lit8 v12, v12, -0x1

    if-lt v12, v10, :cond_0

    :cond_2
    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-gt v11, v12, :cond_3

    add-int v12, v11, v9

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-ge v12, v14, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-gt v12, v11, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v12, v14

    add-int/lit8 v12, v12, -0x1

    if-lt v12, v11, :cond_0

    .line 962
    :cond_4
    new-instance v1, Lcom/htc/launcher/CellInfo;

    invoke-direct {v1}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 963
    .local v1, cellInfo:Lcom/htc/launcher/CellInfo;
    iput v10, v1, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 964
    iput v11, v1, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 965
    iput v8, v1, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 966
    iput v9, v1, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 968
    iget-object v12, v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v12}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v2

    .line 969
    .local v2, draggee:Lcom/htc/launcher/Draggee;
    instance-of v12, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    if-eqz v12, :cond_5

    .line 970
    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    .end local v2           #draggee:Lcom/htc/launcher/Draggee;
    invoke-virtual {v2, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->setItem(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V

    .line 972
    :cond_5
    iget-object v12, v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    iput-object v12, v1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 973
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 977
    .end local v1           #cellInfo:Lcom/htc/launcher/CellInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Ljava/lang/Long;
    .end local v6           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v8           #nCellHSpan:I
    .end local v9           #nCellVSpan:I
    .end local v10           #nX1:I
    .end local v11           #nY1:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 951
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #id:Ljava/lang/Long;
    .restart local v6       #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    :cond_6
    :try_start_1
    iget-object v7, v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    .line 952
    .local v7, lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    iget v10, v7, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    .line 953
    .restart local v10       #nX1:I
    iget v11, v7, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    .line 954
    .restart local v11       #nY1:I
    iget v8, v7, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    .line 955
    .restart local v8       #nCellHSpan:I
    iget v9, v7, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    .restart local v9       #nCellVSpan:I
    goto :goto_1

    .line 977
    .end local v4           #id:Ljava/lang/Long;
    .end local v6           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v7           #lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    .end local v8           #nCellHSpan:I
    .end local v9           #nCellVSpan:I
    .end local v10           #nX1:I
    .end local v11           #nY1:I
    :cond_7
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    return-void
.end method

.method public findItemInCell(Lcom/htc/launcher/CellInfo;)Z
    .locals 11
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x0

    .line 887
    if-nez p1, :cond_0

    .line 927
    :goto_0
    return v6

    .line 890
    :cond_0
    const/4 v1, 0x0

    .line 892
    .local v1, found:Z
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    monitor-enter v7

    .line 893
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 894
    .local v3, id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v4

    .line 895
    .local v4, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    if-eqz v4, :cond_1

    .line 898
    iget-object v5, v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    .line 899
    .local v5, lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    if-eqz v5, :cond_1

    .line 902
    if-nez p1, :cond_2

    .line 903
    monitor-exit v7

    goto :goto_0

    .line 925
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/Long;
    .end local v4           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v5           #lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 905
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #id:Ljava/lang/Long;
    .restart local v4       #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .restart local v5       #lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v9, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v10, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 906
    const/4 v1, 0x1

    .line 907
    iget v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iput v8, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 908
    iget v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    iput v8, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 909
    iget v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    iput v8, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 910
    iget v8, v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    iput v8, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 911
    iget-object v8, v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    iput-object v8, p1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 914
    iget-object v8, v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 915
    .local v0, cellItem:Ljava/lang/Object;
    instance-of v8, v0, Lcom/htc/launcher/LegacyLayout;

    if-eqz v8, :cond_3

    .line 916
    check-cast v0, Lcom/htc/launcher/LegacyLayout;

    .end local v0           #cellItem:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 921
    :cond_3
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 925
    .end local v3           #id:Ljava/lang/Long;
    .end local v4           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v5           #lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public freezeChildren()V
    .locals 10

    .prologue
    .line 501
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Long;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 502
    .local v4, keys:[Ljava/lang/Long;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Long;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 503
    .local v3, key:Ljava/lang/Long;
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v1

    .line 504
    .local v1, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v7, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v7}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    iget v6, v7, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 507
    .local v6, type:I
    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 508
    iget-object v7, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->freeze()V

    .line 502
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #key:Ljava/lang/Long;
    .end local v6           #type:I
    :cond_1
    return-void
.end method

.method public getDesktopItem(Lcom/htc/launcher/ItemInfo;)Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
    .locals 5
    .parameter "itemInfo"

    .prologue
    const/4 v0, 0x0

    .line 1643
    const-string v3, "FxScreen"

    const-string v4, "[EDIT_DEBUG] getItemContainer() - enter"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    if-nez p1, :cond_1

    .line 1662
    .end local p1
    :cond_0
    :goto_0
    return-object v0

    .line 1647
    .restart local p1
    :cond_1
    const-wide/16 v1, -0x1

    .line 1648
    .local v1, widgetId:J
    iget v3, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 1653
    iget-wide v1, p1, Lcom/htc/launcher/ItemInfo;->id:J

    .line 1657
    .end local p1
    :goto_1
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1660
    invoke-direct {p0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getDesktopItem(J)Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    move-result-object v0

    .line 1662
    .local v0, desktopItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
    goto :goto_0

    .line 1650
    .end local v0           #desktopItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/htc/launcher/FxItemInfo;

    .end local p1
    iget v3, p1, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    int-to-long v1, v3

    .line 1651
    goto :goto_1

    .line 1648
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getDraggingOccupiedCells()[[Z
    .locals 11

    .prologue
    .line 706
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->GetCellProperties()Landroid/graphics/RectF;

    move-result-object v5

    .line 707
    .local v5, r:Landroid/graphics/RectF;
    iget v8, v5, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    .line 709
    .local v4, occupied:[[Z
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 710
    .local v1, id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v3

    .line 711
    .local v3, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-boolean v8, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->isDragging:Z

    if-nez v8, :cond_0

    .line 716
    iget-object v8, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 717
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    iget v6, v2, Lcom/htc/launcher/ItemInfo;->cellX:I

    .local v6, x:I
    :goto_0
    iget v8, v2, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v9, v2, Lcom/htc/launcher/ItemInfo;->spanX:I

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_0

    .line 718
    iget v7, v2, Lcom/htc/launcher/ItemInfo;->cellY:I

    .local v7, y:I
    :goto_1
    iget v8, v2, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v9, v2, Lcom/htc/launcher/ItemInfo;->spanY:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    .line 719
    aget-object v8, v4, v6

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 718
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 717
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 724
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #info:Lcom/htc/launcher/ItemInfo;
    .end local v3           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_2
    return-object v4
.end method

.method declared-synchronized getFrozen()Z
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFrozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFxItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1675
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    if-nez v3, :cond_1

    .line 1676
    const/4 v0, 0x0

    .line 1684
    :cond_0
    return-object v0

    .line 1678
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v0, fxItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 1680
    .local v1, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1681
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1682
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    iget-object v3, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemLayout(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    .locals 4
    .parameter "id"

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v0

    .line 1184
    if-nez v0, :cond_0

    .line 1185
    const/4 v1, 0x0

    .line 1187
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    goto :goto_0
.end method

.method public getItemPosition(I)Landroid/graphics/Point;
    .locals 5
    .parameter "id"

    .prologue
    .line 1197
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v0

    .line 1199
    .local v0, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    if-nez v0, :cond_0

    .line 1200
    const/4 v2, 0x0

    .line 1202
    :goto_0
    return-object v2

    .line 1201
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    iget-object v3, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->cellToRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1202
    .local v1, r:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getM10PathByWH(II)Ljava/lang/String;
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 166
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, m10s:[Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, p2, -0x1

    add-int/2addr v2, v3

    aget-object v1, v0, v2

    .line 168
    .local v1, path:Ljava/lang/String;
    return-object v1
.end method

.method public getOccupiedCells()[[Z
    .locals 1

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->loadOccupiedMaps()V

    .line 693
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    return-object v0
.end method

.method public getRearrangeItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Draggee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDraggeeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method getSize()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->getSize()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v3, "DEBUG"

    const-string v4, "+FxScreen.getSnapshot()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxScene;->getSceneSnapshot()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 201
    const-string v3, "DEBUG"

    const-string v4, "-FxScreen.getSnapshot()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 207
    .local v2, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method getVisibility()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mVisible:Z

    return v0
.end method

.method public hasFreeRoom(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 1633
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hasRoom(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public hideDropArea()V
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxDropContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 1594
    :goto_0
    return-void

    .line 1591
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsShowDropArea:Z

    .line 1593
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDropAreaIndicator:Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->removeScene()V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 1566
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->getCount()I

    move-result v0

    .line 1567
    .local v0, count:I
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchOnItem(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 981
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    monitor-enter v5

    .line 982
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 983
    .local v1, id:Ljava/lang/Long;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v2

    .line 984
    .local v2, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 985
    .local v3, r:Landroid/graphics/RectF;
    if-eqz v3, :cond_0

    int-to-float v4, p1

    int-to-float v6, p2

    invoke-virtual {v3, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 986
    const/4 v4, 0x1

    monitor-exit v5

    .line 990
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #r:Landroid/graphics/RectF;
    :goto_0
    return v4

    .line 989
    :cond_1
    monitor-exit v5

    .line 990
    const/4 v4, 0x0

    goto :goto_0

    .line 989
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method loadFxScene()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1309
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v3

    const-string v6, "Rosie_screen.m10"

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    iget-boolean v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsPortrait:Z

    invoke-virtual {v3, v6, v7, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;IZ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 1311
    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mVisible:Z

    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .local v0, controls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/fusion/fx/FxObject;>;"
    const-string v3, "cellcontainer.Page"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const-string v3, "scenecontainer.Folder"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string v3, "timeline.Tip_Bubbles_Main"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    const-string v3, "scenecontainer.DropArea"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->getInstance()Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v6, v0}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->find(Lcom/htc/fusion/fx/FxObject;Ljava/util/Map;)V

    .line 1324
    const-string v3, "cellcontainer.Page"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    .line 1325
    const-string v3, "scenecontainer.Folder"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1326
    sget-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " visible:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mVisible:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " FolderContainer("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v3, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_0
    const-string v3, "timeline.Tip_Bubbles_Main"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1328
    const-string v3, "scenecontainer.DropArea"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxDropContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1330
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxDropContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;-><init>(Lcom/htc/fusion/fx/controls/FxSceneContainer;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDropAreaIndicator:Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;

    .line 1332
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_4

    .line 1334
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1335
    const-string v3, "text.label_01"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string v3, "text.label_02"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    const-string v3, "hitbox.Tip_bubbles_01"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    const-string v3, "hitbox.Tip_bubbles_02"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->getInstance()Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3, v6, v0}, Lcom/htc/android/rosie/home/fxcontrol/BatchObjectFinder;->find(Lcom/htc/fusion/fx/FxObject;Ljava/util/Map;)V

    .line 1340
    const-string v3, "text.label_01"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1341
    .local v2, upLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_1

    .line 1342
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1344
    :cond_1
    const-string v3, "text.label_02"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1345
    .local v1, downLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v1, :cond_2

    .line 1346
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1348
    :cond_2
    const-string v3, "hitbox.Tip_bubbles_01"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1349
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v3, :cond_3

    .line 1350
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 1351
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->upHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipUpClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1355
    :cond_3
    const-string v3, "hitbox.Tip_bubbles_02"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1356
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v3, :cond_4

    .line 1357
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 1358
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->downHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->tipDownClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1364
    .end local v1           #downLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #upLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_4
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    if-nez v3, :cond_7

    .line 1373
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v3, v5

    .line 1326
    goto/16 :goto_0

    .line 1368
    :cond_7
    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mShowBackPanel:Z

    if-eqz v3, :cond_5

    .line 1369
    iput-boolean v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mShowBackPanel:Z

    .line 1370
    invoke-direct {p0, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showBackPanel(Z)V

    goto :goto_1
.end method

.method public loadOccupiedMaps()V
    .locals 12

    .prologue
    .line 672
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->GetCellProperties()Landroid/graphics/RectF;

    move-result-object v5

    .line 673
    .local v5, r:Landroid/graphics/RectF;
    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v9

    .line 674
    .local v6, rows:I
    iget v9, v5, Landroid/graphics/RectF;->right:F

    float-to-int v0, v9

    .line 675
    .local v0, columns:I
    const/4 v8, 0x0

    .local v8, y:I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 676
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    if-ge v7, v0, :cond_0

    .line 677
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v9, v9, v7

    const/4 v10, 0x0

    aput-boolean v10, v9, v8

    .line 676
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 675
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 679
    .end local v7           #x:I
    :cond_1
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 680
    .local v2, id:Ljava/lang/Long;
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v4

    .line 682
    .local v4, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v9, v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v9}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    .line 683
    .local v3, info:Lcom/htc/launcher/ItemInfo;
    iget v7, v3, Lcom/htc/launcher/ItemInfo;->cellX:I

    .restart local v7       #x:I
    :goto_2
    iget v9, v3, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v10, v3, Lcom/htc/launcher/ItemInfo;->spanX:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_2

    .line 684
    iget v8, v3, Lcom/htc/launcher/ItemInfo;->cellY:I

    :goto_3
    iget v9, v3, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v10, v3, Lcom/htc/launcher/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_3

    .line 685
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v9, v9, v7

    const/4 v10, 0x1

    aput-boolean v10, v9, v8

    .line 684
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 683
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 689
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #info:Lcom/htc/launcher/ItemInfo;
    .end local v4           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v7           #x:I
    :cond_4
    return-void
.end method

.method moveItemTo(Lcom/htc/launcher/Draggee;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;II)Z
    .locals 9
    .parameter "item"
    .parameter "target"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 601
    sget-object v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[EDIT_DEBUG] FxScreen.moveItemTo()"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 603
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    if-ne p2, p0, :cond_0

    iget v5, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ne p3, v5, :cond_0

    iget v5, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne p4, v5, :cond_0

    .line 625
    :goto_0
    return v4

    .line 606
    :cond_0
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v5, v1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v6, v1, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-direct {v3, p3, p4, v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 609
    .local v3, lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    instance-of v5, p1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    if-eqz v5, :cond_2

    .line 611
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 612
    .local v2, key:Ljava/lang/Long;
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v5}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 613
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->moveItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v4

    goto :goto_0

    .line 617
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Long;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 618
    .restart local v2       #key:Ljava/lang/Long;
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v5}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    iget-wide v5, v5, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 619
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->moveItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v4

    goto :goto_0

    .line 624
    .end local v2           #key:Ljava/lang/Long;
    :cond_4
    sget-object v5, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find fx item:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in screen#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public moveOccupiedCells(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Z)V
    .locals 13
    .parameter "cellFrom"
    .parameter "cellTo"
    .parameter "target"
    .parameter "bAnimation"

    .prologue
    .line 768
    iget-object v1, p2, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 769
    .local v1, dragitemTo:Lcom/htc/launcher/Draggee;
    check-cast v1, Lcom/htc/launcher/FxItem;

    .end local v1           #dragitemTo:Lcom/htc/launcher/Draggee;
    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    .line 771
    .local v2, fxDragTo:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    if-ne v0, p0, :cond_6

    .line 774
    :cond_0
    iget v7, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    .local v7, y:I
    :goto_0
    iget v8, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v9, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 775
    iget v6, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    .local v6, x:I
    :goto_1
    iget v8, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v9, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_1

    .line 776
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v8, v8, v6

    const/4 v9, 0x0

    aput-boolean v9, v8, v7

    .line 775
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 774
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 781
    .end local v6           #x:I
    :cond_2
    iget v7, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    :goto_2
    iget v8, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v9, p2, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    .line 782
    iget v6, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    .restart local v6       #x:I
    :goto_3
    iget v8, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v9, p2, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_3

    .line 783
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v8, v8, v6

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 782
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 781
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 789
    .end local v6           #x:I
    :cond_4
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v8

    iget v8, v8, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    .line 791
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/FxItemInfo;

    iget v8, v8, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    int-to-long v10, v8

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v3

    .line 796
    .local v3, oriItem:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    :goto_4
    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_8

    .line 797
    :cond_5
    const-string v8, "Rearrange"

    const-string v9, "oriItem %s, cellFrom %s, cellTo %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    aput-object p2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v8, "Rearrange"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fxDragTo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .end local v3           #oriItem:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v7           #y:I
    :cond_6
    :goto_5
    return-void

    .line 793
    .restart local v7       #y:I
    :cond_7
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mId:J
    invoke-static {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v3

    .restart local v3       #oriItem:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    goto :goto_4

    .line 802
    :cond_8
    const-string v8, "Rearrange"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveOccupiedCells %s from %d,%d to %d,%d, animation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget v12, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 805
    .local v5, rect:Landroid/graphics/Rect;
    iget v8, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 806
    iget v8, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 807
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, p2, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 808
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, p2, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 810
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMoveSceneInfo:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;

    iget-object v10, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    const v11, 0x3e99999a

    invoke-direct {v9, p0, v10, v5, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/fusion/fx/FxScene;Landroid/graphics/Rect;F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMovedItems:Ljava/util/Map;

    monitor-enter v9

    .line 813
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMovedItems:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 814
    new-instance v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget-object v8, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v8, v8, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget-object v10, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v10, v10, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    iget-object v11, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v11, v11, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    iget-object v12, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v12, v12, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-direct {v4, v8, v10, v11, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 815
    .local v4, previousPosition:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMovedItems:Ljava/util/Map;

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .end local v4           #previousPosition:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    :cond_9
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iget v8, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v9, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {v3, v8, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->moveTo(II)V

    goto/16 :goto_5

    .line 817
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public newItem(Ljava/lang/Long;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .locals 12
    .parameter "id"
    .parameter "item"
    .parameter "layout"

    .prologue
    const/4 v11, 0x0

    .line 1597
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1599
    :cond_0
    iget v1, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    iget v2, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getM10PathByWH(II)Ljava/lang/String;

    move-result-object v9

    .line 1600
    .local v9, path:Ljava/lang/String;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsPortrait:Z

    invoke-virtual {v1, v9, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getFxScene(Ljava/lang/String;IZ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    .line 1602
    .local v7, child:Lcom/htc/fusion/fx/FxScene;
    if-nez v7, :cond_1

    .line 1603
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FxScene not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 1619
    :goto_0
    return-object v0

    .line 1607
    :cond_1
    new-instance v8, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    invoke-direct {v8}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;-><init>()V

    .line 1608
    .local v8, icb:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    invoke-virtual {v8, v7}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->setContainer(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->build()Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    move-result-object v5

    .line 1611
    .local v5, ic:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    new-instance v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v1, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget v2, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    iget v3, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    iget v4, p3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 1613
    .local v6, l:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    iget-object v2, p2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/launcher/FxItem;Lcom/htc/fusion/fx/controls/FxCellSceneContainer;ZLcom/htc/android/rosie/home/fxcontrol/ItemContainer;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)V

    .line 1614
    .local v0, newItem:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    invoke-virtual {v0, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->setFxScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1616
    invoke-virtual {p3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1617
    .local v10, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v0, v1, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->attachTo(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mMovedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 825
    return-void
.end method

.method declared-synchronized onFreeze()V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->onFreeze(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onFreeze(J)V
    .locals 8
    .parameter "timeout"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+Screen#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " freeze"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 219
    .local v1, start:J
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxScene;->freeze()Ljava/util/concurrent/Future;

    move-result-object v3

    .line 220
    .local v3, wait:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-string v4, "PREF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFreeze "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 222
    const-string v4, "PREF"

    const-string v5, "onFreeze waiting..."

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p1, p2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :cond_1
    :goto_0
    :try_start_2
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-Screen#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " freeze"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFrozen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 223
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #start:J
    .end local v3           #wait:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onLongClick(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized onPulseFreeze()V
    .locals 6

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFrozen:Z

    if-eqz v2, :cond_1

    .line 244
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pulseFreeze"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    .local v0, start:J
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->pulseFreeze()V

    .line 247
    const-string v2, "PREF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPulseFreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0           #start:J
    :cond_1
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onThaw(Z)V
    .locals 6
    .parameter "keepContent"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    .local v0, start:J
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, p1}, Lcom/htc/fusion/fx/FxScene;->thaw(Z)V

    .line 237
    const-string v2, "PREF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThaw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-boolean v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " thaw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFrozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 235
    .end local v0           #start:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onTiltChanged(FF)V
    .locals 0
    .parameter "tilt"
    .parameter "speed"

    .prologue
    .line 253
    return-void
.end method

.method onVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mVisible:Z

    .line 193
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public performRearrange(ZLjava/util/ArrayList;)V
    .locals 24
    .parameter "bAnimation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/CellLayout$RearrangeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p2, rearrangeCells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellLayout$RearrangeInfo;>;"
    const-string v19, "Rearrange"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "performRearrange "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", size:%d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Long;

    .line 997
    .local v12, ids:[Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDraggeeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1000
    move-object v5, v12

    .local v5, arr$:[Ljava/lang/Long;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .local v10, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    aget-object v11, v5, v10

    .line 1001
    .local v11, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v14

    .line 1002
    .local v14, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-boolean v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->isDragging:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1003
    const-string v19, "Rearrange"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ignore dragging item "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .end local v10           #i$:I
    :cond_0
    :goto_1
    add-int/lit8 v9, v10, 0x1

    .restart local v9       #i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_0

    .line 1007
    :cond_1
    iget-object v8, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    .line 1008
    .local v8, fxItem:Lcom/htc/launcher/FxItem;
    const/4 v6, 0x0

    .line 1009
    .local v6, bFound:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10           #i$:I
    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/launcher/CellLayout$RearrangeInfo;

    .line 1010
    .local v17, rearrangeinfo:Lcom/htc/launcher/CellLayout$RearrangeInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->to:Lcom/htc/launcher/CellInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 1011
    .local v7, fromInfo:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v15

    .line 1012
    .local v15, itemInfo:Lcom/htc/launcher/ItemInfo;
    iget v0, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v19, v0

    iget v0, v15, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    iget v0, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v19, v0

    iget v0, v15, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1014
    const/4 v6, 0x1

    .line 1020
    .end local v7           #fromInfo:Lcom/htc/launcher/ItemInfo;
    .end local v15           #itemInfo:Lcom/htc/launcher/ItemInfo;
    .end local v17           #rearrangeinfo:Lcom/htc/launcher/CellLayout$RearrangeInfo;
    :cond_3
    if-nez v6, :cond_0

    .line 1024
    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v13

    .line 1026
    .local v13, info:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->canRearrange()Z

    move-result v19

    if-nez v19, :cond_4

    .line 1027
    sget-object v19, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v20, "ignore item since can\'t rearrange"

    invoke-static/range {v19 .. v20}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1031
    :cond_4
    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    move/from16 v19, v0

    iget v0, v13, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    move/from16 v19, v0

    iget v0, v13, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 1038
    :cond_5
    new-instance v7, Lcom/htc/launcher/CellInfo;

    invoke-direct {v7}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 1039
    .local v7, fromInfo:Lcom/htc/launcher/CellInfo;
    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1040
    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1041
    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1042
    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1044
    new-instance v18, Lcom/htc/launcher/CellInfo;

    invoke-direct/range {v18 .. v18}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 1045
    .local v18, toInfo:Lcom/htc/launcher/CellInfo;
    iget v0, v13, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1046
    iget v0, v13, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1047
    iget v0, v13, Lcom/htc/launcher/ItemInfo;->spanX:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1048
    iget v0, v13, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1049
    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 1051
    const-string v19, "revert cell %s from %s to %s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v7}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v18 .. v18}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1052
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->moveOccupiedCells(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Z)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDraggeeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1057
    .end local v6           #bFound:Z
    .end local v7           #fromInfo:Lcom/htc/launcher/CellInfo;
    .end local v8           #fxItem:Lcom/htc/launcher/FxItem;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #id:Ljava/lang/Long;
    .end local v13           #info:Lcom/htc/launcher/ItemInfo;
    .end local v14           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v18           #toInfo:Lcom/htc/launcher/CellInfo;
    .restart local v10       #i$:I
    :cond_6
    move-object v5, v12

    array-length v0, v5

    move/from16 v16, v0

    const/4 v9, 0x0

    .end local v10           #i$:I
    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    aget-object v11, v5, v10

    .line 1058
    .restart local v11       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v14

    .line 1059
    .restart local v14       #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-boolean v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->isDragging:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1060
    const-string v19, "Rearrange"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ignore dragging item "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .end local v10           #i$:I
    :cond_7
    :goto_3
    add-int/lit8 v9, v10, 0x1

    .restart local v9       #i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_2

    .line 1064
    :cond_8
    iget-object v8, v14, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    .line 1065
    .restart local v8       #fxItem:Lcom/htc/launcher/FxItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10           #i$:I
    .local v9, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/launcher/CellLayout$RearrangeInfo;

    .line 1067
    .restart local v17       #rearrangeinfo:Lcom/htc/launcher/CellLayout$RearrangeInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->to:Lcom/htc/launcher/CellInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 1068
    .local v7, fromInfo:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v15

    .line 1069
    .restart local v15       #itemInfo:Lcom/htc/launcher/ItemInfo;
    iget v0, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v19, v0

    iget v0, v15, Lcom/htc/launcher/ItemInfo;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    iget v0, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v19, v0

    iget v0, v15, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1071
    const-string v19, "Rearrange"

    const-string v20, "performRearrange %s from %s to %s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->from:Lcom/htc/launcher/CellInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->to:Lcom/htc/launcher/CellInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->from:Lcom/htc/launcher/CellInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->to:Lcom/htc/launcher/CellInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->moveOccupiedCells(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Z)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDraggeeList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1079
    .end local v7           #fromInfo:Lcom/htc/launcher/ItemInfo;
    .end local v8           #fxItem:Lcom/htc/launcher/FxItem;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #id:Ljava/lang/Long;
    .end local v14           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v15           #itemInfo:Lcom/htc/launcher/ItemInfo;
    .end local v17           #rearrangeinfo:Lcom/htc/launcher/CellLayout$RearrangeInfo;
    .restart local v10       #i$:I
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->applyMoveScenes(Z)V

    .line 1080
    return-void
.end method

.method reloadWidgetScene(ILcom/htc/fusion/fx/FxScene;)V
    .locals 4
    .parameter "id"
    .parameter "fxScene"

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v0

    .line 1412
    .local v0, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    if-nez p2, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1417
    invoke-virtual {v0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->setFxScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1418
    iget-object v1, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v1, p2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setItem(Lcom/htc/fusion/fx/FxScene;)V

    .line 1419
    sget-boolean v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadWidgetScene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method reloadWidgetScene(Lcom/htc/launcher/Launcher;)V
    .locals 13
    .parameter "launcher"

    .prologue
    .line 1392
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Long;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Long;

    .line 1393
    .local v3, ids:[Ljava/lang/Long;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Long;
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v2, v0, v1

    .line 1394
    .local v2, id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v4

    .line 1395
    .local v4, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v8, v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    .line 1396
    .local v5, itemInfo:Lcom/htc/launcher/ItemInfo;
    const/4 v7, 0x0

    .line 1397
    .local v7, scene:Lcom/htc/fusion/fx/FxScene;
    instance-of v8, v5, Lcom/htc/launcher/FxItemInfo;

    if-eqz v8, :cond_0

    .line 1398
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/launcher/DesktopItemController;->getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    .line 1404
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {p0, v8, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->reloadWidgetScene(ILcom/htc/fusion/fx/FxScene;)V

    .line 1393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1399
    :cond_0
    instance-of v8, v5, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v8, :cond_1

    .line 1400
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/launcher/DesktopItemController;->getFxShortcutScene(J)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    goto :goto_1

    .line 1402
    :cond_1
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getId()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/launcher/DesktopItemController;->getLegacyScene(JJ)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    goto :goto_1

    .line 1406
    .end local v2           #id:Ljava/lang/Long;
    .end local v4           #item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v5           #itemInfo:Lcom/htc/launcher/ItemInfo;
    .end local v7           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_2
    return-void
.end method

.method removeAllItems()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 371
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Long;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 372
    .local v4, ids:[Ljava/lang/Long;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Long;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 373
    .local v3, id:Ljava/lang/Long;
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v1

    .line 375
    .local v1, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v1, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #id:Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public removeFolder()Z
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeItem(J)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v0

    .line 383
    .local v0, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FxScreen.removeItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    if-nez v0, :cond_0

    .line 385
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] FxScreen.removeItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), item is null, return!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    .line 389
    :goto_0
    return v1

    .line 388
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z

    move-result v1

    .line 389
    .local v1, ok:Z
    goto :goto_0
.end method

.method removeItem(Lcom/htc/launcher/Draggee;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 455
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Long;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 456
    .local v4, keys:[Ljava/lang/Long;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Long;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 457
    .local v3, key:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v1

    .line 459
    .local v1, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v8, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v10

    iget-wide v10, v10, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 460
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v1, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;Z)Z

    .line 467
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #key:Ljava/lang/Long;
    :goto_1
    return v6

    .line 456
    .restart local v1       #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .restart local v3       #key:Ljava/lang/Long;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #key:Ljava/lang/Long;
    :cond_1
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EDIT_DEBUG] removeItem() Could not find fx item:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in screen#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find fx item:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in screen#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 467
    goto :goto_1
.end method

.method removeItemScene(Lcom/htc/launcher/Draggee;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 471
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Long;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 472
    .local v4, keys:[Ljava/lang/Long;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Long;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 473
    .local v3, key:Ljava/lang/Long;
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v1

    .line 474
    .local v1, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v7, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v7}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    iget-wide v9, v9, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 475
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeItemScene(JLcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)Z

    .line 476
    const/4 v6, 0x1

    .line 481
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #key:Ljava/lang/Long;
    :goto_1
    return v6

    .line 472
    .restart local v1       #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .restart local v3       #key:Ljava/lang/Long;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #key:Ljava/lang/Long;
    :cond_1
    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EDIT_DEBUG] removeItemScene() Could not find fx item:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in screen#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method resetFxScene()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1382
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    .line 1383
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1384
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxDropContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1385
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 1386
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanel:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1387
    return-void
.end method

.method resumeItem(Lcom/htc/launcher/Draggee;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;II)Z
    .locals 8
    .parameter "item"
    .parameter "target"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 629
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[EDIT_DEBUG] FxScreen.resumeItem()"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 631
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    if-ne p2, p0, :cond_0

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ne p3, v4, :cond_0

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne p4, v4, :cond_0

    .line 632
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[EDIT_DEBUG] FxScreen.resumeItem() same position, resume!!"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v5, v1, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-direct {v3, p3, p4, v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 638
    .local v3, lp:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 639
    .local v2, key:Ljava/lang/Long;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v4}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 640
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->moveItem(JLcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v4

    .line 645
    .end local v2           #key:Ljava/lang/Long;
    :goto_0
    return v4

    .line 643
    :cond_2
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EDIT_DEBUG] Could not find fx item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in screen#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find fx item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in screen#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setBackPanelMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1518
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackPanelMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I

    .line 1521
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I

    if-ne v0, v3, :cond_1

    .line 1522
    invoke-direct {p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showBackPanel(Z)V

    .line 1534
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->pulseFreeze()V

    .line 1536
    :cond_0
    return-void

    .line 1524
    :cond_1
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mBackPanelMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1525
    invoke-direct {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideBackPanel(Z)V

    goto :goto_0

    .line 1528
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->needToShowBackPanel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1529
    invoke-direct {p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideBackPanel(Z)V

    goto :goto_0

    .line 1531
    :cond_3
    invoke-direct {p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showBackPanel(Z)V

    goto :goto_0
.end method

.method public setFolder(JLcom/htc/fusion/fx/FxScene;)Z
    .locals 1
    .parameter "id"
    .parameter "scene"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxFolderContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, p3}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 367
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOccupiedCells([Z)V
    .locals 6
    .parameter "flatten"

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, i:I
    const/4 v3, 0x0

    .local v3, y:I
    :goto_0
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->rows:I

    if-ge v3, v4, :cond_1

    .line 699
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->columns:I

    if-ge v2, v4, :cond_0

    .line 700
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mOccupiedBitmap:[[Z

    aget-object v4, v4, v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget-boolean v5, p1, v0

    aput-boolean v5, v4, v3

    .line 699
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 698
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 703
    .end local v2           #x:I
    :cond_1
    return-void
.end method

.method public showDropArea(IIIIZ)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "valid"

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mFxDropContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-nez v0, :cond_0

    .line 1584
    :goto_0
    return-void

    .line 1578
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsShowDropArea:Z

    if-nez v0, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDropAreaIndicator:Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;

    invoke-virtual {v0, p3, p4}, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->loadScene(II)V

    .line 1580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mIsShowDropArea:Z

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mDropAreaIndicator:Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;

    invoke-virtual {v0, p1, p2, p5}, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->showDropArea(IIZ)V

    goto :goto_0
.end method

.method syncItemInfo(Lcom/htc/launcher/Draggee;II)V
    .locals 13
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 485
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Long;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Long;

    .line 486
    .local v6, keys:[Ljava/lang/Long;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Long;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v5, v0, v3

    .line 487
    .local v5, key:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v2

    .line 488
    .local v2, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v8, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v8}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    .line 489
    .local v4, info:Lcom/htc/launcher/ItemInfo;
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 490
    .local v1, dragInfo:Lcom/htc/launcher/ItemInfo;
    iget v8, v4, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v9, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ne v8, v9, :cond_1

    iget v8, v4, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v9, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne v8, v9, :cond_1

    .line 494
    const-string v8, "Rearrange"

    const-string v9, "syncItemInfo %s to %d,%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v1           #dragInfo:Lcom/htc/launcher/ItemInfo;
    .end local v2           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v4           #info:Lcom/htc/launcher/ItemInfo;
    .end local v5           #key:Ljava/lang/Long;
    :cond_0
    return-void

    .line 486
    .restart local v1       #dragInfo:Lcom/htc/launcher/ItemInfo;
    .restart local v2       #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .restart local v4       #info:Lcom/htc/launcher/ItemInfo;
    .restart local v5       #key:Ljava/lang/Long;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public thawChildren()V
    .locals 10

    .prologue
    .line 514
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->keySet()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Long;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 515
    .local v4, keys:[Ljava/lang/Long;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Long;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 516
    .local v3, key:Ljava/lang/Long;
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->get(J)Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    move-result-object v1

    .line 517
    .local v1, i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    iget-object v7, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v7}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    iget v6, v7, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 518
    .local v6, type:I
    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 519
    iget-object v7, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->thaw()V

    .line 515
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v1           #i:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    .end local v3           #key:Ljava/lang/Long;
    .end local v6           #type:I
    :cond_1
    return-void
.end method

.method updateFxScene()V
    .locals 0

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->loadFxScene()V

    .line 1378
    return-void
.end method

.method public updateId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1666
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mId:I

    .line 1667
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->mItemManager:Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreenItemManager;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 1668
    .local v0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1669
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1670
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    iget-object v2, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v2}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    iput p1, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    goto :goto_0

    .line 1672
    :cond_0
    return-void
.end method

.method public updateItem(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1627
    iget-object v0, p1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->setItem(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V

    .line 1630
    :cond_0
    return-void
.end method

.class public Lcom/htc/launcher/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"

# interfaces
.implements Lcom/htc/launcher/DropTarget;
.implements Lcom/htc/launcher/DragSource;
.implements Lcom/htc/launcher/DragScroller;
.implements Lcom/htc/launcher/DragController$DragListener;
.implements Lcom/htc/launcher/LeapController$LeapLayer;
.implements Lcom/htc/launcher/LeapController$LeapAnimationPlayer;
.implements Lcom/htc/launcher/PagesManager$OnPagesChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/Workspace$Screen;,
        Lcom/htc/launcher/Workspace$OnHomeScreenListener;,
        Lcom/htc/launcher/Workspace$OnSlideListener;,
        Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;,
        Lcom/htc/launcher/Workspace$SavedState;,
        Lcom/htc/launcher/Workspace$FocusState;,
        Lcom/htc/launcher/Workspace$UpdateVacantRunnable;,
        Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;,
        Lcom/htc/launcher/Workspace$OnLongClickReference;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALL_SCREENS:I = -0x80000000

.field static final ALL_SCREENS_BUT_CURRENT:I = -0x7fffffff

.field private static final APP_WIDGET_RESUME_DELAY:J = 0x7d0L

#the value of this static final field might be set in the static constructor
.field public static final AUTO_REARRANGE_MODE:Z = false

.field private static final CACHE_ALWAYS_ON:Z = true

.field private static final CACHE_PAGE:Z = false

.field static final CURRENT_SCREEN:I = -0x7ffffffe

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_TOUCH:Z = false

.field private static final ENABLE_WIDGET_RESIZE:Z = true

.field private static final HVGA_WIDTH:F = 320.0f

.field static final INVALID_SCREEN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Workspace"

.field public static final MINIMUM_DURATION:I = 0x1f4

.field private static final MINIMUM_VELOCITY:I = 0x3e8

.field private static final RECOVERY_DURATION:I = 0x3e8

.field private static final SCROLL_COMPENSATION_MAX_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static hasCache:Z

.field private static final localLOGD:Z

.field private static mCurrentHomeIndex:I

.field static sScrollSpeedScale:F


# instance fields
.field private isNeedRecovery:Z

.field private isRestoreCurrentPage:Z

.field private isScrolling:Z

.field private isShowVacantRect:Z

.field private localSavedState:Lcom/htc/launcher/Workspace$SavedState;

.field private mAllowLongPress:Z

.field private mBounceScreen:I

.field private mCanScroll:Z

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentPagesCount:I

.field private mCurrentScreen:I

.field private mCurrentTouchScreen:I

.field private mDidScroll:Z

.field private mDidfling:Z

.field private mDownTime:J

.field private mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field private mDragInfo:Lcom/htc/launcher/CellInfo;

.field private mDragInfoUlog:Lcom/htc/launcher/CellInfo;

.field private mDragOverX:I

.field private mDragOverY:I

.field mDraggeeItem:Lcom/htc/launcher/Draggee;

.field private mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

.field private mDragger:Lcom/htc/launcher/DragController;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field mDrawerContentHeight:I

.field mDrawerContentWidth:I

.field private mEditing:Z

.field private mFakeCellPadding:I

.field mFirstLayout:Z

.field private mFocus:Lcom/htc/launcher/Workspace$FocusState;

.field private mIsNeedtoDrawAllScreens:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastTouchEventTime:J

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mLeapController:Lcom/htc/launcher/LeapController;

.field private mLocked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMoved:Z

.field private mNextScreen:I

.field private mNotifyScrollEnded:Ljava/lang/Runnable;

.field private mOnHomeScreenListener:Lcom/htc/launcher/Workspace$OnHomeScreenListener;

.field private mOnSnapToScreen:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousWidth:I

.field private mRearrangedDraggee:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Draggee;",
            ">;"
        }
    .end annotation
.end field

.field private mRecoveryDistance:F

.field private mResumeAppWidgets:Ljava/lang/Runnable;

.field private mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

.field private mScrollStartTime:J

.field private mScrollStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideController:Lcom/htc/launcher/SlideController;

.field private mStartWidgetResizeRunnable:Ljava/lang/Runnable;

.field private mStartX:F

.field private mSyncLock:Ljava/lang/Object;

.field private mTouchDownRedirected:Z

.field private mTouchRedirect:Landroid/view/View$OnTouchListener;

.field private mTouchState:I

.field mUpdateVacantHandler:Landroid/os/Handler;

.field private mUpdateVacantRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateVacantThread:Landroid/os/HandlerThread;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

.field mWidgetResizing:Z

.field m_IsNeedDropBack:Z

.field private m_bDropByMerge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    const-class v0, Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/launcher/Workspace;->$assertionsDisabled:Z

    .line 69
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/launcher/Workspace;->AUTO_REARRANGE_MODE:Z

    .line 129
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    .line 130
    sput-boolean v1, Lcom/htc/launcher/Workspace;->DEBUG_TOUCH:Z

    .line 149
    const/4 v0, 0x3

    sput v0, Lcom/htc/launcher/Workspace;->mCurrentHomeIndex:I

    .line 1442
    sput-boolean v1, Lcom/htc/launcher/Workspace;->hasCache:Z

    .line 1859
    const/high16 v0, 0x3f80

    sput v0, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x4

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput-boolean v6, p0, Lcom/htc/launcher/Workspace;->mFirstLayout:Z

    .line 95
    iput v3, p0, Lcom/htc/launcher/Workspace;->mPreviousWidth:I

    .line 98
    iput v3, p0, Lcom/htc/launcher/Workspace;->mNextScreen:I

    .line 99
    iput v3, p0, Lcom/htc/launcher/Workspace;->mBounceScreen:I

    .line 100
    iput v5, p0, Lcom/htc/launcher/Workspace;->mFakeCellPadding:I

    .line 116
    iput v5, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    .line 124
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mOnSnapToScreen:Z

    .line 127
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->m_bDropByMerge:Z

    .line 132
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 133
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 137
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mDidScroll:Z

    .line 138
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mDidfling:Z

    .line 140
    iput-boolean v6, p0, Lcom/htc/launcher/Workspace;->isRestoreCurrentPage:Z

    .line 142
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mIsNeedtoDrawAllScreens:Z

    .line 148
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 152
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    .line 153
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mWidgetResizing:Z

    .line 1052
    iput-boolean v6, p0, Lcom/htc/launcher/Workspace;->mCanScroll:Z

    .line 1064
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->isNeedRecovery:Z

    .line 1065
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mMoved:Z

    .line 1354
    new-instance v3, Lcom/htc/launcher/Workspace$1;

    invoke-direct {v3, p0}, Lcom/htc/launcher/Workspace$1;-><init>(Lcom/htc/launcher/Workspace;)V

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mResumeAppWidgets:Ljava/lang/Runnable;

    .line 1362
    new-instance v3, Lcom/htc/launcher/Workspace$2;

    invoke-direct {v3, p0}, Lcom/htc/launcher/Workspace$2;-><init>(Lcom/htc/launcher/Workspace;)V

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mNotifyScrollEnded:Ljava/lang/Runnable;

    .line 1534
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->isScrolling:Z

    .line 2073
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    .line 2156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mRearrangedDraggee:Ljava/util/ArrayList;

    .line 2315
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    .line 2316
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantHandler:Landroid/os/Handler;

    .line 2317
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    .line 2401
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mSyncLock:Ljava/lang/Object;

    .line 2769
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 3544
    iput-boolean v6, p0, Lcom/htc/launcher/Workspace;->isShowVacantRect:Z

    .line 3899
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    .line 3908
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->mTouchDownRedirected:Z

    .line 4191
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    .line 4192
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    .line 4193
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    .line 175
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 176
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PagesManager;->getCurrentHomeIndex()I

    move-result v3

    sput v3, Lcom/htc/launcher/Workspace;->mCurrentHomeIndex:I

    .line 177
    sget v3, Lcom/htc/launcher/Workspace;->mCurrentHomeIndex:I

    iput v3, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 179
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    .line 180
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->initWorkspace()V

    .line 182
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/htc/launcher/R$styleable;->Workspace:[I

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 185
    .local v1, nCellCountX:I
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 187
    .local v2, nCellCountY:I
    invoke-static {v1, v2}, Lcom/htc/launcher/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 188
    return-void
.end method

.method private acceptDropByFolder(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    const/4 v7, 0x0

    .line 4397
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    .line 4398
    .local v0, folder:Lcom/htc/launcher/Folder;
    if-nez v0, :cond_0

    move v1, v7

    .line 4406
    :goto_0
    return v1

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 4401
    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/Folder;->acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4403
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v7

    .line 4406
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/Workspace;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mRearrangedDraggee:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/Workspace;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/CellInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/launcher/Workspace;)Lcom/htc/launcher/SlideController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/launcher/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 342
    return-void
.end method

.method private addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 358
    return-void
.end method

.method private addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 374
    return-void
.end method

.method private addLegacyItem(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/Workspace$Screen;IIZ[I)Lcom/htc/launcher/ItemInfo;
    .locals 12
    .parameter "info"
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "insertAtFirst"
    .parameter "cellXY"

    .prologue
    .line 2631
    iget v0, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 2650
    instance-of v0, p1, Lcom/htc/launcher/WidgetProxy;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2651
    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    invoke-virtual {v0}, Lcom/htc/launcher/WidgetProxy;->fireOnResume()V

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->getFloatingDragge()Lcom/htc/launcher/Draggee;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2658
    .local v10, view:Landroid/view/View;
    instance-of v0, v10, Lcom/htc/launcher/LegacyLayout;

    if-eqz v0, :cond_4

    move-object v8, v10

    .line 2659
    check-cast v8, Lcom/htc/launcher/LegacyLayout;

    .line 2660
    .local v8, legacyLayout:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v8}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v10

    .line 2661
    invoke-virtual {v8}, Lcom/htc/launcher/LegacyLayout;->removeAllViews()V

    .line 2662
    const/4 v8, 0x0

    .line 2663
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Workspace"

    const-string v2, "[EDIT_DEBUG] Workspace.addLegacyItem() view is a LegacyLayout"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    .end local v8           #legacyLayout:Lcom/htc/launcher/LegacyLayout;
    :cond_1
    :goto_0
    if-eqz v10, :cond_5

    .line 2668
    new-instance v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v4, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2674
    :goto_1
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2677
    new-instance v11, Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {v11, p0, v10, v0}, Lcom/htc/launcher/LegacyLayout;-><init>(Lcom/htc/launcher/Workspace;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2681
    .end local v10           #view:Landroid/view/View;
    .local v11, view:Landroid/view/View;
    invoke-static {v11}, Lcom/htc/launcher/Draggee$LegacyDraggee;->wrap(Ljava/lang/Object;)Lcom/htc/launcher/Draggee;

    move-result-object v1

    .line 2682
    .local v1, item:Lcom/htc/launcher/Draggee;
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/launcher/DesktopItemController;->IS_EXTERNAL_APP_ADDING:Z

    .line 2683
    if-eqz p5, :cond_6

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p2, v1, v0}, Lcom/htc/launcher/Workspace$Screen;->addItem(Lcom/htc/launcher/Draggee;I)V

    .line 2684
    iget v4, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    move-object v0, p2

    move v2, p3

    move/from16 v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->onDropChild(Lcom/htc/launcher/Draggee;IIII)V

    .line 2685
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 2686
    .local v9, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    const/4 v0, 0x0

    iget v2, v9, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    aput v2, p6, v0

    .line 2687
    const/4 v0, 0x1

    iget v2, v9, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    aput v2, p6, v0

    .line 2688
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "Workspace"

    const-string v2, "[EDIT_DEBUG] Workspace.addLegacyItem() done!"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    :cond_2
    return-object p1

    .line 2634
    .end local v1           #item:Lcom/htc/launcher/Draggee;
    .end local v9           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v11           #view:Landroid/view/View;
    :pswitch_0
    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 2636
    new-instance v7, Lcom/htc/launcher/ApplicationInfo;

    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    invoke-direct {v7, p1}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .local v7, info:Lcom/htc/launcher/ItemInfo;
    move-object p1, v7

    .line 2638
    .end local v7           #info:Lcom/htc/launcher/ItemInfo;
    .restart local p1
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-interface {p2}, Lcom/htc/launcher/Workspace$Screen;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/htc/launcher/ItemInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v6

    .line 2639
    .local v6, draggee:Lcom/htc/launcher/Draggee;
    invoke-interface {v6}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2640
    .restart local v10       #view:Landroid/view/View;
    goto :goto_1

    .line 2643
    .end local v6           #draggee:Lcom/htc/launcher/Draggee;
    .end local v10           #view:Landroid/view/View;
    :pswitch_1
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-interface {p2}, Lcom/htc/launcher/Workspace$Screen;->asViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/htc/launcher/ItemInfo;->createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;

    move-result-object v6

    .line 2644
    .restart local v6       #draggee:Lcom/htc/launcher/Draggee;
    invoke-interface {v6}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 2645
    .restart local v10       #view:Landroid/view/View;
    goto :goto_1

    .line 2665
    .end local v6           #draggee:Lcom/htc/launcher/Draggee;
    :cond_4
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Workspace"

    const-string v2, "[EDIT_DEBUG] Workspace.addLegacyItem() view is not a LegacyLayout"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2671
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2683
    .end local v10           #view:Landroid/view/View;
    .restart local v1       #item:Lcom/htc/launcher/Draggee;
    .restart local v11       #view:Landroid/view/View;
    :cond_6
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 2631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private cancelScrollingAndFling()V
    .locals 9

    .prologue
    .line 3688
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->endFling()V

    .line 3689
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/htc/launcher/Workspace;->mLastTouchEventTime:J

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionY:F

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 3690
    .local v8, event:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/htc/launcher/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3691
    return-void
.end method

.method private checkWidgetResize(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/CellLayout;)Z
    .locals 3
    .parameter "dragInfo"
    .parameter "itemInfo"
    .parameter "cellLayout"

    .prologue
    .line 4516
    instance-of v2, p2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 4517
    check-cast v0, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 4518
    .local v0, appWidget:Lcom/htc/launcher/LauncherAppWidgetInfo;
    iget-object v2, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 4520
    .local v1, providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_0

    .line 4521
    new-instance v2, Lcom/htc/launcher/Workspace$12;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/htc/launcher/Workspace$12;-><init>(Lcom/htc/launcher/Workspace;Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    iput-object v2, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    .line 4534
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 4535
    const/4 v2, 0x1

    .line 4539
    .end local v0           #appWidget:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .end local v1           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private drawWallpaper(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 734
    return-void
.end method

.method private endFling()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1291
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->isDoingFling()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1298
    :cond_0
    return-void

    .line 1293
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/launcher/Workspace;->setDoingFling(Z)V

    .line 1294
    invoke-direct {p0, v3}, Lcom/htc/launcher/Workspace;->setDoingScroll(Z)V

    .line 1295
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;

    .line 1296
    .local v1, l:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    invoke-interface {v1}, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;->onEndScroll()V

    goto :goto_0
.end method

.method private findHtcSearchWidget(Lcom/htc/launcher/CellLayout;)Lcom/htc/home/HtcSearch;
    .locals 4
    .parameter "screen"

    .prologue
    .line 3020
    invoke-virtual {p1}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 3021
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3022
    invoke-virtual {p1, v1}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3023
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/home/HtcSearch;

    if-eqz v3, :cond_0

    .line 3024
    check-cast v2, Lcom/htc/home/HtcSearch;

    .line 3027
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3021
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3027
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private focusOnHtcSearch(I)Z
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v3, 0x0

    .line 3034
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3035
    .local v2, temp:Landroid/view/View;
    instance-of v4, v2, Lcom/htc/launcher/CellLayout;

    if-nez v4, :cond_1

    .line 3069
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, v2

    .line 3037
    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 3038
    .local v0, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-direct {p0, v0}, Lcom/htc/launcher/Workspace;->findHtcSearchWidget(Lcom/htc/launcher/CellLayout;)Lcom/htc/home/HtcSearch;

    move-result-object v1

    .line 3039
    .local v1, searchWidget:Lcom/htc/home/HtcSearch;
    if-eqz v1, :cond_0

    .line 3061
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3062
    invoke-interface {v1}, Lcom/htc/home/HtcSearch;->requestFocusFromTouch()Z

    .line 3066
    :goto_1
    invoke-interface {v1}, Lcom/htc/home/HtcSearch;->clearQuery()V

    .line 3067
    const/4 v3, 0x1

    goto :goto_0

    .line 3064
    :cond_2
    invoke-interface {v1}, Lcom/htc/home/HtcSearch;->requestFocus()Z

    goto :goto_1
.end method

.method public static getDefaultScreenIndex()I
    .locals 1

    .prologue
    .line 3896
    sget v0, Lcom/htc/launcher/Workspace;->mCurrentHomeIndex:I

    return v0
.end method

.method private getVisitScreenForVancantList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3608
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3609
    .local v2, pageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v4, 0x9

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 3611
    .local v1, offsets:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v0, v4, :cond_2

    .line 3612
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    aget v5, v1, v0

    add-int v3, v4, v5

    .line 3613
    .local v3, value:I
    if-gez v3, :cond_1

    .line 3614
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/2addr v3, v4

    .line 3618
    :cond_0
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3615
    :cond_1
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-lt v3, v4, :cond_0

    .line 3616
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    sub-int/2addr v3, v4

    goto :goto_1

    .line 3621
    .end local v3           #value:I
    :cond_2
    return-object v2

    .line 3609
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfct 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initWorkspace()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->sendCurrentScreenIndexInfo()V

    .line 195
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-static {v0}, Lcom/htc/launcher/Launcher;->setScreen(I)V

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Workspace;->mPaint:Landroid/graphics/Paint;

    .line 198
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 199
    return-void
.end method

.method private isDoingFling()Z
    .locals 1

    .prologue
    .line 4422
    iget-boolean v0, p0, Lcom/htc/launcher/Workspace;->mDidfling:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 460
    const-string v0, "Workspace"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private moveItem(Lcom/htc/launcher/Draggee;IIII)V
    .locals 16
    .parameter "item"
    .parameter "fromScreen"
    .parameter "toScreen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2214
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 2215
    .local v2, source:Lcom/htc/launcher/Workspace$Screen;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v15

    .line 2216
    .local v15, target:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface/range {p1 .. p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v14

    .line 2217
    .local v14, info:Lcom/htc/launcher/ItemInfo;
    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 2218
    .local v7, dropXY:[I
    iget v5, v14, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v6, v14, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-interface/range {v2 .. v7}, Lcom/htc/launcher/Workspace$Screen;->pointToDropCell(IIII[I)V

    .line 2219
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG]# Worksapce.moveItem() from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v8, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v3, 0x0

    aget v12, v7, v3

    const/4 v3, 0x1

    aget v13, v7, v3

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resumeItemInScreen(Lcom/htc/launcher/Draggee;IIII)Z

    .line 2223
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/launcher/FxItem;

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/htc/launcher/Draggee$LegacyDraggee;

    if-eqz v3, :cond_2

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2226
    invoke-virtual/range {p0 .. p3}, Lcom/htc/launcher/Workspace;->moveLegacyItem(Lcom/htc/launcher/Draggee;II)V

    .line 2240
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v12, v3, Lcom/htc/launcher/CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v13, v3, Lcom/htc/launcher/CellInfo;->spanY:I

    move-object v8, v15

    move-object/from16 v9, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v8 .. v13}, Lcom/htc/launcher/Workspace$Screen;->onDropChild(Lcom/htc/launcher/Draggee;IIII)V

    .line 2241
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG]# Worksapce.moveItem() - done"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    :cond_3
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/htc/launcher/Workspace$Screen;)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "screen"

    .prologue
    .line 2575
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/htc/launcher/Workspace$Screen;Z)V

    .line 2576
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2577
    return-void
.end method

.method private onDropExternal(IILjava/lang/Object;Lcom/htc/launcher/Workspace$Screen;Z)V
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "screen"
    .parameter "insertAtFirst"

    .prologue
    .line 2582
    move-object/from16 v20, p3

    check-cast v20, Lcom/htc/launcher/ItemInfo;

    .line 2583
    .local v20, info:Lcom/htc/launcher/ItemInfo;
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v21

    .line 2584
    .local v21, model:Lcom/htc/launcher/LauncherModel;
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 2585
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->removeButtonItem(Lcom/htc/launcher/ItemInfo;)V

    .line 2586
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/htc/launcher/LauncherModel;->getButtonBarOccupied()[Z

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showMiddleBackgroundImageControls([Z)V

    .line 2592
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v12

    .line 2593
    .local v12, dropScreen:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 2594
    .local v2, target:Lcom/htc/launcher/Workspace$Screen;
    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 2596
    .local v7, cellXY:[I
    move-object/from16 v0, v20

    instance-of v3, v0, Lcom/htc/launcher/FxItemInfo;

    if-eqz v3, :cond_2

    .line 2597
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG] Workspace.onDropExternal() - drop a new FxItem"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    :cond_1
    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/htc/launcher/Workspace$Screen;->pointToDropCell(IIII[I)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v7, v4

    const/4 v5, 0x1

    aget v5, v7, v5

    invoke-virtual {v3, v12, v4, v5}, Lcom/htc/launcher/DesktopItemController;->landFxItem(III)Z

    move-object/from16 v14, v20

    .line 2621
    .end local v20           #info:Lcom/htc/launcher/ItemInfo;
    .local v14, info:Lcom/htc/launcher/ItemInfo;
    :goto_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 2622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v15, -0x64

    const/4 v3, 0x0

    aget v18, v7, v3

    const/4 v3, 0x1

    aget v19, v7, v3

    move/from16 v17, v12

    invoke-static/range {v13 .. v19}, Lcom/htc/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 2624
    :goto_1
    return-void

    .line 2600
    .end local v14           #info:Lcom/htc/launcher/ItemInfo;
    .restart local v20       #info:Lcom/htc/launcher/ItemInfo;
    :cond_2
    move-object/from16 v0, v20

    instance-of v3, v0, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v3, :cond_5

    .line 2601
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] Workspace.onDropExternal() - drop a new ApplicationInfo info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/htc/launcher/Workspace$Screen;->pointToDropCell(IIII[I)V

    .line 2603
    const/4 v3, 0x0

    aget v3, v7, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 2604
    const/4 v3, 0x1

    aget v3, v7, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    move-object/from16 v9, v20

    .line 2606
    check-cast v9, Lcom/htc/launcher/FxShortcutInfo;

    .line 2607
    .local v9, newAppInfo:Lcom/htc/launcher/FxShortcutInfo;
    move-object/from16 v0, v20

    instance-of v3, v0, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v3, :cond_4

    .line 2608
    new-instance v9, Lcom/htc/launcher/ApplicationInfo;

    .end local v9           #newAppInfo:Lcom/htc/launcher/FxShortcutInfo;
    move-object/from16 v3, v20

    check-cast v3, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v9, v3}, Lcom/htc/launcher/ApplicationInfo;-><init>(Lcom/htc/launcher/ApplicationInfo;)V

    .line 2612
    .restart local v9       #newAppInfo:Lcom/htc/launcher/FxShortcutInfo;
    :cond_3
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 2613
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v10, -0x64

    const/4 v3, 0x0

    aget v13, v7, v3

    const/4 v3, 0x1

    aget v14, v7, v3

    invoke-static/range {v8 .. v14}, Lcom/htc/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 2615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/launcher/DesktopItemController;->bindFxShortcut(Lcom/htc/launcher/FxShortcutInfo;)V

    move-object/from16 v14, v20

    .line 2616
    .end local v20           #info:Lcom/htc/launcher/ItemInfo;
    .restart local v14       #info:Lcom/htc/launcher/ItemInfo;
    goto :goto_1

    .line 2609
    .end local v14           #info:Lcom/htc/launcher/ItemInfo;
    .restart local v20       #info:Lcom/htc/launcher/ItemInfo;
    :cond_4
    move-object/from16 v0, v20

    instance-of v3, v0, Lcom/htc/launcher/FolderInfo;

    if-eqz v3, :cond_3

    move-object/from16 v9, v20

    .line 2610
    check-cast v9, Lcom/htc/launcher/FolderInfo;

    goto :goto_2

    .line 2618
    .end local v9           #newAppInfo:Lcom/htc/launcher/FxShortcutInfo;
    :cond_5
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_6

    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG] Workspace.onDropExternal() - drop a new LegacyItem"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v14, v20

    move-object v15, v2

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p5

    move-object/from16 v19, v7

    .line 2619
    invoke-direct/range {v13 .. v19}, Lcom/htc/launcher/Workspace;->addLegacyItem(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/Workspace$Screen;IIZ[I)Lcom/htc/launcher/ItemInfo;

    move-result-object v14

    .end local v20           #info:Lcom/htc/launcher/ItemInfo;
    .restart local v14       #info:Lcom/htc/launcher/ItemInfo;
    goto/16 :goto_0
.end method

.method private performRemoveOnDropCompleted(Lcom/htc/launcher/DragSource$DragCompletedAction;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 2782
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v1, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2783
    .local v1, item:Lcom/htc/launcher/Draggee;
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v4, v4, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {v3, v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 2784
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v3, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2785
    .local v0, cellLayout:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->removeItem(Lcom/htc/launcher/Draggee;)Z

    .line 2786
    invoke-interface {v1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 2787
    .local v2, itemInfo:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_0

    .line 2788
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 2789
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne p1, v3, :cond_0

    .line 2790
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v3, v2}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 2793
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2794
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2797
    :cond_1
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne p1, v3, :cond_2

    .line 2798
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 2800
    :cond_2
    return-void
.end method

.method private resetDragInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4334
    iget-boolean v2, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    if-eqz v2, :cond_0

    .line 4354
    :goto_0
    return-void

    .line 4337
    :cond_0
    const-string v2, "Workspace"

    const-string v3, "[EDIT_DEBUG] resetDragInfo() - enter"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 4339
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 4340
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4341
    .local v1, r:Ljava/lang/Runnable;
    const-string v2, "Workspace"

    const-string v3, "[EDIT_DEBUG] resetDragInfo() - removeCallbacks"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4345
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4348
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4349
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    .line 4350
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4351
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    .line 4352
    iput-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    .line 4353
    const-string v2, "Workspace"

    const-string v3, "[EDIT_DEBUG] resetDragInfo() - end"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4350
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private scrollToAvailableScreenForShortcutOrSpan(IIZ)Lcom/htc/launcher/CellInfo;
    .locals 13
    .parameter "spanX"
    .parameter "spanY"
    .parameter "forShortcut"

    .prologue
    .line 3626
    const/4 v0, -0x1

    .line 3627
    .local v0, availablePage:I
    const/4 v8, 0x0

    .line 3628
    .local v8, vCell:Lcom/htc/launcher/CellInfo$VacantCell;
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->getVisitScreenForVancantList()Ljava/util/ArrayList;

    move-result-object v9

    .line 3631
    .local v9, visitScreenForVancantList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3632
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v10, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v2, v10, :cond_0

    .line 3633
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3634
    .local v5, screenIndex:I
    invoke-virtual {p0, v5}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3635
    .local v7, temp:Landroid/view/View;
    instance-of v10, v7, Lcom/htc/launcher/CellLayout;

    if-eqz v10, :cond_3

    move-object v4, v7

    .line 3636
    check-cast v4, Lcom/htc/launcher/CellLayout;

    .line 3637
    .local v4, screen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3638
    invoke-virtual {v4, v1, p1, p2}, Lcom/htc/launcher/CellLayout;->findVacantCellsForSpan(Ljava/util/List;II)V

    .line 3639
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 3640
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #vCell:Lcom/htc/launcher/CellInfo$VacantCell;
    check-cast v8, Lcom/htc/launcher/CellInfo$VacantCell;

    .line 3641
    .restart local v8       #vCell:Lcom/htc/launcher/CellInfo$VacantCell;
    move v0, v5

    .line 3664
    .end local v4           #screen:Lcom/htc/launcher/CellLayout;
    .end local v5           #screenIndex:I
    .end local v7           #temp:Landroid/view/View;
    :cond_0
    move v6, v0

    .line 3665
    .local v6, snapPage:I
    if-ltz v0, :cond_1

    iget v10, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    if-eq v0, v10, :cond_1

    .line 3666
    new-instance v10, Lcom/htc/launcher/Workspace$8;

    invoke-direct {v10, p0, v6}, Lcom/htc/launcher/Workspace$8;-><init>(Lcom/htc/launcher/Workspace;I)V

    const-wide/16 v11, 0x12c

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3674
    :cond_1
    const/4 v3, 0x0

    .line 3675
    .local v3, info:Lcom/htc/launcher/CellInfo;
    if-eqz v8, :cond_2

    .line 3676
    new-instance v3, Lcom/htc/launcher/CellInfo;

    .end local v3           #info:Lcom/htc/launcher/CellInfo;
    invoke-direct {v3}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 3677
    .restart local v3       #info:Lcom/htc/launcher/CellInfo;
    iget v10, v8, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    iput v10, v3, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 3678
    iget v10, v8, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    iput v10, v3, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 3679
    iget v10, v8, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iput v10, v3, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 3680
    iget v10, v8, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    iput v10, v3, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 3681
    iput v0, v3, Lcom/htc/launcher/CellInfo;->screen:I

    .line 3683
    :cond_2
    return-object v3

    .line 3632
    .end local v3           #info:Lcom/htc/launcher/CellInfo;
    .end local v6           #snapPage:I
    .restart local v5       #screenIndex:I
    .restart local v7       #temp:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private scrollToScreen(I)Z
    .locals 4
    .parameter "screen"

    .prologue
    .line 4196
    if-gez p1, :cond_0

    .line 4197
    const/4 v1, 0x0

    .line 4205
    :goto_0
    return v1

    .line 4198
    :cond_0
    move v0, p1

    .line 4199
    .local v0, snapPage:I
    new-instance v1, Lcom/htc/launcher/Workspace$9;

    invoke-direct {v1, p0, v0}, Lcom/htc/launcher/Workspace$9;-><init>(Lcom/htc/launcher/Workspace;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4205
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static setDefaultScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 3892
    invoke-static {p0}, Lcom/htc/launcher/settings/SettingUtil;->setDefaultScreenIndex(I)V

    .line 3893
    return-void
.end method

.method private setDoingFling(Z)V
    .locals 0
    .parameter "mDidfling"

    .prologue
    .line 4418
    iput-boolean p1, p0, Lcom/htc/launcher/Workspace;->mDidfling:Z

    .line 4419
    return-void
.end method

.method private setDoingScroll(Z)V
    .locals 0
    .parameter "mDidScroll"

    .prologue
    .line 4410
    iput-boolean p1, p0, Lcom/htc/launcher/Workspace;->mDidScroll:Z

    .line 4411
    return-void
.end method

.method private showSelectedItemArea(IIIII)V
    .locals 6
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 4492
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4498
    :cond_0
    :goto_0
    return-void

    .line 4494
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 4495
    .local v0, fxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-eqz v0, :cond_0

    .line 4497
    const/4 v5, 0x1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showDropArea(IIIIZ)V

    goto :goto_0
.end method

.method private updateApplicationInfo(Ljava/lang/String;Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 10
    .parameter "packageName"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3351
    iget-object v2, p3, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 3352
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3353
    .local v4, name:Landroid/content/ComponentName;
    iget v6, p3, Lcom/htc/launcher/ApplicationInfo;->itemType:I

    if-eqz v6, :cond_0

    iget v6, p3, Lcom/htc/launcher/ApplicationInfo;->itemType:I

    if-ne v6, v9, :cond_5

    :cond_0
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3358
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Lcom/htc/launcher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/htc/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3361
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 3362
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3364
    :cond_1
    if-eqz v1, :cond_5

    iget-object v6, p3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v1, v6, :cond_5

    .line 3365
    iget-object v6, p3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 3366
    iget-object v6, p3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3367
    :cond_2
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3368
    iput-boolean v9, p3, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 3369
    if-eqz p2, :cond_5

    .line 3370
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v6, p2

    .line 3371
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 3372
    .local v5, viewCount:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v5, :cond_5

    move-object v6, p2

    .line 3373
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3374
    .local v0, childView:Landroid/view/View;
    instance-of v6, v0, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 3375
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #childView:Landroid/view/View;
    iget-object v6, p3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v6, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3372
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3379
    .end local v3           #k:I
    .end local v5           #viewCount:I
    :cond_4
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 3380
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v6, p3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v8, v6, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3386
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method private updateWallpaperOffset(II)V
    .locals 5
    .parameter "scrollRange"
    .parameter "scrollX"

    .prologue
    const/4 v4, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 711
    .local v0, win:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 712
    const-string v1, "Workspace"

    const-string v2, "view is not attached to window so wallpaper offset will not be updated."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v2}, Lcom/htc/launcher/LeapController;->getVirtualScrollX()I

    move-result v2

    iget v3, p0, Lcom/htc/launcher/Workspace;->mRight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/launcher/Workspace;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2, v4}, Lcom/htc/launcher/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_0

    .line 720
    :cond_1
    if-le p2, p1, :cond_3

    .line 721
    rem-int/2addr p2, p1

    .line 726
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/htc/launcher/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 727
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2, v4}, Lcom/htc/launcher/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_0

    .line 723
    :cond_3
    if-gez p2, :cond_2

    .line 724
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/2addr v1, p1

    sub-int p2, p1, v1

    goto :goto_1
.end method

.method private writeRearrengeItemsToDataBase(III)V
    .locals 11
    .parameter "toScreen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2158
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v10

    .line 2159
    .local v10, targetScreen:Lcom/htc/launcher/Workspace$Screen;
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v2

    .line 2161
    .local v2, dropScreen:I
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mRearrangedDraggee:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2162
    invoke-interface {v10}, Lcom/htc/launcher/Workspace$Screen;->getRearrangeItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 2163
    .local v8, listDraggee:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/Draggee;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Draggee;

    .line 2165
    .local v1, drag:Lcom/htc/launcher/Draggee;
    invoke-interface {v1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 2166
    .local v7, info:Lcom/htc/launcher/ItemInfo;
    invoke-interface {v1}, Lcom/htc/launcher/Draggee;->getCellXY()Landroid/graphics/Point;

    move-result-object v9

    .line 2168
    .local v9, p:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v4, v9, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;->moveRearrangedItem(Lcom/htc/launcher/Draggee;IIIZ)Z

    .line 2170
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mRearrangedDraggee:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2173
    .end local v1           #drag:Lcom/htc/launcher/Draggee;
    .end local v7           #info:Lcom/htc/launcher/ItemInfo;
    .end local v9           #p:Landroid/graphics/Point;
    :cond_0
    new-instance v0, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;

    invoke-direct {v0, p0, v2}, Lcom/htc/launcher/Workspace$WriteRearrangedItemToDatabase;-><init>(Lcom/htc/launcher/Workspace;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2174
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 2695
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 2696
    .local v7, info:Lcom/htc/launcher/ItemInfo;
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    .line 2697
    .local v6, cellInfo:Lcom/htc/launcher/CellInfo;
    const/4 v4, 0x1

    .line 2698
    .local v4, cellHSpan:I
    const/4 v5, 0x1

    .line 2699
    .local v5, cellVSpan:I
    if-eqz v6, :cond_1

    .line 2700
    iget v4, v6, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2701
    iget v5, v6, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2707
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v8

    .line 2708
    .local v8, screenIndex:I
    invoke-virtual {p0, v8}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 2717
    .local v0, screen:Lcom/htc/launcher/Workspace$Screen;
    if-nez v0, :cond_2

    .line 2718
    const/4 v1, 0x0

    .line 2734
    :goto_1
    return v1

    .line 2702
    .end local v0           #screen:Lcom/htc/launcher/Workspace$Screen;
    .end local v8           #screenIndex:I
    :cond_1
    if-eqz v7, :cond_0

    .line 2703
    iget v4, v7, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 2704
    iget v5, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    goto :goto_0

    .line 2720
    .restart local v0       #screen:Lcom/htc/launcher/Workspace$Screen;
    .restart local v8       #screenIndex:I
    :cond_2
    sub-int v1, p2, p4

    sub-int v2, p3, p5

    invoke-interface {v0, p6, v1, v2}, Lcom/htc/launcher/Workspace$Screen;->acceptDropByMerge(Lcom/htc/launcher/Draggee;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/launcher/Workspace;->m_bDropByMerge:Z

    .line 2721
    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->m_bDropByMerge:Z

    if-eqz v1, :cond_3

    .line 2722
    const/4 v1, 0x1

    goto :goto_1

    .line 2728
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->mOnSnapToScreen:Z

    if-nez v1, :cond_4

    .line 2729
    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v1, p6

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->tryRearrangeForSpan(Lcom/htc/launcher/Draggee;IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2730
    const/4 v1, 0x1

    goto :goto_1

    .line 2734
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method addApplicationShortcut(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/CellInfo;)V
    .locals 1
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    .line 2090
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/launcher/Workspace;->addApplicationShortcut(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/CellInfo;Z)V

    .line 2091
    return-void
.end method

.method addApplicationShortcut(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/CellInfo;Z)V
    .locals 7
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2095
    iget v0, p2, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v4

    .line 2096
    .local v4, screen:Lcom/htc/launcher/Workspace$Screen;
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 2097
    .local v6, result:[I
    iget v0, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v1, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-interface {v4, v0, v1, v6}, Lcom/htc/launcher/Workspace$Screen;->cellToPoint(II[I)V

    .line 2098
    const/4 v0, 0x0

    aget v1, v6, v0

    const/4 v0, 0x1

    aget v2, v6, v0

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/htc/launcher/Workspace$Screen;Z)V

    .line 2099
    return-void
.end method

.method addApplicationShortcutByCellXY(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/CellInfo;Z)V
    .locals 6
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2103
    iget v0, p2, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v4

    .line 2104
    .local v4, screen:Lcom/htc/launcher/Workspace$Screen;
    iget v1, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/htc/launcher/Workspace$Screen;Z)V

    .line 2105
    return-void
.end method

.method addDirtyView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 638
    .local v1, screen:Landroid/view/ViewParent;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v0, v2, :cond_1

    .line 639
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 640
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->drawScreens(I)V

    .line 638
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    if-nez v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    .line 1035
    .local v0, openFolder:Lcom/htc/launcher/Folder;
    if-nez v0, :cond_2

    .line 1036
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1037
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1038
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 1039
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1050
    .end local v0           #openFolder:Lcom/htc/launcher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1041
    .restart local v0       #openFolder:Lcom/htc/launcher/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 1042
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1043
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1047
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/htc/launcher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 389
    if-ltz p2, :cond_0

    iget v3, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-lt p2, v3, :cond_1

    .line 390
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The screen must be >= 0 and < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 394
    .local v1, group:Lcom/htc/launcher/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 397
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/htc/launcher/CellLayout$LayoutParams;

    if-nez v3, :cond_3

    .line 398
    :cond_2
    new-instance v2, Lcom/htc/launcher/CellLayout$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, p3, p4, p5, p6}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 399
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    move-object v0, v2

    .line 402
    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 406
    .local v0, clp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iput p3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 407
    iput p4, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 408
    iput p5, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 409
    iput p6, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 437
    if-eqz p7, :cond_4

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v1, p1, v3, v2}, Lcom/htc/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 443
    return-void

    .line 437
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 211
    instance-of v0, p1, Lcom/htc/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 219
    instance-of v0, p1, Lcom/htc/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 223
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 227
    instance-of v0, p1, Lcom/htc/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 231
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 203
    instance-of v0, p1, Lcom/htc/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 235
    instance-of v0, p1, Lcom/htc/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 3194
    iget-boolean v0, p0, Lcom/htc/launcher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method beginFling()V
    .locals 3

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->isDoingFling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1288
    :cond_0
    return-void

    .line 1284
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/launcher/Workspace;->setDoingFling(Z)V

    .line 1285
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;

    .line 1286
    .local v1, l:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    invoke-interface {v1}, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;->onBeginFling()V

    goto :goto_0
.end method

.method beginScroll(ZI)V
    .locals 6
    .parameter "isSnap"
    .parameter "dest"

    .prologue
    const/4 v5, 0x1

    .line 1302
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "Scroll"

    const-string v4, "BEGIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Launcher;->setBackgroundTrafficLight(Z)V

    .line 1308
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v3}, Lcom/htc/launcher/ScrollMonitor;->startOfBeginScroll()V

    .line 1311
    invoke-direct {p0, v5}, Lcom/htc/launcher/Workspace;->setDoingScroll(Z)V

    .line 1312
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->instance()Lcom/htc/launcher/PendingUIUpdate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/PendingUIUpdate;->beginScroll()V

    .line 1314
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mResumeAppWidgets:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1315
    sget-object v3, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/htc/launcher/LauncherAppWidgetHost;->stopListening()V

    .line 1317
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mNotifyScrollEnded:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1319
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 1322
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3, v5}, Lcom/htc/launcher/Launcher;->raisePriority(Z)V

    .line 1331
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;

    .line 1332
    .local v2, l:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    iget v3, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-interface {v2, p1, v3, p2}, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;->onBeginScroll(ZII)V

    goto :goto_1

    .line 1335
    .end local v2           #l:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    :cond_3
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v3, v5}, Lcom/htc/launcher/LeapController;->setTouchEventHolder(I)V

    .line 1337
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    iget v4, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    invoke-virtual {v3, v4}, Lcom/htc/launcher/ScrollMonitor;->endOfBeginScroll(I)V

    .line 1340
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1341
    .local v0, focusedChild:Landroid/view/View;
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 1342
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method buildChildrenCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1508
    return-void
.end method

.method public canEnableThumbnailMode()Z
    .locals 1

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canEnterLeapMode()Z
    .locals 1

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->canEnableLeapMode()Z

    move-result v0

    return v0
.end method

.method public claimDrop(II[I)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 4188
    const/4 v0, 0x0

    return v0
.end method

.method clear()V
    .locals 6

    .prologue
    .line 4427
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->clearTempRemovedChildren()V

    .line 4429
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 4430
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4431
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4433
    .local v1, child:Landroid/view/View;
    instance-of v3, v1, Lcom/htc/launcher/CellLayout;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 4434
    check-cast v3, Lcom/htc/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/CellLayout;->clear()V

    .line 4435
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4430
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4437
    :cond_1
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 4438
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeWidgetsAndLoadUserItems: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child.class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4442
    .end local v1           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public clearCellInPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 4445
    new-instance v0, Lcom/htc/launcher/Workspace$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/launcher/Workspace$11;-><init>(Lcom/htc/launcher/Workspace;I)V

    .line 4458
    .local v0, runnble:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 4459
    return-void
.end method

.method clearChildrenCache()V
    .locals 2

    .prologue
    .line 1470
    sget-boolean v0, Lcom/htc/launcher/Workspace;->hasCache:Z

    if-nez v0, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/Workspace;->hasCache:Z

    .line 1474
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Children Cache"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearTempRemovedChildren()V
    .locals 5

    .prologue
    .line 3773
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3774
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3775
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3776
    .local v3, temp:Landroid/view/View;
    instance-of v4, v3, Lcom/htc/launcher/CellLayout;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 3777
    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 3778
    .local v0, cell:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->clearTempRemovedChildren()V

    .line 3774
    .end local v0           #cell:Lcom/htc/launcher/CellLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3781
    .end local v3           #temp:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-wide v2, v2, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 750
    sget-object v2, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v2}, Lcom/htc/launcher/OrientationMonitor;->beginDispatchDraw()V

    .line 753
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v2}, Lcom/htc/launcher/ScrollMonitor;->startDrawWorkspace()V

    .line 757
    :cond_1
    const/16 v17, 0x0

    .line 762
    .local v17, restore:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isDrawerUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 763
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/launcher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 764
    .local v9, clipBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 765
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/Workspace;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    .line 901
    .end local v9           #clipBounds:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void

    .line 770
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isDrawerMoving()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 771
    const/16 v17, 0x1

    .line 772
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDrawerHandle()Landroid/view/View;

    move-result-object v19

    .line 775
    .local v19, view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v18, v2, v3

    .line 777
    .local v18, top:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    int-to-float v3, v2

    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/Workspace;->mDrawerContentWidth:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mDrawerContentHeight:I

    add-int v2, v2, v18

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 781
    .end local v18           #top:I
    .end local v19           #view:Landroid/view/View;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/Workspace;->drawWallpaper(Landroid/graphics/Canvas;)V

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getDrawingTime()J

    move-result-wide v13

    .line 856
    .local v13, drawingTime:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    if-gez v2, :cond_9

    .line 857
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/htc/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 887
    :cond_5
    :goto_1
    if-eqz v17, :cond_6

    .line 888
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 891
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/launcher/ScrollMonitor;->endDrawWorkspace(II)V

    .line 895
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-wide v2, v2, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 896
    sget-boolean v2, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v2, :cond_8

    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time spent on Orientation - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-wide v6, v6, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    .line 899
    sget-object v2, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v2}, Lcom/htc/launcher/OrientationMonitor;->endDispatchDraw()V

    goto/16 :goto_0

    .line 858
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_a

    .line 859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/htc/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 861
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/launcher/Workspace;->mIsNeedtoDrawAllScreens:Z

    if-eqz v2, :cond_c

    .line 862
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 863
    .local v11, count:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 864
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v15, v2, :cond_b

    .line 865
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, childView:Landroid/view/View;
    move-object v2, v8

    .line 866
    check-cast v2, Lcom/htc/launcher/CellLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/launcher/CellLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v13, v14}, Lcom/htc/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 864
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 869
    .end local v8           #childView:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 870
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/launcher/Workspace;->mIsNeedtoDrawAllScreens:Z

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->pulseFreezeAllScreens()V

    goto/16 :goto_1

    .line 873
    .end local v11           #count:I
    .end local v15           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    div-int v12, v2, v3

    .line 874
    .local v12, currentScreen:I
    add-int/lit8 v16, v12, 0x1

    .line 876
    .local v16, neighborScreen:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mBounceScreen:I

    if-eq v12, v2, :cond_d

    .line 877
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/htc/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 879
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/Workspace;->mScrollX:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 880
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mBounceScreen:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_5

    .line 881
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/htc/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x3

    const/4 v10, 0x1

    .line 3911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3912
    .local v0, action:I
    iget v8, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    .line 3916
    .local v8, stateBeforeDispatch:I
    iget-object v11, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v11}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    if-eqz v11, :cond_1

    move v4, v10

    .line 3979
    :cond_0
    :goto_0
    return v4

    .line 3919
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 3921
    .local v4, handled:Z
    iget-boolean v3, p0, Lcom/htc/launcher/Workspace;->mTouchDownRedirected:Z

    .line 3922
    .local v3, downRedirected:Z
    if-eq v0, v10, :cond_2

    if-ne v0, v12, :cond_3

    .line 3923
    :cond_2
    iput-boolean v7, p0, Lcom/htc/launcher/Workspace;->mTouchDownRedirected:Z

    .line 3925
    :cond_3
    iget-object v11, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v11}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v11

    if-nez v11, :cond_0

    .line 3929
    iget-object v11, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v11}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v6

    .line 3930
    .local v6, inLeap:Z
    if-eqz v6, :cond_4

    .line 3931
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    invoke-interface {v10, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 3933
    :cond_4
    iget v11, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-eqz v11, :cond_5

    move v7, v10

    .line 3936
    .local v7, scrolling:Z
    :cond_5
    if-eqz v7, :cond_6

    .line 3938
    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    .line 3939
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 3940
    .local v1, cancel:Landroid/view/MotionEvent;
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3941
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    invoke-interface {v10, p0, v1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 3942
    sget-boolean v10, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v10, :cond_0

    const-string v10, "Workspace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cancel by begin scroll:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3948
    .end local v1           #cancel:Landroid/view/MotionEvent;
    :cond_6
    if-ne v0, v12, :cond_7

    .line 3949
    const-string v11, "Workspace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DEBUG_TOUCH] dispatchTouchEvent() ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") return!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3963
    :cond_7
    const/4 v5, 0x0

    .line 3964
    .local v5, hit:Z
    iget v11, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3965
    .local v9, temp:Landroid/view/View;
    instance-of v11, v9, Lcom/htc/launcher/CellLayout;

    if-eqz v11, :cond_8

    move-object v2, v9

    .line 3966
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 3967
    .local v2, cell:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->isChildHit()Z

    move-result v5

    .line 3970
    .end local v2           #cell:Lcom/htc/launcher/CellLayout;
    :cond_8
    sget-boolean v11, Lcom/htc/launcher/Workspace;->DEBUG_TOUCH:Z

    if-eqz v11, :cond_9

    const-string v11, "Workspace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hit:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " dispatch touch:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    :cond_9
    if-nez v5, :cond_a

    .line 3972
    iget-object v11, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    invoke-interface {v11, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    .line 3973
    if-nez v0, :cond_0

    .line 3974
    iput-boolean v10, p0, Lcom/htc/launcher/Workspace;->mTouchDownRedirected:Z

    goto/16 :goto_0

    .line 3975
    :cond_a
    if-eqz v3, :cond_0

    if-ne v0, v10, :cond_0

    .line 3976
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    invoke-interface {v10, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1012
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    :goto_0
    return v0

    .line 1015
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    if-lez v1, :cond_2

    .line 1017
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->drawScreens(I)V

    .line 1018
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    goto :goto_0

    .line 1021
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    .line 1022
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1023
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->drawScreens(I)V

    .line 1024
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    goto :goto_0

    .line 1028
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public doNotRestoreCurrentScreen()V
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Workspace;->isRestoreCurrentPage:Z

    .line 2022
    return-void
.end method

.method public drawAllScreens()V
    .locals 1

    .prologue
    .line 4031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Workspace;->mIsNeedtoDrawAllScreens:Z

    .line 4032
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->invalidate()V

    .line 4033
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 906
    invoke-virtual {p0, p2}, Lcom/htc/launcher/Workspace;->isDrawCellCache(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    :goto_0
    return v1

    .line 910
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method drawScreens(I)V
    .locals 9
    .parameter "screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 654
    .local v3, now:J
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 655
    .local v0, childCount:I
    packed-switch p1, :pswitch_data_0

    .line 676
    const v6, -0x7ffffffe

    if-ne p1, v6, :cond_6

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v5

    .line 677
    .local v5, which:I
    :goto_0
    sget-boolean v6, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawScreens("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 679
    .local v1, childView:Landroid/view/View;
    instance-of v6, v1, Lcom/htc/launcher/CellLayout;

    if-eqz v6, :cond_7

    move-object v6, v1

    .line 680
    check-cast v6, Lcom/htc/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/htc/launcher/CellLayout;->updateCellLayoutCache()V

    .line 681
    check-cast v1, Lcom/htc/launcher/CellLayout;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->stopAutoUpdateCellLayoutCache()V

    .line 686
    .end local v5           #which:I
    :cond_1
    :goto_1
    sget-boolean v6, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v6, :cond_2

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v3, v6, v3

    .line 688
    const/high16 v6, -0x8000

    if-ne p1, v6, :cond_2

    .line 689
    sget-boolean v6, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v6, :cond_8

    const-string v6, "[ScrollKPI]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw all screens takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_2
    :goto_2
    return-void

    .line 657
    :pswitch_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_1

    .line 658
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 659
    .restart local v1       #childView:Landroid/view/View;
    instance-of v6, v1, Lcom/htc/launcher/CellLayout;

    if-eqz v6, :cond_3

    move-object v6, v1

    .line 660
    check-cast v6, Lcom/htc/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/htc/launcher/CellLayout;->updateCellLayoutCache()V

    .line 661
    check-cast v1, Lcom/htc/launcher/CellLayout;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->stopAutoUpdateCellLayoutCache()V

    .line 657
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 666
    .end local v2           #i:I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v0, :cond_1

    .line 667
    iget v6, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    if-ne v2, v6, :cond_5

    .line 666
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 668
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 669
    .restart local v1       #childView:Landroid/view/View;
    instance-of v6, v1, Lcom/htc/launcher/CellLayout;

    if-eqz v6, :cond_4

    move-object v6, v1

    .line 670
    check-cast v6, Lcom/htc/launcher/CellLayout;

    invoke-virtual {v6}, Lcom/htc/launcher/CellLayout;->updateCellLayoutCache()V

    .line 671
    check-cast v1, Lcom/htc/launcher/CellLayout;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->stopAutoUpdateCellLayoutCache()V

    goto :goto_5

    .end local v2           #i:I
    :cond_6
    move v5, p1

    .line 676
    goto/16 :goto_0

    .line 683
    .restart local v1       #childView:Landroid/view/View;
    .restart local v5       #which:I
    :cond_7
    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawScreens("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") but childView is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 691
    .end local v1           #childView:Landroid/view/View;
    .end local v5           #which:I
    :cond_8
    sget-boolean v6, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v6, :cond_2

    const-string v6, "[ScrollKPI]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw screen#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 655
    :pswitch_data_0
    .packed-switch -0x80000000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dropBack()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4236
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    if-nez v0, :cond_1

    .line 4237
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Workspace"

    const-string v1, "[EDIT_DEBUG]# Workspace.dropBack() - mDraggeeItemInfo = null, return!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v8

    .line 4261
    :goto_0
    return v0

    .line 4241
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v0, v0, Lcom/htc/launcher/FxItemInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v0, v0, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v0, :cond_3

    .line 4242
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 4248
    :goto_1
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v2, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v4, v4, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget-object v5, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v5, v5, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resumeItemInScreen(Lcom/htc/launcher/Draggee;IIII)Z

    .line 4250
    iput-boolean v8, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    .line 4253
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v6, v0, :cond_4

    .line 4254
    invoke-virtual {p0, v6}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v7

    .line 4255
    .local v7, tmpScreen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v7}, Lcom/htc/launcher/Workspace$Screen;->onEndDrag()V

    .line 4253
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4244
    .end local v6           #i:I
    .end local v7           #tmpScreen:Lcom/htc/launcher/Workspace$Screen;
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofLegacyItem()V

    goto :goto_1

    .line 4257
    .restart local v6       #i:I
    :cond_4
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "Workspace"

    const-string v1, "[EDIT_DEBUG]# Workspace.dropBack() - done !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    :cond_5
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->showDrag()V

    .line 4259
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->resetDragInfo()V

    .line 4261
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dropMove(IIIII)V
    .locals 7
    .parameter "dropScreen"
    .parameter "dropX"
    .parameter "dropY"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 4265
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] Workspace.dropMove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - enter !!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_2

    .line 4267
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG]# dropMove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDraggee = null, return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4324
    :cond_1
    :goto_0
    return-void

    .line 4271
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4272
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG]# dropMove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mDraggee.getItem() = null, return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4276
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ne p4, v0, :cond_4

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v0, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne p5, v0, :cond_4

    .line 4277
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG]# dropMove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") same position!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4281
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v0, v0, Lcom/htc/launcher/FxItemInfo;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v0, v0, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v0, :cond_9

    .line 4282
    :cond_5
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_6

    const-string v0, "Workspace"

    const-string v1, "[EDIT_DEBUG]# Workspace.dropMove() poofFxItem()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4283
    :cond_6
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 4288
    :goto_1
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_7

    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG]# Workspace.dropMove() - Before SpanX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v2, v2, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SpanY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v2, v2, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    :cond_7
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    const/4 v5, 0x1

    move v2, p1

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;->moveFxItem(Lcom/htc/launcher/Draggee;IIIZ)Z

    .line 4297
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/launcher/Workspace;->checkWidgetResize(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/CellLayout;)Z

    move-result v6

    .line 4298
    .local v6, doResize:Z
    if-eqz v6, :cond_8

    .line 4299
    new-instance v0, Lcom/htc/launcher/Workspace$10;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Workspace$10;-><init>(Lcom/htc/launcher/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 4308
    :cond_8
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->showDrag()V

    .line 4323
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->resetDragInfo()V

    goto/16 :goto_0

    .line 4285
    .end local v6           #doResize:Z
    :cond_9
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_a

    const-string v0, "Workspace"

    const-string v1, "[EDIT_DEBUG]# Workspace.dropMove() poofLegacyItem()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    :cond_a
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofLegacyItem()V

    goto :goto_1
.end method

.method enableChildrenCache()V
    .locals 3

    .prologue
    .line 1444
    sget-boolean v1, Lcom/htc/launcher/Workspace;->hasCache:Z

    if-eqz v1, :cond_0

    .line 1467
    :goto_0
    return-void

    .line 1446
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/launcher/Workspace;->hasCache:Z

    .line 1448
    sget-boolean v1, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "Children Cache"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 1467
    .local v0, count:I
    goto :goto_0
.end method

.method enableScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1055
    iput-boolean p1, p0, Lcom/htc/launcher/Workspace;->mCanScroll:Z

    .line 1057
    if-nez p1, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->clearChildrenCache()V

    .line 1059
    :cond_0
    return-void
.end method

.method public enableShowVacantRect(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3547
    iput-boolean p1, p0, Lcom/htc/launcher/Workspace;->isShowVacantRect:Z

    .line 3548
    return-void
.end method

.method endScroll()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1374
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v1}, Lcom/htc/launcher/ScrollMonitor;->end()V

    .line 1379
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->instance()Lcom/htc/launcher/PendingUIUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/PendingUIUpdate;->endScroll()V

    .line 1381
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mResumeAppWidgets:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1382
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mResumeAppWidgets:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1384
    invoke-direct {p0, v4}, Lcom/htc/launcher/Workspace;->setDoingFling(Z)V

    .line 1385
    invoke-direct {p0, v4}, Lcom/htc/launcher/Workspace;->setDoingScroll(Z)V

    .line 1386
    iput-boolean v4, p0, Lcom/htc/launcher/Workspace;->isScrolling:Z

    .line 1388
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mNotifyScrollEnded:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1389
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mNotifyScrollEnded:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1391
    iget v1, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    if-nez v1, :cond_1

    .line 1392
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 1396
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1, v4}, Lcom/htc/launcher/LeapController;->setTouchEventHolder(I)V

    .line 1397
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1398
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;

    .line 1399
    .local v8, listener:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    invoke-interface {v8}, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;->onEndScroll()V

    goto :goto_1

    .line 1402
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #listener:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    :cond_2
    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    if-eqz v1, :cond_3

    .line 1404
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 1405
    .local v0, currentScreen:Lcom/htc/launcher/CellLayout;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_3

    .line 1406
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1407
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    iget v2, p0, Lcom/htc/launcher/Workspace;->mDragOverX:I

    iget v3, p0, Lcom/htc/launcher/Workspace;->mDragOverY:I

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v4, v4, Lcom/htc/launcher/CellInfo;->spanX:I

    iget-object v5, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v5, v5, Lcom/htc/launcher/CellInfo;->spanY:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->rearrange(Lcom/htc/launcher/Draggee;IIII)V

    .line 1412
    .end local v0           #currentScreen:Lcom/htc/launcher/CellLayout;
    :cond_3
    sget-boolean v1, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v1, :cond_4

    const-string v1, "Scroll"

    const-string v2, "END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_4
    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    if-eqz v1, :cond_7

    .line 1415
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_6

    .line 1416
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v1, v1, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout;

    .line 1417
    .local v6, cellLayout:Lcom/htc/launcher/CellLayout;
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v1, v1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-virtual {v6, v1}, Lcom/htc/launcher/CellLayout;->onDropAborted(Lcom/htc/launcher/Draggee;)V

    .line 1418
    sget-boolean v1, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v1, :cond_5

    const-string v1, "Workspace"

    const-string v2, "[EDIT_DEBUG] Workspace.endScroll() - dropBack"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_5
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->dropBack()Z

    .line 1420
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1421
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->abortStickyDrag()V

    .line 1428
    .end local v6           #cellLayout:Lcom/htc/launcher/CellLayout;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->invalidate()V

    goto/16 :goto_0

    .line 1425
    :cond_7
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v1, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->dropToAvailableCell()V

    goto :goto_2
.end method

.method public enterEditMode(Ljava/lang/Object;Lcom/htc/launcher/DragSource;)V
    .locals 20
    .parameter "dragInfo"
    .parameter "source"

    .prologue
    .line 2320
    sget-boolean v15, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v15, :cond_0

    const-string v15, "Workspace"

    const-string v16, "[EDIT_DEBUG] Workspace.enterEditMode()"

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/launcher/Workspace;->mEditing:Z

    if-eqz v15, :cond_2

    .line 2399
    :cond_1
    :goto_0
    return-void

    .line 2325
    :cond_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/launcher/Workspace;->mEditing:Z

    .line 2327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/launcher/Launcher;->setAbortDrag(Z)V

    .line 2332
    new-instance v15, Lcom/htc/launcher/Workspace$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/launcher/Workspace$3;-><init>(Lcom/htc/launcher/Workspace;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2339
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/CellLayout;

    .line 2341
    .local v9, screen:Lcom/htc/launcher/CellLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v15, v15, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v15

    if-nez v15, :cond_3

    .line 2344
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/launcher/Workspace;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 2346
    :cond_3
    invoke-virtual {v9}, Lcom/htc/launcher/CellLayout;->isVacantVisible()Z

    move-result v15

    if-nez v15, :cond_1

    .line 2349
    const/4 v1, -0x1

    .local v1, cellX:I
    const/4 v2, -0x1

    .line 2351
    .local v2, cellY:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-nez v15, :cond_7

    move-object/from16 v7, p1

    .line 2352
    check-cast v7, Lcom/htc/launcher/ItemInfo;

    .line 2353
    .local v7, info:Lcom/htc/launcher/ItemInfo;
    iget-wide v15, v7, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v17, -0x64

    cmp-long v15, v15, v17

    if-nez v15, :cond_4

    .line 2354
    iget v1, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    :cond_4
    iget v2, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 2355
    iget v10, v7, Lcom/htc/launcher/ItemInfo;->spanX:I

    .local v10, spanX:I
    iget v11, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    .line 2360
    .end local v7           #info:Lcom/htc/launcher/ItemInfo;
    .local v11, spanY:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    if-nez v15, :cond_5

    .line 2361
    new-instance v15, Landroid/os/HandlerThread;

    const-string v16, "UpdateVacantThread"

    const/16 v17, 0xa

    invoke-direct/range {v15 .. v17}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    .line 2362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    .line 2363
    new-instance v15, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantHandler:Landroid/os/Handler;

    .line 2366
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    if-nez v15, :cond_6

    .line 2367
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    .line 2370
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2372
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v3

    .line 2373
    .local v3, currentScreen:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2374
    .local v12, start:J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v6, v15, :cond_b

    .line 2375
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2376
    .local v14, temp:Landroid/view/View;
    instance-of v15, v14, Lcom/htc/launcher/CellLayout;

    if-nez v15, :cond_8

    .line 2374
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2357
    .end local v3           #currentScreen:I
    .end local v6           #i:I
    .end local v10           #spanX:I
    .end local v11           #spanY:I
    .end local v12           #start:J
    .end local v14           #temp:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v10, v15, Lcom/htc/launcher/CellInfo;->spanX:I

    .restart local v10       #spanX:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v11, v15, Lcom/htc/launcher/CellInfo;->spanY:I

    .restart local v11       #spanY:I
    goto :goto_1

    .restart local v3       #currentScreen:I
    .restart local v6       #i:I
    .restart local v12       #start:J
    .restart local v14       #temp:Landroid/view/View;
    :cond_8
    move-object v9, v14

    .line 2378
    check-cast v9, Lcom/htc/launcher/CellLayout;

    .line 2379
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/htc/launcher/CellLayout;->setDragInfo(Ljava/lang/Object;)V

    .line 2380
    if-ne v6, v3, :cond_a

    .line 2381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v15, v15, Lcom/htc/launcher/CellInfo;->screen:I

    if-ne v15, v6, :cond_9

    .line 2382
    invoke-virtual {v9}, Lcom/htc/launcher/CellLayout;->clearVacant()V

    .line 2383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v15, v15, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0, v10, v11}, Lcom/htc/launcher/CellLayout;->updateVacant(IIII)V

    goto :goto_3

    .line 2385
    :cond_9
    invoke-virtual {v9}, Lcom/htc/launcher/CellLayout;->clearVacant()V

    .line 2386
    invoke-virtual {v9, v1, v2, v10, v11}, Lcom/htc/launcher/CellLayout;->updateVacant(IIII)V

    goto :goto_3

    .line 2390
    :cond_a
    new-instance v8, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;

    move-object/from16 v15, p1

    check-cast v15, Lcom/htc/launcher/ItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6, v15}, Lcom/htc/launcher/Workspace$UpdateVacantRunnable;-><init>(Lcom/htc/launcher/Workspace;ILcom/htc/launcher/ItemInfo;)V

    .line 2391
    .local v8, r:Lcom/htc/launcher/Workspace$UpdateVacantRunnable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantRunnables:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Workspace;->mUpdateVacantHandler:Landroid/os/Handler;

    invoke-virtual {v15, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2395
    .end local v8           #r:Lcom/htc/launcher/Workspace$UpdateVacantRunnable;
    .end local v14           #temp:Landroid/view/View;
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v4, v15, v12

    .line 2396
    .local v4, diff:J
    sget-boolean v15, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v15, :cond_c

    const-string v15, "UpdateVacant"

    const-string v16, "updateVacant cost %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    :cond_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    goto/16 :goto_0
.end method

.method public estimateDropLocation(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"
    .parameter "recycle"

    .prologue
    .line 2744
    const/4 v0, 0x0

    return-object v0
.end method

.method public exitWidgetResizeMode()V
    .locals 4

    .prologue
    .line 4543
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 4544
    const-string v2, "Workspace"

    const-string v3, "exitWidgetResizeMode when mStartWidgetResizeRunnable is not null"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4545
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    .line 4549
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 4550
    .local v0, currentLayout:Lcom/htc/launcher/CellLayout;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->hasResizeFrames()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4551
    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->finishWidgetResize()Z

    move-result v1

    .line 4552
    .local v1, invalidate:Z
    if-eqz v1, :cond_1

    .line 4556
    .end local v1           #invalidate:Z
    :cond_1
    return-void
.end method

.method findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;
    .locals 2
    .parameter "occupied"

    .prologue
    .line 464
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 465
    .local v0, screen:Lcom/htc/launcher/Workspace$Screen;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0, p1}, Lcom/htc/launcher/Workspace$Screen;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    .line 468
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPage(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, p1, p2}, Lcom/htc/launcher/Launcher;->findPanelFromFxWorkspace(FF)I

    move-result v0

    return v0
.end method

.method public froceUpdateRemote(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 4360
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 3999
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v0

    return v0
.end method

.method getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;
    .locals 2

    .prologue
    .line 2748
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v0

    .line 2749
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentScreenIndex()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getCurrentScreenIndexByScrollX()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->getCurrentScreenIndexByScrollX()I

    move-result v0

    return v0
.end method

.method public getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;
    .locals 1

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    return-object v0
.end method

.method public getFakeCellPadding()I
    .locals 1

    .prologue
    .line 3718
    iget v0, p0, Lcom/htc/launcher/Workspace;->mFakeCellPadding:I

    return v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/htc/launcher/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v10, 0x4

    .line 3133
    iget v7, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3134
    .local v7, screenCount:I
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 3135
    invoke-virtual {p0, v6}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3136
    .local v8, temp:Landroid/view/View;
    instance-of v9, v8, Lcom/htc/launcher/CellLayout;

    if-nez v9, :cond_1

    .line 3134
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v8

    .line 3138
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 3139
    .local v2, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 3140
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 3141
    invoke-virtual {v2, v4}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3142
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 3143
    .local v5, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v9, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_2

    iget v9, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_2

    instance-of v9, v0, Lcom/htc/launcher/Folder;

    if-eqz v9, :cond_2

    move-object v3, v0

    .line 3144
    check-cast v3, Lcom/htc/launcher/Folder;

    .line 3145
    .local v3, f:Lcom/htc/launcher/Folder;
    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_2

    .line 3151
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/htc/launcher/CellLayout;
    .end local v3           #f:Lcom/htc/launcher/Folder;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v8           #temp:Landroid/view/View;
    :goto_2
    return-object v3

    .line 3140
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/htc/launcher/CellLayout;
    .restart local v4       #i:I
    .restart local v5       #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .restart local v8       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3151
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/htc/launcher/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v8           #temp:Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getLauncher()Lcom/htc/launcher/Launcher;
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method public getNextScreen()I
    .locals 1

    .prologue
    .line 4183
    iget v0, p0, Lcom/htc/launcher/Workspace;->mNextScreen:I

    return v0
.end method

.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method getOpenFolder()Lcom/htc/launcher/Folder;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v0

    return-object v0
.end method

.method getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;
    .locals 1
    .parameter "index"

    .prologue
    .line 2753
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Workspace$Screen;

    return-object v0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 3004
    const/4 v2, -0x1

    .line 3005
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 3006
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 3007
    .local v3, vp:Landroid/view/ViewParent;
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3008
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3009
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 3014
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 3008
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 3014
    goto :goto_1
.end method

.method getScrollRange()I
    .locals 2

    .prologue
    .line 3525
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 8
    .parameter "tag"

    .prologue
    .line 3155
    iget v5, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3156
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 3157
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3158
    .local v6, temp:Landroid/view/View;
    instance-of v7, v6, Lcom/htc/launcher/CellLayout;

    if-nez v7, :cond_1

    .line 3156
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v6

    .line 3160
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 3161
    .local v2, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 3162
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 3163
    invoke-virtual {v2, v3}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3164
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_2

    .line 3169
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/htc/launcher/CellLayout;
    .end local v3           #i:I
    .end local v6           #temp:Landroid/view/View;
    :goto_2
    return-object v0

    .line 3162
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/htc/launcher/CellLayout;
    .restart local v3       #i:I
    .restart local v6       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3169
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/htc/launcher/CellLayout;
    .end local v3           #i:I
    .end local v6           #temp:Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getWidthHeightForSpan(II[I)V
    .locals 6
    .parameter "spanX"
    .parameter "spanY"
    .parameter "wh"

    .prologue
    const/4 v1, 0x0

    .line 475
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 476
    .local v0, screen:Lcom/htc/launcher/Workspace$Screen;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, rect:Landroid/graphics/RectF;
    move v2, v1

    move v3, p1

    move v4, p2

    .line 477
    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 478
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v1

    .line 479
    const/4 v1, 0x1

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v1

    .line 480
    return-void
.end method

.method public hasResizeFrame()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 4502
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mStartWidgetResizeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 4512
    :cond_0
    :goto_0
    return v2

    .line 4506
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentPage()I

    move-result v1

    .line 4507
    .local v1, page:I
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 4508
    .local v0, currentPage:Lcom/htc/launcher/CellLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->hasResizeFrames()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4512
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasRoomForSpan(II)Z
    .locals 6
    .parameter "spanX"
    .parameter "spanY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 486
    const/4 v1, 0x0

    .line 487
    .local v1, has:Z
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 488
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 489
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v3

    .line 490
    .local v3, screen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v3, v5, v5, p1, p2}, Lcom/htc/launcher/Workspace$Screen;->updateVacant(IIII)V

    .line 491
    invoke-interface {v3}, Lcom/htc/launcher/Workspace$Screen;->hasVacant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    const/4 v1, 0x1

    .line 488
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v3           #screen:Lcom/htc/launcher/Workspace$Screen;
    :cond_1
    return v1
.end method

.method hasRoomForSpan_ForceUpdate(II)Z
    .locals 6
    .parameter "spanX"
    .parameter "spanY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, has:Z
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 536
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 537
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v3

    .line 538
    .local v3, screen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v3}, Lcom/htc/launcher/Workspace$Screen;->clearVacant()V

    .line 539
    invoke-interface {v3, v5, v5, p1, p2}, Lcom/htc/launcher/Workspace$Screen;->updateVacant(IIII)V

    .line 540
    invoke-interface {v3}, Lcom/htc/launcher/Workspace$Screen;->hasVacant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    const/4 v1, 0x1

    .line 536
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v3           #screen:Lcom/htc/launcher/Workspace$Screen;
    :cond_1
    return v1
.end method

.method hasRoomInAllScreen(II)Z
    .locals 4
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 520
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 523
    .local v2, screen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v2, v0, p1, p2}, Lcom/htc/launcher/Workspace$Screen;->findVacantCellsForSpan(Ljava/util/List;II)V

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 525
    const/4 v3, 0x1

    .line 527
    .end local v0           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    .end local v2           #screen:Lcom/htc/launcher/Workspace$Screen;
    :goto_1
    return v3

    .line 520
    .restart local v0       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    .restart local v2       #screen:Lcom/htc/launcher/Workspace$Screen;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    .end local v0           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    .end local v2           #screen:Lcom/htc/launcher/Workspace$Screen;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasRoomInCurrentScreen(IIZ)Z
    .locals 3
    .parameter "spanX"
    .parameter "spanY"
    .parameter "forShortcut"

    .prologue
    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v1

    .line 515
    .local v1, screen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v1, v0, p1, p2}, Lcom/htc/launcher/Workspace$Screen;->findVacantCellsForSpan(Ljava/util/List;II)V

    .line 516
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method invalidateVacant()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 551
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 552
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 553
    .local v2, screen:Lcom/htc/launcher/Workspace$Screen;
    if-nez v2, :cond_0

    .line 551
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_0
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->isVacantVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->hideVacant()V

    .line 558
    :cond_1
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->clearVacant()V

    goto :goto_1

    .line 560
    .end local v2           #screen:Lcom/htc/launcher/Workspace$Screen;
    :cond_2
    return-void
.end method

.method isCurrentScreenHomeScreen()Z
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDefaultScreenShowing()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDoingScroll()Z
    .locals 1

    .prologue
    .line 4414
    iget-boolean v0, p0, Lcom/htc/launcher/Workspace;->mDidScroll:Z

    return v0
.end method

.method isDrawCellCache(Landroid/view/View;)Z
    .locals 1
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isDrawerMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/htc/launcher/CellLayout;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/htc/launcher/CellLayout;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/launcher/CellLayout;->isCacheReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 3573
    iget-boolean v0, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    return v0
.end method

.method public isFolderIconDragged()Z
    .locals 3

    .prologue
    .line 4485
    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] Workspace.isFolderDragging("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    if-nez v0, :cond_0

    .line 4487
    const/4 v0, 0x0

    .line 4488
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v0, v0, Lcom/htc/launcher/FolderInfo;

    goto :goto_0
.end method

.method public isNeedDropBack()Z
    .locals 1

    .prologue
    .line 4563
    iget-boolean v0, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public isSlideFinish()Z
    .locals 1

    .prologue
    .line 4559
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v0

    return v0
.end method

.method public isValidCellInfo(Lcom/htc/launcher/CellInfo;)Z
    .locals 3
    .parameter "cellInfo"

    .prologue
    .line 1068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    iget v2, p0, Lcom/htc/launcher/Workspace;->mLastMotionY:F

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/launcher/Workspace$Screen;->isValidCellInfo(FFLcom/htc/launcher/CellInfo;)Z

    move-result v0

    return v0
.end method

.method public leaveEditMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2445
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] Workspace.leaveEditMode() mEditing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    :cond_0
    sput-boolean v6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->IsOnFloating:Z

    .line 2448
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2449
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2452
    :cond_1
    iget-boolean v3, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    if-nez v3, :cond_2

    .line 2489
    :goto_0
    return-void

    .line 2455
    :cond_2
    iput-boolean v6, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    .line 2457
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {v3, v4}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 2460
    const/high16 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->setDescendantFocusability(I)V

    .line 2462
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2463
    invoke-virtual {p0, v6}, Lcom/htc/launcher/Workspace;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 2467
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v0, v3, :cond_5

    .line 2468
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2469
    .local v2, temp:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/launcher/CellLayout;

    if-nez v3, :cond_4

    .line 2467
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2471
    :cond_4
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 2472
    .local v1, screen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v1, v7}, Lcom/htc/launcher/CellLayout;->setDragInfo(Ljava/lang/Object;)V

    .line 2473
    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->onEndDrag()V

    goto :goto_2

    .line 2477
    .end local v1           #screen:Lcom/htc/launcher/CellLayout;
    .end local v2           #temp:Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {v3, v4}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 2479
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 2480
    iput-object v7, p0, Lcom/htc/launcher/Workspace;->mUpdateVacantThread:Landroid/os/HandlerThread;

    .line 2482
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 2483
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 2484
    new-instance v3, Lcom/htc/launcher/Workspace$4;

    invoke-direct {v3, p0}, Lcom/htc/launcher/Workspace$4;-><init>(Lcom/htc/launcher/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 3187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Workspace;->mLocked:Z

    .line 3188
    return-void
.end method

.method public moveLegacyItem(Lcom/htc/launcher/Draggee;II)V
    .locals 5
    .parameter "item"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2245
    sget-boolean v2, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG]# Worksapce.moveLegacyItem() from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2247
    .local v0, source:Lcom/htc/launcher/CellLayout;
    invoke-virtual {p0, p3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 2248
    .local v1, target:Lcom/htc/launcher/CellLayout;
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2249
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 2250
    return-void
.end method

.method moveToDefaultScreen()I
    .locals 3

    .prologue
    .line 3447
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/SlideController;->snapToDefaultScreen(I)I

    move-result v0

    .line 3448
    .local v0, duration:I
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3449
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mNotifyScrollEnded:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3541
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->clearChildrenCache()V

    .line 3542
    return-void
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3580
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 3581
    .local v0, currentScreen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v0, v2, v2, v2}, Lcom/htc/launcher/Workspace$Screen;->onDragExit(IIZ)V

    .line 3583
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 3584
    return-void
.end method

.method public onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 2514
    invoke-virtual/range {p0 .. p6}, Lcom/htc/launcher/Workspace;->onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 2519
    return-void
.end method

.method public onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V
    .locals 7
    .parameter "source"
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 2561
    sget-boolean v2, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EDIT_DEBUG] Workspace.onDragExit() mEditing:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2565
    iget-boolean v2, p0, Lcom/htc/launcher/Workspace;->mEditing:Z

    if-eqz v2, :cond_3

    .line 2566
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .local v0, currentScreen:Lcom/htc/launcher/CellLayout;
    move v2, v1

    move v4, v3

    .line 2567
    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->findNearestVacantCell(IIIIZ)Z

    .line 2569
    sub-int v1, p3, p5

    sub-int v2, p4, p6

    if-ne p2, p0, :cond_2

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/launcher/CellLayout;->onDragExit(IIZ)V

    .line 2572
    .end local v0           #currentScreen:Lcom/htc/launcher/CellLayout;
    :cond_1
    return-void

    .restart local v0       #currentScreen:Lcom/htc/launcher/CellLayout;
    :cond_2
    move v3, v5

    .line 2569
    goto :goto_0

    .line 2571
    .end local v0           #currentScreen:Lcom/htc/launcher/CellLayout;
    :cond_3
    sget-boolean v1, Lcom/htc/launcher/Workspace;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 2532
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2533
    .local v0, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2556
    :goto_0
    return-void

    .line 2537
    :cond_0
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 2538
    .local v7, info:Lcom/htc/launcher/ItemInfo;
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    .line 2539
    .local v6, cellInfo:Lcom/htc/launcher/CellInfo;
    const/4 v4, 0x1

    .line 2540
    .local v4, cellHSpan:I
    const/4 v5, 0x1

    .line 2541
    .local v5, cellVSpan:I
    if-eqz v6, :cond_3

    .line 2542
    iget v4, v6, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2543
    iget v5, v6, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2549
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/htc/launcher/Workspace;->mOnSnapToScreen:Z

    if-nez v1, :cond_2

    .line 2551
    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->rearrange(Lcom/htc/launcher/Draggee;IIII)V

    .line 2554
    :cond_2
    sub-int v1, p2, p4

    iput v1, p0, Lcom/htc/launcher/Workspace;->mDragOverX:I

    .line 2555
    sub-int v1, p3, p5

    iput v1, p0, Lcom/htc/launcher/Workspace;->mDragOverY:I

    goto :goto_0

    .line 2544
    :cond_3
    if-eqz v7, :cond_1

    .line 2545
    iget v4, v7, Lcom/htc/launcher/ItemInfo;->spanX:I

    .line 2546
    iget v5, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    goto :goto_1
.end method

.method public onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 18
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 2109
    const-string v4, "Workspace"

    const-string v5, "[EDIT_DEBUG] Workspace.onDrop()"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v10

    .line 2112
    .local v10, dropScreen:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v3

    .line 2114
    .local v3, screen:Lcom/htc/launcher/Workspace$Screen;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/launcher/Workspace;->m_bDropByMerge:Z

    if-eqz v4, :cond_0

    .line 2115
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/launcher/Workspace;->m_bDropByMerge:Z

    .line 2117
    move-object/from16 v0, p6

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lcom/htc/launcher/Workspace$Screen;->mergeDragOverItemAsFolder(Lcom/htc/launcher/Draggee;II)Z

    .line 2119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 2120
    sget-object v4, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/launcher/Workspace;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 2121
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->showDrag()V

    .line 2122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 2147
    :goto_0
    sub-int v4, p2, p4

    sub-int v5, p3, p5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v5}, Lcom/htc/launcher/Workspace;->writeRearrengeItemsToDataBase(III)V

    .line 2150
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v15, v4, :cond_4

    .line 2151
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v17

    .line 2152
    .local v17, tmpScreen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface/range {v17 .. v17}, Lcom/htc/launcher/Workspace$Screen;->onEndDrag()V

    .line 2150
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2124
    .end local v15           #i:I
    .end local v17           #tmpScreen:Lcom/htc/launcher/Workspace$Screen;
    :cond_0
    sget-object v4, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/launcher/Workspace;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 2125
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 2126
    sget-boolean v4, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v4, :cond_1

    .line 2127
    const-string v4, "Workspace"

    const-string v5, "[EDIT_DEBUG]# Workspace.onDrop() source != this, onDropExternal()"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_1
    sub-int v4, p2, p4

    sub-int v5, p3, p5

    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/htc/launcher/Workspace;->onDropExternal(IILjava/lang/Object;Lcom/htc/launcher/Workspace$Screen;)V

    goto :goto_0

    .line 2131
    :cond_2
    sget-boolean v4, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v4, :cond_3

    .line 2132
    const-string v4, "Workspace"

    const-string v5, "[EDIT_DEBUG]# Workspace.onDrop() source = this, dropMove()"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v4, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    if-nez v4, :cond_5

    .line 2154
    :cond_4
    return-void

    .line 2138
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v4, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v4}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v16

    .line 2139
    .local v16, info:Lcom/htc/launcher/ItemInfo;
    const/4 v4, 0x2

    new-array v8, v4, [I

    .line 2140
    .local v8, dropXY:[I
    sub-int v4, p2, p4

    sub-int v5, p3, p5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-interface/range {v3 .. v8}, Lcom/htc/launcher/Workspace$Screen;->pointToDropCell(IIII[I)V

    .line 2142
    sub-int v11, p2, p4

    sub-int v12, p3, p5

    const/4 v4, 0x0

    aget v13, v8, v4

    const/4 v4, 0x1

    aget v14, v8, v4

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/htc/launcher/Workspace;->dropMove(IIIII)V

    goto/16 :goto_0
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 1
    .parameter "target"
    .parameter "success"

    .prologue
    .line 2777
    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/htc/launcher/DropTarget;->getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/launcher/Workspace;->onDropCompleted(Lcom/htc/launcher/DropTarget;ZLcom/htc/launcher/DragSource$DragCompletedAction;)V

    .line 2779
    return-void

    .line 2777
    :cond_0
    sget-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    goto :goto_0
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;ZLcom/htc/launcher/DragSource$DragCompletedAction;)V
    .locals 8
    .parameter "target"
    .parameter "success"
    .parameter "action"

    .prologue
    .line 2803
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] Workspace.onDropCompleted() success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    :cond_0
    if-eqz p2, :cond_e

    .line 2805
    if-eq p1, p0, :cond_c

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v3, :cond_c

    .line 2806
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2807
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->SETTING:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne p3, v3, :cond_5

    .line 2808
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->dropBack()Z

    .line 2863
    .end local p1
    :cond_1
    :goto_0
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-eq p3, v3, :cond_3

    .line 2864
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v3, v3, Lcom/htc/launcher/FxItemInfo;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v3, v3, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v3, :cond_10

    .line 2866
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 2871
    :goto_1
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->resetDragInfo()V

    .line 2874
    :cond_3
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2875
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showFunctionBarHighlight()V

    .line 2877
    :cond_4
    return-void

    .line 2809
    .restart local p1
    :cond_5
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne p3, v3, :cond_7

    .line 2810
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v1, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2811
    .local v1, item:Lcom/htc/launcher/Draggee;
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v4, v4, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {v3, v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 2812
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v3, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2813
    .local v0, cellLayout:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->removeItem(Lcom/htc/launcher/Draggee;)Z

    .line 2814
    invoke-interface {v1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 2815
    .local v2, itemInfo:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_6

    .line 2816
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 2817
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v3, v2}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 2819
    :cond_6
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2820
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    goto :goto_0

    .line 2822
    .end local v0           #cellLayout:Lcom/htc/launcher/CellLayout;
    .end local v1           #item:Lcom/htc/launcher/Draggee;
    .end local v2           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_7
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->FOLDERICON:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne p3, v3, :cond_9

    .line 2823
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v1, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2824
    .restart local v1       #item:Lcom/htc/launcher/Draggee;
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v4, v4, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {v3, v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 2825
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v3, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2826
    .restart local v0       #cellLayout:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->removeItem(Lcom/htc/launcher/Draggee;)Z

    .line 2827
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2828
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2830
    :cond_8
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    goto/16 :goto_0

    .line 2832
    .end local v0           #cellLayout:Lcom/htc/launcher/CellLayout;
    .end local v1           #item:Lcom/htc/launcher/Draggee;
    :cond_9
    sget-object v3, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne p3, v3, :cond_b

    .line 2833
    check-cast p1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    .end local p1
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v3, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->wasDragItemAccepted(Lcom/htc/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2834
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v1, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2835
    .restart local v1       #item:Lcom/htc/launcher/Draggee;
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v4, v4, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {v3, v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 2836
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v4, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v4}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/DesktopItemController;->removeFxShortcutItemInFxWidgetManager(J)V

    goto/16 :goto_0

    .line 2838
    .end local v1           #item:Lcom/htc/launcher/Draggee;
    :cond_a
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->dropBack()Z

    goto/16 :goto_0

    .line 2841
    .restart local p1
    :cond_b
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "Workspace"

    const-string v4, "onDropCompleted with action %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/htc/launcher/DragSource$DragCompletedAction;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2843
    :cond_c
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    if-eqz v3, :cond_1

    .line 2844
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    iget-object v3, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    if-eqz v3, :cond_d

    .line 2845
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    iget-object v4, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v4}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    const-string v5, "auto_slide"

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/LauncherModel;->outputLayoutMove(Lcom/htc/launcher/ItemInfo;Ljava/lang/String;)V

    .line 2846
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    goto/16 :goto_0

    .line 2851
    :cond_e
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v3, v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    if-eqz v3, :cond_f

    .line 2852
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v3, v3, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->mButtonBarHandler:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$ButtonBarHandler;->setTargetCantDrop()V

    .line 2854
    :cond_f
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v3, :cond_1

    .line 2855
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v3, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2856
    .restart local v0       #cellLayout:Lcom/htc/launcher/CellLayout;
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 2857
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->scrollForDropBack()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2859
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget-object v3, v3, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/CellLayout;->onDropAborted(Lcom/htc/launcher/Draggee;)V

    goto/16 :goto_0

    .line 2868
    .end local v0           #cellLayout:Lcom/htc/launcher/CellLayout;
    .end local p1
    :cond_10
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->poofLegacyItem()V

    goto/16 :goto_1
.end method

.method public onHomeIndexChanged(I)V
    .locals 3
    .parameter "newHomeIndex"

    .prologue
    .line 4480
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHomeIndexChanged: newHomeIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    :cond_0
    sput p1, Lcom/htc/launcher/Workspace;->mCurrentHomeIndex:I

    .line 4482
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 1073
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/launcher/Workspace;->mLocked:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isOnOrientationChange()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isOnConfigurationChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    :cond_0
    const/4 v1, 0x1

    .line 1248
    :goto_0
    return v1

    .line 1080
    :cond_1
    sget-boolean v1, Lcom/htc/launcher/Workspace;->DEBUG_TOUCH:Z

    if-eqz v1, :cond_2

    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercept touch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_2
    sget-boolean v1, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    const-string v2, "First Input: "

    invoke-static {v1, v2}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 1085
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/htc/launcher/LeapController;->isHandleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1086
    const/4 v1, 0x1

    goto :goto_0

    .line 1099
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1100
    .local v8, action:I
    const/4 v1, 0x2

    if-ne v8, v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-eqz v1, :cond_5

    .line 1101
    const/4 v1, 0x1

    goto :goto_0

    .line 1104
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 1105
    .local v12, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 1107
    .local v15, y:F
    packed-switch v8, :pswitch_data_0

    .line 1248
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_0

    .line 1109
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_6

    .line 1110
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1112
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1122
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    sub-float v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v13, v1

    .line 1123
    .local v13, xDiff:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mLastMotionY:F

    sub-float v1, v15, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 1127
    .local v16, yDiff:I
    sget v11, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    .line 1129
    .local v11, touchSlop:I
    if-lt v13, v11, :cond_d

    const/4 v14, 0x1

    .line 1132
    .local v14, xMoved:Z
    :goto_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x60

    if-eq v1, v2, :cond_7

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 1134
    :cond_7
    mul-int/lit8 v1, v11, 0x3

    if-le v13, v1, :cond_e

    const/4 v14, 0x1

    .line 1136
    :cond_8
    :goto_3
    move/from16 v0, v16

    if-lt v0, v11, :cond_f

    const/16 v17, 0x1

    .line 1137
    .local v17, yMoved:Z
    :goto_4
    if-nez v14, :cond_9

    if-eqz v17, :cond_10

    .line 1138
    :cond_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/launcher/Workspace;->mMoved:Z

    .line 1139
    if-eqz v14, :cond_b

    move/from16 v0, v16

    int-to-float v1, v0

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScrollDegree:F

    mul-float/2addr v1, v2

    int-to-float v2, v13

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/launcher/Workspace;->mCanScroll:Z

    if-eqz v1, :cond_b

    .line 1142
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    .line 1143
    sget-boolean v1, Lcom/htc/launcher/Workspace;->DEBUG_TOUCH:Z

    if-eqz v1, :cond_a

    .line 1144
    const-string v1, "Workspace"

    const-string v2, "intercept touch:begin scroll"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->closeFolder()V

    .line 1147
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/Workspace;->beginScroll(ZI)V

    .line 1150
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/launcher/Workspace;->mAllowLongPress:Z

    if-eqz v1, :cond_c

    .line 1151
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setAllowLongPress(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    .line 1163
    :cond_c
    :goto_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/launcher/Workspace;->mLastTouchEventTime:J

    goto/16 :goto_1

    .line 1129
    .end local v14           #xMoved:Z
    .end local v17           #yMoved:Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_2

    .line 1134
    .restart local v14       #xMoved:Z
    :cond_e
    const/4 v14, 0x0

    goto :goto_3

    .line 1136
    :cond_f
    const/16 v17, 0x0

    goto :goto_4

    .line 1159
    .restart local v17       #yMoved:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v1, v8, v13}, Lcom/htc/launcher/ScrollMonitor;->onInterceptTouchEvent(II)V

    goto :goto_5

    .line 1168
    .end local v11           #touchSlop:I
    .end local v13           #xDiff:I
    .end local v14           #xMoved:Z
    .end local v16           #yDiff:I
    .end local v17           #yMoved:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_11

    .line 1169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Launcher;->stop3DAnimation(Z)V

    .line 1170
    :cond_11
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/launcher/Workspace;->mStartX:F

    .line 1171
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    .line 1172
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/Workspace;->mLastMotionY:F

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1174
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setAllowLongPress(Z)V

    .line 1176
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    .line 1182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v1}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    .line 1184
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-nez v1, :cond_13

    .line 1187
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->drawScreens(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_13
    :goto_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/launcher/Workspace;->mLastTouchEventTime:J

    .line 1195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    invoke-virtual {v1, v8, v2}, Lcom/htc/launcher/ScrollMonitor;->onInterceptTouchEvent(II)V

    .line 1197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/launcher/Workspace;->mDownTime:J

    .line 1198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_14

    .line 1199
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1201
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1202
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/launcher/Workspace;->mMoved:Z

    goto/16 :goto_1

    .line 1182
    :cond_15
    const/4 v1, 0x1

    goto :goto_6

    .line 1188
    :catch_0
    move-exception v10

    .line 1190
    .local v10, e:Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v1, :cond_13

    const-string v1, "Workspace"

    const-string v2, "onInterceptTouchEvent(), nullpnter"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1208
    .end local v10           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/htc/launcher/ScrollMonitor;->onInterceptTouchEvent(II)V

    .line 1215
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    .line 1217
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/CellLayout;

    .line 1218
    .local v9, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v9}, Lcom/htc/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "android.wallpaper.tap"

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1225
    .end local v9           #currentScreen:Lcom/htc/launcher/CellLayout;
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/launcher/Workspace;->mTouchState:I

    .line 1226
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/launcher/Workspace;->mAllowLongPress:Z

    .line 1228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_17

    .line 1229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1230
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1233
    :cond_17
    const/4 v1, 0x1

    if-ne v8, v1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/launcher/Workspace;->mDownTime:J

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/launcher/Workspace;->mMoved:Z

    if-nez v1, :cond_18

    .line 1236
    invoke-virtual/range {p0 .. p1}, Lcom/htc/launcher/Workspace;->onTap(Landroid/view/MotionEvent;)V

    .line 1238
    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/launcher/Workspace;->mMoved:Z

    goto/16 :goto_1

    .line 1248
    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 957
    const/4 v1, 0x0

    .line 959
    .local v1, childLeft:I
    const/4 v3, 0x7

    .line 960
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 961
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 964
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 965
    add-int/2addr v1, v2

    .line 960
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 968
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onLeapRearrangeComplete([I)V
    .locals 7
    .parameter "screenMap"

    .prologue
    .line 4363
    array-length v0, p1

    .line 4366
    .local v0, childCount:I
    new-array v3, v0, [Landroid/view/View;

    .line 4367
    .local v3, temp:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4368
    sget-boolean v4, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LEAP] Leap["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :cond_0
    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    .line 4367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4371
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->removeAllViews()V

    .line 4373
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 4374
    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Workspace;->addView(Landroid/view/View;)V

    .line 4375
    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 4373
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4378
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 4379
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4380
    .local v1, childView:Landroid/view/View;
    instance-of v4, v1, Lcom/htc/launcher/CellLayout;

    if-eqz v4, :cond_3

    .line 4381
    check-cast v1, Lcom/htc/launcher/CellLayout;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1, v2}, Lcom/htc/launcher/CellLayout;->changeScreenIndex(I)V

    .line 4378
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4386
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, p1}, Lcom/htc/launcher/LauncherModel;->updateScreenId(Landroid/content/Context;I[I)V

    .line 4387
    sget-boolean v4, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mContext:Landroid/content/Context;

    const-string v5, "topic_tag-home_screen-rearrange_home_screens"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->showMeWidget(Landroid/content/Context;Ljava/lang/String;)V

    .line 4388
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 921
    sget-object v5, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v5}, Lcom/htc/launcher/OrientationMonitor;->beginWorkspaceOnMeasure()V

    .line 922
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 924
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 925
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 926
    .local v4, widthMode:I
    if-eq v4, v6, :cond_0

    .line 927
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 930
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 931
    .local v1, heightMode:I
    if-eq v1, v6, :cond_1

    .line 932
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 936
    :cond_1
    const/4 v0, 0x7

    .line 937
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_2

    .line 938
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 937
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    :cond_2
    iget-boolean v5, p0, Lcom/htc/launcher/Workspace;->mFirstLayout:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/launcher/Workspace;->mPreviousWidth:I

    if-eq v5, v3, :cond_3

    .line 946
    iget v5, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v7}, Lcom/htc/launcher/Workspace;->scrollTo(II)V

    .line 947
    iget v5, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v3

    iget v6, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    add-int/2addr v6, v3

    invoke-direct {p0, v5, v6}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset(II)V

    .line 948
    iput-boolean v7, p0, Lcom/htc/launcher/Workspace;->mFirstLayout:Z

    .line 949
    iput v3, p0, Lcom/htc/launcher/Workspace;->mPreviousWidth:I

    .line 951
    :cond_3
    sget-object v5, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v5}, Lcom/htc/launcher/OrientationMonitor;->endWorkspaceOnMeasure()V

    .line 952
    const/high16 v5, 0x43a0

    int-to-float v6, v3

    div-float/2addr v5, v6

    sput v5, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    .line 953
    return-void
.end method

.method public onPagesCountChanged(I)V
    .locals 4
    .parameter "newPagesCount"

    .prologue
    .line 4463
    sget-boolean v1, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPagesCountChanged: newPagesCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    :cond_0
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-le v1, p1, :cond_1

    .line 4466
    move v0, p1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v0, v1, :cond_2

    .line 4467
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->clearCellInPage(I)V

    .line 4466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4470
    .end local v0           #i:I
    :cond_1
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v1, p1, :cond_2

    .line 4475
    :cond_2
    iput p1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 4476
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 3812
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3813
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3814
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3815
    .local v2, temp:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 3816
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .end local v2           #temp:Landroid/view/View;
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->onPause()V

    .line 3813
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3822
    :cond_1
    return-void
.end method

.method public onPostDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .parameter "cell"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 3596
    return-void
.end method

.method public onPreDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .parameter "cell"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 3589
    invoke-virtual {p0, p3, p2}, Lcom/htc/launcher/Workspace;->enterEditMode(Ljava/lang/Object;Lcom/htc/launcher/DragSource;)V

    .line 3590
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 993
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v1

    .line 995
    .local v1, openFolder:Lcom/htc/launcher/Folder;
    if-eqz v1, :cond_0

    .line 996
    invoke-virtual {v1, p1, p2}, Lcom/htc/launcher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1007
    .end local v1           #openFolder:Lcom/htc/launcher/Folder;
    :goto_0
    return v2

    .line 999
    .restart local v1       #openFolder:Lcom/htc/launcher/Folder;
    :cond_0
    iget v2, p0, Lcom/htc/launcher/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1000
    iget v0, p0, Lcom/htc/launcher/Workspace;->mNextScreen:I

    .line 1004
    .local v0, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1007
    .end local v0           #focusableScreen:I
    .end local v1           #openFolder:Lcom/htc/launcher/Folder;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1002
    .restart local v1       #openFolder:Lcom/htc/launcher/Folder;
    :cond_2
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1
.end method

.method protected onRestoreInstanceState()V
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->localSavedState:Lcom/htc/launcher/Workspace$SavedState;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->localSavedState:Lcom/htc/launcher/Workspace$SavedState;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2017
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2026
    instance-of v2, p1, Lcom/htc/launcher/Workspace$SavedState;

    if-nez v2, :cond_0

    .line 2027
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2069
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 2029
    check-cast v0, Lcom/htc/launcher/Workspace$SavedState;

    .line 2030
    .local v0, savedState:Lcom/htc/launcher/Workspace$SavedState;
    invoke-virtual {v0}, Lcom/htc/launcher/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2032
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 2036
    .local v1, screen:I
    iget v2, v0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    if-eq v2, v4, :cond_4

    iget v2, v0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 2038
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->isRestoreCurrentPage:Z

    .line 2039
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 2048
    :cond_1
    :goto_1
    iget v2, v0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    if-eq v2, v4, :cond_3

    .line 2049
    iget-boolean v2, p0, Lcom/htc/launcher/Workspace;->isRestoreCurrentPage:Z

    if-eqz v2, :cond_5

    .line 2050
    iget v2, v0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 2056
    :goto_2
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v2}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2057
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 2058
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset()V

    .line 2060
    :cond_2
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-static {v2}, Lcom/htc/launcher/Launcher;->setScreen(I)V

    .line 2063
    iput v4, v0, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    .line 2067
    :cond_3
    iget-object v2, v0, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    iput-object v2, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    goto :goto_0

    .line 2041
    :cond_4
    iget v2, v0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    if-eq v2, v4, :cond_1

    iget v2, v0, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    invoke-static {}, Lcom/htc/launcher/custom/CustomResourceUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2043
    iput-boolean v5, p0, Lcom/htc/launcher/Workspace;->isRestoreCurrentPage:Z

    .line 2044
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    goto :goto_1

    .line 2054
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/Workspace;->isRestoreCurrentPage:Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 3825
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3826
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3827
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3828
    .local v2, temp:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/launcher/CellLayout;

    if-eqz v3, :cond_0

    .line 3829
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .end local v2           #temp:Landroid/view/View;
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->onResume()V

    .line 3826
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3832
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1977
    new-instance v2, Lcom/htc/launcher/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/launcher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1980
    .local v2, state:Lcom/htc/launcher/Workspace$SavedState;
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v2, Lcom/htc/launcher/Workspace$SavedState;->mPreviousLocal:I

    .line 1981
    invoke-static {}, Lcom/htc/launcher/custom/CustomResourceUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1982
    invoke-static {}, Lcom/htc/launcher/custom/CustomResourceUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v2, Lcom/htc/launcher/Workspace$SavedState;->mPreviousSkin:I

    .line 1984
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v4}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1985
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    iput v4, v2, Lcom/htc/launcher/Workspace$SavedState;->currentScreen:I

    .line 1996
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1997
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1998
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 1999
    .local v1, screen:Lcom/htc/launcher/CellLayout;
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 2000
    .local v3, xy:[I
    invoke-virtual {v1, v3, v0}, Lcom/htc/launcher/CellLayout;->findCellByView([ILandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2001
    iget-object v4, v2, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    const/4 v5, 0x0

    aget v5, v3, v5

    iput v5, v4, Lcom/htc/launcher/Workspace$FocusState;->cellX:I

    .line 2002
    iget-object v4, v2, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    const/4 v5, 0x1

    aget v5, v3, v5

    iput v5, v4, Lcom/htc/launcher/Workspace$FocusState;->cellY:I

    .line 2003
    iget-object v4, v2, Lcom/htc/launcher/Workspace$SavedState;->focus:Lcom/htc/launcher/Workspace$FocusState;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Lcom/htc/launcher/Workspace$FocusState;->id:I

    .line 2005
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2008
    .end local v1           #screen:Lcom/htc/launcher/CellLayout;
    .end local v3           #xy:[I
    :cond_3
    iput-object v2, p0, Lcom/htc/launcher/Workspace;->localSavedState:Lcom/htc/launcher/Workspace$SavedState;

    .line 2009
    return-object v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 972
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 975
    const/high16 v0, 0x43a0

    int-to-float v1, p1

    div-float/2addr v0, v1

    sput v0, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    .line 976
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Workspace.onSizeChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", child:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    return-void
.end method

.method onTap(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1256
    .local v1, leftPadding:I
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1257
    .local v2, rightPadding:I
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1258
    .local v0, bottomPadding:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 1260
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->scrollLeft()V

    goto :goto_0

    .line 1262
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1263
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->scrollRight()V

    goto :goto_0

    .line 1266
    :cond_3
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    .line 1267
    .local v3, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-eqz v3, :cond_4

    .line 1268
    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1270
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    goto :goto_0

    .line 1274
    :cond_4
    const-string v4, "Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/16 v12, 0x3e8

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1545
    iget-boolean v6, p0, Lcom/htc/launcher/Workspace;->mLocked:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return v7

    .line 1550
    :cond_1
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v6, p1}, Lcom/htc/launcher/LeapController;->isHandleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1554
    sget-boolean v6, Lcom/htc/launcher/Workspace;->DEBUG_TOUCH:Z

    if-eqz v6, :cond_2

    const-string v9, "Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrolling: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v6, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", touch:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_2
    iget v6, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-nez v6, :cond_4

    move v7, v8

    .line 1556
    goto :goto_0

    :cond_3
    move v6, v8

    .line 1554
    goto :goto_1

    .line 1558
    :cond_4
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher;->checkButtonBar()V

    .line 1560
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_5

    .line 1561
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1563
    :cond_5
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1566
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1568
    .local v5, x:F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1574
    :pswitch_0
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1575
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6}, Lcom/htc/launcher/SlideController;->stopSlide()V

    .line 1576
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6, p1}, Lcom/htc/launcher/SlideController;->actionDown(Landroid/view/MotionEvent;)V

    .line 1578
    :cond_6
    iput v5, p0, Lcom/htc/launcher/Workspace;->mStartX:F

    .line 1580
    iput v5, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    .line 1581
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/launcher/Workspace;->mLastTouchEventTime:J

    .line 1582
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v6

    iput v6, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 1583
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->sendCurrentScreenIndexInfo()V

    goto/16 :goto_0

    .line 1587
    :pswitch_1
    iget v6, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-ne v6, v7, :cond_0

    .line 1588
    iget-boolean v6, p0, Lcom/htc/launcher/Workspace;->isScrolling:Z

    if-nez v6, :cond_8

    .line 1589
    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_9

    .line 1590
    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    sget v9, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    .line 1593
    :cond_7
    :goto_2
    iput-boolean v7, p0, Lcom/htc/launcher/Workspace;->isScrolling:Z

    .line 1596
    :cond_8
    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    sub-float v1, v6, v5

    .line 1604
    .local v1, deltaX:F
    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    sub-float/2addr v6, v1

    iput v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    .line 1606
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v9, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v10

    invoke-virtual {v6, v1, v9, v10}, Lcom/htc/launcher/SlideController;->slideBy(FFZ)V

    .line 1622
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    const/4 v9, 0x2

    iget v10, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    int-to-float v10, v10

    add-float/2addr v10, v1

    iget v11, p0, Lcom/htc/launcher/Workspace;->mStartX:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v9, v10, v8}, Lcom/htc/launcher/ScrollMonitor;->onTouchEvent(III)V

    .line 1636
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset()V

    .line 1637
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/launcher/Workspace;->mLastTouchEventTime:J

    goto/16 :goto_0

    .line 1591
    .end local v1           #deltaX:F
    :cond_9
    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    .line 1592
    iget v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    sget v9, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/launcher/Workspace;->mLastMotionX:F

    goto :goto_2

    .line 1653
    :pswitch_2
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    const/4 v9, 0x3

    invoke-virtual {v6, v9, v8, v8}, Lcom/htc/launcher/ScrollMonitor;->onTouchEvent(III)V

    .line 1656
    :pswitch_3
    iget v6, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    if-ne v6, v7, :cond_b

    .line 1657
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1658
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    invoke-virtual {v2, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1659
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    float-to-int v3, v6

    .line 1660
    .local v3, velocityX:I
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    float-to-int v4, v6

    .line 1674
    .local v4, velocityY:I
    iget v6, p0, Lcom/htc/launcher/Workspace;->mStartX:F

    sub-float v1, v5, v6

    .line 1675
    .restart local v1       #deltaX:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v9, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v6, v6, v9

    if-lez v6, :cond_13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sget v9, Lcom/htc/launcher/settings/SettingUtil;->sDragSensitive:I

    if-le v6, v9, :cond_13

    .line 1677
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    float-to-int v9, v1

    invoke-virtual {v6, v9}, Lcom/htc/launcher/SlideController;->setTouchDelta(I)V

    .line 1678
    if-ge v3, v12, :cond_e

    if-lez v3, :cond_e

    .line 1679
    cmpl-float v6, v1, v11

    if-gtz v6, :cond_a

    const/16 v6, 0x258

    if-le v3, v6, :cond_d

    .line 1681
    :cond_a
    sget-boolean v6, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    if-eqz v6, :cond_c

    .line 1682
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v9, p0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    invoke-virtual {v6, v9, v3}, Lcom/htc/launcher/SlideController;->snapScreen(II)V

    .line 1710
    :goto_3
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    float-to-int v9, v1

    invoke-virtual {v6, v7, v3, v9}, Lcom/htc/launcher/ScrollMonitor;->onTouchEvent(III)V

    .line 1714
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_b

    .line 1715
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 1716
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/launcher/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1719
    .end local v1           #deltaX:F
    .end local v2           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v3           #velocityX:I
    .end local v4           #velocityY:I
    :cond_b
    iput v8, p0, Lcom/htc/launcher/Workspace;->mTouchState:I

    goto/16 :goto_0

    .line 1684
    .restart local v1       #deltaX:F
    .restart local v2       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v3       #velocityX:I
    .restart local v4       #velocityY:I
    :cond_c
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v9, p0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    const/high16 v10, 0x447a

    sget v11, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v9, v10}, Lcom/htc/launcher/SlideController;->snapScreen(II)V

    goto :goto_3

    .line 1687
    :cond_d
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6}, Lcom/htc/launcher/SlideController;->snapToDestination()V

    goto :goto_3

    .line 1690
    :cond_e
    const/16 v6, -0x3e8

    if-le v3, v6, :cond_12

    if-gez v3, :cond_12

    .line 1691
    cmpg-float v6, v1, v11

    if-ltz v6, :cond_f

    const/16 v6, -0x258

    if-ge v3, v6, :cond_11

    .line 1693
    :cond_f
    sget-boolean v6, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    if-eqz v6, :cond_10

    .line 1694
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v9, p0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    invoke-virtual {v6, v9, v3}, Lcom/htc/launcher/SlideController;->snapScreen(II)V

    goto :goto_3

    .line 1696
    :cond_10
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v9, p0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    const/high16 v10, -0x3b86

    sget v11, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v9, v10}, Lcom/htc/launcher/SlideController;->snapScreen(II)V

    goto :goto_3

    .line 1699
    :cond_11
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6}, Lcom/htc/launcher/SlideController;->snapToDestination()V

    goto :goto_3

    .line 1702
    :cond_12
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v9, p0, Lcom/htc/launcher/Workspace;->mCurrentTouchScreen:I

    invoke-virtual {v6, v9, v3}, Lcom/htc/launcher/SlideController;->snapScreen(II)V

    goto :goto_3

    .line 1706
    :cond_13
    iget-object v6, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v6}, Lcom/htc/launcher/SlideController;->snapToDestination()V

    goto :goto_3

    .line 1568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdateCellLayoutCache(Lcom/htc/launcher/CellLayout;)V
    .locals 1
    .parameter "cellLayout"

    .prologue
    .line 3803
    if-eqz p1, :cond_0

    .line 3804
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mOnHomeScreenListener:Lcom/htc/launcher/Workspace$OnHomeScreenListener;

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mOnHomeScreenListener:Lcom/htc/launcher/Workspace$OnHomeScreenListener;

    invoke-interface {v0}, Lcom/htc/launcher/Workspace$OnHomeScreenListener;->onHomeScreenLayoutChanged()V

    .line 3809
    :cond_0
    return-void
.end method

.method redirectTouchTo(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 3905
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mTouchRedirect:Landroid/view/View$OnTouchListener;

    .line 3906
    return-void
.end method

.method public registerScrollStateChangedListener(Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    .line 4161
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4162
    return-void
.end method

.method public removeAllViewsRecursively()V
    .locals 4

    .prologue
    .line 3788
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3789
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3790
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3791
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 3792
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3789
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3795
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->removeAllViews()V

    .line 3796
    return-void
.end method

.method public removeDraggedAppIconAddedIntoFolderIcon()V
    .locals 5

    .prologue
    .line 2880
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    if-nez v3, :cond_1

    .line 2902
    :cond_0
    :goto_0
    return-void

    .line 2884
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v3, v3, Lcom/htc/launcher/FxItemInfo;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    instance-of v3, v3, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v3, :cond_4

    .line 2885
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 2886
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v3, p0, v4}, Lcom/htc/launcher/DesktopItemController;->removeItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V

    .line 2891
    :goto_1
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/LegacyLayout;

    if-eqz v3, :cond_0

    .line 2892
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LegacyLayout;

    .line 2893
    .local v1, legacyLayout:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v1}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v2

    .line 2894
    .local v2, widgetView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/launcher/LegacyLayout;->fxDetach()V

    .line 2896
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v4}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/htc/launcher/DesktopItemController;->removeLegacyWidget(Landroid/view/View;Lcom/htc/launcher/ItemInfo;)V

    .line 2897
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2898
    .local v0, group:Lcom/htc/launcher/CellLayout;
    if-eqz v0, :cond_3

    .line 2899
    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2900
    :cond_3
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->resetDragInfo()V

    goto :goto_0

    .line 2888
    .end local v0           #group:Lcom/htc/launcher/CellLayout;
    .end local v1           #legacyLayout:Lcom/htc/launcher/LegacyLayout;
    .end local v2           #widgetView:Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->poofLegacyItem()V

    goto :goto_1
.end method

.method removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 28
    .parameter "packageName"

    .prologue
    .line 3206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3207
    .local v9, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v19

    .line 3208
    .local v19, model:Lcom/htc/launcher/LauncherModel;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3209
    .local v11, count:I
    monitor-enter v9

    .line 3210
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_9

    .line 3211
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3212
    .local v22, temp:Landroid/view/View;
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/htc/launcher/CellLayout;

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 3210
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3214
    :cond_1
    move-object/from16 v0, v22

    check-cast v0, Lcom/htc/launcher/CellLayout;

    move-object/from16 v18, v0

    .line 3215
    .local v18, layout:Lcom/htc/launcher/CellLayout;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v8

    .line 3216
    .local v8, childCount:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3217
    const/16 v16, 0x0

    .local v16, j:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v8, :cond_8

    .line 3218
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 3219
    .local v23, view:Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 3220
    .local v21, tag:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 3222
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/launcher/LauncherAppWidgetInfo;

    move-object v14, v0

    .line 3223
    .local v14, info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    iget-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3224
    .local v7, appWidgeName:Ljava/lang/String;
    if-eqz v7, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v24

    iget v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->screen:I

    move/from16 v25, v0

    iget-wide v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->id:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(II)Z

    .line 3227
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 3229
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3217
    .end local v7           #appWidgeName:Ljava/lang/String;
    .end local v14           #info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 3232
    :cond_3
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 3233
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    move-object v14, v0

    .line 3237
    .local v14, info:Lcom/htc/launcher/ApplicationInfo;
    iget-object v15, v14, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 3238
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 3239
    .local v20, name:Landroid/content/ComponentName;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v24

    iget v0, v14, Lcom/htc/launcher/ApplicationInfo;->screen:I

    move/from16 v25, v0

    iget-wide v0, v14, Lcom/htc/launcher/ApplicationInfo;->id:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(II)Z

    .line 3242
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/htc/launcher/LauncherModel;->removeDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 3243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 3244
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3287
    .end local v8           #childCount:I
    .end local v14           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #j:I
    .end local v18           #layout:Lcom/htc/launcher/CellLayout;
    .end local v20           #name:Landroid/content/ComponentName;
    .end local v21           #tag:Ljava/lang/Object;
    .end local v22           #temp:Landroid/view/View;
    .end local v23           #view:Landroid/view/View;
    :catchall_0
    move-exception v24

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 3246
    .restart local v8       #childCount:I
    .restart local v16       #j:I
    .restart local v18       #layout:Lcom/htc/launcher/CellLayout;
    .restart local v21       #tag:Ljava/lang/Object;
    .restart local v22       #temp:Landroid/view/View;
    .restart local v23       #view:Landroid/view/View;
    :cond_4
    :try_start_1
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/launcher/FolderInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 3247
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v17, v24, -0x1

    .local v17, k:I
    :goto_4
    if-ltz v17, :cond_2

    .line 3248
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/ApplicationInfo;

    .line 3250
    .local v3, app:Lcom/htc/launcher/ApplicationInfo;
    iget-object v6, v3, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 3251
    .local v6, appIntent:Landroid/content/Intent;
    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 3252
    .local v4, appCompName:Landroid/content/ComponentName;
    :goto_5
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 3253
    move-object/from16 v0, v21

    check-cast v0, Lcom/htc/launcher/FolderInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/htc/launcher/LauncherModel;->removeUserFolderItem(Lcom/htc/launcher/FolderInfo;Lcom/htc/launcher/ItemInfo;)V

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 3247
    :cond_5
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 3251
    .end local v4           #appCompName:Landroid/content/ComponentName;
    :cond_6
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_5

    .line 3257
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v6           #appIntent:Landroid/content/Intent;
    .end local v17           #k:I
    :cond_7
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/htc/launcher/Folder;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    goto/16 :goto_3

    .line 3270
    .end local v21           #tag:Ljava/lang/Object;
    .end local v23           #view:Landroid/view/View;
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3272
    .local v10, childrenToRemoveCount:I
    if-lez v10, :cond_0

    .line 3273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/launcher/Workspace$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/htc/launcher/Workspace$6;-><init>(Lcom/htc/launcher/Workspace;Ljava/util/ArrayList;ILcom/htc/launcher/CellLayout;)V

    invoke-virtual/range {v24 .. v25}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 3287
    .end local v8           #childCount:I
    .end local v10           #childrenToRemoveCount:I
    .end local v16           #j:I
    .end local v18           #layout:Lcom/htc/launcher/CellLayout;
    .end local v22           #temp:Landroid/view/View;
    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->removeShortcutsForPackage(Ljava/lang/String;)V

    .line 3292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeButtonBarShortcut(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3293
    .local v5, appInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    if-eqz v5, :cond_b

    .line 3294
    const/4 v13, 0x0

    .local v13, index:I
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_a

    .line 3295
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/launcher/ItemInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->removeButtonItem(Lcom/htc/launcher/ItemInfo;)V

    .line 3296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v25, v0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/launcher/ItemInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 3294
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 3299
    :cond_a
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Lcom/htc/launcher/LauncherModel;->getButtonBarOccupied()[Z

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showMiddleBackgroundImageControls([Z)V

    .line 3305
    .end local v13           #index:I
    :cond_b
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 981
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 982
    .local v0, screen:I
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v1}, Lcom/htc/launcher/SlideController;->isSlideFinish()Z

    move-result v1

    if-nez v1, :cond_2

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/SlideController;->snapToScreen(I)V

    .line 986
    :cond_1
    const/4 v1, 0x1

    .line 988
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method restoreFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2075
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    if-nez v2, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return v1

    .line 2077
    :cond_1
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 2078
    .local v0, screen:Lcom/htc/launcher/CellLayout;
    if-eqz v0, :cond_0

    .line 2081
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    iget v2, v2, Lcom/htc/launcher/Workspace$FocusState;->cellX:I

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    iget v3, v3, Lcom/htc/launcher/Workspace$FocusState;->cellY:I

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    iget v4, v4, Lcom/htc/launcher/Workspace$FocusState;->id:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/launcher/CellLayout;->restoreFocus(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2084
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/launcher/Workspace;->mFocus:Lcom/htc/launcher/Workspace$FocusState;

    .line 2085
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public restoreRemovedChildren(IZ)V
    .locals 5
    .parameter "screen"
    .parameter "screenOnly"

    .prologue
    .line 3758
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3759
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3760
    if-eqz p2, :cond_0

    if-ne v2, p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 3759
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3764
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3765
    .local v3, temp:Landroid/view/View;
    instance-of v4, v3, Lcom/htc/launcher/CellLayout;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 3766
    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 3767
    .local v0, cell:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->restoreRemovedChildren()V

    goto :goto_1

    .line 3770
    .end local v0           #cell:Lcom/htc/launcher/CellLayout;
    .end local v3           #temp:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public scrollForDropBack()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4209
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG] Workspace.scrollForDropBack()"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    if-nez v3, :cond_3

    .line 4211
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "Workspace"

    const-string v4, "[EDIT_MODE] Workspace.scrollForFxItemLand() mDraggeeItemInfo = null, return"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 4231
    :cond_2
    :goto_0
    return v1

    .line 4215
    :cond_3
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_4

    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG]### Workspace.scrollForFxItemLand() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v5, v5, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4216
    :cond_4
    const/4 v1, 0x0

    .line 4217
    .local v1, isSuccess:Z
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentPage()I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v4, v4, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ne v3, v4, :cond_5

    .line 4218
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->dropBack()Z

    move-result v1

    goto :goto_0

    .line 4220
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    .line 4223
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 4224
    .local v0, currentScreen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v0, v2, v2, v2}, Lcom/htc/launcher/Workspace$Screen;->onDragExit(IIZ)V

    .line 4226
    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-direct {p0, v3}, Lcom/htc/launcher/Workspace;->scrollToScreen(I)Z

    move-result v1

    .line 4227
    if-nez v1, :cond_2

    .line 4228
    iput-boolean v2, p0, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2959
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v0, :cond_0

    .line 2960
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iput-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    .line 2961
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->scrollLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2962
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/Workspace$Screen;->hideDropArea()V

    .line 2963
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    invoke-interface {v0, v1, v1, v1}, Lcom/htc/launcher/Workspace$Screen;->onDragExit(IIZ)V

    .line 2964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Workspace;->mOnSnapToScreen:Z

    .line 2978
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2982
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iput-object v0, p0, Lcom/htc/launcher/Workspace;->mDragInfoUlog:Lcom/htc/launcher/CellInfo;

    .line 2984
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->scrollRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2985
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/Workspace$Screen;->hideDropArea()V

    .line 2986
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    invoke-interface {v0, v1, v1, v1}, Lcom/htc/launcher/Workspace$Screen;->onDragExit(IIZ)V

    .line 2987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Workspace;->mOnSnapToScreen:Z

    .line 3001
    :cond_1
    return-void
.end method

.method protected scrollToAvailableScreenForShortcut()Lcom/htc/launcher/CellInfo;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3604
    invoke-direct {p0, v0, v0, v0}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForShortcutOrSpan(IIZ)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method protected scrollToAvailableScreenForSpan(II)Lcom/htc/launcher/CellInfo;
    .locals 1
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 3599
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForShortcutOrSpan(IIZ)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method sendCurrentScreenIndexInfo()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.SQA.info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "screen_id"

    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 3202
    iput-boolean p1, p0, Lcom/htc/launcher/Workspace;->mAllowLongPress:Z

    .line 3203
    return-void
.end method

.method public setBounceScreen(I)V
    .locals 0
    .parameter "bounceScreen"

    .prologue
    .line 4175
    iput p1, p0, Lcom/htc/launcher/Workspace;->mBounceScreen:I

    .line 4176
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2
    .parameter "currentSPage"

    .prologue
    .line 4004
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 4005
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4007
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getPageSlideControl()Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;->setScrollBarControlVisibility(Z)V

    .line 4009
    :cond_0
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 5
    .parameter "currentScreen"

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 303
    .local v0, previousScreen:I
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 304
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->sendCurrentScreenIndexInfo()V

    .line 305
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/launcher/SlideController;->scrollTo(FF)V

    .line 307
    iput-boolean v4, p0, Lcom/htc/launcher/Workspace;->mOnSnapToScreen:Z

    .line 309
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->isCurrentScreenHomeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mOnHomeScreenListener:Lcom/htc/launcher/Workspace$OnHomeScreenListener;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mOnHomeScreenListener:Lcom/htc/launcher/Workspace$OnHomeScreenListener;

    invoke-interface {v1}, Lcom/htc/launcher/Workspace$OnHomeScreenListener;->onEnterHomeScreen()V

    .line 314
    :cond_0
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v4}, Lcom/htc/launcher/Workspace;->scrollTo(II)V

    .line 315
    return-void
.end method

.method public setDraggeeItemInfo(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/Draggee;)V
    .locals 0
    .parameter "itemInfo"
    .parameter "item"

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    .line 1865
    iput-object p2, p0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    .line 1866
    return-void
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 2766
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mDragger:Lcom/htc/launcher/DragController;

    .line 2767
    return-void
.end method

.method setLauncher(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 2757
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 2758
    return-void
.end method

.method public setLeapController(Lcom/htc/launcher/LeapController;)V
    .locals 0
    .parameter "leapController"

    .prologue
    .line 3985
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    .line 3986
    return-void
.end method

.method public setNextScreen(I)V
    .locals 0
    .parameter "nextScreen"

    .prologue
    .line 4179
    iput p1, p0, Lcom/htc/launcher/Workspace;->mNextScreen:I

    .line 4180
    return-void
.end method

.method public setOnHomeScreenListener(Lcom/htc/launcher/Workspace$OnHomeScreenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3888
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mOnHomeScreenListener:Lcom/htc/launcher/Workspace$OnHomeScreenListener;

    .line 3889
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 589
    new-instance v2, Lcom/htc/launcher/Workspace$OnLongClickReference;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/htc/launcher/Workspace$OnLongClickReference;-><init>(Landroid/view/View$OnLongClickListener;Lcom/htc/launcher/Workspace$1;)V

    iput-object v2, p0, Lcom/htc/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 590
    const/4 v0, 0x7

    .line 591
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 592
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_0
    return-void
.end method

.method public setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V
    .locals 4
    .parameter "scrollMonitor"

    .prologue
    .line 3554
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    .line 3555
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v1, v2, :cond_1

    .line 3556
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3557
    .local v0, childView:Landroid/view/View;
    instance-of v2, v0, Lcom/htc/launcher/CellLayout;

    if-eqz v2, :cond_0

    .line 3558
    check-cast v0, Lcom/htc/launcher/CellLayout;

    .end local v0           #childView:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v0, v2}, Lcom/htc/launcher/CellLayout;->setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V

    .line 3555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3561
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    iget-object v3, p0, Lcom/htc/launcher/Workspace;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v2, v3}, Lcom/htc/launcher/SlideController;->setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V

    .line 3562
    return-void
.end method

.method public setSlideController(Lcom/htc/launcher/SlideController;)V
    .locals 0
    .parameter "slideController"

    .prologue
    .line 3989
    iput-object p1, p0, Lcom/htc/launcher/Workspace;->mSlideController:Lcom/htc/launcher/SlideController;

    .line 3990
    return-void
.end method

.method public setZoomInAnimationProgress(IIFI)V
    .locals 0
    .parameter "selectPage"
    .parameter "action"
    .parameter "ratio"
    .parameter "virtualScrollX"

    .prologue
    .line 4020
    iput p4, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    .line 4021
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset()V

    .line 4023
    return-void
.end method

.method public setZoomOutAnimationProgress(IIFI)V
    .locals 0
    .parameter "selectPage"
    .parameter "action"
    .parameter "ratio"
    .parameter "virtualScrollX"

    .prologue
    .line 4028
    return-void
.end method

.method showDefaultScreen()V
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 327
    return-void
.end method

.method public showDrag()V
    .locals 2

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    if-nez v0, :cond_0

    .line 4331
    :goto_0
    return-void

    .line 4329
    :cond_0
    sget-boolean v0, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Workspace"

    const-string v1, "[EDIT_DEBUG]# Workspace.showDrag()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4330
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showDrag(Lcom/htc/launcher/ItemInfo;)V

    goto :goto_0
.end method

.method showDragHint(Z)V
    .locals 8
    .parameter "show"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2258
    if-nez p1, :cond_0

    .line 2259
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, p1}, Lcom/htc/launcher/DragLayer;->showDragHint(Z)V

    .line 2313
    :goto_0
    return-void

    .line 2264
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 2265
    .local v2, screen:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->hasRearrangedVacant()Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    if-eqz v4, :cond_3

    .line 2266
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    const v5, 0x7f0b0041

    invoke-virtual {v4, v5}, Lcom/htc/launcher/DragLayer;->setDragHintMessage(I)V

    .line 2272
    :goto_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2274
    const/4 v0, 0x0

    .line 2275
    .local v0, haveVacantCell:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 2276
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 2277
    if-nez v2, :cond_4

    .line 2275
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2269
    .end local v0           #haveVacantCell:Z
    .end local v1           #i:I
    :cond_3
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    const v5, 0x7f0b0040

    invoke-virtual {v4, v5}, Lcom/htc/launcher/DragLayer;->setDragHintMessage(I)V

    goto :goto_1

    .line 2279
    .restart local v0       #haveVacantCell:Z
    .restart local v1       #i:I
    :cond_4
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->hasRearrangedVacant()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2280
    const/4 v0, 0x1

    .line 2285
    :cond_5
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, v0}, Lcom/htc/launcher/DragLayer;->setLeftArrowEnable(Z)V

    .line 2286
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, v0}, Lcom/htc/launcher/DragLayer;->setRightArrowEnable(Z)V

    .line 2312
    .end local v0           #haveVacantCell:Z
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, p1}, Lcom/htc/launcher/DragLayer;->showDragHint(Z)V

    goto :goto_0

    .line 2288
    .end local v1           #i:I
    :cond_7
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, v6}, Lcom/htc/launcher/DragLayer;->setLeftArrowEnable(Z)V

    .line 2289
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, v6}, Lcom/htc/launcher/DragLayer;->setRightArrowEnable(Z)V

    .line 2291
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    if-ge v1, v4, :cond_a

    .line 2292
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getScreenAt(I)Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 2293
    if-nez v2, :cond_9

    .line 2291
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2295
    :cond_9
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->hasVacant()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2296
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, v7}, Lcom/htc/launcher/DragLayer;->setLeftArrowEnable(Z)V

    .line 2300
    :cond_a
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v4, 0x1

    :goto_5
    iget v4, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    if-ge v1, v4, :cond_6

    .line 2301
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2302
    .local v3, temp:Landroid/view/View;
    instance-of v4, v3, Lcom/htc/launcher/CellLayout;

    if-nez v4, :cond_c

    .line 2300
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move-object v2, v3

    .line 2304
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 2305
    invoke-interface {v2}, Lcom/htc/launcher/Workspace$Screen;->hasVacant()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2306
    iget-object v4, p0, Lcom/htc/launcher/Workspace;->mParent:Landroid/view/ViewParent;

    check-cast v4, Lcom/htc/launcher/DragLayer;

    invoke-virtual {v4, v7}, Lcom/htc/launcher/DragLayer;->setRightArrowEnable(Z)V

    goto :goto_3
.end method

.method public showStatusBar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 2493
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 2495
    .local v0, shouldShow:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v2, Lcom/htc/launcher/Workspace$5;

    invoke-direct {v2, p0, v0}, Lcom/htc/launcher/Workspace$5;-><init>(Lcom/htc/launcher/Workspace;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2506
    return-void

    .end local v0           #shouldShow:Z
    :cond_0
    move v0, p1

    .line 2493
    goto :goto_0
.end method

.method public snapToSearch()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3080
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    .line 3083
    .local v1, current:I
    move v2, v1

    .line 3086
    .local v2, first:I
    move v5, v1

    .line 3089
    .local v5, last:I
    const/4 v6, 0x0

    .line 3097
    .local v6, next:Z
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3102
    .local v0, count:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/launcher/Workspace;->focusOnHtcSearch(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3129
    :goto_1
    return v7

    .line 3106
    :cond_0
    add-int/lit8 v9, v0, -0x1

    if-ne v5, v9, :cond_1

    move v4, v7

    .line 3107
    .local v4, hitLast:Z
    :goto_2
    if-nez v2, :cond_2

    move v3, v7

    .line 3109
    .local v3, hitFirst:Z
    :goto_3
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v7, v8

    .line 3129
    goto :goto_1

    .end local v3           #hitFirst:Z
    .end local v4           #hitLast:Z
    :cond_1
    move v4, v8

    .line 3106
    goto :goto_2

    .restart local v4       #hitLast:Z
    :cond_2
    move v3, v8

    .line 3107
    goto :goto_3

    .line 3114
    .restart local v3       #hitFirst:Z
    :cond_3
    if-nez v3, :cond_4

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    .line 3116
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 3117
    move v1, v5

    .line 3119
    const/4 v6, 0x0

    goto :goto_0

    .line 3122
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 3123
    move v1, v2

    .line 3125
    const/4 v6, 0x1

    goto :goto_0
.end method

.method startDrag(Lcom/htc/launcher/CellInfo;)V
    .locals 19
    .parameter "cellInfo"

    .prologue
    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1870
    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG] Workspace.startDrag() isDragging = true, return!"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 1875
    .local v14, cell:Lcom/htc/launcher/Draggee;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/launcher/Workspace;->mDraggeeItem:Lcom/htc/launcher/Draggee;

    .line 1876
    if-eqz v14, :cond_0

    .line 1879
    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/launcher/Workspace;->mDraggeeItemInfo:Lcom/htc/launcher/ItemInfo;

    .line 1880
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    .line 1881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mDragInfo:Lcom/htc/launcher/CellInfo;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/Workspace;->mCurrentScreen:I

    iput v4, v3, Lcom/htc/launcher/CellInfo;->screen:I

    .line 1883
    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v15

    .line 1884
    .local v15, cellItem:Ljava/lang/Object;
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] Workspace.startDrag() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :cond_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 1889
    .local v7, bounds:Landroid/graphics/RectF;
    instance-of v3, v15, Lcom/htc/launcher/FxItem;

    if-eqz v3, :cond_5

    move-object/from16 v16, v15

    .line 1890
    check-cast v16, Lcom/htc/launcher/FxItem;

    .line 1891
    .local v16, fxItem:Lcom/htc/launcher/FxItem;
    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    .line 1892
    .local v17, info:Lcom/htc/launcher/ItemInfo;
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] Workspace.startDrag() cellItem is FxItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    .line 1896
    .local v2, current:Lcom/htc/launcher/Workspace$Screen;
    invoke-interface {v2, v14}, Lcom/htc/launcher/Workspace$Screen;->onDragChild(Lcom/htc/launcher/Draggee;)V

    .line 1899
    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-interface/range {v2 .. v7}, Lcom/htc/launcher/Workspace$Screen;->cellToWidgetRect(IIIILandroid/graphics/RectF;)V

    .line 1901
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRAGG] Workspace.startDrag() bounds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/htc/launcher/FxItemInfo;

    if-eqz v3, :cond_4

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v4

    move-object/from16 v3, v17

    check-cast v3, Lcom/htc/launcher/FxItemInfo;

    iget v3, v3, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    invoke-virtual {v4, v3}, Lcom/htc/launcher/DesktopItemController;->pauseWidget(I)V

    .line 1906
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/htc/launcher/FxItem;->onBeforeDrag()V

    .line 1907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->pauseRenderring()V

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemSceneFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 1909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    check-cast v15, Lcom/htc/launcher/FxItem;

    .end local v15           #cellItem:Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v15, v7}, Lcom/htc/launcher/DesktopItemController;->startDragFxWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/FxItem;Landroid/graphics/RectF;)Z

    goto/16 :goto_0

    .line 1913
    .end local v2           #current:Lcom/htc/launcher/Workspace$Screen;
    .end local v16           #fxItem:Lcom/htc/launcher/FxItem;
    .end local v17           #info:Lcom/htc/launcher/ItemInfo;
    .restart local v15       #cellItem:Ljava/lang/Object;
    :cond_5
    instance-of v3, v15, Lcom/htc/launcher/LegacyLayout;

    if-eqz v3, :cond_0

    .line 1914
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_6

    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG] Workspace.startDrag() cellItem is LegacyLayout"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_6
    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/CellLayout;

    .line 1917
    .local v8, group:Lcom/htc/launcher/CellLayout;
    if-eqz v8, :cond_0

    .line 1918
    sget-boolean v3, Lcom/htc/launcher/Workspace;->localLOGD:Z

    if-eqz v3, :cond_7

    const-string v3, "Workspace"

    const-string v4, "[EDIT_DEBUG] Workspace.startDrag() LegacyLayout()"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v18, v15

    .line 1919
    check-cast v18, Lcom/htc/launcher/LegacyLayout;

    .line 1925
    .local v18, legacyLayout:Lcom/htc/launcher/LegacyLayout;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->IsOnFloating:Z

    .line 1928
    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v17

    .line 1929
    .restart local v17       #info:Lcom/htc/launcher/ItemInfo;
    move-object/from16 v0, v17

    iget v9, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    move-object/from16 v0, v17

    iget v11, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    move-object/from16 v0, v17

    iget v12, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/htc/launcher/CellLayout;->cellToWidgetRect(IIIILandroid/graphics/RectF;)V

    .line 1932
    invoke-virtual {v8, v14}, Lcom/htc/launcher/CellLayout;->onDragChild(Lcom/htc/launcher/Draggee;)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->pauseRenderring()V

    .line 1934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v3

    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v3, v14, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemSceneFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    invoke-interface {v14}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4, v7}, Lcom/htc/launcher/DesktopItemController;->startDragAppWidget(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/ItemInfo;Landroid/graphics/RectF;)Z

    goto/16 :goto_0
.end method

.method public tempRemoveChildren()V
    .locals 5

    .prologue
    .line 3747
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3748
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3749
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3750
    .local v3, temp:Landroid/view/View;
    instance-of v4, v3, Lcom/htc/launcher/CellLayout;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 3751
    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 3752
    .local v0, cell:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->tempRemoveChildren()V

    .line 3748
    .end local v0           #cell:Lcom/htc/launcher/CellLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3755
    .end local v3           #temp:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public unRegisterScrollStateChangedListener(Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4169
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4172
    :goto_0
    return-void

    .line 4171
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 3178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Workspace;->mLocked:Z

    .line 3179
    return-void
.end method

.method updateApplicationIconForPackage(Ljava/lang/String;)V
    .locals 13
    .parameter "packageName"

    .prologue
    .line 3308
    const-string v10, "Workspace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UPDATEICON] updateApplicationIconForPackage("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") - enter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3310
    .local v1, count:I
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/launcher/DesktopItemController;->getUserFolderItems()Ljava/util/List;

    move-result-object v2

    .line 3311
    .local v2, folderItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    if-eqz v2, :cond_0

    .line 3312
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10, p1, v2}, Lcom/htc/launcher/DesktopItemController;->updateFolderShortcutIconForPackage(Ljava/lang/String;Ljava/util/List;)Z

    .line 3313
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3314
    const/4 v2, 0x0

    .line 3316
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 3317
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3318
    .local v7, temp:Landroid/view/View;
    instance-of v10, v7, Lcom/htc/launcher/CellLayout;

    if-nez v10, :cond_2

    .line 3316
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v7

    .line 3321
    check-cast v5, Lcom/htc/launcher/CellLayout;

    .line 3322
    .local v5, layout:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v5}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 3323
    .local v0, childCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 3324
    invoke-virtual {v5, v4}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3325
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 3326
    .local v6, tag:Ljava/lang/Object;
    instance-of v10, v6, Lcom/htc/launcher/FolderInfo;

    if-eqz v10, :cond_3

    .line 3327
    instance-of v10, v9, Lcom/htc/launcher/LegacyLayout;

    if-eqz v10, :cond_3

    .line 3328
    check-cast v9, Lcom/htc/launcher/LegacyLayout;

    .end local v9           #view:Landroid/view/View;
    invoke-virtual {v9}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v8

    .line 3329
    .local v8, theView:Landroid/view/View;
    instance-of v10, v8, Lcom/htc/launcher/Folder;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v10, :cond_3

    .line 3330
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    new-instance v11, Lcom/htc/launcher/Workspace$7;

    invoke-direct {v11, p0, v8}, Lcom/htc/launcher/Workspace$7;-><init>(Lcom/htc/launcher/Workspace;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3323
    .end local v8           #theView:Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3342
    .end local v0           #childCount:I
    .end local v4           #j:I
    .end local v5           #layout:Lcom/htc/launcher/CellLayout;
    .end local v6           #tag:Ljava/lang/Object;
    .end local v7           #temp:Landroid/view/View;
    :cond_4
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/htc/launcher/DesktopItemController;->updateShortcutsForPackage(Ljava/lang/String;)Z

    .line 3343
    const-string v10, "Workspace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UPDATEICON] updateApplicationIconForPackage("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") - exit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    iget-object v10, p0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v10}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/htc/launcher/DesktopItemController;->updateNavbarShortcutIconForPackage(Ljava/lang/String;)V

    .line 3345
    const-string v10, "Workspace"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UPDATEICON] updateNavbarShortcutIconForPackage("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") - exit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    return-void
.end method

.method public updateBubbleText(IIZ)V
    .locals 8
    .parameter "Ori"
    .parameter "screen"
    .parameter "screenOnly"

    .prologue
    .line 3723
    iget v3, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3724
    .local v3, currentChildCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 3725
    if-eqz p3, :cond_0

    if-ne v5, p2, :cond_1

    :cond_0
    if-nez p3, :cond_2

    if-ne v5, p2, :cond_2

    .line 3724
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3730
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/CellLayout;

    .line 3732
    .local v4, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v4}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v2

    .line 3733
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 3734
    invoke-virtual {v4, v6}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3736
    .local v1, child:Landroid/view/View;
    instance-of v7, v1, Lcom/htc/launcher/LegacyLayout;

    if-eqz v7, :cond_3

    move-object v7, v1

    check-cast v7, Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v7}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/launcher/BubbleTextView;

    if-eqz v7, :cond_3

    .line 3737
    check-cast v1, Lcom/htc/launcher/LegacyLayout;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/BubbleTextView;

    .line 3738
    .local v0, BTView:Lcom/htc/launcher/BubbleTextView;
    invoke-virtual {v0, p1}, Lcom/htc/launcher/BubbleTextView;->OnDeskTopOrientationChanged(I)V

    .line 3733
    .end local v0           #BTView:Lcom/htc/launcher/BubbleTextView;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3743
    .end local v2           #count:I
    .end local v4           #currentScreen:Lcom/htc/launcher/CellLayout;
    .end local v6           #j:I
    :cond_4
    return-void
.end method

.method public updateOrientation(Z)V
    .locals 8
    .parameter "portrait"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3694
    invoke-direct {p0}, Lcom/htc/launcher/Workspace;->cancelScrollingAndFling()V

    .line 3696
    iget-object v5, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v5}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3697
    iget-object v5, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v5}, Lcom/htc/launcher/LeapController;->leaveLeapMode()V

    .line 3700
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3701
    .local v0, WorkspaceParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3702
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3704
    iput v7, p0, Lcom/htc/launcher/Workspace;->mFakeCellPadding:I

    .line 3705
    invoke-direct {p0, v7}, Lcom/htc/launcher/Workspace;->setDoingFling(Z)V

    .line 3707
    iget v1, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3708
    .local v1, currentChildCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 3709
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3710
    .local v4, temp:Landroid/view/View;
    instance-of v5, v4, Lcom/htc/launcher/CellLayout;

    if-nez v5, :cond_1

    .line 3708
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 3712
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 3713
    .local v2, currentScreen:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v2, p1}, Lcom/htc/launcher/CellLayout;->updateOrientation(Z)V

    goto :goto_1

    .line 3715
    .end local v2           #currentScreen:Lcom/htc/launcher/CellLayout;
    .end local v4           #temp:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateScrollValue(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4357
    iput p1, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    iput p2, p0, Lcom/htc/launcher/Workspace;->mScrollY:I

    .line 4358
    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 24
    .parameter "packageName"

    .prologue
    .line 3390
    const-string v20, ""

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateShortcutsForPackage("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    .line 3393
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_6

    .line 3394
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3395
    .local v17, temp:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/launcher/CellLayout;

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 3393
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v14, v17

    .line 3397
    check-cast v14, Lcom/htc/launcher/CellLayout;

    .line 3398
    .local v14, layout:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v14}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v5

    .line 3399
    .local v5, childCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-ge v12, v5, :cond_0

    .line 3400
    invoke-virtual {v14, v12}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3401
    .local v18, view:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 3402
    .local v16, tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v10, v16

    .line 3403
    check-cast v10, Lcom/htc/launcher/ApplicationInfo;

    .line 3407
    .local v10, info:Lcom/htc/launcher/ApplicationInfo;
    iget-object v11, v10, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 3408
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 3409
    .local v15, name:Landroid/content/ComponentName;
    iget v0, v10, Lcom/htc/launcher/ApplicationInfo;->itemType:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    const-string v20, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 3413
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/htc/launcher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/htc/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3415
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_5

    iget-object v0, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v9, v0, :cond_5

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3417
    iget-object v0, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 3418
    iget-object v0, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3420
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v10, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 3421
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v20, v18

    .line 3422
    check-cast v20, Landroid/view/ViewGroup;

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    .line 3423
    .local v19, viewCount:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    move-object/from16 v20, v18

    .line 3424
    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3425
    .local v6, childView:Landroid/view/View;
    instance-of v0, v6, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 3426
    check-cast v6, Landroid/widget/TextView;

    .end local v6           #childView:Landroid/view/View;
    const/16 v20, 0x0

    iget-object v0, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3423
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3430
    .end local v13           #k:I
    .end local v19           #viewCount:I
    :cond_4
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 3431
    check-cast v18, Landroid/widget/TextView;

    .end local v18           #view:Landroid/view/View;
    const/16 v20, 0x0

    iget-object v0, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3399
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #name:Landroid/content/ComponentName;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 3439
    .end local v5           #childCount:I
    .end local v12           #j:I
    .end local v14           #layout:Lcom/htc/launcher/CellLayout;
    .end local v16           #tag:Ljava/lang/Object;
    .end local v17           #temp:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Workspace;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->updateShortcutsForPackage(Ljava/lang/String;)Z

    .line 3440
    return-void
.end method

.method public updateSnapInfo(II)V
    .locals 3
    .parameter "endScreen"
    .parameter "snapOffset"

    .prologue
    .line 1348
    iget-object v2, p0, Lcom/htc/launcher/Workspace;->mScrollStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;

    .line 1349
    .local v1, l:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    invoke-interface {v1, p1, p2}, Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;->updateSnapInfo(II)V

    goto :goto_0

    .line 1351
    .end local v1           #l:Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;
    :cond_0
    return-void
.end method

.method public updateWallpaperOffset()V
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/launcher/Workspace;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    iget v1, p0, Lcom/htc/launcher/Workspace;->mRight:I

    iget v2, p0, Lcom/htc/launcher/Workspace;->mLeft:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    iget v2, p0, Lcom/htc/launcher/Workspace;->mRight:I

    iget v3, p0, Lcom/htc/launcher/Workspace;->mLeft:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset(II)V

    .line 707
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {p0}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/htc/launcher/Workspace;->mRight:I

    iget v2, p0, Lcom/htc/launcher/Workspace;->mLeft:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset(II)V

    goto :goto_0

    .line 705
    :cond_1
    iget v0, p0, Lcom/htc/launcher/Workspace;->mCurrentPagesCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/launcher/Workspace;->mRight:I

    iget v2, p0, Lcom/htc/launcher/Workspace;->mLeft:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/Workspace;->mScrollX:I

    iget v2, p0, Lcom/htc/launcher/Workspace;->mRight:I

    iget v3, p0, Lcom/htc/launcher/Workspace;->mLeft:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/Workspace;->updateWallpaperOffset(II)V

    goto :goto_0
.end method

.method wrapLegacyView(Landroid/view/View;)Lcom/htc/launcher/LegacyLayout;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 450
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 452
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    .end local v0           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 455
    new-instance v1, Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/htc/launcher/LegacyLayout;-><init>(Lcom/htc/launcher/Workspace;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.class public Lcom/htc/launcher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/htc/launcher/DragController;
.implements Lcom/htc/launcher/DesktopItemController$FloatingEnv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/DragLayer$LayoutParams;,
        Lcom/htc/launcher/DragLayer$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final BOUNDARY_OF_DRAGGING:I = 0x14

.field private static final CONTINUOUS_SCROLL_DELAY:I = 0x3e8

.field private static final CUSTOMIZE_LANDSCAPE_SCROLL_ZONE:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_TOUCH:Z = false

.field private static DRAG_SCALE:F = 0.0f

.field private static final DRAG_SENSITIVITY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "DragLayer"

.field private static final MOVE_DISTANCE:I = 0x19

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final SCROLL_DELAY:I = 0x190

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x28

.field private static final TABLET_LANDSCAPE_SCROLL_ZONE:I = 0x96

.field public static final localLOGD:Z


# instance fields
.field private final SCROLLCOUNTDOWNSAMPLE_NUM:I

.field private final SCROLLCOUNTDOWNSAMPLE_THRESHOLD:I

.field private debugPaint:Landroid/graphics/Paint;

.field private debugPaint2:Landroid/graphics/Paint;

.field private isDragHintShow:Z

.field private isLeftArrowEnable:Z

.field private isRightArrowEnable:Z

.field mBackupChildren:[Landroid/view/View;

.field private mChangePage:Z

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

.field private mDragControlOffsetX:F

.field private mDragControlOffsetY:F

.field private mDragControlRect:Landroid/graphics/RectF;

.field private mDragHint:Landroid/view/View;

.field private mDragHintMessage:Landroid/widget/TextView;

.field private mDragItem:Lcom/htc/launcher/Draggee;

.field private mDragLeaper:Lcom/htc/launcher/DragLeaper;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/RectF;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragScroller:Lcom/htc/launcher/DragScroller;

.field private mDragSource:Lcom/htc/launcher/DragSource;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mDropTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

.field private mHitDrag:Z

.field private mHitRect:Landroid/graphics/Rect;

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mIsAddToHomeDropEnd:Z

.field private mIsInDragRegion:Z

.field private mLastDropTarget:Lcom/htc/launcher/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mLeftKey:Landroid/view/View;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMovedSinceDragStart:Z

.field private mOriginator:Landroid/view/View;

.field private mPointerLocation:Lcom/htc/launcher/settings/PointerLocation;

.field private mRect:Landroid/graphics/Rect;

.field private mRightKey:Landroid/view/View;

.field private final mScrollCountDownSample:[F

.field private mScrollCountDownSampleIndex:I

.field private mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

.field private mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

.field private mScrollState:I

.field private mShouldDrop:Z

.field private mTmpXY:[I

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final m_canvas:Landroid/graphics/Canvas;

.field private m_cubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private m_dragView:Lcom/htc/launcher/DragView;

.field private m_dropAnim:Landroid/animation/ValueAnimator;

.field private m_dropView:Landroid/view/View;

.field private m_dropViewAlpha:F

.field private m_dropViewPos:[I

.field private m_dropViewScale:F

.field private m_fMotionDown2X:F

.field private m_fMotionDown2Y:F

.field private m_fadeOutAnim:Landroid/animation/ValueAnimator;

.field private m_openFolder:Lcom/htc/launcher/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/DragLayer;->localLOGD:Z

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/DragLayer;->DEBUG_TOUCH:Z

    .line 86
    const/high16 v0, 0x41c0

    sput v0, Lcom/htc/launcher/DragLayer;->DRAG_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-boolean v3, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    .line 93
    iput-boolean v3, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 97
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    .line 124
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->m_canvas:Landroid/graphics/Canvas;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mDropTargets:Ljava/util/List;

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragRect:Landroid/graphics/RectF;

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mDirtyRect:Landroid/graphics/Rect;

    .line 138
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mDropCoordinates:[I

    .line 139
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    .line 141
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 155
    iput v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    .line 156
    iput v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    .line 157
    iput-boolean v3, p0, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/DragLayer;->mMovedSinceDragStart:Z

    .line 164
    iput v3, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 166
    new-instance v1, Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/htc/launcher/DragLayer$ScrollRunnable;-><init>(Lcom/htc/launcher/DragLayer;)V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    .line 174
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 191
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    .line 194
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    .line 195
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 196
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->m_cubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 197
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    .line 199
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I

    .line 1028
    iput v6, p0, Lcom/htc/launcher/DragLayer;->SCROLLCOUNTDOWNSAMPLE_NUM:I

    .line 1029
    const/16 v1, 0xc

    iput v1, p0, Lcom/htc/launcher/DragLayer;->SCROLLCOUNTDOWNSAMPLE_THRESHOLD:I

    .line 1030
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    .line 1031
    iput v3, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    .line 1466
    iput-boolean v3, p0, Lcom/htc/launcher/DragLayer;->isLeftArrowEnable:Z

    .line 1467
    iput-boolean v3, p0, Lcom/htc/launcher/DragLayer;->isRightArrowEnable:Z

    .line 1561
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    .line 1615
    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 2118
    iput-boolean v3, p0, Lcom/htc/launcher/DragLayer;->mIsAddToHomeDropEnd:Z

    move-object v1, p1

    .line 212
    check-cast v1, Lcom/htc/launcher/Launcher;

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 214
    .local v0, srcColor:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/htc/launcher/DragLayer;->DRAG_SCALE:F

    .line 216
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 218
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->resetScrollCountDownSample()V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->initButtonBarArea()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/DragScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/launcher/DragLayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/launcher/DragLayer;Lcom/htc/launcher/Folder;)Lcom/htc/launcher/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/launcher/DragLayer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/launcher/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/launcher/DragLayer;->m_dropViewScale:F

    return p1
.end method

.method static synthetic access$602(Lcom/htc/launcher/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/launcher/DragLayer;->m_dropViewAlpha:F

    return p1
.end method

.method static synthetic access$700(Lcom/htc/launcher/DragLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/launcher/DragLayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/launcher/DragLayer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    return-object p1
.end method

.method private animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V
    .locals 13
    .parameter "view"
    .parameter "nFromX"
    .parameter "nFromY"
    .parameter "nToX"
    .parameter "nToY"
    .parameter "fFinalScale"
    .parameter "onCompleteRunnable"
    .parameter "bFadeOut"
    .parameter "nDuration"

    .prologue
    .line 1979
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p3

    invoke-direct {v4, p2, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1981
    .local v4, from:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1982
    .local v5, to:Landroid/graphics/Rect;
    const/high16 v6, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move-object v3, p1

    move/from16 v7, p6

    move/from16 v8, p9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/htc/launcher/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 1983
    return-void
.end method

.method private cancelScrollCountDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1159
    iget v0, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    if-ne v0, v1, :cond_0

    .line 1160
    iput v2, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1161
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 1162
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1163
    iput-boolean v2, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    instance-of v0, v0, Lcom/htc/launcher/Workspace;

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    check-cast v0, Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->enableShowVacantRect(Z)V

    .line 1168
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1169
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->resetScrollCountDownSample()V

    .line 1171
    :cond_2
    return-void
.end method

.method private drop(FF)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1200
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    if-nez v1, :cond_0

    move v1, v10

    .line 1258
    :goto_0
    return v1

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->invalidate()V

    .line 1206
    const-string v1, "DragLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DragLayer.drop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v8, p0, Lcom/htc/launcher/DragLayer;->mDropCoordinates:[I

    .line 1208
    .local v8, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2, v8}, Lcom/htc/launcher/DragLayer;->findDropTarget(II[I)Lcom/htc/launcher/DropTarget;

    move-result-object v0

    .line 1210
    .local v0, dropTarget:Lcom/htc/launcher/DropTarget;
    if-eqz v0, :cond_4

    .line 1211
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    .line 1212
    .local v9, itemInfo:Lcom/htc/launcher/ItemInfo;
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v3, v8, v10

    aget v4, v8, v11

    iget v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v5, v2

    iget v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v6, v2

    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    move-object v2, v0

    invoke-interface/range {v0 .. v7}, Lcom/htc/launcher/DropTarget;->onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V

    .line 1214
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v2, v8, v10

    aget v3, v8, v11

    iget v4, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface/range {v0 .. v6}, Lcom/htc/launcher/DropTarget;->acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1217
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->pauseRenderring()V

    .line 1218
    const-string v1, "DragLayer"

    const-string v2, "[EDIT_DEBUG] DragLayer.drop() - dropTarget.onDrop()"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v2, v8, v10

    aget v3, v8, v11

    iget v4, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface/range {v0 .. v6}, Lcom/htc/launcher/DropTarget;->onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 1227
    const-string v1, "DragLayer"

    const-string v2, "[EDIT_DEBUG] DragLayer.drop() - mDragSource.onDropCompleted(true)"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    invoke-interface {v1, v0, v11}, Lcom/htc/launcher/DragSource;->onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V

    .line 1230
    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 1231
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/launcher/DesktopItemController;->IS_EXTERNAL_APP_ADDING:Z

    if-nez v1, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->resumeRenderring()V

    :cond_1
    move v1, v11

    .line 1234
    goto/16 :goto_0

    .line 1236
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/launcher/FolderIcon;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    instance-of v1, v1, Lcom/htc/launcher/Folder;

    if-eqz v1, :cond_4

    .line 1240
    :cond_3
    const-string v1, "DragLayer"

    const-string v2, "[EDIT_DEBUG] DragLayer.drop() - mDragSource.onDropCompleted(false)"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    invoke-interface {v1, v0, v10}, Lcom/htc/launcher/DragSource;->onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V

    .line 1242
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    move v1, v11

    .line 1243
    goto/16 :goto_0

    .line 1254
    .end local v9           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_4
    sget-object v1, Lcom/htc/launcher/DragSource$DragCompletedAction;->NONE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 1255
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/launcher/DesktopItemController;->IS_EXTERNAL_APP_ADDING:Z

    if-nez v1, :cond_5

    .line 1256
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->resumeRenderring()V

    :cond_5
    move v1, v10

    .line 1258
    goto/16 :goto_0
.end method

.method private endDrag()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 553
    const-string v2, "DragLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG]# DragLayer.endDrag() mDragging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-boolean v2, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    if-eqz v2, :cond_3

    .line 555
    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    .line 557
    iput-boolean v6, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    .line 559
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    if-eqz v2, :cond_0

    .line 561
    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->mOriginator:Landroid/view/View;

    .line 575
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 576
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/DragController$DragListener;

    .line 577
    .local v1, listener:Lcom/htc/launcher/DragController$DragListener;
    invoke-interface {v1}, Lcom/htc/launcher/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 580
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/DragController$DragListener;
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    if-eqz v2, :cond_3

    .line 581
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    invoke-virtual {v2}, Lcom/htc/launcher/DragView;->remove()V

    .line 582
    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    .line 585
    :cond_3
    return-void
.end method

.method private fadeOutDragView()V
    .locals 3

    .prologue
    .line 2079
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 2080
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2081
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2082
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2083
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/htc/launcher/DragLayer$7;

    invoke-direct {v1, p0}, Lcom/htc/launcher/DragLayer$7;-><init>(Lcom/htc/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2094
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/htc/launcher/DragLayer$8;

    invoke-direct {v1, p0}, Lcom/htc/launcher/DragLayer$8;-><init>(Lcom/htc/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2100
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2101
    return-void

    .line 2081
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private fakeTouchDown()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, time:J
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v8, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v5, p0, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    iget v6, p0, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 315
    return-void
.end method

.method private fakeTouchMove()V
    .locals 9

    .prologue
    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 320
    .local v0, time:J
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v8, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    iget v6, p0, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 321
    return-void
.end method

.method private filterOutOfScreenEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    .line 660
    sget-boolean v5, Lcom/htc/launcher/DragLayer;->localLOGD:Z

    if-eqz v5, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    .line 662
    .local v1, edgeFlags:I
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 663
    const-string v5, "DragLayer"

    const-string v6, "touch event above screen top"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v1           #edgeFlags:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 668
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 669
    .local v4, y:F
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    if-nez v5, :cond_4

    const/4 v2, 0x0

    .line 670
    .local v2, top:F
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getMeasuredHeight()I

    move-result v5

    int-to-float v0, v5

    .line 671
    .local v0, bottom:F
    cmpg-float v5, v4, v2

    if-gez v5, :cond_1

    .line 672
    const-string v5, "DragLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touch outside screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 675
    :cond_1
    cmpl-float v5, v4, v0

    if-lez v5, :cond_2

    .line 676
    const-string v5, "DragLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touch outside screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 679
    :cond_2
    return-void

    .line 664
    .end local v0           #bottom:F
    .end local v2           #top:F
    .end local v3           #x:F
    .end local v4           #y:F
    .restart local v1       #edgeFlags:I
    :cond_3
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 665
    const-string v5, "DragLayer"

    const-string v6, "touch event below screen bottom"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    .end local v1           #edgeFlags:I
    .restart local v3       #x:F
    .restart local v4       #y:F
    :cond_4
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v2, v5

    goto :goto_1
.end method

.method private findDropTarget(II[I)Lcom/htc/launcher/DropTarget;
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 1282
    iget-object v10, p0, Lcom/htc/launcher/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 1283
    .local v10, r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/htc/launcher/DragLayer;->mDropTargets:Ljava/util/List;

    .line 1284
    .local v8, dropTargets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/DropTarget;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 1285
    .local v7, count:I
    add-int/lit8 v9, v7, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_5

    .line 1286
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DropTarget;

    .line 1287
    .local v0, target:Lcom/htc/launcher/DropTarget;
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/launcher/DropTarget;->claimDrop(II[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1317
    .end local v0           #target:Lcom/htc/launcher/DropTarget;
    :cond_0
    :goto_1
    return-object v0

    .line 1291
    .restart local v0       #target:Lcom/htc/launcher/DropTarget;
    :cond_1
    instance-of v1, v0, Lcom/htc/launcher/Workspace;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/DragLayer;->isButtonBarAreaContains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1292
    const/4 v0, 0x0

    goto :goto_1

    .line 1295
    :cond_2
    invoke-interface {v0, v10}, Lcom/htc/launcher/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 1296
    invoke-interface {v0, p3}, Lcom/htc/launcher/DropTarget;->getLocationOnScreen([I)V

    .line 1297
    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-interface {v0}, Lcom/htc/launcher/DropTarget;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p3, v2

    invoke-interface {v0}, Lcom/htc/launcher/DropTarget;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1299
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getMeasuredHeight()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 1300
    add-int/lit8 p2, p2, -0x1

    .line 1302
    :cond_3
    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1303
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, p3, v2

    sub-int v2, p1, v2

    aput v2, p3, v1

    .line 1304
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, p3, v2

    sub-int v2, p2, v2

    aput v2, p3, v1

    .line 1305
    instance-of v1, v0, Lcom/htc/launcher/Workspace;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    if-eqz v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    iget v4, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface/range {v0 .. v6}, Lcom/htc/launcher/DropTarget;->acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1311
    const-string v1, "DragLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept-->x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1285
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 1317
    .end local v0           #target:Lcom/htc/launcher/DropTarget;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private fireDragEvent(Lcom/htc/launcher/DropTarget;[I)V
    .locals 10
    .parameter "target"
    .parameter "coordinates"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 987
    if-eqz p1, :cond_3

    .line 988
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    if-ne v0, p1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v2, p2, v8

    aget v3, p2, v9

    iget v0, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/launcher/DropTarget;->onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v3, p2, v8

    aget v4, p2, v9

    iget v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v5, v2

    iget v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v6, v2

    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/launcher/DropTarget;->onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V

    .line 996
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v2, p2, v8

    aget v3, p2, v9

    iget v0, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/launcher/DropTarget;->onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    aget v3, p2, v8

    aget v4, p2, v9

    iget v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v5, v2

    iget v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v6, v2

    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/launcher/DropTarget;->onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V

    goto :goto_0
.end method

.method private getOccupiedBitmap()[[Z
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 416
    .local v0, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->getOccupiedCells()[[Z

    move-result-object v1

    return-object v1
.end method

.method private getScrollZone()I
    .locals 2

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    const/16 v0, 0x3c

    .line 1015
    :goto_0
    return v0

    .line 1012
    :cond_0
    const/16 v0, 0x96

    goto :goto_0

    .line 1015
    :cond_1
    const/16 v0, 0x28

    goto :goto_0
.end method

.method private initButtonBarArea()V
    .locals 3

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    if-nez v0, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 1621
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1622
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1623
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1624
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private initDragControlRect(FFFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    return-void
.end method

.method private isButtonBarAreaContains(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1629
    const/4 v0, 0x0

    .line 1630
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method private isDragOverRegion(Lcom/htc/launcher/DropTarget;)Z
    .locals 5
    .parameter "target"

    .prologue
    const/high16 v4, 0x4040

    .line 1262
    const/4 v0, 0x0

    .line 1263
    .local v0, partialOver:Z
    invoke-direct {p0, p1}, Lcom/htc/launcher/DragLayer;->isInRegion(Lcom/htc/launcher/DropTarget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1264
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1266
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x4

    .line 1267
    .local v1, threadshold:I
    invoke-interface {p1}, Lcom/htc/launcher/DropTarget;->getTop()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1268
    const/4 v0, 0x1

    .line 1277
    .end local v1           #threadshold:I
    :cond_0
    :goto_0
    return v0

    .line 1271
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x4

    .line 1272
    .restart local v1       #threadshold:I
    invoke-interface {p1}, Lcom/htc/launcher/DropTarget;->getLeft()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInRegion(Lcom/htc/launcher/DropTarget;)Z
    .locals 1
    .parameter "dropTarget"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;

    goto :goto_0
.end method

.method private isInScrollZone(F)I
    .locals 2
    .parameter "x"

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->getScrollZone()I

    move-result v0

    .line 1021
    .local v0, iScrollZone:I
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1022
    :cond_0
    const/4 v1, 0x1

    .line 1024
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOutOfFolderBounds(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1816
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    if-nez v3, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return v2

    .line 1820
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1821
    .local v0, nX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1822
    .local v1, nY:I
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getRight()I

    move-result v3

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v3}, Lcom/htc/launcher/Folder;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isTouchOnDragControl(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 945
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v3

    .line 946
    .local v0, dragItemleft:I
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v1, v3

    .line 952
    .local v1, dragItemtop:I
    const/4 v2, 0x0

    .line 953
    .local v2, hit:Z
    int-to-float v3, v0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    int-to-float v3, v0

    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    int-to-float v3, v1

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    int-to-float v3, v1

    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    .line 955
    const/4 v2, 0x1

    .line 958
    :cond_0
    return v2
.end method

.method private limitDragMoveX(F)F
    .locals 4
    .parameter "left"

    .prologue
    .line 962
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v0, v1

    .line 963
    .local v0, width:I
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 964
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x14

    int-to-float p1, v1

    .line 966
    :cond_0
    int-to-float v1, v0

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 967
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x14

    int-to-float p1, v1

    .line 969
    :cond_1
    return p1
.end method

.method private limitDragMoveY(F)F
    .locals 5
    .parameter "top"

    .prologue
    .line 973
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v1, v2

    .line 974
    .local v1, height:I
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    if-nez v2, :cond_2

    const/16 v0, 0x32

    .line 975
    .local v0, dragHintHeight:I
    :goto_0
    add-int/lit8 v2, v0, 0x14

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 976
    const-string v2, "DragLayer"

    const-string v3, "limit Y top"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    add-int/lit8 v2, v0, 0x14

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float p1, v2

    .line 979
    :cond_0
    int-to-float v2, v1

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 980
    const-string v2, "DragLayer"

    const-string v3, "limit Y bottom"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getHeight()I

    move-result v2

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float p1, v2

    .line 983
    :cond_1
    return p1

    .line 974
    .end local v0           #dragHintHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private logScrollCountDownX(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    iget v1, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    aput p1, v0, v1

    .line 1040
    iget v0, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    .line 1041
    iget v0, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1042
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    .line 1044
    :cond_0
    return-void
.end method

.method private offsetDescendantRectToMyCoords(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 232
    .local v0, padding:I
    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 233
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 234
    return-void

    .line 229
    .end local v0           #padding:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0       #padding:I
    goto :goto_0
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    .line 1830
    if-eqz p2, :cond_0

    .line 1831
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1832
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1834
    cmpl-float v2, p7, v3

    if-nez v2, :cond_1

    move p7, v1

    .line 1835
    :cond_1
    cmpl-float v2, p8, v3

    if-nez v2, :cond_2

    move p8, v1

    .line 1836
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->m_canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p7, p8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1837
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1838
    .local v0, oldBounds:Landroid/graphics/Rect;
    add-int v1, p3, p5

    add-int v2, p4, p6

    invoke-virtual {p1, p3, p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1839
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->m_canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1840
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1841
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->m_canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1842
    return-void
.end method

.method private resetScrollCountDownSample()V
    .locals 3

    .prologue
    .line 1033
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    const/high16 v2, -0x4080

    aput v2, v1, v0

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1036
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSampleIndex:I

    .line 1037
    return-void
.end method

.method private showGrid(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x4

    .line 424
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    .line 425
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    .line 426
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    const v6, -0xff0001

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x4080

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 428
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 431
    :cond_0
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint2:Landroid/graphics/Paint;

    if-nez v5, :cond_1

    .line 432
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint2:Landroid/graphics/Paint;

    .line 433
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint2:Landroid/graphics/Paint;

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint2:Landroid/graphics/Paint;

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint2:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    .line 440
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 444
    :cond_2
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_3

    .line 445
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 449
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x4

    .line 450
    .local v2, offset:I
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v3, v5, 0x4

    .line 451
    .local v3, offset2:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_6

    .line 452
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v9, :cond_5

    .line 453
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 454
    .local v4, rect:Landroid/graphics/Rect;
    mul-int v5, v0, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 455
    mul-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 456
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 457
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 458
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 459
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->getOccupiedBitmap()[[Z

    move-result-object v5

    aget-object v5, v5, v0

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_4

    .line 460
    const-string v5, "X"

    iget v6, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/launcher/DragLayer;->debugPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 452
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    :cond_4
    const-string v5, "O"

    iget v6, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/launcher/DragLayer;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 451
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    .end local v1           #j:I
    :cond_6
    return-void
.end method

.method private startScrollCountDownIfNeeded(F)V
    .locals 9
    .parameter "x"

    .prologue
    const-wide/16 v1, 0x190

    const/high16 v8, 0x4080

    const/high16 v7, 0x4040

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1128
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1129
    invoke-direct {p0, p1}, Lcom/htc/launcher/DragLayer;->startScrollCountDownIfNeededForTablet(F)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->getScrollZone()I

    move-result v0

    .line 1132
    .local v0, iScrollZone:I
    int-to-float v3, v0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 1134
    :cond_2
    iget v3, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    if-nez v3, :cond_4

    .line 1135
    iput v5, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1136
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-virtual {v3, v6}, Lcom/htc/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 1137
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    iget-boolean v4, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    if-eqz v4, :cond_3

    const-wide/16 v1, 0x3e8

    :cond_3
    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1138
    iput-boolean v5, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 1140
    :cond_4
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    instance-of v1, v1, Lcom/htc/launcher/Workspace;

    if-eqz v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    check-cast v1, Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v6}, Lcom/htc/launcher/Workspace;->enableShowVacantRect(Z)V

    goto :goto_0

    .line 1142
    :cond_5
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_6

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 1144
    :cond_6
    iget v3, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    if-nez v3, :cond_8

    .line 1145
    iput v5, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1146
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-virtual {v3, v5}, Lcom/htc/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 1147
    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    iget-boolean v4, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    if-eqz v4, :cond_7

    const-wide/16 v1, 0x3e8

    :cond_7
    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1148
    iput-boolean v5, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 1150
    :cond_8
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    instance-of v1, v1, Lcom/htc/launcher/Workspace;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    check-cast v1, Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v6}, Lcom/htc/launcher/Workspace;->enableShowVacantRect(Z)V

    goto/16 :goto_0

    .line 1153
    :cond_9
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->cancelScrollCountDown()V

    goto/16 :goto_0
.end method

.method private startScrollCountDownIfNeededForTablet(F)V
    .locals 14
    .parameter "x"

    .prologue
    const/high16 v13, 0x4140

    const/high16 v12, -0x4080

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    .line 1046
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->getScrollZone()I

    move-result v3

    .line 1047
    .local v3, iScrollZone:I
    const/high16 v2, 0x4080

    .line 1048
    .local v2, iDragSensitivity:F
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v4, v5, v6

    .line 1049
    .local v4, rectWidth:F
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_4

    .line 1050
    const/high16 v5, 0x4000

    sub-float/2addr v2, v5

    .line 1056
    :cond_0
    :goto_0
    cmpg-float v5, v2, v10

    if-gtz v5, :cond_1

    .line 1057
    const-string v5, "DragLayer"

    const-string v6, "iDragSensitivity <= 1, set drag sensitivity as default"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const/high16 v2, 0x4080

    .line 1061
    :cond_1
    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v10

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 1063
    :cond_2
    const/4 v0, 0x0

    .line 1066
    .local v0, bCancel:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 1067
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v12

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    aget v5, v5, v1

    sub-float v5, p1, v5

    cmpl-float v5, v5, v13

    if-lez v5, :cond_3

    .line 1068
    const/4 v0, 0x1

    .line 1066
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1051
    .end local v0           #bCancel:Z
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 1052
    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-float v2, v5

    goto :goto_0

    .line 1072
    .restart local v0       #bCancel:Z
    .restart local v1       #i:I
    :cond_5
    if-ne v9, v0, :cond_7

    .line 1073
    const-string v5, "DragLayer"

    const-string v6, "cancelScrollCountDown when detect user moving right to scroll zone"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iput v9, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1075
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->cancelScrollCountDown()V

    .line 1122
    .end local v0           #bCancel:Z
    .end local v1           #i:I
    :cond_6
    :goto_2
    return-void

    .line 1079
    .restart local v0       #bCancel:Z
    .restart local v1       #i:I
    :cond_7
    invoke-direct {p0, p1}, Lcom/htc/launcher/DragLayer;->logScrollCountDownX(F)V

    .line 1081
    iget v5, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    if-nez v5, :cond_8

    .line 1082
    iput v9, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1083
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-virtual {v5, v11}, Lcom/htc/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 1084
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    iget-boolean v5, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    if-eqz v5, :cond_9

    const-wide/16 v5, 0x3e8

    :goto_3
    invoke-virtual {p0, v7, v5, v6}, Lcom/htc/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    iput-boolean v9, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 1087
    :cond_8
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    instance-of v5, v5, Lcom/htc/launcher/Workspace;

    if-eqz v5, :cond_6

    .line 1088
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    check-cast v5, Lcom/htc/launcher/Workspace;

    invoke-virtual {v5, v11}, Lcom/htc/launcher/Workspace;->enableShowVacantRect(Z)V

    goto :goto_2

    .line 1084
    :cond_9
    const-wide/16 v5, 0x190

    goto :goto_3

    .line 1089
    .end local v0           #bCancel:Z
    .end local v1           #i:I
    :cond_a
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a005f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_e

    .line 1093
    :cond_b
    const/4 v0, 0x0

    .line 1096
    .restart local v0       #bCancel:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    array-length v5, v5

    if-ge v1, v5, :cond_f

    .line 1097
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v12

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollCountDownSample:[F

    aget v5, v5, v1

    sub-float/2addr v5, p1

    cmpl-float v5, v5, v13

    if-lez v5, :cond_c

    .line 1098
    const/4 v0, 0x1

    .line 1096
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1089
    .end local v0           #bCancel:Z
    .end local v1           #i:I
    :cond_d
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_b

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v7, v2, v10

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_b

    .line 1120
    :cond_e
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->cancelScrollCountDown()V

    goto/16 :goto_2

    .line 1102
    .restart local v0       #bCancel:Z
    .restart local v1       #i:I
    :cond_f
    if-ne v9, v0, :cond_10

    .line 1103
    const-string v5, "DragLayer"

    const-string v6, "cancelScrollCountDown when detect user moving left to scroll zone"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iput v9, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1105
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->cancelScrollCountDown()V

    goto/16 :goto_2

    .line 1109
    :cond_10
    invoke-direct {p0, p1}, Lcom/htc/launcher/DragLayer;->logScrollCountDownX(F)V

    .line 1111
    iget v5, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    if-nez v5, :cond_11

    .line 1112
    iput v9, p0, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 1113
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    invoke-virtual {v5, v9}, Lcom/htc/launcher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 1114
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    iget-boolean v5, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    if-eqz v5, :cond_12

    const-wide/16 v5, 0x3e8

    :goto_5
    invoke-virtual {p0, v7, v5, v6}, Lcom/htc/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    iput-boolean v9, p0, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 1117
    :cond_11
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    instance-of v5, v5, Lcom/htc/launcher/Workspace;

    if-eqz v5, :cond_6

    .line 1118
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    check-cast v5, Lcom/htc/launcher/Workspace;

    invoke-virtual {v5, v11}, Lcom/htc/launcher/Workspace;->enableShowVacantRect(Z)V

    goto/16 :goto_2

    .line 1114
    :cond_12
    const-wide/16 v5, 0x190

    goto :goto_5
.end method


# virtual methods
.method public DragHint_UpdateOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1517
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragHintMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1522
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragHintMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1523
    .local v0, mDragHintMessageParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1525
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragHintMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    .end local v0           #mDragHintMessageParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method abortDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    const-string v0, "DragLayer"

    const-string v1, "[EDIT_DEBUG] DragLayer.abortDrag()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->setAbortDrag(Z)V

    .line 544
    iget-boolean v0, p0, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    if-eqz v0, :cond_0

    .line 545
    iput-boolean v2, p0, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    .line 546
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->endDrag()V

    .line 547
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/launcher/DragSource;->onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V

    .line 549
    :cond_0
    return-void
.end method

.method public addDropTarget(Lcom/htc/launcher/DropTarget;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 1392
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] addDropTarget["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mDropTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDropTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    return-void
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
    .locals 17
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "fFinalAlpha"
    .parameter "fFinalScale"
    .parameter "nDuration"
    .parameter "motionInterpolator"
    .parameter "alphaInterpolator"
    .parameter "onCompleteRunnable"
    .parameter "bFadeOut"

    .prologue
    .line 2008
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 2010
    .local v13, fDist:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 2011
    .local v15, res:Landroid/content/res/Resources;
    const v3, 0x7f0c0012

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v14, v3

    .line 2014
    .local v14, fMaxDist:F
    if-gez p6, :cond_0

    .line 2015
    const v3, 0x7f0c0011

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    .line 2016
    cmpg-float v3, v13, v14

    if-gez v3, :cond_0

    .line 2017
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/DragLayer;->m_cubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v5, v13, v14

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p6, v0

    .line 2021
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 2022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2025
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 2026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2029
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    .line 2030
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v12

    .line 2031
    .local v12, fInitialAlpha:F
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    .line 2032
    if-eqz p8, :cond_3

    if-nez p7, :cond_4

    .line 2033
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/DragLayer;->m_cubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2036
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    move/from16 v0, p6

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v3, Lcom/htc/launcher/DragLayer$5;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p4

    invoke-direct/range {v3 .. v12}, Lcom/htc/launcher/DragLayer$5;-><init>(Lcom/htc/launcher/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/htc/launcher/DragLayer$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {v4, v0, v1, v2}, Lcom/htc/launcher/DragLayer$6;-><init>(Lcom/htc/launcher/DragLayer;Ljava/lang/Runnable;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/DragLayer;->m_dropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2076
    return-void

    .line 2037
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public animateViewIntoPosition(Lcom/htc/launcher/DragView;Landroid/view/View;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"

    .prologue
    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/launcher/DragLayer;->animateViewIntoPosition(Lcom/htc/launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1916
    return-void
.end method

.method public animateViewIntoPosition(Lcom/htc/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 15
    .parameter "dragView"
    .parameter "child"
    .parameter "nDuration"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 1925
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/FolderCellLayoutChildren;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1926
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 1928
    .local v12, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1929
    .local v14, r:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v14}, Lcom/htc/launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1931
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 1932
    .local v13, nCoord:[I
    const/4 v2, 0x0

    iget v3, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    aput v3, v13, v2

    .line 1933
    const/4 v2, 0x1

    iget v3, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    aput v3, v13, v2

    .line 1936
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v13}, Lcom/htc/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v8

    .line 1937
    .local v8, scale:F
    const/4 v2, 0x0

    aget v6, v13, v2

    .line 1938
    .local v6, nToX:I
    const/4 v2, 0x1

    aget v7, v13, v2

    .line 1948
    .local v7, nToY:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/DragView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v6, v2

    .line 1960
    iget v4, v14, Landroid/graphics/Rect;->left:I

    .line 1961
    .local v4, nFromX:I
    iget v5, v14, Landroid/graphics/Rect;->top:I

    .line 1962
    .local v5, nFromY:I
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1963
    new-instance v9, Lcom/htc/launcher/DragLayer$4;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v9, p0, v0, v1}, Lcom/htc/launcher/DragLayer$4;-><init>(Lcom/htc/launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1972
    .local v9, onCompleteRunnable:Ljava/lang/Runnable;
    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/htc/launcher/DragLayer;->animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V

    .line 1974
    return-void
.end method

.method public animateViewIntoPosition(Lcom/htc/launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 1920
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/launcher/DragLayer;->animateViewIntoPosition(Lcom/htc/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 1921
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    .line 472
    const-string v5, "DragLayer"

    const-string v6, "[EDIT_DEBUG] DragLayer.dispatchDraw()"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v5}, Lcom/htc/launcher/ScrollMonitor;->startDispatchDraw()V

    .line 479
    iget-boolean v5, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    if-eqz v5, :cond_6

    .line 481
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/htc/launcher/DragLayer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 484
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v5}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v1

    .line 485
    .local v1, obj:Ljava/lang/Object;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 486
    check-cast v1, Landroid/view/View;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getDrawingTime()J

    move-result-wide v5

    invoke-virtual {p0, p1, v1, v5, v6}, Lcom/htc/launcher/DragLayer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 491
    :cond_0
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    if-eqz v5, :cond_1

    .line 492
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/htc/launcher/DragLayer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 496
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    if-eqz v5, :cond_2

    .line 497
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/htc/launcher/DragLayer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 504
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

    if-eqz v5, :cond_3

    .line 505
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    if-eq v5, v6, :cond_3

    .line 506
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    instance-of v5, v5, Lcom/htc/launcher/FolderIcon;

    if-eqz v5, :cond_7

    .line 507
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

    .line 514
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->sIsEnablePointerLocation:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mPointerLocation:Lcom/htc/launcher/settings/PointerLocation;

    if-eqz v5, :cond_4

    .line 515
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mPointerLocation:Lcom/htc/launcher/settings/PointerLocation;

    invoke-virtual {v5, p1}, Lcom/htc/launcher/settings/PointerLocation;->DrawPointerLocation(Landroid/graphics/Canvas;)V

    .line 518
    :cond_4
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v5}, Lcom/htc/launcher/ScrollMonitor;->endDispatchDraw()V

    .line 520
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 523
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    .line 524
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int v3, v5, v6

    .line 525
    .local v3, xPos:I
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int v4, v5, v6

    .line 526
    .local v4, yPos:I
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 527
    .local v2, width:I
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 528
    .local v0, height:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 529
    iget v5, p0, Lcom/htc/launcher/DragLayer;->m_dropViewScale:F

    sub-float v5, v8, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    div-float/2addr v5, v9

    iget v6, p0, Lcom/htc/launcher/DragLayer;->m_dropViewScale:F

    sub-float v6, v8, v6

    int-to-float v7, v0

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 530
    iget v5, p0, Lcom/htc/launcher/DragLayer;->m_dropViewScale:F

    iget v6, p0, Lcom/htc/launcher/DragLayer;->m_dropViewScale:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 531
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    iget v6, p0, Lcom/htc/launcher/DragLayer;->m_dropViewAlpha:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 532
    iget-object v5, p0, Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 535
    .end local v0           #height:I
    .end local v2           #width:I
    .end local v3           #xPos:I
    .end local v4           #yPos:I
    :cond_5
    return-void

    .line 501
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 509
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/launcher/DragLayer;->mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 1541
    sget-boolean v1, Lcom/htc/launcher/settings/SettingUtil;->sIsEnablePointerLocation:Z

    if-eqz v1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mPointerLocation:Lcom/htc/launcher/settings/PointerLocation;

    if-nez v1, :cond_0

    .line 1543
    new-instance v1, Lcom/htc/launcher/settings/PointerLocation;

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/htc/launcher/settings/PointerLocation;-><init>(II)V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->mPointerLocation:Lcom/htc/launcher/settings/PointerLocation;

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mPointerLocation:Lcom/htc/launcher/settings/PointerLocation;

    invoke-virtual {v1, p1}, Lcom/htc/launcher/settings/PointerLocation;->PointerLocationTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1547
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1548
    .local v0, action:I
    sget-boolean v1, Lcom/htc/launcher/DragLayer;->DEBUG_TOUCH:Z

    if-eqz v1, :cond_2

    .line 1549
    if-nez v0, :cond_3

    .line 1550
    const-string v1, "DragLayer"

    const-string v2, "touch event action ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1551
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1552
    const-string v1, "DragLayer"

    const-string v2, "touch event action ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1553
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1554
    const-string v1, "DragLayer"

    const-string v2, "touch event action ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public displayFolder(Lcom/htc/launcher/Folder;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    .line 1639
    invoke-virtual {p1}, Lcom/htc/launcher/Folder;->setupContentDimensions()V

    .line 1640
    invoke-virtual {p0, p1}, Lcom/htc/launcher/DragLayer;->addDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 1641
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 1642
    invoke-virtual {p0, p1}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 1643
    invoke-virtual {p1}, Lcom/htc/launcher/Folder;->animateOpen()V

    .line 1644
    return-void
.end method

.method dropToAvailableCell()V
    .locals 4

    .prologue
    .line 2120
    const-string v1, "DragLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] dropToAvailableCell() - mIsAddToHomeDropEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/launcher/DragLayer;->mIsAddToHomeDropEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/launcher/DragLayer;->mIsAddToHomeDropEnd:Z

    if-nez v1, :cond_1

    .line 2122
    :cond_0
    const-string v1, "DragLayer"

    const-string v2, "[EDIT_DEBUG] dropToAvailableCell() - return"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :goto_0
    return-void

    .line 2125
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    .line 2126
    .local v0, itemInfo:Lcom/htc/launcher/ItemInfo;
    instance-of v1, v0, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 2127
    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .end local v0           #itemInfo:Lcom/htc/launcher/ItemInfo;
    iget-object v1, v0, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/htc/launcher/Launcher;->addApplication(Landroid/content/Intent;)V

    .line 2129
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    .line 2130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/DragLayer;->mIsAddToHomeDropEnd:Z

    goto :goto_0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 9
    .parameter "descendant"
    .parameter "coord"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1720
    const/high16 v1, 0x3f80

    .line 1721
    .local v1, fScale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 1722
    .local v0, fPt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1723
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 1724
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 1725
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 1726
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1727
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 1728
    check-cast v2, Landroid/view/View;

    .line 1729
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1730
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 1731
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 1732
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 1733
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1734
    goto :goto_0

    .line 1735
    .end local v2           #view:Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 1736
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 1737
    return v1
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "descendant"
    .parameter "rc"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1694
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 1695
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 1696
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/htc/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 1697
    .local v0, scale:F
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1698
    return v0
.end method

.method public getDragCompleteAction()Lcom/htc/launcher/DragSource$DragCompletedAction;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    return-object v0
.end method

.method public getDragView()Lcom/htc/launcher/DragView;
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)V
    .locals 2
    .parameter "child"
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 1703
    aput v1, p2, v1

    .line 1704
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 1705
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 1706
    return-void
.end method

.method public getOpenFolder()Lcom/htc/launcher/Folder;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    return-object v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2104
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 2105
    .local v1, nLoc:[I
    invoke-virtual {p0, v1}, Lcom/htc/launcher/DragLayer;->getLocationInWindow([I)V

    .line 2106
    aget v5, v1, v8

    .line 2107
    .local v5, nX:I
    aget v6, v1, v9

    .line 2109
    .local v6, nY:I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2110
    aget v3, v1, v8

    .line 2111
    .local v3, nVX:I
    aget v4, v1, v9

    .line 2113
    .local v4, nVY:I
    sub-int v0, v3, v5

    .line 2114
    .local v0, nLeft:I
    sub-int v2, v4, v6

    .line 2115
    .local v2, nTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2116
    return-void
.end method

.method public hideFolder()V
    .locals 5

    .prologue
    .line 1647
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    if-nez v2, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v2}, Lcom/htc/launcher/Folder;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1658
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    iget-object v2, v2, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1659
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    invoke-virtual {v2}, Lcom/htc/launcher/Folder;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    .line 1660
    .local v0, folderInfo:Lcom/htc/launcher/FolderInfo;
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    iget-object v2, v2, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, strTitle:Ljava/lang/String;
    new-instance v2, Lcom/htc/launcher/DragLayer$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/htc/launcher/DragLayer$2;-><init>(Lcom/htc/launcher/DragLayer;Lcom/htc/launcher/FolderInfo;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/htc/launcher/DragLayer;->post(Ljava/lang/Runnable;)Z

    .line 1670
    .end local v0           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v1           #strTitle:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    new-instance v3, Lcom/htc/launcher/DragLayer$3;

    invoke-direct {v3, p0}, Lcom/htc/launcher/DragLayer$3;-><init>(Lcom/htc/launcher/DragLayer;)V

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Folder;->animateClose(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0
.end method

.method initialDragHint()V
    .locals 2

    .prologue
    .line 1509
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/htc/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    .line 1510
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mLeftKey:Landroid/view/View;

    .line 1511
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mRightKey:Landroid/view/View;

    .line 1512
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHintMessage:Landroid/widget/TextView;

    .line 1513
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    return v0
.end method

.method public onFloat(Lcom/htc/launcher/Draggee;Landroid/graphics/RectF;)Z
    .locals 13
    .parameter "item"
    .parameter "pos"

    .prologue
    .line 331
    const-string v0, "DragLayer"

    const-string v2, "[EDIT_DEBUG] DragLayer.onFloat()"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    .line 334
    .local v7, info:Lcom/htc/launcher/ItemInfo;
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 337
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 338
    .local v12, wh:[I
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v0

    iget v2, v7, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v3, v7, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v2, v3, v12}, Lcom/htc/launcher/Workspace;->getWidthHeightForSpan(II[I)V

    .line 340
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    new-instance v9, Lcom/htc/launcher/DragLayer$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Lcom/htc/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 344
    .local v9, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    const/16 v0, 0x11

    iput v0, v9, Lcom/htc/launcher/DragLayer$LayoutParams;->gravity:I

    .line 345
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .end local v9           #lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 349
    const-string v0, "DragLayer"

    const-string v2, "[EDIT_DEBUG] DragLayer.onFloat() View\'s parent is null, addView()!!"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    const/4 v0, 0x0

    aget v0, v12, v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x1

    aget v0, v12, v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/DragLayer;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 358
    if-eqz p2, :cond_3

    .line 359
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v0

    .line 360
    .local v8, l:I
    iget v0, p2, Landroid/graphics/RectF;->top:F

    float-to-int v11, v0

    .line 361
    .local v11, t:I
    iget v0, p2, Landroid/graphics/RectF;->right:F

    float-to-int v10, v0

    .line 362
    .local v10, r:I
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v0

    .line 371
    .local v6, b:I
    :goto_1
    invoke-virtual {v1, v8, v11, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 375
    :cond_1
    int-to-float v0, v8

    int-to-float v2, v11

    sub-int v3, v10, v8

    int-to-float v3, v3

    sub-int v4, v6, v11

    int-to-float v4, v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/htc/launcher/DragLayer;->initDragControlRect(FFFF)V

    .line 377
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 379
    const/4 v0, 0x1

    return v0

    .line 352
    .end local v6           #b:I
    .end local v8           #l:I
    .end local v10           #r:I
    .end local v11           #t:I
    :cond_2
    const-string v0, "DragLayer"

    const-string v2, "[EDIT_DEBUG] DragLayer.onFloat() View\'s parent != null"

    invoke-static {v0, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 365
    .restart local v10       #r:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 366
    .restart local v6       #b:I
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getWidth()I

    move-result v0

    sub-int/2addr v0, v10

    div-int/lit8 v8, v0, 0x2

    .line 367
    .restart local v8       #l:I
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getHeight()I

    move-result v0

    sub-int/2addr v0, v6

    div-int/lit8 v11, v0, 0x2

    .line 368
    .restart local v11       #t:I
    add-int/2addr v10, v8

    .line 369
    add-int/2addr v6, v11

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 591
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v4

    .line 592
    .local v4, w:Lcom/htc/launcher/Workspace;
    if-eqz v4, :cond_0

    .line 593
    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentPage()I

    move-result v3

    .line 594
    .local v3, page:I
    invoke-virtual {v4, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 595
    .local v1, currentPage:Lcom/htc/launcher/CellLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->hasResizeFrames()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/htc/launcher/CellLayout;->isWidgetBeingResized()Z

    move-result v7

    if-nez v7, :cond_0

    .line 596
    new-instance v7, Lcom/htc/launcher/DragLayer$1;

    invoke-direct {v7, p0, v1}, Lcom/htc/launcher/DragLayer$1;-><init>(Lcom/htc/launcher/DragLayer;Lcom/htc/launcher/CellLayout;)V

    invoke-virtual {p0, v7}, Lcom/htc/launcher/DragLayer;->post(Ljava/lang/Runnable;)Z

    .line 609
    .end local v1           #currentPage:Lcom/htc/launcher/CellLayout;
    .end local v3           #page:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 611
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 612
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 614
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 647
    :cond_1
    :goto_0
    iget-boolean v7, p0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    :goto_1
    return v7

    .line 616
    :pswitch_0
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 617
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->cancelTheCallbackForStickyModeExiting()V

    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    if-eqz v7, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/launcher/DragLayer;->isOutOfFolderBounds(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 623
    const/4 v7, 0x1

    goto :goto_1

    .line 626
    :cond_2
    iput v5, p0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    iput v5, p0, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    .line 627
    iput v6, p0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    iput v6, p0, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    .line 628
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v7, v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateMotionDown(FF)V

    .line 629
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-direct {p0, v5, v6}, Lcom/htc/launcher/DragLayer;->drop(FF)Z

    move-result v2

    .line 633
    .local v2, isDropOk:Z
    iget-boolean v7, p0, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 634
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    .line 635
    const-string v7, "DragLayer"

    const-string v8, "[EDIT_DEBUG]# DragLayer.onInterceptTouchEvent().MotionEvent.UP endDrag()"

    invoke-static {v7, v8}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/htc/launcher/DragLayer;->endDrag()V

    .line 638
    :cond_3
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 639
    iget-object v7, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->postDelayedCallbackToExitStickyMode()V

    goto :goto_0

    .line 643
    .end local v2           #isDropOk:Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onLand(Lcom/htc/launcher/Draggee;III)Z
    .locals 2
    .parameter "item"
    .parameter "container"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 384
    const-string v0, "DragLayer"

    const-string v1, "[EDIT_DEBUG] DragLayer.onLand()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/htc/launcher/DragLayer;->onPoof(Lcom/htc/launcher/Draggee;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1742
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1743
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getChildCount()I

    move-result v4

    .local v4, nCount:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1744
    invoke-virtual {p0, v2}, Lcom/htc/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1745
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1746
    .local v1, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v1, Lcom/htc/launcher/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 1747
    check-cast v3, Lcom/htc/launcher/DragLayer$LayoutParams;

    .line 1748
    .local v3, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    iget-boolean v5, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 1749
    iget v5, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    iget v6, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    iget v7, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    iget v8, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    iget v9, v3, Lcom/htc/launcher/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 1743
    .end local v3           #lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1753
    .end local v0           #child:Landroid/view/View;
    .end local v1           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onPoof(Lcom/htc/launcher/Draggee;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    const-string v3, "DragLayer"

    const-string v4, "[EDIT_DEBUG] DragLayer.onPoof()"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    const-string v3, "DragLayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] DragLayer.onPoof() ItemInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/FxItemInfo;

    if-nez v3, :cond_2

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/FxShortcutInfo;

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 398
    goto :goto_0

    .line 401
    :cond_3
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 402
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Lcom/htc/launcher/DragLayer;->removeView(Landroid/view/View;)V

    move v1, v2

    .line 404
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "ev"

    .prologue
    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/DragLayer;->isOutOfFolderBounds(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Folder;->isAnimating()Z

    move-result v28

    if-nez v28, :cond_0

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/htc/launcher/DesktopItemController;->closeFolder(Lcom/htc/launcher/Folder;)V

    .line 685
    const/16 v28, 0x1

    .line 936
    :goto_0
    return v28

    .line 688
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 689
    const/16 v28, 0x0

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 693
    .local v17, nActionIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 694
    .local v20, nPointerId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    .line 696
    .local v18, nActionMasked:I
    sget-boolean v28, Lcom/htc/launcher/DragLayer;->DEBUG_TOUCH:Z

    if-eqz v28, :cond_2

    .line 697
    const-string v28, "DragLayer"

    const-string v29, "onTouchEvent actionindex:%d, pointerid:%d, actionmasked:%d"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    if-lez v28, :cond_5

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    .line 705
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 706
    .local v10, fActionX:F
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 707
    .local v11, fActionY:F
    packed-switch v18, :pswitch_data_0

    .line 728
    .end local v10           #fActionX:F
    .end local v11           #fActionY:F
    :cond_3
    :goto_1
    const/16 v28, 0x1

    goto :goto_0

    .line 709
    .restart local v10       #fActionX:F
    .restart local v11       #fActionY:F
    :pswitch_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/launcher/DragLayer;->m_fMotionDown2X:F

    .line 710
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/launcher/DragLayer;->m_fMotionDown2Y:F

    goto :goto_1

    .line 713
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/DragLayer;->m_fMotionDown2X:F

    move/from16 v28, v0

    sub-float v12, v10, v28

    .line 714
    .local v12, fDiffX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/DragLayer;->m_fMotionDown2Y:F

    move/from16 v28, v0

    sub-float v13, v11, v28

    .line 715
    .local v13, fDiffY:F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-lez v28, :cond_3

    .line 716
    neg-float v0, v12

    move/from16 v28, v0

    const/high16 v29, 0x41c8

    cmpl-float v28, v28, v29

    if-lez v28, :cond_4

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/launcher/DragScroller;->scrollRight()V

    goto :goto_1

    .line 719
    :cond_4
    const/high16 v28, 0x41c8

    cmpl-float v28, v12, v28

    if-lez v28, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/launcher/DragScroller;->scrollLeft()V

    goto :goto_1

    .line 731
    .end local v10           #fActionX:F
    .end local v11           #fActionY:F
    .end local v12           #fDiffX:F
    .end local v13           #fDiffY:F
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .line 732
    .local v19, nCurrentActionIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 733
    .local v21, nScreenX:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 735
    .local v22, nScreenY:I
    sget-boolean v28, Lcom/htc/launcher/DragLayer;->DEBUG_TOUCH:Z

    if-eqz v28, :cond_6

    .line 736
    const-string v28, "DragLayer"

    const-string v29, "onTouchEvent x:%d, y:%d"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/DragLayer;->filterOutOfScreenEvent(Landroid/view/MotionEvent;)V

    .line 741
    packed-switch v18, :pswitch_data_1

    .line 929
    :cond_7
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    move/from16 v28, v0

    if-nez v28, :cond_18

    .line 930
    const-string v28, "DragLayer"

    const-string v29, "[DEBUG_TOUCH] onTouchEvent() mHitDrag=false return!"

    invoke-static/range {v28 .. v29}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 744
    :pswitch_3
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    .line 745
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    .line 748
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/DragLayer;->mChangePage:Z

    .line 750
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/htc/launcher/DragLayer;->isInScrollZone(F)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mScrollState:I

    .line 753
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    .line 754
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    .line 756
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/DragLayer;->isTouchOnDragControl(FF)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    goto/16 :goto_2

    .line 768
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    .line 778
    const-string v28, "DragLayer"

    const-string v29, "mDragView.move %d %d"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/DragView;->move(II)V

    .line 782
    :cond_8
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/DragLayer;->mMovedSinceDragStart:Z

    .line 784
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    move/from16 v29, v0

    sub-float v14, v28, v29

    .line 785
    .local v14, fDx:F
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    move/from16 v29, v0

    sub-float v15, v28, v29

    .line 788
    .local v15, fDy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v28, v0

    add-float v23, v28, v14

    .line 789
    .local v23, newLeft:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    add-float v24, v28, v15

    .line 791
    .local v24, newTop:F
    move/from16 v16, v23

    .line 792
    .local v16, left:F
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/launcher/DragLayer;->limitDragMoveY(F)F

    move-result v26

    .line 795
    .local v26, top:F
    cmpl-float v28, v26, v24

    if-eqz v28, :cond_9

    .line 800
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v26

    sub-float v28, v28, v24

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 801
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 804
    :cond_9
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    .line 805
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    .line 806
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v16

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    .line 807
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v26

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 811
    .local v25, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    const/high16 v30, 0x3f80

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragControlRect:Landroid/graphics/RectF;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    const/high16 v32, 0x3f80

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 819
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/DragLayer;->mDropCoordinates:[I

    .line 820
    .local v7, coordinates:[I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/launcher/DragLayer;->findDropTarget(II[I)Lcom/htc/launcher/DropTarget;

    move-result-object v9

    .line 821
    .local v9, dropTarget:Lcom/htc/launcher/DropTarget;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/htc/launcher/DragLayer;->fireDragEvent(Lcom/htc/launcher/DropTarget;[I)V

    .line 824
    if-eqz v9, :cond_a

    instance-of v0, v9, Lcom/htc/launcher/FolderIcon;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    .line 826
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/launcher/DragLayer;->mFolderIconDropTarget:Lcom/htc/launcher/DropTarget;

    .line 828
    :cond_a
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    .line 832
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mIsInDragRegion:Z

    move/from16 v27, v0

    .line 833
    .local v27, wasInDragRegion:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/launcher/DragLayer;->isInRegion(Lcom/htc/launcher/DropTarget;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/DragLayer;->mIsInDragRegion:Z

    .line 834
    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mIsInDragRegion:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 841
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mIsInDragRegion:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->m_openFolder:Lcom/htc/launcher/Folder;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLastDropTarget:Lcom/htc/launcher/DropTarget;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/htc/launcher/Workspace;

    move/from16 v28, v0

    if-nez v28, :cond_e

    .line 844
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->cancelScrollCountDown()V

    goto/16 :goto_2

    .line 836
    :cond_d
    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mIsInDragRegion:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    .line 837
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 846
    :cond_e
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/htc/launcher/DragLayer;->startScrollCountDownIfNeeded(F)V

    goto/16 :goto_2

    .line 853
    .end local v7           #coordinates:[I
    .end local v9           #dropTarget:Lcom/htc/launcher/DropTarget;
    .end local v14           #fDx:F
    .end local v15           #fDy:F
    .end local v16           #left:F
    .end local v23           #newLeft:F
    .end local v24           #newTop:F
    .end local v25           #rect:Landroid/graphics/Rect;
    .end local v26           #top:F
    .end local v27           #wasInDragRegion:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    move/from16 v28, v0

    if-nez v28, :cond_11

    .line 854
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    move/from16 v29, v0

    sub-float v12, v28, v29

    .line 855
    .restart local v12       #fDiffX:F
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    move/from16 v29, v0

    sub-float v13, v28, v29

    .line 856
    .restart local v13       #fDiffY:F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-lez v28, :cond_f

    .line 857
    neg-float v0, v12

    move/from16 v28, v0

    const/high16 v29, 0x41c8

    cmpl-float v28, v28, v29

    if-lez v28, :cond_10

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/launcher/DragScroller;->scrollRight()V

    .line 863
    :cond_f
    :goto_4
    const-string v28, "DragLayer"

    const-string v29, "[DEBUG_TOUCH] onTouchEvent() mHitDrag=false - UP return!"

    invoke-static/range {v28 .. v29}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 859
    :cond_10
    const/high16 v28, 0x41c8

    cmpl-float v28, v12, v28

    if-lez v28, :cond_f

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/launcher/DragScroller;->scrollLeft()V

    goto :goto_4

    .line 867
    .end local v12           #fDiffX:F
    .end local v13           #fDiffY:F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mScrollRunnable:Lcom/htc/launcher/DragLayer$ScrollRunnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 883
    const-string v28, "DragLayer"

    const-string v29, "[EDIT_DEBUG] DragLayer.onTouchEvent().MotionEvent.UP drop(%d,%d) DragSource:%s"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/DragLayer;->drop(FF)Z

    move-result v5

    .line 886
    .local v5, bIsDrag:Z
    const-string v28, "DragLayer"

    const-string v29, "[EDIT_DEBUG] DragLayer.onTouchEvent().MotionEvent.UP drop(%d,%d)=%b mMovedSinceDragStart:%b"

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mMovedSinceDragStart:Z

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mMovedSinceDragStart:Z

    move/from16 v28, v0

    if-nez v28, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_15

    .line 889
    :cond_12
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    .line 890
    const-string v28, "DragLayer"

    const-string v29, "[EDIT_DEBUG] DragLayer.onTouchEvent().MotionEvent.UP drop() endDrag()"

    invoke-static/range {v28 .. v29}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->endDrag()V

    .line 892
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/DragLayer;->mMovedSinceDragStart:Z

    move/from16 v28, v0

    if-nez v28, :cond_13

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/htc/launcher/DragSource;->onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V

    .line 913
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v28

    if-eqz v28, :cond_14

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Launcher;->postDelayedCallbackToExitStickyMode()V

    .line 916
    :cond_14
    const-string v28, "DragLayer"

    const-string v29, "[DEBUG_TOUCH] onTouchEvent() mShouldDrop && mHitDrag - UP return!"

    invoke-static/range {v28 .. v29}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 895
    :cond_15
    const-string v28, "DragLayer"

    const-string v29, "[EDIT_DEBUG] DragLayer.onTouchEvent().MotionEvent.UP drop() else"

    invoke-static/range {v28 .. v29}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    goto :goto_5

    .line 899
    :cond_16
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/DragLayer;->mIsAddToHomeDropEnd:Z

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v8

    .line 901
    .local v8, currentScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/launcher/Workspace;->scrollToAvailableScreenForShortcut()Lcom/htc/launcher/CellInfo;

    move-result-object v6

    .line 902
    .local v6, cellInfo:Lcom/htc/launcher/CellInfo;
    if-nez v6, :cond_17

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v29, v0

    const v30, 0x7f0b001c

    invoke-virtual/range {v29 .. v30}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Toast;->show()V

    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    goto :goto_5

    .line 907
    :cond_17
    iget v0, v6, Lcom/htc/launcher/CellInfo;->screen:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v0, v8, :cond_13

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->dropToAvailableCell()V

    goto/16 :goto_5

    .line 923
    .end local v5           #bIsDrag:Z
    .end local v6           #cellInfo:Lcom/htc/launcher/CellInfo;
    .end local v8           #currentScreen:I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    goto/16 :goto_2

    .line 935
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 936
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 741
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public prepareDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 3
    .parameter "dragItem"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/DragController$DragListener;

    .line 240
    .local v1, listener:Lcom/htc/launcher/DragController$DragListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/launcher/DragController$DragListener;->onPreDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 242
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/launcher/DragController$DragListener;
    :cond_0
    return-void
.end method

.method public removeDragListener(Lcom/htc/launcher/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1386
    :cond_0
    return-void
.end method

.method public removeDropTarget(Lcom/htc/launcher/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDropTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1401
    return-void
.end method

.method public restoreRemovedChildren()V
    .locals 3

    .prologue
    .line 1596
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    if-nez v2, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1598
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1599
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1600
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    aget-object v0, v2, v1

    .line 1601
    .local v0, child:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-ne v0, v2, :cond_2

    .line 1602
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;I)V

    .line 1598
    .end local v0           #child:Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1604
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    if-ne v0, v2, :cond_3

    .line 1605
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1608
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1612
    .end local v0           #child:Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    goto :goto_0
.end method

.method setDeleteRegion(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 1420
    return-void
.end method

.method setDragColor(I)V
    .locals 5
    .parameter "color"

    .prologue
    .line 1187
    if-nez p1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1196
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1194
    .local v0, srcColor:I
    iget-object v1, p0, Lcom/htc/launcher/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method public setDragCompleteAction(Lcom/htc/launcher/DragSource$DragCompletedAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->mDragCompletedAction:Lcom/htc/launcher/DragSource$DragCompletedAction;

    .line 1177
    return-void
.end method

.method public setDragHintBackground(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1506
    return-void
.end method

.method public setDragHintMessage(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHintMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHintMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1502
    :cond_0
    return-void
.end method

.method public setDragLeaper(Lcom/htc/launcher/DragLeaper;)V
    .locals 0
    .parameter "leaper"

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->mDragLeaper:Lcom/htc/launcher/DragLeaper;

    .line 1371
    return-void
.end method

.method public setDragListener(Lcom/htc/launcher/DragController$DragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_1
    return-void
.end method

.method public setDragScoller(Lcom/htc/launcher/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;

    .line 1367
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 1411
    return-void
.end method

.method public setLeftArrowEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 1470
    if-eqz p1, :cond_0

    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/DragLayer;->isLeftArrowEnable:Z

    .line 1472
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLeftKey:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    :goto_0
    return-void

    .line 1475
    :cond_0
    iput-boolean v1, p0, Lcom/htc/launcher/DragLayer;->isLeftArrowEnable:Z

    .line 1476
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLeftKey:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightArrowEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 1481
    if-eqz p1, :cond_0

    .line 1482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/DragLayer;->isRightArrowEnable:Z

    .line 1483
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRightKey:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1489
    :goto_0
    return-void

    .line 1486
    :cond_0
    iput-boolean v1, p0, Lcom/htc/launcher/DragLayer;->isRightArrowEnable:Z

    .line 1487
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mRightKey:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V
    .locals 0
    .parameter "scrollMonitor"

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/htc/launcher/DragLayer;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    .line 1536
    return-void
.end method

.method public showDragHint(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 1447
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    const/4 p1, 0x1

    .line 1451
    :cond_0
    iput-boolean p1, p0, Lcom/htc/launcher/DragLayer;->isDragHintShow:Z

    .line 1452
    if-eqz p1, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1464
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragHint:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1459
    iput-boolean v2, p0, Lcom/htc/launcher/DragLayer;->isLeftArrowEnable:Z

    .line 1460
    iput-boolean v2, p0, Lcom/htc/launcher/DragLayer;->isRightArrowEnable:Z

    .line 1461
    invoke-virtual {p0, v2}, Lcom/htc/launcher/DragLayer;->setLeftArrowEnable(Z)V

    .line 1462
    invoke-virtual {p0, v2}, Lcom/htc/launcher/DragLayer;->setRightArrowEnable(Z)V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;IILcom/htc/launcher/DragSource;Landroid/graphics/Rect;Z)V
    .locals 12
    .parameter "v"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "source"
    .parameter "dragRegion"
    .parameter "vibrate"

    .prologue
    .line 1873
    iget v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    float-to-int v2, v2

    sub-int v4, v2, p2

    .line 1874
    .local v4, registrationX:I
    iget v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    float-to-int v2, v2

    sub-int v5, v2, p3

    .line 1876
    .local v5, registrationY:I
    if-nez p5, :cond_2

    const/4 v10, 0x0

    .line 1877
    .local v10, dragRegionLeft:I
    :goto_0
    if-nez p5, :cond_3

    const/4 v11, 0x0

    .line 1878
    .local v11, dragRegionTop:I
    :goto_1
    iget v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    int-to-float v6, p2

    sub-float/2addr v2, v6

    int-to-float v6, v10

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    .line 1879
    iget v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    int-to-float v6, p3

    sub-float/2addr v2, v6

    int-to-float v6, v11

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    .line 1881
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    .line 1883
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/ApplicationInfo;

    .line 1884
    .local v3, info:Lcom/htc/launcher/ApplicationInfo;
    new-instance v1, Lcom/htc/launcher/DragView;

    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget-object v9, v3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/htc/launcher/DragView;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/ApplicationInfo;IIIIII)V

    iput-object v1, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    .line 1886
    .local v1, dragView:Lcom/htc/launcher/DragView;
    if-eqz p6, :cond_0

    .line 1887
    iget-object v2, p0, Lcom/htc/launcher/DragLayer;->m_dragView:Lcom/htc/launcher/DragView;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/htc/launcher/DragView;->performHapticFeedback(II)Z

    .line 1899
    :cond_0
    if-eqz p5, :cond_1

    .line 1900
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/htc/launcher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 1903
    :cond_1
    iget v2, p0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    float-to-int v2, v2

    iget v6, p0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    float-to-int v6, v6

    invoke-virtual {v1, v2, v6}, Lcom/htc/launcher/DragView;->show(II)V

    .line 1906
    return-void

    .line 1876
    .end local v1           #dragView:Lcom/htc/launcher/DragView;
    .end local v3           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v10           #dragRegionLeft:I
    .end local v11           #dragRegionTop:I
    :cond_2
    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1877
    .restart local v10       #dragRegionLeft:I
    :cond_3
    move-object/from16 v0, p5

    iget v11, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public startDrag(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 17
    .parameter "dragItem"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 246
    const-string v5, "DragLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EDIT_DEBUG] DragLayer.startDrag() source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/DragLayer;->mDragRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    .line 252
    .local v16, r:Landroid/graphics/RectF;
    invoke-interface/range {p1 .. p1}, Lcom/htc/launcher/Draggee;->getRectInPixels()Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 256
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/DragLayer;->mMotionDownX:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    .line 257
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/DragLayer;->mMotionDownY:F

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    .line 259
    const-string v5, "DragLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EDIT_DEBUG] DragLayer.startDrag() fakeTouchDown() source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    .line 263
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 265
    .local v11, controlRect:Landroid/graphics/RectF;
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/launcher/DragLayer;->mDragControlOffsetX:F

    .line 266
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/launcher/DragLayer;->mDragControlOffsetY:F

    .line 269
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/DragLayer;->mScrollX:I

    int-to-float v5, v5

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/DragLayer;->mDragControlOffsetX:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/DragLayer;->mScrollY:I

    int-to-float v6, v6

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/DragLayer;->mDragControlOffsetY:F

    sub-float/2addr v6, v7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/htc/launcher/DragLayer;->initDragControlRect(FFFF)V

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DragLayer;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/launcher/DragController$DragListener;

    .line 274
    .local v14, listener:Lcom/htc/launcher/DragController$DragListener;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/htc/launcher/DragController$DragListener;->onPostDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 277
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #listener:Lcom/htc/launcher/DragController$DragListener;
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/launcher/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 278
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/launcher/DragLayer;->mDragging:Z

    .line 279
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/launcher/DragLayer;->mShouldDrop:Z

    .line 281
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    .line 283
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/launcher/DragLayer;->mMovedSinceDragStart:Z

    .line 284
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/launcher/DragLayer;->mIsInDragRegion:Z

    .line 285
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/launcher/DragLayer;->mHitDrag:Z

    .line 288
    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/htc/launcher/Workspace;

    if-nez v5, :cond_1

    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/htc/launcher/AllAppsView;

    if-eqz v5, :cond_2

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/DragLayer;->mDropCoordinates:[I

    .line 291
    .local v12, coordinates:[I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/DragLayer;->mLastMotionX:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/DragLayer;->mLastMotionY:F

    float-to-int v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v12}, Lcom/htc/launcher/DragLayer;->findDropTarget(II[I)Lcom/htc/launcher/DropTarget;

    move-result-object v4

    .line 292
    .local v4, dropTarget:Lcom/htc/launcher/DropTarget;
    if-eqz v4, :cond_2

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DragLayer;->mDragSource:Lcom/htc/launcher/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/DragLayer;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/launcher/DragLayer;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface/range {v4 .. v10}, Lcom/htc/launcher/DropTarget;->onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V

    .line 297
    .end local v4           #dropTarget:Lcom/htc/launcher/DropTarget;
    .end local v12           #coordinates:[I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->invalidate()V

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DragLayer;->mDragItem:Lcom/htc/launcher/Draggee;

    invoke-interface {v5}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v15

    .line 303
    .local v15, obj:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 304
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x23

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 308
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/DragLayer;->fakeTouchMove()V

    .line 309
    return-void
.end method

.method public tempRemoveChildren()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1563
    invoke-virtual {p0}, Lcom/htc/launcher/DragLayer;->getChildCount()I

    move-result v1

    .line 1564
    .local v1, count:I
    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    .line 1565
    new-array v3, v1, [Z

    .line 1567
    .local v3, removeViews:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1568
    invoke-virtual {p0, v2}, Lcom/htc/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1569
    .local v0, child:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-ne v0, v4, :cond_0

    .line 1570
    aput-boolean v5, v3, v2

    .line 1567
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1572
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    if-ne v0, v4, :cond_1

    .line 1573
    aput-boolean v5, v3, v2

    goto :goto_1

    .line 1575
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-ne v0, v4, :cond_2

    .line 1576
    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    goto :goto_1

    .line 1579
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mBackupChildren:[Landroid/view/View;

    aput-object v0, v4, v2

    .line 1580
    aput-boolean v5, v3, v2

    goto :goto_1

    .line 1584
    .end local v0           #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v1, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 1585
    aget-boolean v4, v3, v2

    if-ne v4, v5, :cond_4

    .line 1586
    invoke-virtual {p0, v2}, Lcom/htc/launcher/DragLayer;->removeViewAt(I)V

    .line 1584
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1590
    :cond_5
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 1591
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 1592
    iget-object v4, p0, Lcom/htc/launcher/DragLayer;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->tempRemoveChildren()V

    .line 1593
    return-void
.end method

.class public Lcom/htc/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/htc/launcher/Workspace$Screen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/CellLayout$1;,
        Lcom/htc/launcher/CellLayout$ICellInfoHandler;,
        Lcom/htc/launcher/CellLayout$CellComparator;,
        Lcom/htc/launcher/CellLayout$RearrangeInfo;,
        Lcom/htc/launcher/CellLayout$OccupiedDelegation;,
        Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;,
        Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;,
        Lcom/htc/launcher/CellLayout$LayoutParams;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHECK_CHILDREN_DRAWING_CACHE:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_REARRANGE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_TOUCH:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CellLayout"

.field private static final NOTIFY_DIRTY:I = 0x19

.field private static final NOTIFY_DIRTY_DELAY:I = 0x5dc

.field private static final NOTIFY_REARRANGE:I = 0x1a

.field private static final NOTIFY_REARRANGE_DELAY:I = 0x96

.field public static final localLOGD:Z

.field private static sAvailableBoundaryColor:I

.field private static sCornerRadius:I

.field private static sDropCellColor:I

.field private static sLineWidth:I

.field private static sOccupiedAreaColor:I

.field private static sScreenPaint:Landroid/graphics/Paint;

.field private static s_nSmallerSize:I


# instance fields
.field private isShowVacantRect:Z

.field mBackupChildren:[Landroid/view/View;

.field private mButtonBarHeight:I

.field private mCellHeight:I

.field private mCellInfo:Lcom/htc/launcher/CellInfo;

.field private mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

.field private mCellWidth:I

.field mCellXY:[I

.field private mChildFrame:Landroid/graphics/Rect;

.field private mChildHit:Z

.field private mCurrentDragInfo:Ljava/lang/Object;

.field private mDirty:Landroid/graphics/Rect;

.field private mDirtyTag:Z

.field private mDragCellInfo:Lcom/htc/launcher/CellInfo;

.field private mDragOverInfo:Lcom/htc/launcher/CellInfo;

.field private mDragRect:Landroid/graphics/RectF;

.field mDraggingOccupied:[[Z

.field private mHeightGap:I

.field mIsDragging:Z

.field private mIsPause:Z

.field private mIsScrolling:Z

.field private mIsVacantValid:Z

.field private mLandOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

.field private mLastDownOnOccupiedCell:Z

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field private mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

.field private mNearestVacantBounds:Landroid/graphics/RectF;

.field private mNotifyHandler:Landroid/os/Handler;

.field mOccupied:[[Z

.field private mOccupiedDelegationCopy:[[Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPortOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

.field private mPortrait:Z

.field mRearrangeCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/CellLayout$RearrangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRect:Landroid/graphics/Rect;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreensCanvas:Landroid/graphics/Canvas;

.field private mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field private mShowVacant:Z

.field private mUIMessageQueue:Landroid/os/MessageQueue;

.field private mUpdateCellLayoutCacheHandler:Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;

.field private mVacantCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field private mVacantInvalidRect:Landroid/graphics/Rect;

.field private mVacantPaint:Landroid/graphics/Paint;

.field private mVacantPath:Landroid/graphics/Path;

.field private final mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

.field private mWidthGap:I

.field private m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

.field private m_dragOverItem:Lcom/htc/launcher/FxItem;

.field private m_nLastDragX:I

.field private m_nLastDragY:I

.field private m_nXDown:I

.field private m_nYDown:I

.field private final m_resizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mhasRearrangedVacant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 54
    const-class v0, Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/launcher/CellLayout;->$assertionsDisabled:Z

    .line 56
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    .line 57
    sput-boolean v1, Lcom/htc/launcher/CellLayout;->DEBUG_TOUCH:Z

    .line 231
    sput v2, Lcom/htc/launcher/CellLayout;->sCornerRadius:I

    .line 233
    sput v2, Lcom/htc/launcher/CellLayout;->sAvailableBoundaryColor:I

    .line 234
    sput v2, Lcom/htc/launcher/CellLayout;->sOccupiedAreaColor:I

    .line 235
    sput v2, Lcom/htc/launcher/CellLayout;->sDropCellColor:I

    .line 236
    sput v2, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->mIsPause:Z

    .line 63
    iput-boolean v7, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 80
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragX:I

    .line 81
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragY:I

    .line 87
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 88
    new-instance v3, Lcom/htc/launcher/CellInfo;

    invoke-direct {v3}, Lcom/htc/launcher/CellInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 90
    iput-object v6, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    .line 92
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .line 96
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->mIsDragging:Z

    .line 98
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 102
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 114
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    .line 421
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->isShowVacantRect:Z

    .line 1035
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mChildFrame:Landroid/graphics/Rect;

    .line 2116
    iput-object v6, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    .line 2311
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->mIsScrolling:Z

    .line 2479
    new-instance v3, Lcom/htc/launcher/CellInfo;

    invoke-direct {v3}, Lcom/htc/launcher/CellInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    .line 2482
    new-instance v3, Lcom/htc/launcher/CellInfo;

    invoke-direct {v3}, Lcom/htc/launcher/CellInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    .line 2484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    .line 3021
    iput-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    .line 134
    sget-object v3, Lcom/htc/launcher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    .line 137
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    .line 139
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 141
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mLongAxisEndPadding:I

    .line 143
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 145
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mShortAxisEndPadding:I

    .line 148
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 149
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/CellLayout;->mButtonBarHeight:I

    .line 155
    invoke-virtual {p0, v5}, Lcom/htc/launcher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 156
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mPaint:Landroid/graphics/Paint;

    .line 157
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 158
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 160
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    .line 161
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mUIMessageQueue:Landroid/os/MessageQueue;

    .line 162
    new-instance v3, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;

    invoke-direct {v3, p0, v6}, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;-><init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mUpdateCellLayoutCacheHandler:Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;

    .line 164
    new-instance v3, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;

    invoke-direct {v3, p0, v6}, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;-><init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 167
    .local v2, nActualWidth:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 168
    .local v1, nActualHeight:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/htc/launcher/CellLayout;->s_nSmallerSize:I

    .line 169
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/launcher/CellLayout;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/launcher/CellLayout;->performRearrange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/CellLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/CellLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsPause:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mUpdateCellLayoutCacheHandler:Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/launcher/CellLayout;)Landroid/os/MessageQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mUIMessageQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/launcher/CellLayout;)Lcom/htc/launcher/CellInfo$VacantCell;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellInfo$VacantCell;)Lcom/htc/launcher/CellInfo$VacantCell;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/launcher/CellLayout;)Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/launcher/CellLayout;IIIILandroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/htc/launcher/CellLayout;->cellToOutlineRect(IIIILandroid/graphics/RectF;)V

    return-void
.end method

.method private allVacants(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo$VacantCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    const/4 v5, 0x1

    .line 339
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v3

    .line 340
    .local v3, x:I
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v4

    .line 343
    .local v4, y:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 344
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-gt v2, v4, :cond_0

    .line 346
    new-instance v0, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 347
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 348
    iput v2, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 349
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 350
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 351
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 343
    .end local v0           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v2           #j:I
    :cond_1
    return-void
.end method

.method private cancelLongPress(Landroid/view/View;)V
    .locals 5
    .parameter "targetView"

    .prologue
    .line 188
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 189
    check-cast v3, Landroid/view/ViewGroup;

    .line 190
    .local v3, parentView:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 192
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 193
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/launcher/CellLayout;->cancelLongPress(Landroid/view/View;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 200
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v3           #parentView:Landroid/view/ViewGroup;
    :goto_1
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1
.end method

.method private cellPositionChanged(II)Z
    .locals 2
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v1, 0x3

    .line 2488
    iget v0, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 2489
    const/4 v0, 0x0

    .line 2494
    :goto_0
    return v0

    .line 2492
    :cond_0
    iput p1, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragX:I

    .line 2493
    iput p2, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragY:I

    .line 2494
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cellToOutlineRect(IIIILandroid/graphics/RectF;)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "rect"

    .prologue
    const/4 v5, 0x0

    .line 820
    invoke-virtual/range {p0 .. p5}, Lcom/htc/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 822
    iget v2, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    div-int/lit8 v1, v2, 0x2

    .local v1, w:I
    iget v2, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    div-int/lit8 v0, v2, 0x2

    .line 823
    .local v0, h:I
    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 824
    :cond_0
    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 825
    :cond_1
    neg-int v2, v1

    int-to-float v2, v2

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {p5, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 826
    iget v2, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/launcher/CellLayout;->mButtonBarHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 827
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/launcher/CellLayout;->mButtonBarHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p5, Landroid/graphics/RectF;->bottom:F

    .line 829
    :cond_2
    iget v2, p5, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_3

    .line 830
    iput v5, p5, Landroid/graphics/RectF;->top:F

    .line 832
    :cond_3
    return-void
.end method

.method private changeAppWidgetWrapper(Lcom/htc/launcher/LauncherAppWidgetHostView;Lcom/htc/launcher/AppWidgetResizeFrame;)V
    .locals 7
    .parameter "widgetView"
    .parameter "frame"

    .prologue
    .line 3125
    const-string v4, "CellLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeWidgetWrapper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3128
    .local v1, parent:Landroid/view/ViewParent;
    if-nez v1, :cond_0

    .line 3129
    const-string v4, "CellLayout"

    const-string v5, "No parent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :goto_0
    return-void

    :cond_0
    move-object v2, v1

    .line 3133
    check-cast v2, Lcom/htc/launcher/Workspace;

    .line 3134
    .local v2, workspace:Lcom/htc/launcher/Workspace;
    invoke-virtual {p1}, Lcom/htc/launcher/LauncherAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/LegacyLayout;

    .line 3137
    .local v3, wrapper:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v3}, Lcom/htc/launcher/LegacyLayout;->fxDetach()V

    .line 3138
    invoke-virtual {v3, p1}, Lcom/htc/launcher/LegacyLayout;->removeView(Landroid/view/View;)V

    .line 3139
    invoke-virtual {p0, v3}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3142
    invoke-virtual {v2, p1}, Lcom/htc/launcher/Workspace;->wrapLegacyView(Landroid/view/View;)Lcom/htc/launcher/LegacyLayout;

    move-result-object v0

    .line 3143
    .local v0, newWrapper:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->clearFocus()V

    .line 3144
    invoke-virtual {v3}, Lcom/htc/launcher/LegacyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/htc/launcher/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3145
    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->requestFocus()Z

    .line 3148
    invoke-virtual {p0, p2}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private checkCanSwitchCell(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;[[Z)Lcom/htc/launcher/CellInfo;
    .locals 17
    .parameter "dragCell"
    .parameter "c"
    .parameter "occupied"

    .prologue
    .line 2713
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v12, v12, Lcom/htc/launcher/CellInfo;->valid:Z

    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p2}, Lcom/htc/launcher/CellInfo;->contains(Lcom/htc/launcher/CellInfo;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2714
    :cond_0
    const/4 v9, 0x0

    .line 2775
    :cond_1
    :goto_0
    return-object v9

    .line 2717
    :cond_2
    const-string v12, "CellLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "item "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " covered by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int v6, v12, v13

    .line 2720
    .local v6, offsetX:I
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int v7, v12, v13

    .line 2722
    .local v7, offsetY:I
    new-instance v9, Lcom/htc/launcher/CellInfo;

    invoke-direct {v9}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 2723
    .local v9, toCell:Lcom/htc/launcher/CellInfo;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    iput-object v12, v9, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v12, v12, Lcom/htc/launcher/CellInfo;->cellX:I

    add-int/2addr v12, v6

    iput v12, v9, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v12, v12, Lcom/htc/launcher/CellInfo;->cellY:I

    add-int/2addr v12, v7

    iput v12, v9, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2726
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    iput v12, v9, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2727
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    iput v12, v9, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2728
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2731
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 2732
    .local v10, xAxis:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 2734
    .local v11, yAxis:I
    :goto_2
    iget v12, v9, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v13, v9, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v12, v13

    if-gt v12, v10, :cond_3

    iget v12, v9, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v13, v9, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v12, v13

    if-le v12, v11, :cond_6

    .line 2735
    :cond_3
    const-string v12, "CellLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OUT OF BOUND! switch item from"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2731
    .end local v10           #xAxis:I
    .end local v11           #yAxis:I
    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_1

    .line 2732
    .restart local v10       #xAxis:I
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_2

    .line 2739
    .restart local v11       #yAxis:I
    :cond_6
    iget v12, v9, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v13, v9, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v14, v9, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v15, v9, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v14, v15

    iget v15, v9, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v0, v9, Lcom/htc/launcher/CellInfo;->spanY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13, v14, v15}, Lcom/htc/launcher/CellLayout;->isAreaOccupied([[ZIIII)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2740
    const-string v12, "CellLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "switch item "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2744
    :cond_7
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    sub-int v12, v10, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v13, v13, Lcom/htc/launcher/CellInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v14, v14, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2745
    .local v4, maxX:I
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    sub-int v12, v11, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v13, v13, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v14, v14, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2746
    .local v5, maxY:I
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2749
    const v8, 0x7fffffff

    .line 2750
    .local v8, shortestDistance:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v12, Lcom/htc/launcher/CellInfo;->cellY:I

    .local v3, j:I
    :goto_3
    if-ge v3, v5, :cond_c

    .line 2751
    move-object/from16 v0, p3

    array-length v12, v0

    if-lt v3, v12, :cond_9

    .line 2752
    const-string v12, "Rearrange"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkCanSwitchCell out of bound: j="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bound="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2755
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v2, v12, Lcom/htc/launcher/CellInfo;->cellX:I

    .local v2, i:I
    :goto_4
    if-ge v2, v4, :cond_8

    .line 2756
    aget-object v12, p3, v3

    array-length v12, v12

    if-lt v2, v12, :cond_b

    .line 2757
    const-string v12, "Rearrange"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkCanSwitchCell out of bound: i="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", x="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bound="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p3, v3

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2760
    :cond_b
    aget-object v12, p3, v2

    aget-boolean v12, v12, v3

    if-nez v12, :cond_a

    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v12, v2

    move-object/from16 v0, p2

    iget v13, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v13, v3

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v12, v13}, Lcom/htc/launcher/CellLayout;->isAreaOccupied([[ZIIII)Z

    move-result v12

    if-nez v12, :cond_a

    .line 2761
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int v12, v2, v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int v13, v2, v13

    mul-int/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int v13, v3, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int v14, v3, v14

    mul-int/2addr v13, v14

    add-int v1, v12, v13

    .line 2762
    .local v1, distance:I
    if-le v8, v1, :cond_a

    .line 2763
    iput v2, v9, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2764
    iput v3, v9, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2765
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2766
    move v8, v1

    goto :goto_5

    .line 2772
    .end local v1           #distance:I
    .end local v2           #i:I
    :cond_c
    iget-boolean v12, v9, Lcom/htc/launcher/CellInfo;->valid:Z

    if-nez v12, :cond_1

    .line 2775
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private clearAllResizeFrames()V
    .locals 5

    .prologue
    .line 3081
    const-string v3, "CellLayout"

    const-string v4, "clearAllResizeFrames"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AppWidgetResizeFrame;

    .line 3083
    .local v0, frame:Lcom/htc/launcher/AppWidgetResizeFrame;
    invoke-virtual {v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->sizeChanged()Z

    move-result v2

    .line 3084
    .local v2, sizeChanged:Z
    if-nez v2, :cond_0

    .line 3087
    invoke-virtual {p0, v0}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3088
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/htc/launcher/AppWidgetResizeFrame;->setWidgetDrawWithFx(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 3090
    .end local v0           #frame:Lcom/htc/launcher/AppWidgetResizeFrame;
    .end local v2           #sizeChanged:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3091
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 3092
    return-void
.end method

.method private clearDragOverItem()V
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    if-nez v0, :cond_0

    .line 2529
    :goto_0
    return-void

    .line 2528
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    goto :goto_0
.end method

.method private columnString([Z)Ljava/lang/String;
    .locals 4
    .parameter "column"

    .prologue
    .line 2441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2442
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v0, p1

    .line 2443
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2444
    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    const-string v3, "*"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2444
    :cond_0
    const-string v3, " "

    goto :goto_1

    .line 2445
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private completeWidgetResize()Z
    .locals 8

    .prologue
    .line 3110
    const/4 v0, 0x0

    .line 3111
    .local v0, bInvalidate:Z
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/AppWidgetResizeFrame;

    .line 3112
    .local v1, frame:Lcom/htc/launcher/AppWidgetResizeFrame;
    invoke-virtual {v1}, Lcom/htc/launcher/AppWidgetResizeFrame;->sizeChanged()Z

    move-result v3

    .line 3113
    .local v3, sizeChanged:Z
    const-string v5, "CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CellLayoutChildren, changed? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    if-eqz v3, :cond_0

    .line 3115
    const/4 v0, 0x1

    .line 3116
    invoke-virtual {v1}, Lcom/htc/launcher/AppWidgetResizeFrame;->getAppWidgetHostView()Lcom/htc/launcher/LauncherAppWidgetHostView;

    move-result-object v4

    .line 3117
    .local v4, widgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;
    invoke-direct {p0, v4, v1}, Lcom/htc/launcher/CellLayout;->changeAppWidgetWrapper(Lcom/htc/launcher/LauncherAppWidgetHostView;Lcom/htc/launcher/AppWidgetResizeFrame;)V

    goto :goto_0

    .line 3120
    .end local v1           #frame:Lcom/htc/launcher/AppWidgetResizeFrame;
    .end local v3           #sizeChanged:Z
    .end local v4           #widgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;
    :cond_1
    return v0
.end method

.method private dispathTouchEventToCellInfoHandler(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    .line 3027
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3057
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    iget-boolean v2, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 3032
    .local v2, portrait:Z
    if-eqz v2, :cond_3

    iget v0, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 3033
    .local v0, hStartPadding:I
    :goto_1
    if-eqz v2, :cond_4

    iget v5, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 3034
    .local v5, vStartPadding:I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v3, v6, v0

    .line 3035
    .local v3, tx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v4, v6, v5

    .line 3036
    .local v4, ty:I
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->isTouchOnItem(II)Z

    move-result v1

    .line 3038
    .local v1, isPressOnItem:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/htc/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    if-eqz v6, :cond_2

    .line 3039
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    invoke-interface {v6}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->ownCellInfo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3040
    if-nez v1, :cond_5

    .line 3041
    const-string v6, "CellLayout"

    const-string v7, "[STICKY] CellInfo, cancel move out of item !!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    iget-object v7, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-interface {v6, v7}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->onCancel(Lcom/htc/launcher/CellInfo;)V

    .line 3049
    :cond_2
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3050
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    if-eqz v6, :cond_0

    .line 3051
    const-string v6, "CellLayout"

    const-string v7, "[STICKY] CellInfo, UP - onTapEmptyCell"

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    if-eqz v6, :cond_0

    .line 3053
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    invoke-interface {v6}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->onTapEmptyCell()V

    goto :goto_0

    .line 3032
    .end local v0           #hStartPadding:I
    .end local v1           #isPressOnItem:Z
    .end local v3           #tx:I
    .end local v4           #ty:I
    .end local v5           #vStartPadding:I
    :cond_3
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_1

    .line 3033
    .restart local v0       #hStartPadding:I
    :cond_4
    iget v5, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    goto :goto_2

    .line 3044
    .restart local v1       #isPressOnItem:Z
    .restart local v3       #tx:I
    .restart local v4       #ty:I
    .restart local v5       #vStartPadding:I
    :cond_5
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    invoke-interface {v6, p1}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_3
.end method

.method private dumpOccupiedCell([[Z)V
    .locals 0
    .parameter "bOccupied"

    .prologue
    .line 2835
    return-void
.end method

.method private findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;)V
    .locals 8
    .parameter "dragInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/CellInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2677
    .local p2, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    if-nez p2, :cond_1

    .line 2709
    :cond_0
    return-void

    .line 2679
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2681
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, p1, p2, v6}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Z)V

    .line 2684
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v5, v5, Lcom/htc/launcher/CellInfo;->valid:Z

    if-eqz v5, :cond_3

    .line 2685
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/CellInfo;

    .line 2686
    .local v4, info:Lcom/htc/launcher/CellInfo;
    iget v5, v4, Lcom/htc/launcher/CellInfo;->cellX:I

    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v6, v6, Lcom/htc/launcher/CellInfo;->cellX:I

    if-ne v5, v6, :cond_2

    iget v5, v4, Lcom/htc/launcher/CellInfo;->cellY:I

    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v6, v6, Lcom/htc/launcher/CellInfo;->cellY:I

    if-ne v5, v6, :cond_2

    iget v5, v4, Lcom/htc/launcher/CellInfo;->spanX:I

    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v6, v6, Lcom/htc/launcher/CellInfo;->spanX:I

    if-ne v5, v6, :cond_2

    iget v5, v4, Lcom/htc/launcher/CellInfo;->spanY:I

    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v6, v6, Lcom/htc/launcher/CellInfo;->spanY:I

    if-ne v5, v6, :cond_2

    .line 2688
    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2695
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/htc/launcher/CellInfo;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 2696
    .local v1, count:I
    if-lez v1, :cond_0

    .line 2698
    new-instance v5, Lcom/htc/launcher/CellLayout$CellComparator;

    invoke-direct {v5, p0, p1}, Lcom/htc/launcher/CellLayout$CellComparator;-><init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellInfo;)V

    invoke-static {p2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2701
    sget-boolean v5, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v5, :cond_0

    .line 2702
    const-string v5, "CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCoveredCells List cells for freeing space on ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2704
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellInfo;

    .line 2705
    .local v0, cell:Lcom/htc/launcher/CellInfo;
    const-string v5, "CellLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCoveredCells cell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findNearestVacantCellForCell(Lcom/htc/launcher/CellInfo;[[Z)Lcom/htc/launcher/CellInfo;
    .locals 13
    .parameter "c"
    .parameter "occupied"

    .prologue
    .line 2783
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v0

    .line 2784
    .local v0, countX:I
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v1

    .line 2785
    .local v1, countY:I
    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    sub-int v8, v0, v10

    .line 2786
    .local v8, x:I
    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    sub-int v9, v1, v10

    .line 2787
    .local v9, y:I
    mul-int v10, v0, v0

    mul-int v11, v1, v1

    add-int v5, v10, v11

    .line 2788
    .local v5, shortestDistance:I
    new-instance v7, Lcom/htc/launcher/CellInfo;

    invoke-direct {v7}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 2789
    .local v7, targetCell:Lcom/htc/launcher/CellInfo;
    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2791
    iget-boolean v10, p0, Lcom/htc/launcher/CellLayout;->mIsDragging:Z

    if-eqz v10, :cond_0

    .line 2792
    iget-object v10, p0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    invoke-direct {p0, v10, p1, p2}, Lcom/htc/launcher/CellLayout;->checkCanSwitchCell(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;[[Z)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    .line 2793
    .local v6, switchToCell:Lcom/htc/launcher/CellInfo;
    if-eqz v6, :cond_0

    .line 2823
    .end local v6           #switchToCell:Lcom/htc/launcher/CellInfo;
    .end local v7           #targetCell:Lcom/htc/launcher/CellInfo;
    :goto_0
    return-object v6

    .line 2798
    .restart local v7       #targetCell:Lcom/htc/launcher/CellInfo;
    :cond_0
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-gt v4, v9, :cond_5

    .line 2799
    array-length v10, p2

    if-lt v4, v10, :cond_2

    .line 2800
    const-string v10, "Rearrange"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cell out of bound: j="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bound="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2803
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-gt v3, v8, :cond_1

    .line 2804
    aget-object v10, p2, v4

    array-length v10, v10

    if-lt v3, v10, :cond_4

    .line 2805
    const-string v10, "Rearrange"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cell out of bound: i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bound="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p2, v4

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2808
    :cond_4
    aget-object v10, p2, v3

    aget-boolean v10, v10, v4

    if-nez v10, :cond_3

    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v10, v3

    iget v11, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v11, v4

    invoke-static {p2, v3, v4, v10, v11}, Lcom/htc/launcher/CellLayout;->isAreaOccupied([[ZIIII)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2809
    iget v10, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int v10, v3, v10

    iget v11, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int v11, v3, v11

    mul-int/2addr v10, v11

    iget v11, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int v11, v4, v11

    iget v12, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int v12, v4, v12

    mul-int/2addr v11, v12

    add-int v2, v10, v11

    .line 2811
    .local v2, distance:I
    if-le v5, v2, :cond_3

    .line 2812
    iget-object v10, p1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    iput-object v10, v7, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2813
    iput v3, v7, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2814
    iput v4, v7, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2815
    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    iput v10, v7, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2816
    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    iput v10, v7, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2817
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2818
    move v5, v2

    goto :goto_3

    .line 2823
    .end local v2           #distance:I
    .end local v3           #i:I
    :cond_5
    iget-boolean v10, v7, Lcom/htc/launcher/CellInfo;->valid:Z

    if-eqz v10, :cond_6

    .end local v7           #targetCell:Lcom/htc/launcher/CellInfo;
    :goto_4
    move-object v6, v7

    goto/16 :goto_0

    .restart local v7       #targetCell:Lcom/htc/launcher/CellInfo;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private findOccupiedCells(II[[Z)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    .line 1761
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 1762
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, p2, :cond_0

    .line 1763
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 1762
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1761
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1767
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 1768
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 1769
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1770
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/htc/launcher/Folder;

    if-eqz v6, :cond_3

    .line 1768
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1775
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 1777
    .local v3, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v4, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    if-ge v4, p1, :cond_2

    .line 1778
    iget v5, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    if-ge v5, p2, :cond_4

    .line 1780
    :try_start_0
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1777
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1788
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_5
    return-void

    .line 1781
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .restart local v5       #y:I
    :catch_0
    move-exception v6

    goto :goto_5
.end method

.method private findRearrangeCandiatesFor1x1([[Z)Lcom/htc/launcher/CellInfo$VacantCell;
    .locals 6
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 692
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 693
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 694
    aget-object v3, p1, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 695
    new-instance v0, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 696
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 697
    iput v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 698
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 699
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 700
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    .end local v0           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    .end local v2           #y:I
    :goto_2
    return-object v0

    .line 693
    .restart local v2       #y:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 692
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    .end local v2           #y:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private findRearrangeCandiatesFor4x4([[Z)Lcom/htc/launcher/CellInfo$VacantCell;
    .locals 6
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 710
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 711
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 712
    aget-object v3, p1, v1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 713
    const/4 v0, 0x0

    .line 724
    .end local v2           #y:I
    :goto_2
    return-object v0

    .line 711
    .restart local v2       #y:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 710
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v2           #y:I
    :cond_2
    new-instance v0, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 719
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 720
    iput v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 721
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 722
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 723
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private findViewByCellAndId(III)Landroid/view/View;
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "id"

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 947
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 948
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 949
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 950
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 952
    .local v3, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v5, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v5, p1, :cond_0

    iget v5, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    if-ne v5, p2, :cond_0

    .line 956
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v4           #view:Landroid/view/View;
    :goto_1
    return-object v4

    .line 947
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 956
    .end local v0           #child:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getAnotherOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;
    .locals 1

    .prologue
    .line 2460
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mLandOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    .line 2463
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mPortOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    goto :goto_0
.end method

.method private getCellBoundaryPath(Lcom/htc/launcher/CellInfo$VacantCell;)Landroid/graphics/Path;
    .locals 7
    .parameter "cell"

    .prologue
    .line 841
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 842
    .local v6, path:Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 843
    .local v5, rect:Landroid/graphics/RectF;
    iget v1, p1, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    iget v2, p1, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    iget v3, p1, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iget v4, p1, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->cellToOutlineRect(IIIILandroid/graphics/RectF;)V

    .line 844
    sget v0, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 845
    sget v0, Lcom/htc/launcher/CellLayout;->sCornerRadius:I

    int-to-float v0, v0

    sget v1, Lcom/htc/launcher/CellLayout;->sCornerRadius:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 846
    return-object v6
.end method

.method private getCellsBoundaryPath(Ljava/util/List;Landroid/graphics/Path;)V
    .locals 12
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo$VacantCell;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .prologue
    .line 856
    .local p1, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 857
    .local v5, rect:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 858
    .local v10, r:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Region;

    invoke-direct {v11}, Landroid/graphics/Region;-><init>()V

    .line 859
    .local v11, rgn:Landroid/graphics/Region;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/CellInfo$VacantCell;

    .line 860
    .local v7, c:Lcom/htc/launcher/CellInfo$VacantCell;
    iget v1, v7, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    iget v2, v7, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    iget v3, v7, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iget v4, v7, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->cellToOutlineRect(IIIILandroid/graphics/RectF;)V

    .line 861
    iget v0, v5, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, v5, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, v5, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 863
    invoke-virtual {v11, v10}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 865
    .end local v7           #c:Lcom/htc/launcher/CellInfo$VacantCell;
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 866
    invoke-virtual {v11}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 868
    .local v6, bnd:Landroid/graphics/Path;
    invoke-virtual {v11, v6}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 869
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 870
    .local v9, paint:Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 871
    new-instance v0, Landroid/graphics/CornerPathEffect;

    sget v1, Lcom/htc/launcher/CellLayout;->sCornerRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 872
    invoke-virtual {v9, v6, p2}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 884
    .end local v6           #bnd:Landroid/graphics/Path;
    .end local v9           #paint:Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method private getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;
    .locals 1

    .prologue
    .line 2452
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mPortOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    .line 2455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mLandOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    goto :goto_0
.end method

.method private getOccupied([ZZ)[[Z
    .locals 11
    .parameter "occupiedCells"
    .parameter "update"

    .prologue
    const/4 v9, 0x0

    .line 2380
    iget-boolean v3, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 2381
    .local v3, portrait:Z
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 2382
    .local v5, xCount:I
    :goto_0
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 2384
    .local v7, yCount:I
    :goto_1
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 2387
    if-eqz p1, :cond_0

    .line 2388
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->setOccupiedCells([Z)V

    .line 2390
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->getOccupiedCells()[[Z

    move-result-object v2

    .line 2391
    .local v2, occupied:[[Z
    sget-boolean v8, Lcom/htc/launcher/CellLayout;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    if-nez v2, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2381
    .end local v2           #occupied:[[Z
    .end local v5           #xCount:I
    .end local v7           #yCount:I
    :cond_1
    iget v5, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 2382
    .restart local v5       #xCount:I
    :cond_2
    iget v7, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 2392
    .restart local v2       #occupied:[[Z
    .restart local v7       #yCount:I
    :cond_3
    sget-boolean v8, Lcom/htc/launcher/CellLayout;->$assertionsDisabled:Z

    if-nez v8, :cond_4

    array-length v8, v2

    if-eq v8, v5, :cond_4

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2393
    :cond_4
    sget-boolean v8, Lcom/htc/launcher/CellLayout;->$assertionsDisabled:Z

    if-nez v8, :cond_6

    aget-object v8, v2, v9

    if-eqz v8, :cond_5

    aget-object v8, v2, v9

    array-length v8, v8

    if-eq v8, v7, :cond_6

    :cond_5
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2395
    :cond_6
    iget-object v8, p0, Lcom/htc/launcher/CellLayout;->mOccupiedDelegationCopy:[[Z

    if-nez v8, :cond_7

    .line 2396
    filled-new-array {v5, v7}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    iput-object v8, p0, Lcom/htc/launcher/CellLayout;->mOccupiedDelegationCopy:[[Z

    .line 2399
    :cond_7
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mOccupiedDelegationCopy:[[Z

    .line 2400
    .local v0, copy:[[Z
    const/4 v6, 0x0

    .local v6, y:I
    :goto_2
    if-ge v6, v7, :cond_9

    .line 2401
    const/4 v4, 0x0

    .local v4, x:I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 2402
    aget-object v8, v0, v4

    aget-object v9, v2, v4

    aget-boolean v9, v9, v6

    aput-boolean v9, v8, v6

    .line 2401
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2400
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2406
    .end local v4           #x:I
    :cond_9
    sget-boolean v8, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v8, :cond_11

    .line 2407
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v5, :cond_11

    .line 2408
    const-string v8, "Delegation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "column#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    invoke-direct {p0, v10}, Lcom/htc/launcher/CellLayout;->columnString([Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2414
    .end local v0           #copy:[[Z
    .end local v1           #i:I
    .end local v2           #occupied:[[Z
    .end local v6           #y:I
    :cond_a
    iget-object v8, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    if-nez v8, :cond_b

    .line 2415
    iget-boolean v8, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v8, :cond_c

    .line 2416
    iget v8, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    iput-object v8, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    .line 2421
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    .line 2422
    .restart local v2       #occupied:[[Z
    if-eqz p2, :cond_10

    .line 2423
    if-eqz p1, :cond_e

    .line 2424
    const/4 v6, 0x0

    .restart local v6       #y:I
    :goto_6
    if-ge v6, v7, :cond_f

    .line 2425
    const/4 v4, 0x0

    .restart local v4       #x:I
    :goto_7
    if-ge v4, v5, :cond_d

    .line 2426
    aget-object v8, v2, v4

    mul-int v9, v6, v5

    add-int/2addr v9, v4

    aget-boolean v9, p1, v9

    aput-boolean v9, v8, v6

    .line 2425
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2418
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_c
    iget v8, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    iput-object v8, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    goto :goto_5

    .line 2424
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2430
    .end local v4           #x:I
    .end local v6           #y:I
    :cond_e
    invoke-direct {p0, v5, v7, v2}, Lcom/htc/launcher/CellLayout;->findOccupiedCells(II[[Z)V

    .line 2432
    :cond_f
    sget-boolean v8, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v8, :cond_10

    .line 2433
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    if-ge v1, v5, :cond_10

    .line 2434
    const-string v8, "Original"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "column#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    aget-object v10, v10, v1

    invoke-direct {p0, v10}, Lcom/htc/launcher/CellLayout;->columnString([Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2437
    .end local v1           #i:I
    :cond_10
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    :cond_11
    return-object v0
.end method

.method private getVisitCellForVancant(II)Ljava/util/ArrayList;
    .locals 5
    .parameter "upperBound"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v4, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 480
    .local v3, offsets:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 481
    aget v4, v3, v0

    add-int v2, p2, v4

    .line 482
    .local v2, newIndex:I
    if-ltz v2, :cond_0

    if-le v2, p1, :cond_1

    .line 480
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    .end local v2           #newIndex:I
    :cond_2
    return-object v1

    .line 478
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

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1230
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1232
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 1233
    .local v3, nX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 1235
    .local v4, nY:I
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AppWidgetResizeFrame;

    .line 1236
    .local v0, child:Lcom/htc/launcher/AppWidgetResizeFrame;
    invoke-virtual {v0, v1}, Lcom/htc/launcher/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 1237
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1238
    invoke-virtual {v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0, v5, v8}, Lcom/htc/launcher/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1239
    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

    .line 1240
    iput v3, p0, Lcom/htc/launcher/CellLayout;->m_nXDown:I

    .line 1241
    iput v4, p0, Lcom/htc/launcher/CellLayout;->m_nYDown:I

    .line 1242
    invoke-virtual {p0, v6}, Lcom/htc/launcher/CellLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1243
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->cancelTheCallbackForStickyModeExiting()V

    .line 1244
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/Workspace;

    invoke-virtual {v5, v7}, Lcom/htc/launcher/Workspace;->enableScroll(Z)V

    move v5, v6

    .line 1250
    .end local v0           #child:Lcom/htc/launcher/AppWidgetResizeFrame;
    :goto_0
    return v5

    :cond_1
    move v5, v7

    goto :goto_0
.end method

.method private handleWidgetResize(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 1060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1062
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1063
    .local v1, nX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1065
    .local v2, nY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1066
    invoke-direct {p0, p1}, Lcom/htc/launcher/CellLayout;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1085
    :goto_0
    return v3

    .line 1071
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

    if-eqz v3, :cond_1

    .line 1072
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 1082
    goto :goto_0

    .line 1074
    :pswitch_0
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

    iget v5, p0, Lcom/htc/launcher/CellLayout;->m_nXDown:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/htc/launcher/CellLayout;->m_nYDown:I

    sub-int v6, v2, v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 1078
    :pswitch_1
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

    iget v5, p0, Lcom/htc/launcher/CellLayout;->m_nXDown:I

    sub-int v5, v1, v5

    iget v6, p0, Lcom/htc/launcher/CellLayout;->m_nYDown:I

    sub-int v6, v2, v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/launcher/AppWidgetResizeFrame;->commitResizeForDelta(II)V

    .line 1079
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

    .line 1080
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/Workspace;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->enableScroll(Z)V

    goto :goto_1

    .line 1085
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasRoomForSpan(II[[Z)Z
    .locals 5
    .parameter "spanX"
    .parameter "spanY"
    .parameter "occupied"

    .prologue
    .line 728
    mul-int v1, p1, p2

    .line 729
    .local v1, needRoom:I
    const/4 v0, 0x0

    .line 730
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 731
    const/4 v3, 0x0

    .local v3, y:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 732
    aget-object v4, p3, v2

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    .line 733
    add-int/lit8 v0, v0, 0x1

    .line 731
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 730
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    .end local v3           #y:I
    :cond_2
    if-ge v0, v1, :cond_3

    .line 739
    const/4 v4, 0x0

    .line 741
    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private static final isAreaOccupied([[ZIIII)Z
    .locals 11
    .parameter "occupied"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 804
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 805
    move v2, p2

    .local v2, j:I
    :goto_1
    if-ge v2, p4, :cond_1

    .line 806
    :try_start_0
    aget-object v5, p0, v1

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_0

    .line 807
    const-string v5, "Rearragne"

    const-string v6, "isAreaOccupied occupied[%d][%d]=true"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v2           #j:I
    :goto_2
    return v3

    .line 805
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 804
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Rearragne"

    const-string v6, "OUT OF BOUND left:%d, top:%d, exception:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #j:I
    :cond_2
    move v3, v4

    .line 816
    goto :goto_2
.end method

.method private markCellsForView(IIIIZ)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v0

    .line 3258
    .local v0, countX:I
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v1

    .line 3259
    .local v1, countY:I
    move v2, p1

    .local v2, x:I
    :goto_0
    add-int v4, p1, p3

    if-ge v2, v4, :cond_1

    if-ge v2, v0, :cond_1

    .line 3260
    move v3, p2

    .local v3, y:I
    :goto_1
    add-int v4, p2, p4

    if-ge v3, v4, :cond_0

    if-ge v3, v1, :cond_0

    .line 3261
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aput-boolean p5, v4, v3

    .line 3260
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3259
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3264
    .end local v3           #y:I
    :cond_1
    return-void
.end method

.method private measureGapSize()V
    .locals 17

    .prologue
    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getMeasuredHeight()I

    move-result v4

    .line 1383
    .local v4, heightSpecSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getMeasuredWidth()I

    move-result v14

    .line 1385
    .local v14, widthSpecSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    .line 1386
    .local v2, cellWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    .line 1387
    .local v1, cellHeight:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 1388
    .local v10, shortAxisCells:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 1389
    .local v5, longAxisCells:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1390
    .local v7, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/CellLayout;->mLongAxisEndPadding:I

    .line 1391
    .local v6, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1392
    .local v12, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/launcher/CellLayout;->mShortAxisEndPadding:I

    .line 1394
    .local v11, shortAxisEndPadding:I
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1395
    if-le v4, v14, :cond_1

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1406
    :cond_0
    :goto_1
    add-int/lit8 v9, v10, -0x1

    .line 1407
    .local v9, numShortGaps:I
    add-int/lit8 v8, v5, -0x1

    .line 1409
    .local v8, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v15, :cond_4

    .line 1410
    sub-int v15, v4, v7

    sub-int/2addr v15, v6

    mul-int v16, v1, v5

    sub-int v13, v15, v16

    .line 1412
    .local v13, vSpaceLeft:I
    div-int v15, v13, v8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    .line 1413
    sub-int v15, v14, v12

    sub-int/2addr v15, v11

    mul-int v16, v2, v10

    sub-int v3, v15, v16

    .line 1415
    .local v3, hSpaceLeft:I
    if-lez v9, :cond_3

    .line 1416
    div-int v15, v3, v9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    .line 1433
    :goto_2
    return-void

    .line 1395
    .end local v3           #hSpaceLeft:I
    .end local v8           #numLongGaps:I
    .end local v9           #numShortGaps:I
    .end local v13           #vSpaceLeft:I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1398
    :cond_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1399
    if-ge v4, v14, :cond_0

    .line 1400
    xor-int/2addr v4, v14

    .line 1401
    xor-int/2addr v14, v4

    .line 1402
    xor-int/2addr v4, v14

    goto :goto_1

    .line 1418
    .restart local v3       #hSpaceLeft:I
    .restart local v8       #numLongGaps:I
    .restart local v9       #numShortGaps:I
    .restart local v13       #vSpaceLeft:I
    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    goto :goto_2

    .line 1421
    .end local v3           #hSpaceLeft:I
    .end local v13           #vSpaceLeft:I
    :cond_4
    sub-int v15, v14, v7

    sub-int/2addr v15, v6

    mul-int v16, v2, v5

    sub-int v3, v15, v16

    .line 1423
    .restart local v3       #hSpaceLeft:I
    div-int v15, v3, v8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    .line 1425
    sub-int v15, v4, v12

    sub-int/2addr v15, v11

    mul-int v16, v1, v10

    sub-int v13, v15, v16

    .line 1427
    .restart local v13       #vSpaceLeft:I
    if-lez v9, :cond_5

    .line 1428
    div-int v15, v13, v9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    goto :goto_2

    .line 1430
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    goto :goto_2
.end method

.method private notifyDirty()V
    .locals 4

    .prologue
    const/16 v3, 0x19

    .line 2204
    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mIsScrolling:Z

    if-eqz v1, :cond_1

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2207
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 2208
    new-instance v1, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;-><init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    .line 2209
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2210
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2211
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2212
    const-string v1, "CellLayout"

    const-string v2, "sendMessage error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDragOverShortcut(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;IIII)V
    .locals 4
    .parameter "shortcut"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "dragItemCenterX"
    .parameter "dragItemCenterY"

    .prologue
    .line 2508
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2509
    .local v1, topleft:[I
    invoke-virtual {p0, p2, p3, v1}, Lcom/htc/launcher/CellLayout;->cellToPoint(II[I)V

    .line 2511
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->canRearrange()Z

    move-result v0

    .line 2512
    .local v0, bNeedRearrange:Z
    if-nez v0, :cond_0

    .line 2514
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2519
    :goto_0
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    .line 2520
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2521
    return-void

    .line 2516
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->clearDragOverItem()V

    goto :goto_0
.end method

.method private performRearrange(Z)V
    .locals 5
    .parameter "bAnimation"

    .prologue
    const/4 v4, 0x0

    .line 2944
    const-string v0, "Rearrange"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellLayout performRearrange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size:%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->clearDragOverItem()V

    .line 2957
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2958
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getAnotherOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-interface {v0, v4, v1}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->performRearrange(ZLjava/util/ArrayList;)V

    .line 2960
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->performRearrange(ZLjava/util/ArrayList;)V

    .line 2961
    return-void
.end method

.method private pointToCellCenter(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 2503
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    aput v1, p3, v0

    .line 2504
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    aput v1, p3, v0

    .line 2505
    return-void
.end method

.method public static rectToCell(II[I)[I
    .locals 6
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nResult"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3285
    sget v2, Lcom/htc/launcher/CellLayout;->s_nSmallerSize:I

    add-int/2addr v2, p0

    sget v3, Lcom/htc/launcher/CellLayout;->s_nSmallerSize:I

    div-int v0, v2, v3

    .line 3286
    .local v0, nSpanX:I
    sget v2, Lcom/htc/launcher/CellLayout;->s_nSmallerSize:I

    add-int/2addr v2, p1

    sget v3, Lcom/htc/launcher/CellLayout;->s_nSmallerSize:I

    div-int v1, v2, v3

    .line 3288
    .local v1, nSpanY:I
    if-nez p2, :cond_0

    .line 3289
    const/4 v2, 0x2

    new-array p2, v2, [I

    .end local p2
    aput v0, p2, v4

    aput v1, p2, v5

    .line 3293
    :goto_0
    return-object p2

    .line 3291
    .restart local p2
    :cond_0
    aput v0, p2, v4

    .line 3292
    aput v1, p2, v5

    goto :goto_0
.end method

.method private resetRearrangeLastDragInfo()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2498
    iput v0, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragX:I

    .line 2499
    iput v0, p0, Lcom/htc/launcher/CellLayout;->m_nLastDragY:I

    .line 2500
    return-void
.end method

.method private showDropArea(IIIIZ)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "valid"

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    .local v0, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2642
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showDropArea(IIIIZ)V

    .line 2643
    return-void
.end method


# virtual methods
.method public acceptChildDrop(IIIILcom/htc/launcher/Draggee;)Z
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "cell"

    .prologue
    .line 1550
    iget-object v7, p0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .local v7, cellXY:[I
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 1551
    invoke-virtual/range {v2 .. v7}, Lcom/htc/launcher/CellLayout;->pointToDropCell(IIII[I)V

    .line 1552
    const/4 v2, 0x0

    aget v9, v7, v2

    .line 1553
    .local v9, cellX:I
    const/4 v2, 0x1

    aget v10, v7, v2

    .line 1556
    .local v10, cellY:I
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v9, v10, v0, v1}, Lcom/htc/launcher/CellLayout;->revertRearrangedCells(IIII)V

    move-object v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    .line 1558
    invoke-virtual/range {v8 .. v13}, Lcom/htc/launcher/CellLayout;->findCell(IIIILcom/htc/launcher/Draggee;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public acceptDropByMerge(Lcom/htc/launcher/Draggee;II)Z
    .locals 5
    .parameter "dragItem"
    .parameter "nPosX"
    .parameter "nPosY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 577
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    if-nez v4, :cond_1

    .line 578
    const-string v3, "CellLayout"

    const-string v4, "acceptDropByMerge when m_dragOverItem is null"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_0
    return v2

    .line 582
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v4}, Lcom/htc/launcher/FxItem;->canRearrange()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    const-string v3, "CellLayout"

    const-string v4, "acceptDropByMerge when shortcut can be rearranged"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v4}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    .line 588
    .local v0, info:Lcom/htc/launcher/ItemInfo;
    iget v4, v0, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v4, v3, :cond_0

    .line 593
    :cond_3
    if-nez p1, :cond_4

    .line 594
    const-string v3, "CellLayout"

    const-string v4, "acceptDropByMerge dragItem = null;"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_4
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 598
    .local v1, info2:Lcom/htc/launcher/ItemInfo;
    iget v4, v1, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v4, :cond_5

    iget v4, v1, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eq v4, v3, :cond_5

    .line 600
    const-string v3, "CellLayout"

    const-string v4, "acceptDropByMerge when drag over item not a shortcut"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 604
    goto :goto_0
.end method

.method public addAppWidgetResizeFrame(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/LauncherAppWidgetHostView;Lcom/htc/launcher/CellLayout;)V
    .locals 6
    .parameter "itemInfo"
    .parameter "widget"
    .parameter "cellLayout"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3065
    const-string v2, "CellLayout"

    const-string v3, "addAppWidgetResizeFrame"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    new-instance v1, Lcom/htc/launcher/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/htc/launcher/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/LauncherAppWidgetHostView;Lcom/htc/launcher/CellLayout;)V

    .line 3069
    .local v1, resizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;
    new-instance v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v4, v4}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 3070
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iput-boolean v5, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 3072
    invoke-virtual {p0, v1, v0}, Lcom/htc/launcher/CellLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3073
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3075
    invoke-virtual {v1, v5}, Lcom/htc/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 3076
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/htc/launcher/AppWidgetResizeFrame;->setWidgetDrawWithFx(ZLjava/lang/Runnable;)V

    .line 3077
    invoke-virtual {p2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->invalidate()V

    .line 3078
    return-void
.end method

.method public addItem(Lcom/htc/launcher/Draggee;I)V
    .locals 1
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1609
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/launcher/CellLayout;->addView(Landroid/view/View;I)V

    .line 1610
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 964
    move-object v0, p3

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 965
    .local v0, cellParams:Lcom/htc/launcher/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getId()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 968
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 986
    return-void
.end method

.method public asViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 2469
    return-object p0
.end method

.method public beginScroll()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsScrolling:Z

    .line 2316
    return-void
.end method

.method buildChildrenCache()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1013
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1014
    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1015
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1017
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v3

    .line 1020
    .local v3, re:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/launcher/WidgetProxy;

    if-eqz v4, :cond_1

    .line 1021
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/WidgetProxy;

    .line 1022
    .local v2, proxy:Lcom/htc/launcher/WidgetProxy;
    const-string v4, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v2           #proxy:Lcom/htc/launcher/WidgetProxy;
    :cond_1
    throw v3

    .line 1028
    .end local v0           #child:Landroid/view/View;
    .end local v3           #re:Ljava/lang/RuntimeException;
    :cond_2
    return-void
.end method

.method calculateRearrangeCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Ljava/util/List;)Z
    .locals 14
    .parameter "dragCell"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/CellInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellLayout$RearrangeInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2875
    .local p2, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    .local p3, rearrangeCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellLayout$RearrangeInfo;>;"
    if-nez p2, :cond_0

    .line 2876
    const/4 v9, 0x1

    .line 2940
    :goto_0
    return v9

    .line 2882
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->getDraggingOccupiedCells()[[Z

    move-result-object v9

    iput-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    .line 2884
    iget-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    invoke-direct {p0, v9}, Lcom/htc/launcher/CellLayout;->dumpOccupiedCell([[Z)V

    .line 2886
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 2889
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellInfo;

    .line 2890
    .local v1, c:Lcom/htc/launcher/CellInfo;
    iget v5, v1, Lcom/htc/launcher/CellInfo;->cellY:I

    .local v5, oy:I
    :goto_1
    iget v9, v1, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v10, v1, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v9, v10

    if-ge v5, v9, :cond_1

    .line 2891
    iget v4, v1, Lcom/htc/launcher/CellInfo;->cellX:I

    .local v4, ox:I
    :goto_2
    iget v9, v1, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v10, v1, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v9, v10

    if-ge v4, v9, :cond_2

    .line 2892
    iget-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    aget-object v9, v9, v4

    const/4 v10, 0x0

    aput-boolean v10, v9, v5

    .line 2891
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2890
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2898
    .end local v1           #c:Lcom/htc/launcher/CellInfo;
    .end local v4           #ox:I
    .end local v5           #oy:I
    :cond_3
    iget v4, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    .restart local v4       #ox:I
    :goto_3
    iget v9, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v9, v10

    if-ge v4, v9, :cond_5

    .line 2899
    iget v5, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    .restart local v5       #oy:I
    :goto_4
    iget v9, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v10, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v9, v10

    if-ge v5, v9, :cond_4

    .line 2900
    iget-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    aget-object v9, v9, v4

    const/4 v10, 0x1

    aput-boolean v10, v9, v5

    .line 2899
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2898
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2904
    .end local v5           #oy:I
    :cond_5
    iget-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    invoke-direct {p0, v9}, Lcom/htc/launcher/CellLayout;->dumpOccupiedCell([[Z)V

    .line 2907
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellInfo;

    .line 2909
    .restart local v1       #c:Lcom/htc/launcher/CellInfo;
    const-string v9, "Rearrange"

    const-string v10, "calculateRearrangeCells calculate %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    iget-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    invoke-direct {p0, v1, v9}, Lcom/htc/launcher/CellLayout;->findNearestVacantCellForCell(Lcom/htc/launcher/CellInfo;[[Z)Lcom/htc/launcher/CellInfo;

    move-result-object v6

    .line 2920
    .local v6, targetCell:Lcom/htc/launcher/CellInfo;
    if-nez v6, :cond_7

    .line 2921
    sget-boolean v9, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v9, :cond_6

    const-string v9, "Rearrange"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t find cell to auto rearrange for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2926
    :cond_7
    sget-boolean v9, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v9, :cond_8

    const-string v9, "Rearrange"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Move "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :cond_8
    iget v8, v6, Lcom/htc/launcher/CellInfo;->cellY:I

    .local v8, y:I
    :goto_6
    iget v9, v6, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v10, v6, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_a

    .line 2928
    iget v7, v6, Lcom/htc/launcher/CellInfo;->cellX:I

    .local v7, x:I
    :goto_7
    iget v9, v6, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v10, v6, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_9

    .line 2929
    iget-object v9, p0, Lcom/htc/launcher/CellLayout;->mDraggingOccupied:[[Z

    aget-object v9, v9, v7

    const/4 v10, 0x1

    aput-boolean v10, v9, v8

    .line 2928
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 2927
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2933
    .end local v7           #x:I
    :cond_a
    new-instance v3, Lcom/htc/launcher/CellLayout$RearrangeInfo;

    invoke-direct {v3, p0}, Lcom/htc/launcher/CellLayout$RearrangeInfo;-><init>(Lcom/htc/launcher/CellLayout;)V

    .line 2934
    .local v3, moveInfo:Lcom/htc/launcher/CellLayout$RearrangeInfo;
    iput-object v6, v3, Lcom/htc/launcher/CellLayout$RearrangeInfo;->to:Lcom/htc/launcher/CellInfo;

    .line 2935
    iput-object v1, v3, Lcom/htc/launcher/CellLayout$RearrangeInfo;->from:Lcom/htc/launcher/CellInfo;

    .line 2936
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2940
    .end local v1           #c:Lcom/htc/launcher/CellInfo;
    .end local v3           #moveInfo:Lcom/htc/launcher/CellLayout$RearrangeInfo;
    .end local v6           #targetCell:Lcom/htc/launcher/CellInfo;
    .end local v8           #y:I
    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 176
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 177
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 178
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/htc/launcher/CellLayout;->cancelLongPress(Landroid/view/View;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 1371
    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1373
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1374
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1377
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 1378
    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 1379
    return-void

    .line 1373
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 1374
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v2, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method public cellToRect(IIIILandroid/graphics/RectF;)V
    .locals 16
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "dragRect"

    .prologue
    .line 1694
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1695
    .local v6, portrait:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    .line 1696
    .local v2, cellWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    .line 1697
    .local v1, cellHeight:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    .line 1698
    .local v9, widthGap:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    .line 1700
    .local v5, heightGap:I
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1701
    .local v3, hStartPadding:I
    :goto_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1703
    .local v7, vStartPadding:I
    :goto_1
    mul-int v12, p3, v2

    add-int/lit8 v13, p3, -0x1

    mul-int/2addr v13, v9

    add-int v8, v12, v13

    .line 1704
    .local v8, width:I
    mul-int v12, p4, v1

    add-int/lit8 v13, p4, -0x1

    mul-int/2addr v13, v5

    add-int v4, v12, v13

    .line 1706
    .local v4, height:I
    add-int v12, v2, v9

    mul-int v12, v12, p1

    add-int v10, v3, v12

    .line 1707
    .local v10, x:I
    add-int v12, v1, v5

    mul-int v12, v12, p2

    add-int v11, v7, v12

    .line 1709
    .local v11, y:I
    int-to-float v12, v10

    int-to-float v13, v11

    add-int v14, v10, v8

    int-to-float v14, v14

    add-int v15, v11, v4

    int-to-float v15, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1710
    return-void

    .line 1700
    .end local v3           #hStartPadding:I
    .end local v4           #height:I
    .end local v7           #vStartPadding:I
    .end local v8           #width:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 1701
    .restart local v3       #hStartPadding:I
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method public cellToWidgetRect(IIIILandroid/graphics/RectF;)V
    .locals 16
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "dragRect"

    .prologue
    .line 1714
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1715
    .local v6, portrait:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    .line 1716
    .local v2, cellWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    .line 1717
    .local v1, cellHeight:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    .line 1718
    .local v9, widthGap:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    .line 1720
    .local v5, heightGap:I
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1721
    .local v3, hStartPadding:I
    :goto_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1723
    .local v7, vStartPadding:I
    :goto_1
    mul-int v12, p3, v2

    add-int/lit8 v13, p3, -0x1

    mul-int/2addr v13, v9

    add-int v8, v12, v13

    .line 1724
    .local v8, width:I
    mul-int v12, p4, v1

    add-int/lit8 v13, p4, -0x1

    mul-int/2addr v13, v5

    add-int v4, v12, v13

    .line 1726
    .local v4, height:I
    add-int v12, v2, v9

    mul-int v12, v12, p1

    add-int v10, v3, v12

    .line 1727
    .local v10, x:I
    add-int v12, v1, v5

    mul-int v12, v12, p2

    add-int v11, v7, v12

    .line 1729
    .local v11, y:I
    int-to-float v12, v10

    int-to-float v13, v11

    add-int v14, v10, v8

    int-to-float v14, v14

    add-int v15, v11, v4

    int-to-float v15, v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1730
    return-void

    .line 1720
    .end local v3           #hStartPadding:I
    .end local v4           #height:I
    .end local v7           #vStartPadding:I
    .end local v8           #width:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 1721
    .restart local v3       #hStartPadding:I
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1
.end method

.method public changeScreenIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v0, :cond_0

    .line 3011
    :goto_0
    return-void

    .line 3010
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    iput p1, v0, Lcom/htc/launcher/CellInfo;->screen:I

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1797
    instance-of v0, p1, Lcom/htc/launcher/CellLayout$LayoutParams;

    return v0
.end method

.method clear()V
    .locals 4

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 1974
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1975
    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1976
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/launcher/LegacyLayout;

    if-eqz v3, :cond_0

    .line 1977
    check-cast v2, Lcom/htc/launcher/LegacyLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/htc/launcher/LegacyLayout;->removeTheView()V

    .line 1974
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->removeAllViewsInLayout()V

    .line 1981
    return-void
.end method

.method public clearTempRemovedChildren()V
    .locals 1

    .prologue
    .line 2137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    .line 2138
    return-void
.end method

.method public clearVacant()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsVacantValid:Z

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsVacantValid:Z

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 888
    const-string v0, "CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchDraw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 890
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const v7, 0x7f07001e

    const/4 v3, 0x1

    .line 1038
    invoke-direct {p0, p1}, Lcom/htc/launcher/CellLayout;->handleWidgetResize(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v3

    .line 1042
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/launcher/CellLayout;->mChildHit:Z

    .line 1043
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 1044
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1045
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1046
    .local v1, child:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->mChildFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1047
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->mChildFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1048
    sget-boolean v4, Lcom/htc/launcher/CellLayout;->DEBUG_TOUCH:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellLayout#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getId()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "true touch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_2
    iput-boolean v3, p0, Lcom/htc/launcher/CellLayout;->mChildHit:Z

    .line 1044
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1053
    .end local v1           #child:Landroid/view/View;
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/launcher/CellLayout;->dispathTouchEventToCellInfoHandler(Landroid/view/MotionEvent;)V

    .line 1054
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1055
    .local v3, ret:Z
    sget-boolean v4, Lcom/htc/launcher/CellLayout;->DEBUG_TOUCH:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellLayout#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getId()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dispatch touch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1987
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 1988
    :catch_0
    move-exception v0

    .line 1989
    .local v0, ex:Ljava/lang/StackOverflowError;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/WidgetProxy;

    if-eqz v3, :cond_0

    .line 1990
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetProxy;

    .line 1991
    .local v1, proxy:Lcom/htc/launcher/WidgetProxy;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    .end local v1           #proxy:Lcom/htc/launcher/WidgetProxy;
    :cond_0
    throw v0

    .line 1994
    .end local v0           #ex:Ljava/lang/StackOverflowError;
    :catch_1
    move-exception v2

    .line 1995
    .local v2, rex:Ljava/lang/RuntimeException;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellLayout exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CellLayout exception, tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/WidgetProxy;

    if-eqz v3, :cond_1

    .line 1998
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetProxy;

    .line 1999
    .restart local v1       #proxy:Lcom/htc/launcher/WidgetProxy;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    .end local v1           #proxy:Lcom/htc/launcher/WidgetProxy;
    :cond_1
    throw v2
.end method

.method public drawScreenCache(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2056
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2057
    .local v0, restoreTo:I
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/launcher/CellLayout;->mTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2058
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 2059
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->updateCellLayoutCache()V

    .line 2064
    :cond_0
    sget-object v1, Lcom/htc/launcher/CellLayout;->sScreenPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 2065
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/htc/launcher/CellLayout;->sScreenPaint:Landroid/graphics/Paint;

    .line 2066
    sget-object v1, Lcom/htc/launcher/CellLayout;->sScreenPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2068
    sget-boolean v1, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v1, :cond_1

    .line 2069
    sget-object v1, Lcom/htc/launcher/CellLayout;->sScreenPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2071
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/htc/launcher/CellLayout;->sScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2073
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2074
    return-void
.end method

.method public endScroll()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsScrolling:Z

    .line 2321
    return-void
.end method

.method public findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;
    .locals 12
    .parameter "occupiedCells"

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, -0x8000

    .line 1277
    iget-boolean v3, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1278
    .local v3, portrait:Z
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 1279
    .local v5, xCount:I
    :goto_0
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 1281
    .local v7, yCount:I
    :goto_1
    invoke-direct {p0, p1, v8}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v2

    .line 1283
    .local v2, occupied:[[Z
    new-instance v0, Lcom/htc/launcher/CellInfo;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 1285
    .local v0, cellInfo:Lcom/htc/launcher/CellInfo;
    iput v11, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1286
    iput v11, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1287
    iput v9, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1288
    iput v9, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1289
    iput v10, v0, Lcom/htc/launcher/CellInfo;->maxVacantSpanX:I

    .line 1290
    iput v10, v0, Lcom/htc/launcher/CellInfo;->maxVacantSpanXSpanY:I

    .line 1291
    iput v10, v0, Lcom/htc/launcher/CellInfo;->maxVacantSpanY:I

    .line 1292
    iput v10, v0, Lcom/htc/launcher/CellInfo;->maxVacantSpanYSpanX:I

    .line 1293
    iget-object v10, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    iget v10, v10, Lcom/htc/launcher/CellInfo;->screen:I

    iput v10, v0, Lcom/htc/launcher/CellInfo;->screen:I

    .line 1295
    iget-object v1, v0, Lcom/htc/launcher/CellInfo;->current:Landroid/graphics/Rect;

    .line 1297
    .local v1, current:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, x:I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 1298
    const/4 v6, 0x0

    .local v6, y:I
    :goto_3
    if-ge v6, v7, :cond_3

    .line 1299
    aget-object v10, v2, v4

    aget-boolean v10, v10, v6

    if-nez v10, :cond_0

    .line 1300
    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1301
    invoke-static {v1, v5, v7, v2, v0}, Lcom/htc/launcher/CellInfo;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V

    .line 1302
    aget-object v10, v2, v4

    aput-boolean v8, v10, v6

    .line 1298
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1278
    .end local v0           #cellInfo:Lcom/htc/launcher/CellInfo;
    .end local v1           #current:Landroid/graphics/Rect;
    .end local v2           #occupied:[[Z
    .end local v4           #x:I
    .end local v5           #xCount:I
    .end local v6           #y:I
    .end local v7           #yCount:I
    :cond_1
    iget v5, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 1279
    .restart local v5       #xCount:I
    :cond_2
    iget v7, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 1297
    .restart local v0       #cellInfo:Lcom/htc/launcher/CellInfo;
    .restart local v1       #current:Landroid/graphics/Rect;
    .restart local v2       #occupied:[[Z
    .restart local v4       #x:I
    .restart local v6       #y:I
    .restart local v7       #yCount:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1307
    .end local v6           #y:I
    :cond_4
    iget-object v10, v0, Lcom/htc/launcher/CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    :goto_4
    iput-boolean v8, v0, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 1312
    return-object v0

    :cond_5
    move v8, v9

    .line 1307
    goto :goto_4
.end method

.method findCell(IIIILcom/htc/launcher/Draggee;)Landroid/view/View;
    .locals 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "ignoreCell"

    .prologue
    const/4 v6, 0x0

    .line 1576
    if-ltz p1, :cond_0

    add-int v8, p1, p3

    iget-boolean v7, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    :goto_0
    if-gt v8, v7, :cond_0

    if-ltz p2, :cond_0

    add-int v8, p2, p4

    iget-boolean v7, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    :goto_1
    if-le v8, v7, :cond_3

    .line 1604
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .line 1576
    .restart local p0
    :cond_1
    iget v7, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 1583
    :cond_3
    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v2

    .line 1585
    .local v2, occupied:[[Z
    if-eqz p5, :cond_5

    .line 1586
    invoke-interface {p5}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 1587
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    iget v7, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v8, v1, Lcom/htc/launcher/ItemInfo;->spanX:I

    add-int v3, v7, v8

    .line 1588
    .local v3, right:I
    iget v7, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v8, v1, Lcom/htc/launcher/ItemInfo;->spanY:I

    add-int v0, v7, v8

    .line 1589
    .local v0, bottom:I
    iget v4, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    .local v4, x:I
    :goto_3
    if-ge v4, v3, :cond_5

    .line 1590
    iget v5, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    .local v5, y:I
    :goto_4
    if-ge v5, v0, :cond_4

    .line 1591
    aget-object v7, v2, v4

    const/4 v8, 0x0

    aput-boolean v8, v7, v5

    .line 1590
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1589
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1596
    .end local v0           #bottom:I
    .end local v1           #info:Lcom/htc/launcher/ItemInfo;
    .end local v3           #right:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_5
    add-int v3, p1, p3

    .line 1597
    .restart local v3       #right:I
    add-int v0, p2, p4

    .line 1598
    .restart local v0       #bottom:I
    move v4, p1

    .restart local v4       #x:I
    :goto_5
    if-ge v4, v3, :cond_7

    .line 1599
    move v5, p2

    .restart local v5       #y:I
    :goto_6
    if-ge v5, v0, :cond_6

    .line 1600
    aget-object v7, v2, v4

    aget-boolean v7, v7, v5

    if-nez v7, :cond_0

    .line 1599
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1598
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v5           #y:I
    :cond_7
    move-object p0, v6

    .line 1604
    goto :goto_2
.end method

.method findCellByView([ILandroid/view/View;)Z
    .locals 8
    .parameter "cell"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 904
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 906
    .local v1, count:I
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    .line 908
    .local v3, id:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 909
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 911
    .local v4, v:Landroid/view/View;
    if-ne p2, v4, :cond_0

    .line 912
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 914
    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    aput v7, p1, v6

    .line 915
    and-int/lit16 v6, v3, 0xff

    aput v6, p1, v5

    .line 919
    .end local v0           #child:Landroid/view/View;
    .end local v4           #v:Landroid/view/View;
    :goto_1
    return v5

    .line 908
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    move v5, v6

    .line 919
    goto :goto_1
.end method

.method findNearestVacantCell(IIIIZ)Z
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showVacant"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 473
    :goto_0
    return v1

    .line 437
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .local v6, cellXY:[I
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 438
    invoke-virtual/range {v1 .. v6}, Lcom/htc/launcher/CellLayout;->pointToDropCell(IIII[I)V

    .line 441
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget v1, v6, v1

    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    iget v2, v2, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, v6, v1

    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    iget v2, v2, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->isShowVacantRect:Z

    move/from16 v0, p5

    if-ne v1, v0, :cond_1

    .line 442
    const/4 v1, 0x1

    goto :goto_0

    .line 444
    :cond_1
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->isShowVacantRect:Z

    .line 447
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 450
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    sget v2, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    neg-int v2, v2

    sget v3, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 451
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 455
    :cond_2
    if-eqz p5, :cond_4

    .line 456
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/launcher/CellInfo$VacantCell;

    .line 457
    .local v13, c:Lcom/htc/launcher/CellInfo$VacantCell;
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    if-eq v13, v1, :cond_3

    const/4 v1, 0x0

    aget v1, v6, v1

    iget v2, v13, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    aget v1, v6, v1

    iget v2, v13, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    if-ne v1, v2, :cond_3

    .line 461
    iget v8, v13, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    iget v9, v13, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    iget v10, v13, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iget v11, v13, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    iget-object v12, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/launcher/CellLayout;->cellToOutlineRect(IIIILandroid/graphics/RectF;)V

    .line 462
    iput-object v13, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    .line 464
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    sget v2, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    neg-int v2, v2

    sget v3, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 467
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 468
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 471
    .end local v13           #c:Lcom/htc/launcher/CellInfo$VacantCell;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    .line 472
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 473
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public findNearestVacantCellsForSpan(Lcom/htc/launcher/CellInfo;II)Lcom/htc/launcher/CellInfo$VacantCell;
    .locals 16
    .parameter "addCellInfo"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v13

    sub-int v9, v13, p2

    .line 501
    .local v9, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v13

    sub-int v11, v13, p3

    .line 502
    .local v11, y:I
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-gez v13, :cond_3

    :cond_0
    const/4 v7, 0x0

    .line 503
    .local v7, targetX:I
    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-gez v13, :cond_4

    :cond_1
    const/4 v8, 0x0

    .line 505
    .local v8, targetY:I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/htc/launcher/CellLayout;->getVisitCellForVancant(II)Ljava/util/ArrayList;

    move-result-object v10

    .line 506
    .local v10, xIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/htc/launcher/CellLayout;->getVisitCellForVancant(II)Ljava/util/ArrayList;

    move-result-object v12

    .line 508
    .local v12, yIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v6

    .line 510
    .local v6, occupied:[[Z
    const/4 v1, 0x0

    .local v1, a:I
    :goto_2
    if-gt v1, v9, :cond_8

    .line 511
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 512
    .local v4, i:I
    array-length v13, v6

    if-lt v4, v13, :cond_5

    .line 513
    const-string v13, "CellLayout"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Draggee out of bound: i="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", x="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bound="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 502
    .end local v1           #a:I
    .end local v4           #i:I
    .end local v6           #occupied:[[Z
    .end local v7           #targetX:I
    .end local v8           #targetY:I
    .end local v10           #xIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #yIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    goto :goto_0

    .line 503
    .restart local v7       #targetX:I
    :cond_4
    move-object/from16 v0, p1

    iget v8, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    goto :goto_1

    .line 516
    .restart local v1       #a:I
    .restart local v4       #i:I
    .restart local v6       #occupied:[[Z
    .restart local v8       #targetY:I
    .restart local v10       #xIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12       #yIndexArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const/4 v2, 0x0

    .local v2, b:I
    :goto_3
    if-gt v2, v11, :cond_2

    .line 517
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 518
    .local v5, j:I
    aget-object v13, v6, v4

    array-length v13, v13

    if-lt v5, v13, :cond_7

    .line 519
    const-string v13, "CellLayout"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Draggee out of bound: j="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", y="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " bound="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v6, v4

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 522
    :cond_7
    aget-object v13, v6, v4

    aget-boolean v13, v13, v5

    if-nez v13, :cond_6

    add-int v13, v4, p2

    add-int v14, v5, p3

    invoke-static {v6, v4, v5, v13, v14}, Lcom/htc/launcher/CellLayout;->isAreaOccupied([[ZIIII)Z

    move-result v13

    if-nez v13, :cond_6

    .line 525
    new-instance v3, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v3}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 526
    .local v3, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v4, v3, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 527
    iput v5, v3, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 528
    move/from16 v0, p2

    iput v0, v3, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 529
    move/from16 v0, p3

    iput v0, v3, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 535
    .end local v2           #b:I
    .end local v3           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    .end local v4           #i:I
    .end local v5           #j:I
    :goto_4
    return-object v3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public findRearrangeCandiatesForSpan(II)Lcom/htc/launcher/CellInfo$VacantCell;
    .locals 9
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 746
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v6

    if-nez v6, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-object v0

    .line 749
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->getOccupiedCells()[[Z

    move-result-object v3

    .line 752
    .local v3, occupied:[[Z
    if-ne v7, p1, :cond_2

    if-ne v7, p2, :cond_2

    .line 753
    invoke-direct {p0, v3}, Lcom/htc/launcher/CellLayout;->findRearrangeCandiatesFor1x1([[Z)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_2
    if-ne v8, p1, :cond_3

    if-ne v8, p2, :cond_3

    .line 757
    invoke-direct {p0, v3}, Lcom/htc/launcher/CellLayout;->findRearrangeCandiatesFor1x1([[Z)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    goto :goto_0

    .line 760
    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lcom/htc/launcher/CellLayout;->hasRoomForSpan(II[[Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 764
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v6

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_0

    .line 765
    const/4 v4, 0x0

    .local v4, x:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v6

    sub-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x1

    if-ge v4, v6, :cond_5

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v1, coveredCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    new-instance v2, Lcom/htc/launcher/CellInfo;

    invoke-direct {v2}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 768
    .local v2, currentCell:Lcom/htc/launcher/CellInfo;
    iput v4, v2, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 769
    iput v5, v2, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 770
    iput p1, v2, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 771
    iput p2, v2, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 773
    invoke-direct {p0, v2, v1}, Lcom/htc/launcher/CellLayout;->findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;)V

    .line 776
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1, v6}, Lcom/htc/launcher/CellLayout;->calculateRearrangeCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 778
    new-instance v0, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 779
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v4, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 780
    iput v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 781
    iput p1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 782
    iput p2, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 783
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    .end local v0           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 764
    .end local v1           #coveredCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    .end local v2           #currentCell:Lcom/htc/launcher/CellInfo;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public findVacantCellsForSpan(Ljava/util/List;II)V
    .locals 9
    .parameter
    .parameter "spanX"
    .parameter "spanY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo$VacantCell;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v6

    sub-int v4, v6, p2

    .line 547
    .local v4, x:I
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v6

    sub-int v5, v6, p3

    .line 549
    .local v5, y:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v3

    .line 551
    .local v3, occupied:[[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v4, :cond_4

    .line 552
    array-length v6, v3

    if-lt v1, v6, :cond_1

    .line 553
    const-string v6, "CellLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Draggee out of bound: i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-gt v2, v5, :cond_0

    .line 557
    aget-object v6, v3, v1

    array-length v6, v6

    if-lt v2, v6, :cond_3

    .line 558
    const-string v6, "CellLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Draggee out of bound: j="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :cond_3
    aget-object v6, v3, v1

    aget-boolean v6, v6, v2

    if-nez v6, :cond_2

    add-int v6, v1, p2

    add-int v7, v2, p3

    invoke-static {v3, v1, v2, v6, v7}, Lcom/htc/launcher/CellLayout;->isAreaOccupied([[ZIIII)Z

    move-result v6

    if-nez v6, :cond_2

    .line 564
    new-instance v0, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 565
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 566
    iput v2, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 567
    iput p2, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 568
    iput p3, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 569
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 573
    .end local v0           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    .end local v2           #j:I
    :cond_4
    return-void
.end method

.method public finishWidgetResize()Z
    .locals 2

    .prologue
    .line 3103
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->completeWidgetResize()Z

    move-result v0

    .line 3104
    .local v0, invalidate:Z
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->clearAllResizeFrames()V

    .line 3105
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->postDelayedCallbackToExitStickyMode()V

    .line 3106
    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1792
    new-instance v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1802
    new-instance v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 3156
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 3152
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_0
.end method

.method public getExpandabilityArray(IIII[I)V
    .locals 10
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3180
    aput v6, p5, v6

    .line 3181
    add-int/lit8 v3, p1, -0x1

    .local v3, x:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3182
    const/4 v0, 0x0

    .line 3183
    .local v0, bFlag:Z
    move v4, p2

    .local v4, y:I
    :goto_1
    add-int v5, p2, p4

    if-ge v4, v5, :cond_1

    .line 3184
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 3185
    const/4 v0, 0x1

    .line 3183
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3188
    :cond_1
    if-eqz v0, :cond_4

    .line 3194
    .end local v0           #bFlag:Z
    .end local v4           #y:I
    :cond_2
    aput v6, p5, v7

    .line 3195
    add-int/lit8 v4, p2, -0x1

    .restart local v4       #y:I
    :goto_2
    if-ltz v4, :cond_6

    .line 3196
    const/4 v0, 0x0

    .line 3197
    .restart local v0       #bFlag:Z
    move v3, p1

    :goto_3
    add-int v5, p1, p3

    if-ge v3, v5, :cond_5

    .line 3198
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_3

    .line 3199
    const/4 v0, 0x1

    .line 3197
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3191
    :cond_4
    aget v5, p5, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, p5, v6

    .line 3181
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3202
    :cond_5
    if-eqz v0, :cond_8

    .line 3208
    .end local v0           #bFlag:Z
    :cond_6
    aput v6, p5, v8

    .line 3209
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v1

    .line 3210
    .local v1, countX:I
    add-int v3, p1, p3

    :goto_4
    if-ge v3, v1, :cond_a

    .line 3211
    const/4 v0, 0x0

    .line 3212
    .restart local v0       #bFlag:Z
    move v4, p2

    :goto_5
    add-int v5, p2, p4

    if-ge v4, v5, :cond_9

    .line 3213
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_7

    .line 3214
    const/4 v0, 0x1

    .line 3212
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3205
    .end local v1           #countX:I
    :cond_8
    aget v5, p5, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, p5, v7

    .line 3195
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3217
    .restart local v1       #countX:I
    :cond_9
    if-eqz v0, :cond_c

    .line 3223
    .end local v0           #bFlag:Z
    :cond_a
    aput v6, p5, v9

    .line 3224
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v2

    .line 3225
    .local v2, countY:I
    add-int v4, p2, p4

    :goto_6
    if-ge v4, v2, :cond_e

    .line 3226
    const/4 v0, 0x0

    .line 3227
    .restart local v0       #bFlag:Z
    move v3, p1

    :goto_7
    add-int v5, p1, p3

    if-ge v3, v5, :cond_d

    .line 3228
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    aget-object v5, v5, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_b

    .line 3229
    const/4 v0, 0x1

    .line 3227
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3220
    .end local v2           #countY:I
    :cond_c
    aget v5, p5, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, p5, v8

    .line 3210
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3232
    .restart local v2       #countY:I
    :cond_d
    if-eqz v0, :cond_f

    .line 3237
    .end local v0           #bFlag:Z
    :cond_e
    return-void

    .line 3235
    .restart local v0       #bFlag:Z
    :cond_f
    aget v5, p5, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, p5, v9

    .line 3225
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method public getExpandabilityArrayForLayoutParams(Lcom/htc/launcher/CellLayout$LayoutParams;[I)V
    .locals 6
    .parameter "lp"
    .parameter "expandability"

    .prologue
    .line 3171
    iget v1, p1, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->getExpandabilityArray(IIII[I)V

    .line 3172
    return-void
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 1
    .parameter "view"
    .parameter "expandability"

    .prologue
    .line 3168
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0, v0, p2}, Lcom/htc/launcher/CellLayout;->getExpandabilityArrayForLayoutParams(Lcom/htc/launcher/CellLayout$LayoutParams;[I)V

    .line 3169
    return-void
.end method

.method public getHeightGap()I
    .locals 1

    .prologue
    .line 3164
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    return v0
.end method

.method getMeasureSpec()[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    .line 1809
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1810
    .local v0, specs:[I
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1811
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    aput v1, v0, v4

    aput v1, v0, v2

    .line 1817
    :goto_0
    return-object v0

    .line 1813
    :cond_0
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    aput v1, v0, v2

    .line 1814
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    aput v1, v0, v4

    goto :goto_0
.end method

.method getMergeableItem(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/CellInfo;)Lcom/htc/launcher/CellInfo;
    .locals 5
    .parameter "dragItem"
    .parameter "info"

    .prologue
    .line 2856
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2860
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2861
    .local v2, occupiedCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p2, v2, v4}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Z)V

    .line 2862
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellInfo;

    .line 2863
    .local v0, cinfo:Lcom/htc/launcher/CellInfo;
    iget-object v3, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    instance-of v3, v3, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    if-eq v3, p1, :cond_1

    .line 2868
    .end local v0           #cinfo:Lcom/htc/launcher/CellInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #occupiedCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOccupiedCells()[Z
    .locals 9

    .prologue
    .line 1744
    iget-boolean v2, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1745
    .local v2, portrait:Z
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 1746
    .local v4, xCount:I
    :goto_0
    if-eqz v2, :cond_1

    iget v6, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 1748
    .local v6, yCount:I
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v1

    .line 1750
    .local v1, occupied:[[Z
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 1751
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 1752
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 1753
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 1752
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1745
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_0
    iget v4, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 1746
    .restart local v4       #xCount:I
    :cond_1
    iget v6, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_1

    .line 1751
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1757
    .end local v3           #x:I
    :cond_3
    return-object v0
.end method

.method public getPaddings(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter "outRect"

    .prologue
    .line 3270
    move-object v0, p1

    .line 3271
    .local v0, rect:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 3272
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #rect:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3275
    .restart local v0       #rect:Landroid/graphics/Rect;
    :cond_0
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3276
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mLongAxisEndPadding:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3277
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3278
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mShortAxisEndPadding:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3280
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
    .line 2967
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2968
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getAnotherOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->getRearrangeItems()Ljava/util/ArrayList;

    .line 2971
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->getRearrangeItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTag()Lcom/htc/launcher/CellInfo;
    .locals 7

    .prologue
    .line 1255
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellInfo;

    .line 1256
    .local v0, info:Lcom/htc/launcher/CellInfo;
    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/htc/launcher/CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 1257
    iget-boolean v6, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1258
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v3, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 1259
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v4, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 1261
    .local v4, yCount:I
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v5

    .line 1263
    .local v5, occupied:[[Z
    iget v1, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/CellInfo;->findIntersectingVacantCells(Lcom/htc/launcher/CellInfo;IIII[[Z)V

    .line 1265
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mDirtyTag:Z

    .line 1267
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 1258
    .restart local v6       #portrait:Z
    :cond_1
    iget v3, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 1259
    .restart local v3       #xCount:I
    :cond_2
    iget v4, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getTag()Lcom/htc/launcher/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWidthGap()I
    .locals 1

    .prologue
    .line 3160
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hasRearrangedVacant()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mhasRearrangedVacant:Z

    return v0
.end method

.method public hasResizeFrames()Z
    .locals 1

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->m_resizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVacant()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsVacantValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideDropArea()V
    .locals 1

    .prologue
    .line 2647
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    .line 2648
    .local v0, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideDropArea()V

    .line 2649
    return-void
.end method

.method public hideVacant()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mShowVacant:Z

    .line 413
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mVacantPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 414
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mVacantPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    .line 416
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 418
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->invalidate()V

    .line 419
    return-void
.end method

.method public invalidate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2168
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/launcher/CellLayout;->mRight:I

    iget v2, p0, Lcom/htc/launcher/CellLayout;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/CellLayout;->mBottom:I

    iget v3, p0, Lcom/htc/launcher/CellLayout;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 2172
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2174
    return-void
.end method

.method public invalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2178
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 2179
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    .line 2180
    :cond_0
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mScrollX:I

    .line 2181
    .local v0, scrollX:I
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mScrollY:I

    .line 2182
    .local v1, scrollY:I
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    sub-int v3, p1, v0

    sub-int v4, p2, v1

    sub-int v5, p3, v0

    sub-int v6, p4, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 2184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    .line 2186
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "dirty"

    .prologue
    .line 2190
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 2191
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    .line 2192
    :cond_0
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mScrollX:I

    .line 2193
    .local v0, scrollX:I
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mScrollY:I

    .line 2194
    .local v1, scrollY:I
    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 2197
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 2199
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 2159
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2160
    .local v0, vp:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2163
    return-object v0
.end method

.method public isCacheReady()Z
    .locals 2

    .prologue
    .line 2049
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2050
    .local v0, isCacheReady:Z
    :goto_0
    return v0

    .line 2049
    .end local v0           #isCacheReady:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildHit()Z
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mChildHit:Z

    return v0
.end method

.method isDragOnFolder(Lcom/htc/launcher/CellInfo;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .parameter "dragCell"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/CellInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellLayout$RearrangeInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, cells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    .local p3, rearrangeCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellLayout$RearrangeInfo;>;"
    const/4 v2, 0x1

    .line 2842
    iget-object v3, p1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    if-ne v3, v2, :cond_2

    iget v3, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    if-ne v3, v2, :cond_2

    .line 2844
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellInfo;

    .line 2845
    .local v0, c:Lcom/htc/launcher/CellInfo;
    iget-object v3, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-interface {v3}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v3, v2, :cond_0

    .line 2852
    .end local v0           #c:Lcom/htc/launcher/CellInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVacantVisible()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mShowVacant:Z

    return v0
.end method

.method public isValidCellInfo(FFLcom/htc/launcher/CellInfo;)Z
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "cellInfo"

    .prologue
    .line 1103
    iget v8, p3, Lcom/htc/launcher/CellInfo;->spanX:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, p3, Lcom/htc/launcher/CellInfo;->spanY:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    :cond_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1104
    const/4 v8, 0x1

    .line 1122
    :goto_0
    return v8

    .line 1106
    :cond_1
    iget-boolean v8, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v8, :cond_3

    iget v6, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1107
    .local v6, hStartPadding:I
    :goto_1
    iget-boolean v8, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v8, :cond_4

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1108
    .local v7, vStartPadding:I
    :goto_2
    iget v8, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    int-to-float v8, v8

    const v9, 0x3c23d70a

    mul-float/2addr v8, v9

    iget v9, p3, Lcom/htc/launcher/CellInfo;->spanX:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 1109
    .local v0, XTOUCH_THRESHOLD:I
    iget v8, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    int-to-float v8, v8

    const v9, 0x3c23d70a

    mul-float/2addr v8, v9

    iget v9, p3, Lcom/htc/launcher/CellInfo;->spanY:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 1110
    .local v1, YTOUCH_THRESHOLD:I
    iget v8, p3, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v6

    add-int v2, v8, v0

    .line 1111
    .local v2, cellBeginX:I
    iget v8, p3, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v9, p3, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v6

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    sub-int/2addr v8, v9

    sub-int v4, v8, v0

    .line 1112
    .local v4, cellEndX:I
    int-to-float v8, v2

    cmpg-float v8, p1, v8

    if-ltz v8, :cond_2

    int-to-float v8, v4

    cmpl-float v8, p1, v8

    if-lez v8, :cond_5

    .line 1113
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1106
    .end local v0           #XTOUCH_THRESHOLD:I
    .end local v1           #YTOUCH_THRESHOLD:I
    .end local v2           #cellBeginX:I
    .end local v4           #cellEndX:I
    .end local v6           #hStartPadding:I
    .end local v7           #vStartPadding:I
    :cond_3
    iget v6, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_1

    .line 1107
    .restart local v6       #hStartPadding:I
    :cond_4
    iget v7, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    goto :goto_2

    .line 1116
    .restart local v0       #XTOUCH_THRESHOLD:I
    .restart local v1       #YTOUCH_THRESHOLD:I
    .restart local v2       #cellBeginX:I
    .restart local v4       #cellEndX:I
    .restart local v7       #vStartPadding:I
    :cond_5
    iget v8, p3, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    iget v10, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int v3, v8, v1

    .line 1117
    .local v3, cellBeginY:I
    iget v8, p3, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v9, p3, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    iget v10, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v8, v7

    iget v9, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    sub-int/2addr v8, v9

    sub-int v5, v8, v1

    .line 1118
    .local v5, cellEndY:I
    int-to-float v8, v3

    cmpg-float v8, p2, v8

    if-ltz v8, :cond_6

    int-to-float v8, v5

    cmpl-float v8, p2, v8

    if-lez v8, :cond_7

    .line 1119
    :cond_6
    const/4 v8, 0x0

    goto :goto_0

    .line 1122
    :cond_7
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->m_currentResizeFrame:Lcom/htc/launcher/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1944
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 3240
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 3245
    :cond_0
    :goto_0
    return-void

    .line 3243
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 3244
    .local v6, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v1, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 3248
    if-nez p1, :cond_0

    .line 3254
    :goto_0
    return-void

    .line 3252
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 3253
    .local v6, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v1, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public mergeDragOverItemAsFolder(Lcom/htc/launcher/Draggee;II)Z
    .locals 10
    .parameter "dragItem"
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v9, 0x1

    .line 617
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 618
    .local v2, itemInfoDrag:Lcom/htc/launcher/ItemInfo;
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v6}, Lcom/htc/launcher/FxItem;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    .line 621
    .local v3, itemInfoOver:Lcom/htc/launcher/ItemInfo;
    sget-object v6, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/Launcher;

    .line 622
    .local v4, launcher:Lcom/htc/launcher/Launcher;
    iget-object v6, v4, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v7, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v6, p1, v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 623
    iget-object v6, v4, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v7, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    iget v8, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 626
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->revertRearrangedCells()V

    .line 629
    new-instance v0, Lcom/htc/launcher/CellInfo;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 630
    .local v0, addInfo:Lcom/htc/launcher/CellInfo;
    iget v6, v3, Lcom/htc/launcher/ItemInfo;->cellX:I

    iput v6, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 631
    iget v6, v3, Lcom/htc/launcher/ItemInfo;->cellY:I

    iput v6, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 632
    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    invoke-virtual {v6, v9, v0}, Lcom/htc/launcher/DesktopItemController;->addFolder(ZLcom/htc/launcher/CellInfo;)Lcom/htc/launcher/FolderInfo;

    move-result-object v1

    .line 636
    .local v1, folderInfo:Lcom/htc/launcher/FolderInfo;
    invoke-static {v4}, Lcom/htc/launcher/Folder;->fromXml(Landroid/content/Context;)Lcom/htc/launcher/Folder;

    move-result-object v5

    .line 637
    .local v5, openFolder:Lcom/htc/launcher/Folder;
    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Folder;->setDragger(Lcom/htc/launcher/DragController;)V

    .line 638
    invoke-virtual {v5, v4}, Lcom/htc/launcher/Folder;->setLauncher(Lcom/htc/launcher/Launcher;)V

    .line 639
    invoke-virtual {v5, v1}, Lcom/htc/launcher/Folder;->bind(Lcom/htc/launcher/FolderInfo;)V

    .line 640
    invoke-virtual {v5, v1}, Lcom/htc/launcher/Folder;->setTag(Ljava/lang/Object;)V

    .line 643
    check-cast v3, Lcom/htc/launcher/ApplicationInfo;

    .end local v3           #itemInfoOver:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v5, v3}, Lcom/htc/launcher/Folder;->addIntoFolder(Lcom/htc/launcher/ApplicationInfo;)Z

    .line 644
    check-cast v2, Lcom/htc/launcher/ApplicationInfo;

    .end local v2           #itemInfoDrag:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v5, v2}, Lcom/htc/launcher/Folder;->addIntoFolder(Lcom/htc/launcher/ApplicationInfo;)Z

    .line 646
    invoke-virtual {v4}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v6

    iget v7, v1, Lcom/htc/launcher/FolderInfo;->screen:I

    invoke-virtual {v6, v9, v7}, Lcom/htc/launcher/DesktopItemController;->enableFolderIcon(ZI)V

    .line 648
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    .line 650
    return v9
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1000
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1001
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/htc/launcher/CellInfo;->screen:I

    .line 1002
    return-void
.end method

.method public onDragChild(Lcom/htc/launcher/Draggee;)V
    .locals 5
    .parameter "cell"

    .prologue
    const/4 v4, 0x1

    .line 1653
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 1655
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    .line 1658
    .local v0, info:Lcom/htc/launcher/ItemInfo;
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v2, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    iput v2, v1, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1659
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v2, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    iput v2, v1, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1660
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v2, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    iput v2, v1, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1661
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iget v2, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    iput v2, v1, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1662
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iput-boolean v4, v1, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 1664
    const-string v1, "CellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragCellInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {v3}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iput-boolean v4, p0, Lcom/htc/launcher/CellLayout;->mIsDragging:Z

    .line 1667
    return-void
.end method

.method public onDragExit(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "bDropOnMe"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1681
    if-nez p3, :cond_2

    .line 1682
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    invoke-interface {v0}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->ownCellInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1683
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->hideDropArea()V

    .line 1685
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->resetRearrangeLastDragInfo()V

    .line 1686
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/htc/launcher/CellLayout;->revertRearrangedCells(IIII)V

    .line 1687
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->clearDragOverItem()V

    .line 1689
    :cond_2
    return-void
.end method

.method public onDragOverChild(Landroid/view/View;II)V
    .locals 13
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1672
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .line 1673
    .local v5, cellXY:[I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 1674
    .local v12, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v3, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->pointToDropCell(IIII[I)V

    .line 1675
    const/4 v0, 0x0

    aget v7, v5, v0

    const/4 v0, 0x1

    aget v8, v5, v0

    iget v9, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v11, p0, Lcom/htc/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/htc/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 1676
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->invalidate()V

    .line 1677
    return-void
.end method

.method onDropAborted(Lcom/htc/launcher/Draggee;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 1643
    if-eqz p1, :cond_0

    .line 1644
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragSource;

    invoke-interface {p1, v0}, Lcom/htc/launcher/Draggee;->onDropAbort(Lcom/htc/launcher/DragSource;)V

    .line 1645
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->invalidate()V

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 1648
    return-void
.end method

.method public onDropChild(Lcom/htc/launcher/Draggee;IIII)V
    .locals 12
    .parameter "cell"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1629
    iget-object v5, p0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .local v5, cellXY:[I
    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1630
    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/CellLayout;->pointToDropCell(IIII[I)V

    .line 1631
    const/4 v0, 0x0

    aget v8, v5, v0

    const/4 v0, 0x1

    aget v9, v5, v0

    move-object v6, p0

    move-object v7, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/launcher/CellLayout;->onDropChildByCell(Lcom/htc/launcher/Draggee;IIII)V

    .line 1632
    return-void
.end method

.method public onDropChildByCell(Lcom/htc/launcher/Draggee;IIII)V
    .locals 1
    .parameter "cell"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DropTarget;

    invoke-interface {p1, v0, p2, p3}, Lcom/htc/launcher/Draggee;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 1638
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->invalidate()V

    .line 1639
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 1640
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2976
    iput-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mIsDragging:Z

    .line 2978
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mDragCellInfo:Lcom/htc/launcher/CellInfo;

    iput-boolean v1, v0, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2979
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2980
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->resetRearrangeLastDragInfo()V

    .line 2982
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    invoke-interface {v0}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->ownCellInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2983
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->hideDropArea()V

    .line 2985
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1128
    .local v3, action:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 1130
    .local v4, cellInfo:Lcom/htc/launcher/CellInfo;
    if-nez v3, :cond_10

    .line 1131
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/CellLayout;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1132
    const/16 v23, 0x1

    .line 1226
    :goto_0
    return v23

    .line 1135
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 1136
    .local v9, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mScrollX:I

    move/from16 v24, v0

    add-int v19, v23, v24

    .line 1137
    .local v19, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mScrollY:I

    move/from16 v24, v0

    add-int v21, v23, v24

    .line 1138
    .local v21, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v7

    .line 1141
    .local v7, count:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/CellLayout;->touchInScreen(II)Z

    move-result v23

    if-nez v23, :cond_1

    .line 1142
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 1143
    const/16 v23, 0x0

    goto :goto_0

    .line 1146
    :cond_1
    const/4 v8, 0x0

    .line 1147
    .local v8, found:Z
    sget-boolean v23, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v23, :cond_2

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CellLayout#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getId()I

    move-result v24

    const v25, 0x7f07001e

    sub-int v24, v24, v25

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "false , childCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_2
    add-int/lit8 v11, v7, -0x1

    .local v11, i:I
    :goto_1
    if-ltz v11, :cond_4

    .line 1149
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1151
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 1152
    :cond_3
    invoke-virtual {v6, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1153
    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1154
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 1155
    .local v12, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    invoke-static {v6}, Lcom/htc/launcher/Draggee$LegacyDraggee;->wrap(Ljava/lang/Object;)Lcom/htc/launcher/Draggee;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 1156
    iget v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1157
    iget v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1158
    iget v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1159
    iget v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1160
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 1161
    const/4 v8, 0x1

    .line 1162
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/CellLayout;->mDirtyTag:Z

    .line 1169
    .end local v6           #child:Landroid/view/View;
    .end local v12           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1170
    .local v15, portrait:Z
    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1171
    .local v10, hStartPadding:I
    :goto_2
    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    move/from16 v18, v0

    .line 1172
    .local v18, vStartPadding:I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v16, v23, v10

    .line 1173
    .local v16, tx:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v17, v23, v18

    .line 1175
    .local v17, ty:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v14

    .line 1176
    .local v14, occupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;
    if-eqz v14, :cond_c

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->isTouchOnItem(II)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1177
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 1182
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 1183
    if-nez v8, :cond_5

    .line 1184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .line 1185
    .local v5, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/htc/launcher/CellLayout;->pointToCellExact(II[I)V

    .line 1188
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    .line 1189
    .local v20, xCount:I
    :goto_5
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    move/from16 v22, v0

    .line 1191
    .local v22, yCount:I
    :goto_6
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v13

    .line 1193
    .local v13, occupied:[[Z
    const/16 v23, 0x0

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 1194
    const/16 v23, 0x0

    aget v23, v5, v23

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1195
    const/16 v23, 0x1

    aget v23, v5, v23

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1196
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1197
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1198
    const/16 v23, 0x0

    aget v23, v5, v23

    if-ltz v23, :cond_f

    const/16 v23, 0x1

    aget v23, v5, v23

    if-ltz v23, :cond_f

    const/16 v23, 0x0

    aget v23, v5, v23

    move/from16 v0, v23

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    const/16 v23, 0x1

    aget v23, v5, v23

    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    const/16 v23, 0x0

    aget v23, v5, v23

    aget-object v23, v13, v23

    const/16 v24, 0x1

    aget v24, v5, v24

    aget-boolean v23, v23, v24

    if-nez v23, :cond_f

    const/16 v23, 0x1

    :goto_7
    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 1206
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/CellLayout;->mDirtyTag:Z

    .line 1208
    .end local v5           #cellXY:[I
    .end local v13           #occupied:[[Z
    .end local v20           #xCount:I
    .end local v22           #yCount:I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/htc/launcher/CellLayout$ICellInfoHandler;->onSelect(Lcom/htc/launcher/CellInfo;)V

    .line 1225
    .end local v7           #count:I
    .end local v8           #found:Z
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #hStartPadding:I
    .end local v11           #i:I
    .end local v14           #occupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;
    .end local v15           #portrait:Z
    .end local v16           #tx:I
    .end local v17           #ty:I
    .end local v18           #vStartPadding:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_6
    :goto_8
    sget-boolean v23, Lcom/htc/launcher/CellLayout;->DEBUG_TOUCH:Z

    if-eqz v23, :cond_7

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CellLayout#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getId()I

    move-result v24

    const v25, 0x7f07001e

    sub-int v24, v24, v25

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "false intercept touch:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1165
    .restart local v6       #child:Landroid/view/View;
    .restart local v7       #count:I
    .restart local v8       #found:Z
    .restart local v9       #frame:Landroid/graphics/Rect;
    .restart local v11       #i:I
    .restart local v19       #x:I
    .restart local v21       #y:I
    :cond_8
    sget-boolean v23, Lcom/htc/launcher/CellLayout;->localLOGD:Z

    if-eqz v23, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CellLayout#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getId()I

    move-result v24

    const v25, 0x7f07001e

    sub-int v24, v24, v25

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "false#chile("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") is hit?:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .line 1170
    .end local v6           #child:Landroid/view/View;
    .restart local v15       #portrait:Z
    :cond_a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto/16 :goto_2

    .line 1171
    .restart local v10       #hStartPadding:I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    move/from16 v18, v0

    goto/16 :goto_3

    .line 1179
    .restart local v14       #occupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;
    .restart local v16       #tx:I
    .restart local v17       #ty:I
    .restart local v18       #vStartPadding:I
    :cond_c
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/htc/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    goto/16 :goto_4

    .line 1188
    .restart local v5       #cellXY:[I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    goto/16 :goto_5

    .line 1189
    .restart local v20       #xCount:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    move/from16 v22, v0

    goto/16 :goto_6

    .line 1198
    .restart local v13       #occupied:[[Z
    .restart local v22       #yCount:I
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 1214
    .end local v5           #cellXY:[I
    .end local v7           #count:I
    .end local v8           #found:Z
    .end local v9           #frame:Landroid/graphics/Rect;
    .end local v10           #hStartPadding:I
    .end local v11           #i:I
    .end local v13           #occupied:[[Z
    .end local v14           #occupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;
    .end local v15           #portrait:Z
    .end local v16           #tx:I
    .end local v17           #ty:I
    .end local v18           #vStartPadding:I
    .end local v19           #x:I
    .end local v20           #xCount:I
    .end local v21           #y:I
    .end local v22           #yCount:I
    :cond_10
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_6

    .line 1215
    const/16 v23, 0x0

    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 1216
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 1217
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 1218
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 1219
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 1220
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v4, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 1221
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/CellLayout;->mDirtyTag:Z

    .line 1222
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_8
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v10

    .line 1496
    .local v10, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 1497
    invoke-virtual {p0, v11}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1498
    .local v7, child:Landroid/view/View;
    if-nez v7, :cond_1

    .line 1496
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1500
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1502
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 1504
    .local v12, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v8, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 1505
    .local v8, childLeft:I
    iget v9, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 1506
    .local v9, childTop:I
    iget v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v8

    iget v1, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1507
    iget-boolean v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 1508
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 1510
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mWallpaperManager:Lcom/htc/launcher/WallpaperManager;

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    iget v3, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v4, v12, Lcom/htc/launcher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 1515
    .end local v7           #child:Landroid/view/View;
    .end local v8           #childLeft:I
    .end local v9           #childTop:I
    .end local v12           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1439
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 1440
    .local v26, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 1442
    .local v27, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 1443
    .local v23, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 1445
    .local v24, heightSpecSize:I
    if-eqz v26, :cond_0

    if-nez v23, :cond_1

    .line 1446
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1449
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 1451
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    .line 1452
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    .line 1453
    .local v5, cellHeight:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1454
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1456
    .local v8, shortAxisStartPadding:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->measureGapSize()V

    .line 1459
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    if-nez v6, :cond_2

    .line 1460
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v6, :cond_3

    .line 1461
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    .line 1468
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v22

    .line 1470
    .local v22, count:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 1471
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1472
    .local v19, child:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 1474
    .local v3, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v6, :cond_4

    .line 1475
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    invoke-virtual/range {v3 .. v11}, Lcom/htc/launcher/CellLayout$LayoutParams;->setup(IIIIIIII)V

    .line 1482
    :goto_2
    iget v6, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1483
    .local v20, childWidthMeasureSpec:I
    iget v6, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1485
    .local v21, childheightMeasureSpec:I
    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->measure(II)V

    .line 1470
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1463
    .end local v3           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v19           #child:Landroid/view/View;
    .end local v20           #childWidthMeasureSpec:I
    .end local v21           #childheightMeasureSpec:I
    .end local v22           #count:I
    .end local v25           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    goto :goto_0

    .line 1478
    .restart local v3       #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .restart local v19       #child:Landroid/view/View;
    .restart local v22       #count:I
    .restart local v25       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    move/from16 v18, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v18}, Lcom/htc/launcher/CellLayout$LayoutParams;->setup(IIIIIIII)V

    goto :goto_2

    .line 1490
    .end local v3           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v19           #child:Landroid/view/View;
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsPause:Z

    .line 2329
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mIsPause:Z

    .line 2333
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1322
    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1324
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1325
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 1327
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 1328
    sub-int v5, p2, v2

    iget v6, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/htc/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 1330
    if-eqz v1, :cond_6

    iget v3, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 1331
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 1333
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    aput v8, p3, v8

    .line 1334
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    aput v5, p3, v8

    .line 1335
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    aput v8, p3, v9

    .line 1336
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    aput v5, p3, v9

    .line 1337
    :cond_3
    return-void

    .line 1324
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 1325
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v2, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    goto :goto_1

    .line 1330
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v3, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_2

    .line 1331
    .restart local v3       #xAxis:I
    :cond_7
    iget v4, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_3
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 1365
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/htc/launcher/CellLayout;->pointToCellExact(II[I)V

    .line 1366
    return-void
.end method

.method public pointToDropCell(IIII[I)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1341
    invoke-virtual {p0, p1, p2, p5}, Lcom/htc/launcher/CellLayout;->pointToCellRounded(II[I)V

    .line 1344
    iget-boolean v0, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    .line 1345
    .local v0, portrait:Z
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 1346
    .local v1, xAxis:I
    :goto_0
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 1348
    .local v2, yAxis:I
    :goto_1
    aget v3, p5, v4

    add-int/2addr v3, p3

    if-le v3, v1, :cond_0

    .line 1349
    sub-int v3, v1, p3

    aput v3, p5, v4

    .line 1351
    :cond_0
    aget v3, p5, v5

    add-int/2addr v3, p4

    if-le v3, v2, :cond_1

    .line 1352
    sub-int v3, v2, p4

    aput v3, p5, v5

    .line 1356
    :cond_1
    return-void

    .line 1345
    .end local v1           #xAxis:I
    .end local v2           #yAxis:I
    :cond_2
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    goto :goto_0

    .line 1346
    .restart local v1       #xAxis:I
    :cond_3
    iget v2, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    goto :goto_1
.end method

.method public rearrange(Lcom/htc/launcher/Draggee;IIII)V
    .locals 24
    .parameter "dragItem"
    .parameter "posX"
    .parameter "posY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2540
    const/4 v4, 0x2

    new-array v9, v4, [I

    .local v9, cellXY:[I
    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 2541
    invoke-virtual/range {v4 .. v9}, Lcom/htc/launcher/CellLayout;->pointToDropCell(IIII[I)V

    .line 2542
    const/4 v4, 0x0

    aget v12, v9, v4

    .line 2543
    .local v12, X0:I
    const/4 v4, 0x1

    aget v13, v9, v4

    .line 2544
    .local v13, Y0:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 2545
    .local v23, nDragItemCenter:[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/launcher/CellLayout;->pointToCellCenter(II[I)V

    .line 2549
    const/4 v4, 0x0

    aget v4, v23, v4

    const/4 v5, 0x1

    aget v5, v23, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/htc/launcher/CellLayout;->cellPositionChanged(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2618
    :goto_0
    return-void

    .line 2553
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 2554
    new-instance v4, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;-><init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    .line 2557
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const/16 v5, 0x1a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2559
    new-instance v21, Lcom/htc/launcher/CellInfo;

    invoke-direct/range {v21 .. v21}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 2560
    .local v21, info:Lcom/htc/launcher/CellInfo;
    move-object/from16 v0, v21

    iput v12, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2561
    move-object/from16 v0, v21

    iput v13, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2562
    move/from16 v0, p4

    move-object/from16 v1, v21

    iput v0, v1, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2563
    move/from16 v0, p5

    move-object/from16 v1, v21

    iput v0, v1, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2564
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 2565
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2567
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2568
    .local v20, coveredCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/CellLayout;->findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;)V

    .line 2571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    iput v12, v4, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    iput v13, v4, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    move/from16 v0, p4

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mDragOverInfo:Lcom/htc/launcher/CellInfo;

    move/from16 v0, p5

    iput v0, v4, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/CellLayout;->isDragOnFolder(Lcom/htc/launcher/CellInfo;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2579
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->hideDropArea()V

    goto/16 :goto_0

    .line 2581
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/launcher/CellLayout;->calculateRearrangeCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2587
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/CellLayout;->getMergeableItem(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/CellInfo;)Lcom/htc/launcher/CellInfo;

    move-result-object v22

    .line 2588
    .local v22, mergeableCell:Lcom/htc/launcher/CellInfo;
    const-string v4, "CellLayout"

    const-string v5, "rearrange: !calculateRearrangeCells{mergableCell = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-static {v4, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2589
    if-eqz v22, :cond_3

    .line 2590
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    check-cast v11, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .line 2591
    .local v11, fxItem:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    const/4 v4, 0x0

    aget v14, v23, v4

    const/4 v4, 0x1

    aget v15, v23, v4

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/htc/launcher/CellLayout;->onDragOverShortcut(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;IIII)V

    goto/16 :goto_0

    .line 2594
    .end local v11           #fxItem:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v14, p0

    move v15, v12

    move/from16 v16, v13

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-direct/range {v14 .. v19}, Lcom/htc/launcher/CellLayout;->showDropArea(IIIIZ)V

    goto/16 :goto_0

    .line 2599
    .end local v22           #mergeableCell:Lcom/htc/launcher/CellInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    if-eqz v4, :cond_5

    .line 2600
    const-string v4, "CellLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDragOverItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/launcher/CellLayout;->m_dragOverItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 2605
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/CellLayout;->clearDragOverItem()V

    .line 2609
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/CellLayout;->getMergeableItem(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/CellInfo;)Lcom/htc/launcher/CellInfo;

    move-result-object v22

    .line 2610
    .restart local v22       #mergeableCell:Lcom/htc/launcher/CellInfo;
    if-eqz v22, :cond_7

    .line 2611
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    check-cast v11, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .line 2612
    .restart local v11       #fxItem:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    const/4 v4, 0x0

    aget v14, v23, v4

    const/4 v4, 0x1

    aget v15, v23, v4

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/htc/launcher/CellLayout;->onDragOverShortcut(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;IIII)V

    .line 2615
    .end local v11           #fxItem:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const/16 v6, 0x1a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2617
    const/16 v19, 0x1

    move-object/from16 v14, p0

    move v15, v12

    move/from16 v16, v13

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-direct/range {v14 .. v19}, Lcom/htc/launcher/CellLayout;->showDropArea(IIIIZ)V

    goto/16 :goto_0
.end method

.method public rectToCell(II)[I
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1740
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/htc/launcher/CellLayout;->rectToCell(II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1964
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1966
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 1967
    new-instance v0, Lcom/htc/launcher/CellInfo;

    invoke-direct {v0}, Lcom/htc/launcher/CellInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->mCellInfo:Lcom/htc/launcher/CellInfo;

    .line 1968
    return-void
.end method

.method public removeItem(Lcom/htc/launcher/Draggee;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 1614
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/FxItem;

    if-eqz v3, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return v2

    .line 1617
    :cond_1
    invoke-interface {p1}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1618
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Lcom/htc/launcher/LegacyLayout;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 1619
    check-cast v0, Lcom/htc/launcher/LegacyLayout;

    .line 1620
    .local v0, ll:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->fxDetach()V

    .line 1622
    .end local v0           #ll:Lcom/htc/launcher/LegacyLayout;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1623
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 990
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 991
    if-eqz p1, :cond_0

    .line 992
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 993
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 994
    invoke-virtual {p0, v0}, Lcom/htc/launcher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 996
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method restoreFocus(III)Z
    .locals 2
    .parameter "cellX"
    .parameter "cellY"
    .parameter "id"

    .prologue
    .line 932
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/launcher/CellLayout;->findViewByCellAndId(III)Landroid/view/View;

    move-result-object v0

    .line 933
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 934
    const/4 v1, 0x0

    .line 937
    :goto_0
    return v1

    .line 936
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 937
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public restoreRemovedChildren()V
    .locals 2

    .prologue
    .line 2128
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    if-nez v1, :cond_0

    .line 2134
    :goto_0
    return-void

    .line 2130
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2131
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 2130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2133
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    goto :goto_0
.end method

.method public revertRearrangedCells()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2622
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/htc/launcher/CellLayout;->revertRearrangedCells(IIII)V

    .line 2623
    return-void
.end method

.method public revertRearrangedCells(IIII)V
    .locals 2
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2638
    :goto_0
    return-void

    .line 2631
    :cond_0
    const-string v0, "Rearrange"

    const-string v1, "revertRearrangedCells"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2636
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2637
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/CellLayout;->performRearrange(Z)V

    goto :goto_0
.end method

.method public setCellInfoHandler(Lcom/htc/launcher/CellLayout$ICellInfoHandler;)V
    .locals 0
    .parameter "cellInfoHandler"

    .prologue
    .line 3023
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->mCellInfoHandler:Lcom/htc/launcher/CellLayout$ICellInfoHandler;

    .line 3024
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 1520
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1521
    invoke-virtual {p0, v1}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1522
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1536
    if-nez p1, :cond_0

    .line 1537
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 1520
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1543
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1544
    return-void
.end method

.method public setDragInfo(Ljava/lang/Object;)V
    .locals 0
    .parameter "dragInfo"

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->mCurrentDragInfo:Ljava/lang/Object;

    .line 1959
    return-void
.end method

.method public setOccupiedDelegation(Lcom/htc/launcher/CellLayout$OccupiedDelegation;Z)V
    .locals 0
    .parameter "delegation"
    .parameter "bPortrait"

    .prologue
    .line 2370
    if-eqz p2, :cond_0

    .line 2371
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->mPortOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    .line 2375
    :goto_0
    return-void

    .line 2373
    :cond_0
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->mLandOccupiedDelegation:Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    goto :goto_0
.end method

.method public setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V
    .locals 0
    .parameter "scrollMonitor"

    .prologue
    .line 2154
    iput-object p1, p0, Lcom/htc/launcher/CellLayout;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    .line 2155
    return-void
.end method

.method showVacant()V
    .locals 4

    .prologue
    .line 361
    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mShowVacant:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mIsVacantValid:Z

    if-nez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/CellLayout;->mShowVacant:Z

    .line 367
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantPath:Landroid/graphics/Path;

    if-nez v1, :cond_2

    .line 368
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantPath:Landroid/graphics/Path;

    .line 369
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantPaint:Landroid/graphics/Paint;

    .line 370
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    .line 371
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantInvalidRect:Landroid/graphics/Rect;

    .line 374
    :cond_2
    sget v1, Lcom/htc/launcher/CellLayout;->sCornerRadius:I

    if-gez v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 376
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/launcher/CellLayout;->sCornerRadius:I

    .line 377
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/launcher/CellLayout;->sAvailableBoundaryColor:I

    .line 378
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/launcher/CellLayout;->sOccupiedAreaColor:I

    .line 379
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mContext:Landroid/content/Context;

    const-string v2, "app_selection_highlight"

    const v3, 0x7f080011

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/custom/CustomResourceUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/launcher/CellLayout;->sDropCellColor:I

    .line 380
    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/launcher/CellLayout;->sLineWidth:I

    .line 383
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_3
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/launcher/CellLayout;->mVacantPath:Landroid/graphics/Path;

    invoke-direct {p0, v1, v2}, Lcom/htc/launcher/CellLayout;->getCellsBoundaryPath(Ljava/util/List;Landroid/graphics/Path;)V

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacant:Lcom/htc/launcher/CellInfo$VacantCell;

    .line 386
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNearestVacantBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 388
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public startWidgetResize()V
    .locals 1

    .prologue
    .line 3060
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->getCurrentOccupiedDelegation()Lcom/htc/launcher/CellLayout$OccupiedDelegation;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/CellLayout$OccupiedDelegation;->getOccupiedCells()[[Z

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->mOccupied:[[Z

    .line 3061
    return-void
.end method

.method public stopAutoUpdateCellLayoutCache()V
    .locals 2

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2218
    new-instance v0, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/CellLayout$NotifyDirtyHandler;-><init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V

    iput-object v0, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2220
    return-void
.end method

.method public tempRemoveChildren()V
    .locals 4

    .prologue
    .line 2118
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 2119
    .local v1, count:I
    new-array v3, v1, [Landroid/view/View;

    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    .line 2120
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2121
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2122
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/launcher/CellLayout;->mBackupChildren:[Landroid/view/View;

    aput-object v0, v3, v2

    .line 2120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2124
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->removeAllViews()V

    .line 2125
    return-void
.end method

.method public touchInScreen(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1089
    iget-boolean v2, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 1090
    .local v1, hStartPadding:I
    :goto_0
    iget-boolean v2, p0, Lcom/htc/launcher/CellLayout;->mPortrait:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/htc/launcher/CellLayout;->mShortAxisEndPadding:I

    .line 1092
    .local v0, hEndPadding:I
    :goto_1
    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    if-le p1, v2, :cond_3

    .line 1093
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 1094
    const/4 v2, 0x0

    .line 1097
    :goto_2
    return v2

    .line 1089
    .end local v0           #hEndPadding:I
    .end local v1           #hStartPadding:I
    :cond_1
    iget v1, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    goto :goto_0

    .line 1090
    .restart local v1       #hStartPadding:I
    :cond_2
    iget v0, p0, Lcom/htc/launcher/CellLayout;->mLongAxisEndPadding:I

    goto :goto_1

    .line 1097
    .restart local v0       #hEndPadding:I
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public tryRearrangeForSpan(Lcom/htc/launcher/Draggee;IIII)Z
    .locals 12
    .parameter "dragItem"
    .parameter "posX"
    .parameter "posY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 655
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mNotifyHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v10, coveredCells:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/CellInfo;>;"
    new-instance v11, Lcom/htc/launcher/CellInfo;

    invoke-direct {v11}, Lcom/htc/launcher/CellInfo;-><init>()V

    .line 659
    .local v11, currentCell:Lcom/htc/launcher/CellInfo;
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mCellXY:[I

    .local v6, cellXY:[I
    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 660
    invoke-virtual/range {v1 .. v6}, Lcom/htc/launcher/CellLayout;->pointToDropCell(IIII[I)V

    .line 661
    const/4 v1, 0x0

    aget v8, v6, v1

    .line 662
    .local v8, cellX:I
    const/4 v1, 0x1

    aget v9, v6, v1

    .line 664
    .local v9, cellY:I
    iput v8, v11, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 665
    iput v9, v11, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 666
    move/from16 v0, p4

    iput v0, v11, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 667
    move/from16 v0, p5

    iput v0, v11, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 668
    iput-object p1, v11, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    .line 670
    const-string v1, "Rearrange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRearrangeForSpan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/launcher/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-direct {p0, v11, v10}, Lcom/htc/launcher/CellLayout;->findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;)V

    .line 675
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mRearrangeCells:Ljava/util/ArrayList;

    invoke-virtual {p0, v11, v10, v1}, Lcom/htc/launcher/CellLayout;->calculateRearrangeCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "Rearrange"

    const-string v2, "tryRearrangeForSpan performRearrange"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/launcher/CellLayout;->performRearrange(Z)V

    .line 678
    new-instance v7, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-direct {v7}, Lcom/htc/launcher/CellInfo$VacantCell;-><init>()V

    .line 679
    .local v7, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iput v8, v7, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 680
    iput v9, v7, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 681
    move/from16 v0, p4

    iput v0, v7, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 682
    move/from16 v0, p5

    iput v0, v7, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 683
    iget-object v1, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    const/4 v1, 0x1

    .line 687
    .end local v7           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCellLayoutCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2007
    return-void
.end method

.method public updateOrientation(Z)V
    .locals 4
    .parameter "portrait"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2078
    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2079
    iput-object v3, p0, Lcom/htc/launcher/CellLayout;->mScreensCanvas:Landroid/graphics/Canvas;

    .line 2080
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2083
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2084
    .local v0, CellParams:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2085
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2087
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mShortAxisCells:I

    .line 2088
    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mLongAxisCells:I

    .line 2089
    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mLongAxisStartPadding:I

    .line 2090
    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mLongAxisEndPadding:I

    .line 2091
    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mShortAxisStartPadding:I

    .line 2092
    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mShortAxisEndPadding:I

    .line 2093
    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mCellWidth:I

    .line 2094
    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mCellHeight:I

    .line 2095
    if-eqz p1, :cond_0

    .line 2096
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mButtonBarHeight:I

    .line 2113
    :goto_0
    invoke-direct {p0}, Lcom/htc/launcher/CellLayout;->measureGapSize()V

    .line 2114
    return-void

    .line 2098
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/launcher/CellLayout;->mButtonBarHeight:I

    goto :goto_0
.end method

.method public updateScreenIndex(I)V
    .locals 5
    .parameter "currentIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2143
    invoke-virtual {p0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 2144
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2145
    invoke-virtual {p0, v2}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2146
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2147
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/htc/launcher/ItemInfo;

    if-eqz v4, :cond_0

    .line 2148
    check-cast v3, Lcom/htc/launcher/ItemInfo;

    .end local v3           #tag:Ljava/lang/Object;
    iput p1, v3, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 2144
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2151
    .end local v1           #childView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public updateVacant(IIII)V
    .locals 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 282
    iget-boolean v6, p0, Lcom/htc/launcher/CellLayout;->mIsVacantValid:Z

    if-eqz v6, :cond_0

    .line 326
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    if-nez v6, :cond_1

    .line 286
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    .line 297
    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v6, v5}, Lcom/htc/launcher/CellLayout;->getOccupied([ZZ)[[Z

    move-result-object v2

    .line 300
    .local v2, occupied:[[Z
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    .line 301
    move v0, p1

    .local v0, i:I
    :goto_1
    add-int v6, p1, p3

    if-ge v0, v6, :cond_5

    .line 302
    array-length v6, v2

    if-lt v0, v6, :cond_3

    .line 303
    const-string v6, "CellLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Draggee out of bound: cx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_3
    move v1, p2

    .local v1, j:I
    :goto_2
    add-int v6, p2, p4

    if-ge v1, v6, :cond_2

    .line 307
    aget-object v6, v2, v0

    array-length v6, v6

    if-lt v1, v6, :cond_4

    .line 308
    const-string v6, "CellLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Draggee out of bound: cy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 311
    :cond_4
    aget-object v6, v2, v0

    aput-boolean v4, v6, v1

    goto :goto_3

    .line 317
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_5
    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    .line 318
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->mhasRearrangedVacant:Z

    .line 324
    :goto_4
    iget-object v4, p0, Lcom/htc/launcher/CellLayout;->mVacantCells:Ljava/util/List;

    invoke-virtual {p0, v4, p3, p4}, Lcom/htc/launcher/CellLayout;->findVacantCellsForSpan(Ljava/util/List;II)V

    .line 325
    iput-boolean v5, p0, Lcom/htc/launcher/CellLayout;->mIsVacantValid:Z

    goto/16 :goto_0

    .line 320
    :cond_6
    invoke-virtual {p0, p3, p4}, Lcom/htc/launcher/CellLayout;->findRearrangeCandiatesForSpan(II)Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v3

    .line 321
    .local v3, vCell:Lcom/htc/launcher/CellInfo$VacantCell;
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    iput-boolean v4, p0, Lcom/htc/launcher/CellLayout;->mhasRearrangedVacant:Z

    goto :goto_4
.end method

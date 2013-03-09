.class public Lcom/htc/painting/engine/HtcPaintingView;
.super Landroid/widget/RelativeLayout;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/IStrokeNotifyPaintingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;
    }
.end annotation


# static fields
.field private static final INVALIDATE_TIMEOUT:I = 0x32

.field private static final MSG_INVALIDATE_THIS:I = 0x65b9aa

.field private static final MSG_PREPARE_CACHE:I = 0x65b9ab

.field private static final MSG_SHOW_PROGRESS:I = 0x65b9ac

.field public static final NO_SEPARATOR:I = -0x1

.field private static final SHOW_PERFORMANCE_PROPERTY:Ljava/lang/String; = "paintingview.showperformance"

.field private static final SHOW_PROGRESS_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HtcPaintingView"

.field private static final sResetCount:I = 0xa

.field private static sSeparatorPaint:Landroid/graphics/Paint;


# instance fields
.field mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field private volatile mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field private mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

.field private mCacheRatio:[F

.field private mCacheState:I

.field private mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

.field private mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

.field private mDisplayAlphaPaint:Landroid/graphics/Paint;

.field private mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

.field private mDrawringRect:Landroid/graphics/RectF;

.field protected mEnableEditMode:Z

.field private mEnableTouchPainting:Z

.field mEventCollectCount:J

.field mEventDispatchAccumulateTime:J

.field mEventDispatchTime:J

.field mFps:J

.field mFpsCollectcount:J

.field private mHandler:Landroid/os/Handler;

.field private mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorPos:Landroid/graphics/PointF;

.field private mIsEnable:Z

.field private mIsInterceptPenEvent:Z

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mOnDrawTime:J

.field mOnEventQueue:J

.field mOnEventQueueAccumulate:J

.field mOnRender:J

.field mOnRenderAccumulate:J

.field private mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

.field protected mPaintingViewListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mPartialInvalidate:Z

.field private mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

.field private mPerformanceInfo:Landroid/widget/TextView;

.field mPreviousDrawTime:J

.field mPreviousEventTime:J

.field private mProgress:Landroid/widget/ProgressBar;

.field mSelectionStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

.field private mSeparatorDist:I

.field private mShowEraserIndicator:Z

.field private mShowLoadingCursor:Z

.field private mShowPerformanceInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 86
    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    .line 90
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 91
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 92
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 93
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 94
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 96
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 102
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 103
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 104
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 106
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 108
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 109
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 110
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 111
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    .line 120
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 121
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 122
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 123
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 124
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 125
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 127
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    .line 448
    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    .line 550
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 551
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 552
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 553
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 1481
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1482
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1483
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1484
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1485
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1486
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1487
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1488
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 2623
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 86
    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    .line 90
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 91
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 92
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 93
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 94
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 96
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 102
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 103
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 104
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 106
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 108
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 109
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 110
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 111
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    .line 120
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 121
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 122
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 123
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 124
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 125
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 127
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    .line 448
    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    .line 550
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 551
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 552
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 553
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 1481
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1482
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1483
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1484
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1485
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1486
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1487
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1488
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 2623
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 86
    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    .line 90
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 91
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 92
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 93
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 94
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 96
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 102
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 103
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 104
    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 106
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 108
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 109
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 110
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 111
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    .line 120
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 121
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 122
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 123
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 124
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 125
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 127
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    .line 448
    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    .line 550
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 551
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 552
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 553
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 1481
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1482
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1483
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1484
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1485
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1486
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1487
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1488
    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 2623
    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/HtcPaintingView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->updateSeletion(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/painting/engine/HtcPaintingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    return-void
.end method

.method private checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1761
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 1762
    .local v2, id:I
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5, v2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v4

    .line 1763
    .local v4, sg:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1764
    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1768
    .end local v2           #id:I
    .end local v4           #sg:Lcom/htc/painting/engine/StrokeGroup;
    :goto_1
    return-object v4

    .line 1761
    .restart local v2       #id:I
    .restart local v4       #sg:Lcom/htc/painting/engine/StrokeGroup;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1768
    .end local v2           #id:I
    .end local v4           #sg:Lcom/htc/painting/engine/StrokeGroup;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createHoverCirclePaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2252
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2253
    .local v0, result:Landroid/graphics/Paint;
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2254
    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2255
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2256
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2257
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2258
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2259
    return-object v0
.end method

.method private drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V
    .locals 23
    .parameter "canvas"
    .parameter "foregroundData"
    .parameter "backgroundData"
    .parameter "p"

    .prologue
    .line 739
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 745
    .local v16, refRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 746
    .local v10, curRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v14

    .line 749
    .local v14, matches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v17

    .line 751
    .local v17, result:Landroid/graphics/Matrix;
    if-eqz v14, :cond_7

    .line 753
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 754
    .local v11, delta:Landroid/graphics/Matrix;
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 755
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 759
    new-instance v13, Landroid/graphics/RectF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 761
    .local v13, foregroundRect:Landroid/graphics/RectF;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 762
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 765
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v19

    if-nez v19, :cond_4

    const/4 v12, 0x1

    .line 766
    .local v12, drawBackground:Z
    :goto_1
    if-eqz v12, :cond_0

    .line 767
    monitor-enter p3

    .line 768
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v8

    .line 769
    .local v8, bgResult:Landroid/graphics/Matrix;
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 770
    .local v7, bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    invoke-static {v10, v7}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v6

    .line 771
    .local v6, bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    if-eqz v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 772
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 773
    .local v5, bgDelta:Landroid/graphics/Matrix;
    const/16 v19, 0x1

    aget-object v19, v6, v19

    const/16 v20, 0x0

    aget-object v20, v6, v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 774
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 775
    new-instance v4, Landroid/graphics/RectF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 776
    .local v4, backgroundRect:Landroid/graphics/RectF;
    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 780
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDummyData()Z

    move-result v19

    if-nez v19, :cond_2

    .line 782
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_5

    .line 783
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 804
    :cond_2
    :goto_2
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 805
    .local v9, bmpR:Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 806
    .local v18, resultInverse:Landroid/graphics/Matrix;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 807
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 809
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 810
    .local v15, r:Landroid/graphics/Rect;
    invoke-virtual {v9, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 813
    .end local v4           #backgroundRect:Landroid/graphics/RectF;
    .end local v5           #bgDelta:Landroid/graphics/Matrix;
    .end local v9           #bmpR:Landroid/graphics/RectF;
    .end local v15           #r:Landroid/graphics/Rect;
    .end local v18           #resultInverse:Landroid/graphics/Matrix;
    :cond_3
    monitor-exit p3

    goto/16 :goto_0

    .end local v6           #bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    .end local v7           #bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .end local v8           #bgResult:Landroid/graphics/Matrix;
    :catchall_0
    move-exception v19

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 765
    .end local v12           #drawBackground:Z
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 787
    .restart local v4       #backgroundRect:Landroid/graphics/RectF;
    .restart local v5       #bgDelta:Landroid/graphics/Matrix;
    .restart local v6       #bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    .restart local v7       #bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .restart local v8       #bgResult:Landroid/graphics/Matrix;
    .restart local v12       #drawBackground:Z
    :cond_5
    :try_start_1
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_6

    .line 788
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 792
    :cond_6
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_2

    .line 797
    const-string v19, "HtcPaintingView"

    const-string v20, " Totally overlay, ignore drawing background "

    invoke-static/range {v19 .. v20}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 818
    .end local v4           #backgroundRect:Landroid/graphics/RectF;
    .end local v5           #bgDelta:Landroid/graphics/Matrix;
    .end local v6           #bgMatches:[Lcom/htc/painting/engine/ViewPortSnapShot;
    .end local v7           #bgRefRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    .end local v8           #bgResult:Landroid/graphics/Matrix;
    .end local v11           #delta:Landroid/graphics/Matrix;
    .end local v12           #drawBackground:Z
    .end local v13           #foregroundRect:Landroid/graphics/RectF;
    :cond_7
    const-string v19, "HtcPaintingView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unable to find matching recrods, don\'t draw "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 634
    const-string v13, "drawInternal"

    .line 636
    .local v13, drawTag:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    const-string v2, "HtcPaintingView"

    const-string v3, "HtcPaintingView is not initialized"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_0
    return-void

    .line 642
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v12

    .line 643
    .local v12, doPainting:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 645
    .local v9, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-eqz v12, :cond_6

    .line 646
    if-nez v9, :cond_5

    .line 647
    const-string v2, "HtcPaintingView"

    const-string v3, "Dopainting, no cached bitmap"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    .line 675
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    if-eqz v2, :cond_4

    .line 677
    const/high16 v20, 0x3f80

    .line 678
    .local v20, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v14

    .line 679
    .local v14, groups:[I
    if-eqz v14, :cond_3

    array-length v2, v14

    if-lez v2, :cond_3

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v3, 0x0

    aget v3, v14, v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v22

    .line 681
    .local v22, vp:Lcom/htc/painting/engine/ViewPort;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v2

    mul-float v20, v20, v2

    .line 683
    .end local v22           #vp:Lcom/htc/painting/engine/ViewPort;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x4040

    sub-float/2addr v5, v6

    mul-float v5, v5, v20

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 687
    .end local v14           #groups:[I
    .end local v20           #ratio:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/painting/engine/stroke/Stroke;

    .line 689
    .local v21, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 690
    .local v8, count:I
    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

    .line 691
    .local v16, mp:Lcom/htc/painting/engine/MotionPoint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 692
    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 694
    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #mp:Lcom/htc/painting/engine/MotionPoint;
    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

    .line 695
    .restart local v16       #mp:Lcom/htc/painting/engine/MotionPoint;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getStrokeWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 650
    .end local v8           #count:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #mp:Lcom/htc/painting/engine/MotionPoint;
    .end local v21           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 653
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 655
    .local v17, now:J
    if-eqz v9, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget-wide v10, v2, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    .line 659
    .local v10, dirtyTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V

    .line 660
    invoke-virtual {v9}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getModifyTime()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-gez v2, :cond_7

    .line 661
    const-string v2, "Not painting, draw cacheBitmap on canvas"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :cond_7
    sub-long v2, v17, v10

    const-wide/16 v5, 0x32

    cmp-long v2, v2, v5

    if-gez v2, :cond_8

    .line 665
    const-string v2, "Not painting, someone just got dirty, do redraw strokes just yet, use cache for now"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    const v3, 0x65b9aa

    const-wide/16 v5, 0x32

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 669
    :cond_8
    const-string v2, "Not painting, dirty time out, draw cached for now and request new"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto/16 :goto_0

    .line 701
    .end local v10           #dirtyTime:J
    .end local v17           #now:J
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    if-lez v2, :cond_0

    .line 704
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v19, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mLeft:I

    int-to-float v3, v3

    aput v3, v19, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mTop:I

    int-to-float v3, v3

    aput v3, v19, v2

    .line 705
    .local v19, orignalPoint:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget-object v2, v2, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 706
    const/4 v2, 0x1

    aget v4, v19, v2

    .line 707
    .local v4, offsetY:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    .line 709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mLeft:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mRight:I

    int-to-float v5, v2

    sget-object v7, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private generateCacheKey()J
    .locals 8

    .prologue
    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1953
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v6}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1957
    .local v5, snapshots:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    .line 1959
    .local v3, painting:Lcom/htc/painting/engine/HtcPainting;
    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    .line 1969
    :goto_0
    return-wide v6

    .line 1962
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/ViewPortSnapShot;

    .line 1963
    .local v4, snapshot:Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 1966
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    const-string v6, " matrix:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1967
    const-string v6, " rect:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1969
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v4           #snapshot:Lcom/htc/painting/engine/ViewPortSnapShot;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    goto :goto_0
.end method

.method private getDisplayDimen()[I
    .locals 3

    .prologue
    .line 1859
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1861
    .local v0, result:[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    aput v2, v0, v1

    .line 1862
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    aput v2, v0, v1

    .line 1863
    return-object v0
.end method

.method private getPerformanceInfoLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/16 v2, 0xa

    .line 2359
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2361
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2362
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2363
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2364
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2365
    return-object v0
.end method

.method private getProgressLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/16 v2, 0xa

    .line 266
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 269
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 270
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 271
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    return-object v0
.end method

.method private initCore()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->startWorkers()V

    .line 310
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    return-void
.end method

.method private isBackgroundCacheDrawing()Z
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCacheBitmapValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 8
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 488
    const/4 v4, 0x1

    .line 489
    .local v4, result:Z
    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCreateTime()J

    move-result-wide v0

    .line 490
    .local v0, cacheTime:J
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v6, :cond_0

    .line 497
    :goto_0
    return v5

    .line 493
    :cond_0
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getDrawingStamp()J

    move-result-wide v2

    .line 494
    .local v2, lastStamp:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    move v4, v5

    .line 496
    :goto_1
    const-string v5, "HtcPaintingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTaskEnd: isCacheBitmapValid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 497
    goto :goto_0

    .line 494
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 10
    .parameter "s"
    .parameter "vp"

    .prologue
    const/4 v2, 0x1

    .line 1892
    const-string v0, "HtcPaintingView"

    const-string v1, "partialUpdateCache"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1895
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    .line 1899
    .local v8, dimen:[I
    const/4 v0, 0x0

    aget v0, v8, v0

    if-lez v0, :cond_0

    aget v0, v8, v2

    if-lez v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    .line 1902
    .local v9, groupIds:[I
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v2, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->generateCacheKey()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->partialUpdateCache(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method private prepareCache()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1867
    const-string v0, "HtcPaintingView"

    const-string v1, "prepare cache"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1870
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1873
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    .line 1874
    .local v8, dimen:[I
    aget v0, v8, v4

    if-lez v0, :cond_0

    aget v0, v8, v5

    if-lez v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    .line 1879
    .local v9, groupIds:[I
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v5, :cond_0

    .line 1882
    aget v0, v8, v4

    aget v1, v8, v5

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->prepareFakeCache(II[I)V

    .line 1886
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->generateCacheKey()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    aget v4, v8, v4

    aget v5, v8, v5

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->createCache(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;IILcom/htc/painting/engine/HtcPainting;[I)V

    goto :goto_0
.end method

.method private prepareFakeCache(II[I)V
    .locals 15
    .parameter "width"
    .parameter "height"
    .parameter "groupIds"

    .prologue
    .line 1928
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v1, :cond_0

    .line 1931
    move-object/from16 v0, p3

    array-length v1, v0

    new-array v13, v1, [Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    .line 1932
    .local v13, records:[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1933
    .local v6, now:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v14, v1, :cond_3

    .line 1934
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    aget v2, p3, v14

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    .line 1935
    .local v3, viewport:Lcom/htc/painting/engine/ViewPort;
    if-eqz v3, :cond_2

    new-instance v1, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    aget v2, p3, v14

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;-><init>(ILcom/htc/painting/engine/ViewPort;JJ)V

    aput-object v1, v13, v14

    .line 1933
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1939
    .end local v3           #viewport:Lcom/htc/painting/engine/ViewPort;
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v1, :cond_0

    .line 1940
    new-instance v8, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;-><init>(IIII[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V

    .line 1944
    .local v8, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setIsDummyData(Z)V

    .line 1945
    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    goto :goto_0
.end method

.method private processEvent(Landroid/view/MotionEvent;)V
    .locals 27
    .parameter "event"

    .prologue
    .line 1503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1504
    .local v12, eventStart:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 1508
    .local v10, N:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 1509
    .local v8, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-nez v8, :cond_1

    const/4 v9, 0x0

    .line 1512
    .local v9, canvas:Landroid/graphics/Canvas;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1653
    :cond_0
    :goto_1
    return-void

    .line 1509
    .end local v9           #canvas:Landroid/graphics/Canvas;
    :cond_1
    invoke-virtual {v8}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    goto :goto_0

    .line 1514
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetEventData()V

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget v3, v3, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_2

    .line 1520
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 1524
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1528
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 1529
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 1531
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->startRecordUndo()V

    .line 1532
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1540
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget v3, v3, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 1541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1542
    .local v21, renderStart:J
    if-eqz v10, :cond_8

    move/from16 v18, v10

    .line 1544
    .local v18, pointCount:I
    :goto_2
    const/4 v15, 0x0

    .local v15, j:I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_f

    .line 1546
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_9

    if-nez v10, :cond_9

    .line 1547
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1548
    .local v4, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1549
    .local v5, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    .line 1550
    .local v6, p:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    .line 1557
    .local v7, s:F
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v3, :cond_4

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 1560
    :cond_4
    const/16 v17, 0x1

    .line 1561
    .local v17, outOfBoundary:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v11

    .line 1565
    .local v11, currentRect:Landroid/graphics/RectF;
    invoke-virtual {v11, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v17, 0x1

    .line 1567
    .end local v11           #currentRect:Landroid/graphics/RectF;
    :cond_5
    :goto_5
    if-eqz v17, :cond_6

    .line 1569
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v16

    .line 1570
    .local v16, nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_b

    const/4 v14, 0x1

    .line 1573
    .local v14, inAnotherGroup:Z
    :goto_6
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_c

    .line 1598
    .end local v14           #inAnotherGroup:Z
    .end local v16           #nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    :cond_6
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v3, p0

    .line 1599
    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingMove(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    .line 1544
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1542
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v6           #p:F
    .end local v7           #s:F
    .end local v15           #j:I
    .end local v17           #outOfBoundary:Z
    .end local v18           #pointCount:I
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1552
    .restart local v15       #j:I
    .restart local v18       #pointCount:I
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    .line 1553
    .restart local v4       #x:F
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    .line 1554
    .restart local v5       #y:F
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v6

    .line 1555
    .restart local v6       #p:F
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v7

    .restart local v7       #s:F
    goto/16 :goto_4

    .line 1565
    .restart local v11       #currentRect:Landroid/graphics/RectF;
    .restart local v17       #outOfBoundary:Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    .line 1570
    .end local v11           #currentRect:Landroid/graphics/RectF;
    .restart local v16       #nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 1575
    .restart local v14       #inAnotherGroup:Z
    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->startRecordUndo()V

    .line 1578
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v3, p0

    .line 1580
    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1584
    :cond_d
    const-string v3, "HtcPaintingView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "out of boundary, group id : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " pos, x:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " y : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1588
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 1593
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 1605
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v6           #p:F
    .end local v7           #s:F
    .end local v14           #inAnotherGroup:Z
    .end local v16           #nextGroup:Lcom/htc/painting/engine/StrokeGroup;
    .end local v17           #outOfBoundary:Z
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1607
    .local v19, renderEnd:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1608
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v3, v23, v25

    if-eqz v3, :cond_10

    .line 1609
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    move-wide/from16 v25, v0

    sub-long v25, v12, v25

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1611
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    sub-long v25, v19, v21

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1612
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    int-to-long v0, v10

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1613
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1615
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1617
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1618
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1621
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0xa

    cmp-long v3, v23, v25

    if-nez v3, :cond_10

    .line 1622
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetEventData()V

    .line 1626
    :cond_10
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    goto/16 :goto_1

    .line 1631
    .end local v15           #j:I
    .end local v18           #pointCount:I
    .end local v19           #renderEnd:J
    .end local v21           #renderStart:J
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1633
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v3, :cond_11

    .line 1634
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    .line 1635
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 1638
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 1640
    :cond_12
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->Standard:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 1641
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 1643
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1644
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v3, v23, v25

    if-eqz v3, :cond_0

    .line 1645
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1647
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1648
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    goto/16 :goto_1

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private redrawDirtyRegion(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 10
    .parameter "s"
    .parameter "vp"

    .prologue
    const/4 v2, 0x1

    .line 1909
    const-string v0, "HtcPaintingView"

    const-string v1, "redrawDirtyRegion"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1912
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    .line 1916
    .local v8, dimen:[I
    const/4 v0, 0x0

    aget v0, v8, v0

    if-lez v0, :cond_0

    aget v0, v8, v2

    if-lez v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    .line 1919
    .local v9, groupIds:[I
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v2, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->generateCacheKey()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v5

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/painting/engine/CacheBitmapWorker;->addPartialUpdateTask(JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method private resetCache()V
    .locals 2

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v1}, Lcom/htc/painting/engine/CacheBitmapWorker;->cancelAll()V

    .line 1118
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 1119
    .local v0, temp:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    .line 1120
    :cond_0
    return-void
.end method

.method private resetEventData()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1491
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    .line 1492
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    .line 1493
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    .line 1494
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    .line 1495
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    .line 1496
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    .line 1497
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    .line 1498
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    .line 1499
    return-void
.end method

.method private resetFpsData()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 557
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 558
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 559
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 560
    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 561
    return-void
.end method

.method private setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 469
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    .line 472
    const/4 p1, 0x0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v1, :cond_2

    .line 476
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 477
    .local v0, temp:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 478
    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    .line 480
    .end local v0           #temp:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    :cond_2
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 481
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v1, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->setRefData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    .line 482
    :cond_3
    const-string v1, "HtcPaintingView"

    const-string v2, "updateCacheDataIfValid: mCacheBmpData updated"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private setShowPerformanceInfo(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2349
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2350
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2355
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetFpsData()V

    .line 2356
    return-void

    .line 2352
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v12, 0x8

    const/4 v11, -0x1

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 190
    new-instance v5, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v7, 0x1010287

    invoke-direct {v5, p1, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    .line 192
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getProgressLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 194
    .local v1, layout:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5, v1}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v5, Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-direct {v5, p1}, Lcom/htc/painting/engine/edit/StrokeEditView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    .line 197
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {v5, v12}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    .line 199
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    new-instance v6, Lcom/htc/painting/engine/HtcPaintingView$2;

    invoke-direct {v6, p0}, Lcom/htc/painting/engine/HtcPaintingView$2;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    invoke-virtual {v5, v6}, Lcom/htc/painting/engine/edit/StrokeEditView;->setOnSelectionListener(Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;)V

    .line 222
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v2, lo:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {p0, v5, v2}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    move-object v0, p1

    .line 228
    .local v0, ctxt:Landroid/content/Context;
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/painting/engine/HtcPaintingView$3;

    invoke-direct {v5, p0, v0}, Lcom/htc/painting/engine/HtcPaintingView$3;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    .local v3, loadPenThread:Ljava/lang/Thread;
    const-string v5, "Load Pens"

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 237
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 240
    invoke-virtual {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->setWillNotDraw(Z)V

    .line 242
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->createHoverCirclePaint()Landroid/graphics/Paint;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 243
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    .line 245
    const-string v5, "paintingview.showperformance"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    .line 247
    iget-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v5, :cond_0

    .line 248
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    .line 249
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getPerformanceInfoLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 250
    .local v4, para:Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v4}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setupPerformanceInfoStyle(Landroid/widget/TextView;)V

    .line 252
    invoke-direct {p0, v9}, Lcom/htc/painting/engine/HtcPaintingView;->setShowPerformanceInfo(Z)V

    .line 255
    .end local v4           #para:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v5, Lcom/htc/painting/engine/CacheBitmapWorker;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    aget v7, v7, v9

    invoke-direct {v5, v6, v7}, Lcom/htc/painting/engine/CacheBitmapWorker;-><init>(FF)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 257
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v6, v7, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 258
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    return-void

    .line 257
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private setupPerformanceInfoStyle(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2263
    if-eqz p1, :cond_0

    .line 2264
    const/high16 v0, 0x41c0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2265
    const/high16 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2266
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2268
    :cond_0
    return-void
.end method

.method private startWorkers()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->start()V

    .line 320
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$4;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$4;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 343
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$5;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$5;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    .line 429
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$6;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$6;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    .line 446
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 447
    return-void
.end method

.method private stopWorkers()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 503
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->stop()V

    .line 504
    return-void
.end method

.method private strokeGroupOnCacheBmpData(Lcom/htc/painting/engine/ViewPortSnapShot;)Z
    .locals 6
    .parameter "groupSnapshot"

    .prologue
    const/4 v4, 0x0

    .line 718
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    .line 719
    .local v0, data:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;
    if-nez v0, :cond_0

    .line 731
    :goto_0
    return v4

    .line 721
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 722
    .local v1, dataArea:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getRect(Landroid/graphics/RectF;)V

    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, result:Z
    if-eqz p1, :cond_2

    .line 726
    invoke-virtual {p1}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 727
    .local v3, viewPortArea:Landroid/graphics/RectF;
    if-eqz v3, :cond_1

    if-nez v1, :cond_3

    :cond_1
    move v2, v4

    .end local v3           #viewPortArea:Landroid/graphics/RectF;
    :cond_2
    :goto_1
    move v4, v2

    .line 731
    goto :goto_0

    .line 727
    .restart local v3       #viewPortArea:Landroid/graphics/RectF;
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V
    .locals 7
    .parameter "data"
    .parameter "canvas"
    .parameter "state"

    .prologue
    .line 1734
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 1735
    .local v0, c:Landroid/graphics/Canvas;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1736
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1737
    .local v1, dirtyRect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3, v0, v4, v1, p3}, Lcom/htc/painting/engine/HtcPainting;->PaintingEnd(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Landroid/graphics/RectF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v2

    .line 1739
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_0

    .line 1740
    iget-boolean v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v3, :cond_3

    .line 1741
    invoke-direct {p0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1748
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1749
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    .line 1750
    const-string v3, "HtcPaintingView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTaskEnd: triggerPaintingEnd setDrawingStamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v5}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    .end local v1           #dirtyRect:Landroid/graphics/RectF;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    return-void

    .line 1734
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    goto :goto_0

    .line 1743
    .restart local v0       #c:Landroid/graphics/Canvas;
    .restart local v1       #dirtyRect:Landroid/graphics/RectF;
    .restart local v2       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_1
.end method

.method private triggerPaintingMove(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "data"
    .parameter "canvas"

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p6, :cond_1

    .line 1708
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1709
    .local v8, dirtyRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v2, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/htc/painting/engine/HtcPainting;->PaintingMove(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v11

    .line 1713
    .local v11, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v11, :cond_0

    .line 1714
    iget-boolean v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v1, :cond_2

    .line 1715
    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1720
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    .line 1721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1722
    .local v9, now:J
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    .line 1725
    .end local v8           #dirtyRect:Landroid/graphics/RectF;
    .end local v9           #now:J
    .end local v11           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    return-void

    .line 1717
    .restart local v8       #dirtyRect:Landroid/graphics/RectF;
    .restart local v11       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_2
    invoke-direct {p0, v11}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_0
.end method

.method private triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "data"
    .parameter "canvas"

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p6, :cond_2

    .line 1666
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    .line 1667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1668
    .local v9, now:J
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    .line 1675
    .end local v9           #now:J
    :cond_0
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1676
    .local v8, dirtyRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v2, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/htc/painting/engine/HtcPainting;->PaintingStart(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v11

    .line 1680
    .local v11, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v11, :cond_1

    .line 1681
    iget-boolean v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v1, :cond_3

    .line 1682
    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1689
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isBackgroundCacheDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1690
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    invoke-direct {p0, v11, v1}, Lcom/htc/painting/engine/HtcPaintingView;->redrawDirtyRegion(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    .line 1694
    .end local v8           #dirtyRect:Landroid/graphics/RectF;
    .end local v11           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_2
    return-void

    .line 1684
    .restart local v8       #dirtyRect:Landroid/graphics/RectF;
    .restart local v11       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_3
    invoke-direct {p0, v11}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/RectF;)V
    .locals 8
    .parameter "dirtyRect"

    .prologue
    const/high16 v7, 0x3f00

    .line 1771
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1772
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v2

    .line 1773
    .local v2, viewport:Lcom/htc/painting/engine/ViewPort;
    const/4 v0, 0x0

    .line 1774
    .local v0, matrix:Landroid/graphics/Matrix;
    if-eqz v2, :cond_0

    .line 1775
    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1776
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1777
    .local v1, r:Landroid/graphics/RectF;
    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1780
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1781
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1783
    :cond_1
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate(IIII)V

    .line 1785
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #r:Landroid/graphics/RectF;
    .end local v2           #viewport:Lcom/htc/painting/engine/ViewPort;
    :cond_2
    return-void
.end method

.method private updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 1
    .parameter "data"

    .prologue
    .line 456
    const/4 v0, 0x1

    .line 457
    .local v0, valid:Z
    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    .line 464
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto :goto_0
.end method

.method private updateDrawingInfo()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo(Z)V

    .line 606
    return-void
.end method

.method private updateDrawingInfo(Z)V
    .locals 8
    .parameter "forceUpdate"

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_1

    .line 610
    const-string v6, "HtcPaintingView"

    const-string v7, "HtcPaintingView is not initialized"

    invoke-static {v6, v7}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v6}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .line 617
    .local v0, groupIds:[I
    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 619
    const/4 v5, 0x0

    .line 620
    .local v5, viewport:Lcom/htc/painting/engine/ViewPort;
    array-length v6, v0

    new-array v4, v6, [Lcom/htc/painting/engine/ViewPortSnapShot;

    .line 621
    .local v4, records:[Lcom/htc/painting/engine/ViewPortSnapShot;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 622
    .local v2, now:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 623
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    .line 624
    if-eqz v5, :cond_2

    .line 625
    new-instance v6, Lcom/htc/painting/engine/ViewPortSnapShot;

    aget v7, v0, v1

    invoke-direct {v6, v7, v5, v2, v3}, Lcom/htc/painting/engine/ViewPortSnapShot;-><init>(ILcom/htc/painting/engine/ViewPort;J)V

    aput-object v6, v4, v1

    .line 622
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_3
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v6, v4, p1}, Lcom/htc/painting/engine/DrawingInfo;->update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V

    goto :goto_0
.end method

.method private updateSeletion(Landroid/graphics/RectF;)V
    .locals 11
    .parameter "region"

    .prologue
    .line 277
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 278
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v10}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v4, v0, v3

    .line 279
    .local v4, id:I
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v10, v4}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 280
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 281
    .local v6, m:Landroid/graphics/Matrix;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v9

    .line 282
    .local v9, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/stroke/Stroke;

    .line 283
    .local v8, s:Lcom/htc/painting/engine/stroke/Stroke;
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 284
    .local v7, r:Landroid/graphics/RectF;
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 285
    invoke-virtual {p1, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 286
    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    .end local v7           #r:Landroid/graphics/RectF;
    .end local v8           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 290
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v4           #id:I
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v9           #strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_2
    return-void
.end method

.method private updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1789
    invoke-virtual {p1}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1790
    .local v0, strokeRect:Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    .line 1792
    .end local v0           #strokeRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const/4 v0, 0x0

    .line 1081
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->canRedo()Z

    move-result v0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v0, 0x0

    .line 1070
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->canUndo()Z

    move-result v0

    goto :goto_0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    .line 1102
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 1104
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1105
    const-string v2, "HtcPaintingView"

    const-string v3, "HtcPaintingView is not initialized"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_0
    return-void

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->clearAllStrokeGroups()V

    .line 1109
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1110
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    .line 1111
    .local v1, listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    invoke-interface {v1}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onClearAll()V

    goto :goto_0
.end method

.method public clearInkDrawingCache()V
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    .line 2336
    :cond_0
    return-void
.end method

.method public clearStrokeGroup(I)V
    .locals 3
    .parameter "groupId"

    .prologue
    .line 1828
    const-string v0, "HtcPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokeGroup groupId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :goto_0
    return-void

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->clearStrokeGroup(I)V

    .line 1834
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    .line 1835
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0
.end method

.method public clearStrokeGroups([I)V
    .locals 7
    .parameter "groupIds"

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1846
    const-string v4, "HtcPaintingView"

    const-string v5, "HtcPaintingView is not initialized"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :goto_0
    return-void

    .line 1849
    :cond_0
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 1850
    .local v2, id:I
    const-string v4, "HtcPaintingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearStrokeGroup groupId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v4, v2}, Lcom/htc/painting/engine/HtcPainting;->clearStrokeGroup(I)V

    .line 1849
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1853
    .end local v2           #id:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    .line 1854
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0
.end method

.method public clearUndoRedoHistory()V
    .locals 2

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->clearUndoManager()V

    goto :goto_0
.end method

.method public deleteStrokeGroup(I)V
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :goto_0
    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->removeStrokeGroup(I)V

    goto :goto_0
.end method

.method destoryInkCacheData()V
    .locals 1

    .prologue
    .line 2017
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    .line 2018
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1993
    const-string v0, "HtcPaintingView"

    const-string v1, "destroy htcpainting"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1995
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->destroy()V

    .line 1996
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    .line 1997
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->stopWorkers()V

    .line 1999
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2001
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/engine/DrawingInfo;->update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V

    .line 2006
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->destoryInkCacheData()V

    .line 2009
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1469
    const/4 v0, 0x1

    .line 1470
    .local v0, isPen:Z
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPaintingEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    if-eqz v2, :cond_3

    .line 1471
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->processEvent(Landroid/view/MotionEvent;)V

    .line 1472
    iget-boolean v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    if-eqz v2, :cond_2

    .line 1476
    :cond_1
    :goto_0
    return v1

    .line 1472
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1473
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1476
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "strokeId"

    .prologue
    .line 1187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V

    .line 1188
    return-void
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V
    .locals 9
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "viewport"

    .prologue
    .line 1202
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-nez v0, :cond_2

    .line 1203
    :cond_0
    const-string v0, "HtcPaintingView"

    const-string v2, "bitmap == null || groupId == null || mHtcPainting == null"

    invoke-static {v0, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_1
    :goto_0
    return-void

    .line 1206
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1207
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/engine/StrokeGroup;

    .line 1208
    .local v7, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v7, :cond_1

    .line 1210
    invoke-virtual {v7, p3}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v8

    .line 1211
    .local v8, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPainting;->draw(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;)V
    .locals 5
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "viewport"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1166
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 1167
    :cond_0
    const-string v3, "HtcPaintingView"

    const-string v4, "bitmap == null || strokeGroupIds == null"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :goto_0
    return-void

    .line 1170
    :cond_1
    new-array v0, v4, [I

    aput p2, v0, v3

    .line 1171
    .local v0, groupIds:[I
    new-array v1, v4, [Lcom/htc/painting/engine/ViewPort;

    aput-object p3, v1, v3

    .line 1172
    .local v1, ports:[Lcom/htc/painting/engine/ViewPort;
    new-instance v2, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v2, p1}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 1173
    .local v2, wrapper:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-instance v4, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v4}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;[I)V
    .locals 3
    .parameter "bitmap"
    .parameter "groupIds"

    .prologue
    .line 1145
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1146
    :cond_0
    const-string v1, "HtcPaintingView"

    const-string v2, "bitmap == null || strokeGroupIds == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_1
    new-instance v0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 1150
    .local v0, wrapper:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-instance v2, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v2}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v1, v0, p2, v2}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[ILcom/htc/painting/engine/InterruptRef;)V

    goto :goto_0
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->drawInternal(Landroid/graphics/Canvas;)V

    .line 570
    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    .line 582
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPaintingView;->drawStroke(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    .line 583
    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V
    .locals 7
    .parameter "canvas"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "viewport"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPainting;->draw(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method public enableEditMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2630
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    .line 2635
    :goto_0
    return-void

    .line 2633
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableEraseMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :goto_0
    return-void

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->enableEraseMode(Z)V

    goto :goto_0
.end method

.method public enablePainting(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 2038
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :goto_0
    return-void

    .line 2042
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2043
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 2044
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 2045
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 2047
    :cond_1
    const-string v0, "HtcPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePainting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    .line 2049
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0

    .line 2044
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_1
.end method

.method public enableTouchPainting(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2226
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    .line 2227
    return-void
.end method

.method public freezeCacheWorker()V
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->freeze()V

    .line 2650
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->interrupt()Z

    .line 2652
    :cond_0
    return-void
.end method

.method public getBoundingRectF(I)Landroid/graphics/RectF;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1982
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const/4 v0, 0x0

    .line 1985
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->getBoundingRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestedStrokeGroupCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2025
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2026
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getRequestedStrokeGroupIds()[I
    .locals 2

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const/4 v0, 0x0

    .line 1430
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getStroke(II)Ljava/lang/ref/WeakReference;
    .locals 5
    .parameter "groupId"
    .parameter "strokeID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1364
    const/4 v0, 0x0

    .line 1366
    .local v0, result:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1367
    const-string v3, "HtcPaintingView"

    const-string v4, "HtcPaintingView is not initialized"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const/4 v3, 0x0

    .line 1378
    :goto_0
    return-object v3

    .line 1370
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    .line 1371
    .local v2, sg:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v2, :cond_1

    .line 1372
    invoke-virtual {v2, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v1

    .line 1373
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v1, :cond_1

    .line 1374
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0           #result:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .end local v1           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .restart local v0       #result:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_1
    move-object v3, v0

    .line 1378
    goto :goto_0
.end method

.method public getStrokeGroupMemorySize(I)J
    .locals 2
    .parameter "groupId"

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2244
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-wide/16 v0, 0x0

    .line 2247
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupMemorySize(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x0

    .line 885
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v0

    goto :goto_0
.end method

.method public getStrokesFromReqGroup(I)Ljava/util/List;
    .locals 1
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->getStrokesFromReqGroup(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokesFromReqGroup(IZ)Ljava/util/List;
    .locals 9
    .parameter "groupId"
    .parameter "containIneffectiveStroke"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1399
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1400
    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    :goto_0
    return-object v6

    .line 1403
    :cond_1
    const/4 v3, 0x0

    .line 1404
    .local v3, inReqGroups:Z
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget v1, v0, v2

    .line 1405
    .local v1, i:I
    if-ne v1, p1, :cond_3

    .line 1406
    const/4 v3, 0x1

    .line 1410
    .end local v1           #i:I
    :cond_2
    if-nez v3, :cond_4

    .line 1411
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "this group is not requested!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1404
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1413
    .end local v1           #i:I
    :cond_4
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/StrokeGroup;

    .line 1414
    .local v5, sg:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v5, :cond_0

    .line 1415
    invoke-virtual {v5, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method public getViewPort(I)Lcom/htc/painting/engine/ViewPort;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const/4 v0, 0x0

    .line 1250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Lcom/htc/painting/engine/AbsSerializeDAO;)V
    .locals 1
    .parameter "serializeDAO"

    .prologue
    .line 300
    new-instance v0, Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/HtcPainting;-><init>(Lcom/htc/painting/engine/AbsSerializeDAO;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    .line 301
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->initCore()V

    .line 302
    return-void
.end method

.method public interceptPenEvent(Z)V
    .locals 0
    .parameter "intercept"

    .prologue
    .line 2084
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    .line 2085
    return-void
.end method

.method public isEraseModeOn()Z
    .locals 2

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1815
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const/4 v0, 0x0

    .line 1818
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->isEraseMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPainting()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaintingEnable()Z
    .locals 2

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2057
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const/4 v0, 0x0

    .line 2060
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    goto :goto_0
.end method

.method public isStrokeGroupClean(I)Z
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const/4 v0, 0x0

    .line 1351
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->isStrokeGroupClean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isStrokeGroupModified(I)Z
    .locals 2
    .parameter "groupId"

    .prologue
    .line 2279
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2280
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    const/4 v0, 0x0

    .line 2283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->isStrokeGroupModified(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1454
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 522
    .local v4, start:J
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPaintingEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->drawInternal(Landroid/graphics/Canvas;)V

    .line 524
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 525
    .local v1, now:J
    iget-boolean v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 526
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 527
    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    sub-long v8, v1, v8

    div-long/2addr v6, v8

    long-to-float v0, v6

    .line 528
    .local v0, f:F
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    long-to-float v6, v6

    add-float/2addr v6, v0

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 529
    sub-long v6, v1, v4

    long-to-float v3, v6

    .line 530
    .local v3, o:F
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    long-to-float v6, v6

    add-float/2addr v6, v3

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 531
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    .line 534
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 535
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    .line 536
    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    .line 537
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FPS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \nPaintingView OnDraw Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \nEvent Dispatch Time Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \nStroke Partial Render Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \nEvent Count in Queue Avg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetFpsData()V

    .line 544
    .end local v0           #f:F
    .end local v3           #o:F
    :cond_1
    iput-wide v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    .line 546
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2065
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2066
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2067
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2068
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2069
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p5

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2071
    if-eqz p1, :cond_0

    .line 2072
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    .line 2073
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo(Z)V

    .line 2075
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 2560
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 2561
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 2563
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 2564
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 2566
    :cond_0
    return-void

    .line 2563
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0
.end method

.method public redo()V
    .locals 9

    .prologue
    .line 935
    const/4 v3, 0x0

    .line 936
    .local v3, edit:Lcom/htc/painting/engine/undo/UndoableEdit;
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 937
    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->canRedo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 941
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v3

    .line 942
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->redo()V

    .line 943
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 944
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    .line 945
    .local v5, listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    invoke-interface {v5}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onRedo()V

    goto :goto_1

    .line 955
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    :cond_2
    if-eqz v3, :cond_4

    .line 956
    instance-of v7, v3, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 957
    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    .line 958
    .local v1, ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getUndoableEdits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    .line 959
    .local v2, e:Lcom/htc/painting/engine/undo/UndoableEdit;
    instance-of v7, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 960
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 961
    .local v0, aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_2

    .line 965
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v1           #ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    .end local v2           #e:Lcom/htc/painting/engine/undo/UndoableEdit;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    instance-of v7, v3, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_0

    move-object v6, v3

    .line 966
    check-cast v6, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 967
    .local v6, sa:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

.method public removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 2309
    return-void
.end method

.method public removeOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2193
    :cond_0
    return-void
.end method

.method public removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2212
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2213
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :goto_0
    return-void

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    goto :goto_0
.end method

.method public requestSaveStrokeGroup(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2098
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(IZ)V

    .line 2099
    return-void
.end method

.method public requestSaveStrokeGroup(IZ)V
    .locals 3
    .parameter "id"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 2110
    const-string v0, "HtcPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSaveStrokeGroup, groupId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2112
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :goto_0
    return-void

    .line 2115
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->saveGroup(IZ)V

    goto :goto_0
.end method

.method public requestSaveStrokeGroups([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 2157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroups([IZ)V

    .line 2158
    return-void
.end method

.method public requestSaveStrokeGroups([IZ)V
    .locals 7
    .parameter "ids"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 2168
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 2169
    .local v2, id:I
    const-string v4, "HtcPaintingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestSaveStrokeGroups, groupId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2170
    .end local v2           #id:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2171
    const-string v4, "HtcPaintingView"

    const-string v5, "HtcPaintingView is not initialized"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    :goto_1
    return-void

    .line 2174
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v4, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->SaveGroups([IZ)V

    goto :goto_1
.end method

.method public requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 1
    .parameter "groupIds"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 2127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    .line 2128
    return-void
.end method

.method public requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V
    .locals 2
    .parameter "groupIds"
    .parameter "key"
    .parameter "callback"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2142
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    :goto_0
    return-void

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/painting/engine/HtcPainting;->SaveGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    goto :goto_0
.end method

.method public requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z
    .locals 6
    .parameter "groupIds"
    .parameter "viewports"

    .prologue
    const/4 v5, 0x0

    .line 1266
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1267
    const-string v3, "HtcPaintingView"

    const-string v4, "HtcPaintingView is not initialized"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const/4 v3, 0x1

    new-array v2, v3, [Z

    aput-boolean v5, v2, v5

    .line 1281
    :goto_0
    return-object v2

    .line 1271
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    move-result-object v2

    .line 1272
    .local v2, returnArray:[Z
    array-length v3, v2

    new-array v0, v3, [I

    .line 1273
    .local v0, currentStrokeGroupIdArray:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1274
    aget-boolean v3, v2, v1

    if-eqz v3, :cond_1

    .line 1275
    aget v3, p1, v1

    aput v3, v0, v1

    .line 1276
    const-string v3, "HtcPaintingView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestStrokeGroups, id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1279
    :cond_2
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    .line 1280
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    const v4, 0x65b9ab

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 3
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 1295
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1296
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :goto_0
    return-void

    .line 1300
    :cond_0
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$7;

    invoke-direct {v0, p0, p4}, Lcom/htc/painting/engine/HtcPaintingView$7;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    .line 1315
    .local v0, requestCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    .line 1316
    const/4 v0, 0x0

    .line 1317
    goto :goto_0
.end method

.method public setDisplayAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1127
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1132
    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    .line 1134
    return-void
.end method

.method public setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 1
    .parameter "docViewport"

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/DrawingInfo;->setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 2602
    return-void
.end method

.method public setDrawingPartialInvalidate(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2375
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    .line 2376
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2615
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2616
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    .line 2618
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 2619
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    .line 2621
    :cond_0
    return-void

    .line 2618
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0
.end method

.method public setInkDrawingCacheRatio(FF)V
    .locals 2
    .parameter "xRatio"
    .parameter "yRatio"

    .prologue
    const/high16 v1, 0x3f80

    .line 2292
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 2293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InkDrawingCacheRatio must be greater or equal to 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2295
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2296
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 2297
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_2

    .line 2298
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/CacheBitmapWorker;->setCacheSizeRatio(FF)V

    .line 2300
    :cond_2
    return-void
.end method

.method public setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    .line 2305
    return-void
.end method

.method public setOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2182
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2183
    :cond_0
    return-void
.end method

.method public setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2201
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    :goto_0
    return-void

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    goto :goto_0
.end method

.method public setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 3
    .parameter "p"
    .parameter "defaultProperties"

    .prologue
    const/4 v2, 0x1

    .line 840
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .end local p1
    :goto_0
    return-void

    .line 845
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/painting/engine/HtcPen$EraserPen;

    if-eqz v0, :cond_2

    .line 846
    invoke-virtual {p0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    .line 847
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPainting;->set(Lcom/htc/painting/tool/pen/Pen;)V

    .line 848
    if-eqz p2, :cond_1

    .line 849
    invoke-virtual {p2, v2}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 850
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 851
    check-cast p1, Lcom/htc/painting/engine/HtcPen;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/painting/engine/HtcPen;->getDefaultWidth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 859
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0

    .line 856
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    .line 857
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->set(Lcom/htc/painting/tool/pen/Pen;)V

    goto :goto_1
.end method

.method public setSeparatorDist(I)V
    .locals 0
    .parameter "dist"

    .prologue
    .line 2610
    iput p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    .line 2611
    return-void
.end method

.method public setShowProcessingIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2344
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    .line 2345
    return-void
.end method

.method public setStrokeGroupRotation(II)Z
    .locals 2
    .parameter "groupId"
    .parameter "degree"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1445
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const/4 v0, 0x0

    .line 1449
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeGroupRotation(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0
.end method

.method public setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z
    .locals 4
    .parameter "groupId"
    .parameter "viewPort"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1229
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1230
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-array v2, v3, [I

    aput p1, v2, v0

    new-array v3, v3, [Lcom/htc/painting/engine/ViewPort;

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/engine/HtcPainting;->setViewPorts([I[Lcom/htc/painting/engine/ViewPort;)Z

    move-result v0

    goto :goto_0
.end method

.method public transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 3
    .parameter "groupId"
    .parameter "region"
    .parameter "transformMatrix"
    .parameter "mode"

    .prologue
    .line 2583
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    const/4 v0, 0x0

    .line 2591
    :goto_0
    return v0

    .line 2588
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/painting/engine/HtcPainting;->transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    move-result v0

    .line 2590
    .local v0, result:Z
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto :goto_0
.end method

.method public unFreezeCacheworker()V
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->unFreeze()V

    .line 2663
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    .line 2664
    return-void
.end method

.method public undo()V
    .locals 9

    .prologue
    .line 893
    const/4 v3, 0x0

    .line 895
    .local v3, edit:Lcom/htc/painting/engine/undo/UndoableEdit;
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    .line 896
    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->canUndo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 900
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v3

    .line 901
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->undo()V

    .line 902
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 903
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    .line 904
    .local v5, listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    invoke-interface {v5}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onUndo()V

    goto :goto_1

    .line 914
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #listener:Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    :cond_2
    if-eqz v3, :cond_4

    .line 915
    instance-of v7, v3, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 916
    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    .line 917
    .local v1, ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getRedoableEdits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    .line 918
    .local v2, e:Lcom/htc/painting/engine/undo/UndoableEdit;
    instance-of v7, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 919
    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 920
    .local v0, aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_2

    .line 924
    .end local v0           #aas:Lcom/htc/painting/engine/undo/StrokeAddAction;
    .end local v1           #ce:Lcom/htc/painting/engine/undo/CompoundEdit;
    .end local v2           #e:Lcom/htc/painting/engine/undo/UndoableEdit;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    instance-of v7, v3, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_0

    move-object v6, v3

    .line 925
    check-cast v6, Lcom/htc/painting/engine/undo/StrokeAddAction;

    .line 926
    .local v6, sa:Lcom/htc/painting/engine/undo/StrokeAddAction;
    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

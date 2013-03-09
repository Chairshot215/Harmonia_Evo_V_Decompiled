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

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    invoke-direct {p0, p1, v1}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    new-instance v0, Lcom/htc/painting/engine/DrawingInfo;

    invoke-direct {v0}, Lcom/htc/painting/engine/DrawingInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$1;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    iput v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    iput-wide v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    iput-boolean v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPaintingView;->setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/HtcPaintingView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/engine/HtcPaintingView;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->updateSeletion(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/painting/engine/HtcPaintingView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/painting/engine/HtcPaintingView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheState:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    return-void
.end method

.method private checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;
    .locals 6

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v5, v2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createHoverCirclePaint()Landroid/graphics/Paint;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method private drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V
    .locals 23

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v17

    if-eqz v14, :cond_7

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

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

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v19

    if-nez v19, :cond_4

    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_0

    monitor-enter p3

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->extractSnapShots(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/htc/painting/engine/ViewPortSnapShot;->findSnapShotsOfSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/16 v19, 0x1

    aget-object v19, v6, v19

    const/16 v20, 0x0

    aget-object v20, v6, v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/htc/painting/engine/ViewPortSnapShot;->computeReferenceDelta(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

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

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDummyData()Z

    move-result v19

    if-nez v19, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_5

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

    :cond_2
    :goto_2
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    monitor-exit p3

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_5
    :try_start_1
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_6

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

    const-string v19, "HtcPaintingView"

    const-string v20, " Totally overlay, ignore drawing background "

    invoke-static/range {v19 .. v20}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

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

    const-string v13, "drawInternal"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HtcPaintingView"

    const-string v3, "HtcPaintingView is not initialized"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v12, :cond_6

    if-nez v9, :cond_5

    const-string v2, "HtcPaintingView"

    const-string v3, "Dopainting, no cached bitmap"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

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

    const/high16 v20, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v14

    if-eqz v14, :cond_3

    array-length v2, v14

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v3, 0x0

    aget v3, v14, v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v2

    mul-float v20, v20, v2

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

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

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

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v8, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/MotionPoint;

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

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget-wide v10, v2, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mBackgroundCacheData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->drawCurrentCacheWithRefTransform(Landroid/graphics/Canvas;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getModifyTime()J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-gez v2, :cond_7

    const-string v2, "Not painting, draw cacheBitmap on canvas"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sub-long v2, v17, v10

    const-wide/16 v5, 0x32

    cmp-long v2, v2, v5

    if-gez v2, :cond_8

    const-string v2, "Not painting, someone just got dirty, do redraw strokes just yet, use cache for now"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    const v3, 0x65b9aa

    const-wide/16 v5, 0x32

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    const-string v2, "Not painting, dirty time out, draw cached for now and request new"

    invoke-static {v13, v2}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    if-lez v2, :cond_0

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget-object v2, v2, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v2, 0x1

    aget v4, v19, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    int-to-float v2, v2

    add-float/2addr v4, v2

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v6}, Lcom/htc/painting/engine/DrawingInfo;->getSnapShots()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    return-wide v6

    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/ViewPortSnapShot;

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    const-string v6, " matrix:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " rect:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

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

    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method private getPerformanceInfoLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    const/4 v1, -0x2

    const/16 v2, 0xa

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private getProgressLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    const/4 v1, -0x2

    const/16 v2, 0xa

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private initCore()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->startWorkers()V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private isBackgroundCacheDrawing()Z
    .locals 1

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

    const/4 v5, 0x1

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCreateTime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v6}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getDrawingStamp()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    move v4, v5

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

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 10

    const/4 v2, 0x1

    const-string v0, "HtcPaintingView"

    const-string v1, "partialUpdateCache"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    const/4 v0, 0x0

    aget v0, v8, v0

    if-lez v0, :cond_0

    aget v0, v8, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v2, :cond_0

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

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v0, "HtcPaintingView"

    const-string v1, "prepare cache"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    aget v0, v8, v4

    if-lez v0, :cond_0

    aget v0, v8, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v5, :cond_0

    aget v0, v8, v4

    aget v1, v8, v5

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/HtcPaintingView;->prepareFakeCache(II[I)V

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

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v1, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    new-array v13, v1, [Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v14, v1, :cond_3

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    aget v2, p3, v14

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v1, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    aget v2, p3, v14

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;-><init>(ILcom/htc/painting/engine/ViewPort;JJ)V

    aput-object v1, v13, v14

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v1, :cond_0

    new-instance v8, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;-><init>(IIII[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setIsDummyData(Z)V

    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    goto :goto_0
.end method

.method private processEvent(Landroid/view/MotionEvent;)V
    .locals 27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v8, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    goto :goto_0

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetEventData()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget v3, v3, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

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

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

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

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->startRecordUndo()V

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

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    iget v3, v3, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v23, 0x1e

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    if-eqz v10, :cond_8

    move/from16 v18, v10

    :goto_2
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_f

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_9

    if-nez v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    :cond_4
    const/16 v17, 0x1

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

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v17, 0x1

    :cond_5
    :goto_5
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/htc/painting/engine/HtcPaintingView;->checkInWhichGroup(FF)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_b

    const/4 v14, 0x1

    :goto_6
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_c

    :cond_6
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingMove(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v6

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v7

    goto/16 :goto_4

    :cond_a
    const/16 v17, 0x0

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->startRecordUndo()V

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

    invoke-direct/range {v3 .. v9}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V

    goto :goto_7

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

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v3, v23, v25

    if-eqz v3, :cond_10

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

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-wide/from16 v23, v0

    sub-long v25, v19, v21

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-wide/from16 v23, v0

    int-to-long v0, v10

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

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

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0xa

    cmp-long v3, v23, v25

    if-nez v3, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetEventData()V

    :cond_10
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    goto/16 :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowEraserIndicator:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPos:Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    :cond_12
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->Standard:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v3, v23, v25

    if-eqz v3, :cond_0

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

    const/4 v2, 0x1

    const-string v0, "HtcPaintingView"

    const-string v1, "redrawDirtyRegion"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getDisplayDimen()[I

    move-result-object v8

    const/4 v0, 0x0

    aget v0, v8, v0

    if-lez v0, :cond_0

    aget v0, v8, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v0, v9

    if-lt v0, v2, :cond_0

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

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v1}, Lcom/htc/painting/engine/CacheBitmapWorker;->cancelAll()V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    :cond_0
    return-void
.end method

.method private resetEventData()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousEventTime:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventCollectCount:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchTime:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEventDispatchAccumulateTime:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRender:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnRenderAccumulate:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueue:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnEventQueueAccumulate:J

    return-void
.end method

.method private resetFpsData()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    iput-wide v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    return-void
.end method

.method private setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->destroy()V

    :cond_2
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v1, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->setRefData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    :cond_3
    const-string v1, "HtcPaintingView"

    const-string v2, "updateCacheDataIfValid: mCacheBmpData updated"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setShowPerformanceInfo(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetFpsData()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupComponents(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v5, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v7, 0x1010287

    invoke-direct {v5, p1, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getProgressLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5, v1}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-direct {v5, p1}, Lcom/htc/painting/engine/edit/StrokeEditView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {v5, v12}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    new-instance v6, Lcom/htc/painting/engine/HtcPaintingView$2;

    invoke-direct {v6, p0}, Lcom/htc/painting/engine/HtcPaintingView$2;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    invoke-virtual {v5, v6}, Lcom/htc/painting/engine/edit/StrokeEditView;->setOnSelectionListener(Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {p0, v5, v2}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p1

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/painting/engine/HtcPaintingView$3;

    invoke-direct {v5, p0, v0}, Lcom/htc/painting/engine/HtcPaintingView$3;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v5, "Load Pens"

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->setWillNotDraw(Z)V

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->createHoverCirclePaint()Landroid/graphics/Paint;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIndicatorPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    const-string v5, "paintingview.showperformance"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    iget-boolean v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v5, :cond_0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->getPerformanceInfoLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v4}, Lcom/htc/painting/engine/HtcPaintingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/htc/painting/engine/HtcPaintingView;->setupPerformanceInfoStyle(Landroid/widget/TextView;)V

    invoke-direct {p0, v9}, Lcom/htc/painting/engine/HtcPaintingView;->setShowPerformanceInfo(Z)V

    :cond_0
    new-instance v5, Lcom/htc/painting/engine/CacheBitmapWorker;

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    aget v7, v7, v9

    invoke-direct {v5, v6, v7}, Lcom/htc/painting/engine/CacheBitmapWorker;-><init>(FF)V

    iput-object v5, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x4

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v6, v7, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Lcom/htc/painting/engine/HtcPaintingView;->sSeparatorPaint:Landroid/graphics/Paint;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

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

    if-eqz p1, :cond_0

    const/high16 v0, 0x41c0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startWorkers()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->start()V

    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$4;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$4;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialUpdateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$5;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$5;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCreateCacheTaskListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$6;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPaintingView$6;-><init>(Lcom/htc/painting/engine/HtcPaintingView;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    return-void
.end method

.method private stopWorkers()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheListener:Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->stop()V

    return-void
.end method

.method private strokeGroupOnCacheBmpData(Lcom/htc/painting/engine/ViewPortSnapShot;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getRect(Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectRectF()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_3

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    move v4, v2

    goto :goto_0

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

    if-eqz p2, :cond_2

    move-object v0, p2

    :goto_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3, v0, v4, v1, p3}, Lcom/htc/painting/engine/HtcPainting;->PaintingEnd(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Landroid/graphics/RectF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

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

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_1
.end method

.method private triggerPaintingMove(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p6, :cond_1

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v2, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/htc/painting/engine/HtcPainting;->PaintingMove(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-boolean v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v11}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_0
.end method

.method private triggerPaintingStart(FFFFLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p6, :cond_2

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setDrawingStamp(J)V

    :cond_0
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    move-object/from16 v2, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/htc/painting/engine/HtcPainting;->PaintingStart(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-boolean v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v8}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isBackgroundCacheDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    invoke-direct {p0, v11, v1}, Lcom/htc/painting/engine/HtcPaintingView;->redrawDirtyRegion(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, v11}, Lcom/htc/painting/engine/HtcPaintingView;->updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/RectF;)V
    .locals 8

    const/high16 v7, 0x3f00

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

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

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

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

    :cond_2
    return-void
.end method

.method private updateCacheDataIfValid(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto :goto_0
.end method

.method private updateDrawingInfo()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo(Z)V

    return-void
.end method

.method private updateDrawingInfo(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "HtcPaintingView"

    const-string v7, "HtcPaintingView is not initialized"

    invoke-static {v6, v7}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v6}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    const/4 v5, 0x0

    array-length v6, v0

    new-array v4, v6, [Lcom/htc/painting/engine/ViewPortSnapShot;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Lcom/htc/painting/engine/ViewPortSnapShot;

    aget v7, v0, v1

    invoke-direct {v6, v7, v5, v2, v3}, Lcom/htc/painting/engine/ViewPortSnapShot;-><init>(ILcom/htc/painting/engine/ViewPort;J)V

    aput-object v6, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v6, v4, p1}, Lcom/htc/painting/engine/DrawingInfo;->update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V

    goto :goto_0
.end method

.method private updateSeletion(Landroid/graphics/RectF;)V
    .locals 11

    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v10}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    array-length v5, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget v4, v0, v3

    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v10, v4}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/stroke/Stroke;

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionStrokes:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateStrokeBounds(Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateBounds(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canRedo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HtcPaintingView"

    const-string v3, "HtcPaintingView is not initialized"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPainting;->clearAllStrokeGroups()V

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    invoke-interface {v1}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onClearAll()V

    goto :goto_0
.end method

.method public clearInkDrawingCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->resetCache()V

    :cond_0
    return-void
.end method

.method public clearStrokeGroup(I)V
    .locals 3

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->clearStrokeGroup(I)V

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0
.end method

.method public clearStrokeGroups([I)V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "HtcPaintingView"

    const-string v5, "HtcPaintingView is not initialized"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

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

    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v4, v2}, Lcom/htc/painting/engine/HtcPainting;->clearStrokeGroup(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetCache()V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0
.end method

.method public clearUndoRedoHistory()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->clearUndoManager()V

    goto :goto_0
.end method

.method public deleteStrokeGroup(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->removeStrokeGroup(I)V

    goto :goto_0
.end method

.method destoryInkCacheData()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->setCacheBmpData(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HtcPaintingView"

    const-string v1, "destroy htcpainting"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->destroy()V

    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->stopWorkers()V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/painting/engine/DrawingInfo;->update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->destoryInkCacheData()V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPaintingEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    if-eqz v2, :cond_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->processEvent(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPaintingView;->drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V

    return-void
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;)V
    .locals 9

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "HtcPaintingView"

    const-string v2, "bitmap == null || groupId == null || mHtcPainting == null"

    invoke-static {v0, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v7, :cond_1

    invoke-virtual {v7, p3}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-string v3, "HtcPaintingView"

    const-string v4, "bitmap == null || strokeGroupIds == null"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v4, [I

    aput p2, v0, v3

    new-array v1, v4, [Lcom/htc/painting/engine/ViewPort;

    aput-object p3, v1, v3

    new-instance v2, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v2, p1}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-instance v4, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v4}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V

    goto :goto_0
.end method

.method public drawOnBitmap(Landroid/graphics/Bitmap;[I)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v1, "HtcPaintingView"

    const-string v2, "bitmap == null || strokeGroupIds == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    new-instance v2, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v2}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v1, v0, p2, v2}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[ILcom/htc/painting/engine/InterruptRef;)V

    goto :goto_0
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->drawInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/HtcPaintingView;->drawStroke(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V

    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

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

    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSelectionView:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/edit/StrokeEditView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableEraseMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->enableEraseMode(Z)V

    goto :goto_0
.end method

.method public enablePainting(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

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

    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_1
.end method

.method public enableTouchPainting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mEnableTouchPainting:Z

    return-void
.end method

.method public freezeCacheWorker()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->freeze()V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->interrupt()Z

    :cond_0
    return-void
.end method

.method public getBoundingRectF(I)Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HtcPaintingView"

    const-string v4, "HtcPaintingView is not initialized"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method

.method public getStrokeGroupMemorySize(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->getStrokesFromReqGroup(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokesFromReqGroup(IZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget v1, v0, v2

    if-ne v1, p1, :cond_3

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "this group is not requested!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/StrokeGroup;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method public getViewPort(I)Lcom/htc/painting/engine/ViewPort;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    new-instance v0, Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/HtcPainting;-><init>(Lcom/htc/painting/engine/AbsSerializeDAO;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->initCore()V

    return-void
.end method

.method public interceptPenEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsInterceptPenEvent:Z

    return-void
.end method

.method public isEraseModeOn()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mIsEnable:Z

    goto :goto_0
.end method

.method public isStrokeGroupClean(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPaintingEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPaintingView;->drawInternal(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowPerformanceInfo:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPerformanceInfo:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    sub-long v8, v1, v8

    div-long/2addr v6, v8

    long-to-float v0, v6

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    long-to-float v6, v6

    add-float/2addr v6, v0

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    sub-long v6, v1, v4

    long-to-float v3, v6

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    long-to-float v6, v6

    add-float/2addr v6, v3

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    const-wide/16 v8, 0xa

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFps:J

    iget-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

    iget-wide v8, p0, Lcom/htc/painting/engine/HtcPaintingView;->mFpsCollectcount:J

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/painting/engine/HtcPaintingView;->mOnDrawTime:J

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

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->resetFpsData()V

    :cond_1
    iput-wide v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPreviousDrawTime:J

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawringRect:Landroid/graphics/RectF;

    int-to-float v1, p5

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo(Z)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0
.end method

.method public redo()V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->canRedo()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->redo()V

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    invoke-interface {v5}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onRedo()V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    instance-of v7, v3, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v7, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getUndoableEdits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    instance-of v7, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_2

    :cond_4
    instance-of v7, v3, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/htc/painting/engine/undo/StrokeAddAction;

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

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->removeOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    return-void
.end method

.method public removeOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    goto :goto_0
.end method

.method public requestSaveStrokeGroup(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroup(IZ)V

    return-void
.end method

.method public requestSaveStrokeGroup(IZ)V
    .locals 3

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->saveGroup(IZ)V

    goto :goto_0
.end method

.method public requestSaveStrokeGroups([I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroups([IZ)V

    return-void
.end method

.method public requestSaveStrokeGroups([IZ)V
    .locals 7

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

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

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "HtcPaintingView"

    const-string v5, "HtcPaintingView is not initialized"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v4, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->SaveGroups([IZ)V

    goto :goto_1
.end method

.method public requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPaintingView;->requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    return-void
.end method

.method public requestSaveStrokeGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/painting/engine/HtcPainting;->SaveGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    goto :goto_0
.end method

.method public requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HtcPaintingView"

    const-string v4, "HtcPaintingView is not initialized"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v2, v3, [Z

    aput-boolean v5, v2, v5

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v3, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    move-result-object v2

    array-length v3, v2

    new-array v0, v3, [I

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-boolean v3, v2, v1

    if-eqz v3, :cond_1

    aget v3, p1, v1

    aput v3, v0, v1

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

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;

    const v4, 0x65b9ab

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/painting/engine/HtcPaintingView$7;

    invoke-direct {v0, p0, p4}, Lcom/htc/painting/engine/HtcPaintingView$7;-><init>(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayAlpha(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDisplayAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->invalidate()V

    return-void
.end method

.method public setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mDrawingInfo:Lcom/htc/painting/engine/DrawingInfo;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/DrawingInfo;->setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V

    return-void
.end method

.method public setDrawingPartialInvalidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPartialInvalidate:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isPainting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting;->endRecordUndo()V

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    sget-object v3, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/painting/engine/HtcPaintingView;->triggerPaintingEnd(Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    iput-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingGroup:Lcom/htc/painting/engine/StrokeGroup;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheBmpData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v0}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0
.end method

.method public setInkDrawingCacheRatio(FF)V
    .locals 2

    const/high16 v1, 0x3f80

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InkDrawingCacheRatio must be greater or equal to 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheRatio:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/engine/CacheBitmapWorker;->setCacheSizeRatio(FF)V

    :cond_2
    return-void
.end method

.method public setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/CacheBitmapWorker;->setOnCacheListener(Lcom/htc/painting/engine/HtcPaintingView$OnCacheListener;)V

    return-void
.end method

.method public setOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    goto :goto_0
.end method

.method public setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/htc/painting/engine/HtcPen$EraserPen;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPainting;->set(Lcom/htc/painting/tool/pen/Pen;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    check-cast p1, Lcom/htc/painting/engine/HtcPen;

    invoke-virtual {p1}, Lcom/htc/painting/engine/HtcPen;->getDefaultWidth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->set(Lcom/htc/painting/tool/pen/Pen;)V

    goto :goto_1
.end method

.method public setSeparatorDist(I)V
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mSeparatorDist:I

    return-void
.end method

.method public setShowProcessingIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mShowLoadingCursor:Z

    return-void
.end method

.method public setStrokeGroupRotation(II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcPaintingView"

    const-string v1, "HtcPaintingView is not initialized"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/HtcPainting;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0
.end method

.method public setViewPortForStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HtcPaintingView"

    const-string v2, "HtcPaintingView is not initialized"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/painting/engine/HtcPainting;->transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    move-result v0

    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    goto :goto_0
.end method

.method public unFreezeCacheworker()V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView;->mCacheWorker:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual {v0}, Lcom/htc/painting/engine/CacheBitmapWorker;->unFreeze()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPaintingView;->prepareCache()V

    return-void
.end method

.method public undo()V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "HtcPaintingView"

    const-string v8, "HtcPaintingView is not initialized"

    invoke-static {v7, v8}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPaintingView;->canUndo()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mHtcPainting:Lcom/htc/painting/engine/HtcPainting;

    invoke-virtual {v7}, Lcom/htc/painting/engine/HtcPainting;->undo()V

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/painting/engine/HtcPaintingView;->mPaintingViewListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;

    invoke-interface {v5}, Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;->onUndo()V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    instance-of v7, v3, Lcom/htc/painting/engine/undo/CompoundEdit;

    if-eqz v7, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/htc/painting/engine/undo/CompoundEdit;

    invoke-virtual {v1}, Lcom/htc/painting/engine/undo/CompoundEdit;->getRedoableEdits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/undo/UndoableEdit;

    instance-of v7, v2, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/htc/painting/engine/undo/StrokeAddAction;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_2

    :cond_4
    instance-of v7, v3, Lcom/htc/painting/engine/undo/StrokeAddAction;

    if-eqz v7, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/htc/painting/engine/undo/StrokeAddAction;

    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    invoke-virtual {v6}, Lcom/htc/painting/engine/undo/StrokeAddAction;->getGroup()Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/painting/engine/HtcPaintingView;->partialUpdateCache(Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V

    goto :goto_0
.end method

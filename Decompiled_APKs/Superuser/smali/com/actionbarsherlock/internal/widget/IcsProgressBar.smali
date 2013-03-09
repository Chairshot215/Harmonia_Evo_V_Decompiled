.class public Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
.super Landroid/view/View;


# static fields
.field private static final ANIMATION_RESOLUTION:I = 0xc8

.field private static final MAX_LEVEL:I = 0x2710

.field private static final ProgressBar:[I = null

.field private static final ProgressBar_animationResolution:I = 0xe

.field private static final ProgressBar_indeterminate:I = 0x5

.field private static final ProgressBar_indeterminateBehavior:I = 0xa

.field private static final ProgressBar_indeterminateDrawable:I = 0x7

.field private static final ProgressBar_indeterminateDuration:I = 0x9

.field private static final ProgressBar_indeterminateOnly:I = 0x6

.field private static final ProgressBar_interpolator:I = 0xd

.field private static final ProgressBar_max:I = 0x2

.field private static final ProgressBar_maxHeight:I = 0x1

.field private static final ProgressBar_maxWidth:I = 0x0

.field private static final ProgressBar_minHeight:I = 0xc

.field private static final ProgressBar_minWidth:I = 0xb

.field private static final ProgressBar_progress:I = 0x3

.field private static final ProgressBar_progressDrawable:I = 0x8

.field private static final ProgressBar_secondaryProgress:I = 0x4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAnimationResolution:I

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDrawTime:J

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->ProgressBar:[I

    return-void

    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
        0x36t 0x1t 0x1t 0x1t
        0x37t 0x1t 0x1t 0x1t
        0x38t 0x1t 0x1t 0x1t
        0x39t 0x1t 0x1t 0x1t
        0x3at 0x1t 0x1t 0x1t
        0x3bt 0x1t 0x1t 0x1t
        0x3ct 0x1t 0x1t 0x1t
        0x3dt 0x1t 0x1t 0x1t
        0x3et 0x1t 0x1t 0x1t
        0x3ft 0x1t 0x1t 0x1t
        0x40t 0x1t 0x1t 0x1t
        0x41t 0x1t 0x1t 0x1t
        0x1at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mUiThreadId:J

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->initProgressBar()V

    sget-object v2, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mNoInvalidate:Z

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 v3, 0x9

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    const/16 v3, 0xb

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    const/16 v3, 0xc

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    const/16 v3, 0xa

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    const/16 v3, 0xd

    const v4, 0x10a000b

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, p1, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setInterpolator(Landroid/content/Context;I)V

    :cond_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setMax(I)V

    const/4 v3, 0x3

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V

    const/4 v3, 0x4

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mNoInvalidate:Z

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    if-nez v3, :cond_3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    const/16 v0, 0xe

    const/16 v1, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimationResolution:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-lez v1, :cond_3

    int-to-float v1, p2

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v3, v1

    :goto_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    const v4, 0x461c4000

    mul-float/2addr v4, v3

    float-to-int v4, v4

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_1
    if-eqz p4, :cond_2

    const v1, 0x102000d

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v3, p3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initProgressBar()V
    .locals 4

    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    const/16 v0, 0x64

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    iput v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;-><init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    :goto_0
    if-lt v3, v4, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-lt v1, v4, :cond_3

    move-object p1, v0

    :cond_0
    :goto_2
    return-object p1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v0, v7, :cond_2

    const v7, 0x102000f

    if-eq v0, v7, :cond_2

    move v0, v1

    :goto_3
    invoke-direct {p0, v6, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    :cond_5
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p2, :cond_6

    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_2

    :cond_6
    move-object p1, v0

    goto :goto_2
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/16 v5, 0x2710

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateDrawableBounds(II)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, p1

    int-to-float v5, p2

    div-float/2addr v4, v5

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    cmpl-float v4, v4, v0

    if-lez v4, :cond_1

    int-to-float v3, p2

    mul-float/2addr v0, v3

    float-to-int v3, v0

    sub-int v0, p1, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void

    :cond_1
    int-to-float v2, p1

    const/high16 v4, 0x3f80

    div-float v0, v4, v0

    mul-float/2addr v0, v2

    float-to-int v2, v0

    sub-int v0, p2, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_3
    move v4, v3

    move v3, v2

    goto :goto_1
.end method

.method private updateDrawableState()V
    .locals 2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableState()V

    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->invalidate(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityEventSender:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getDrawingTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v1, v2, v4}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    const v2, 0x461c4000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mLastDrawTime:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimationResolution:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mLastDrawTime:J

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimationResolution:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidateDelayed(J)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInDrawing:Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinWidth:I

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMinHeight:I

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableState()V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/actionbarsherlock/internal/widget/IcsView;->resolveSizeAndState(III)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/actionbarsherlock/internal/widget/IcsView;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method onProgressRefresh(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V

    iget v0, p1, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->progress:I

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    iput v0, v1, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$SavedState;->secondaryProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-gez p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    :cond_2
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    const v0, 0x102000d

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iget v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    if-ge v3, v2, :cond_0

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->requestLayout()V

    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->updateDrawableState()V

    const v0, 0x102000d

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgress:I

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V

    const v0, 0x102000f

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-gez p1, :cond_3

    :goto_1
    :try_start_1
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mMax:I

    :cond_2
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    const v0, 0x102000f

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->stopAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    :goto_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1
.end method

.method stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

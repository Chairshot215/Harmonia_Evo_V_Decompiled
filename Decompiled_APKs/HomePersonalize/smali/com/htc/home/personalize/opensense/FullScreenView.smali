.class public Lcom/htc/home/personalize/opensense/FullScreenView;
.super Landroid/widget/FrameLayout;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;,
        Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;,
        Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;,
        Lcom/htc/home/personalize/opensense/FullScreenView$EaseLinear;,
        Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;,
        Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;,
        Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;
    }
.end annotation


# static fields
.field private static final DIR_LEFT:I = -0x1

.field private static final DIR_RETAIN:I = 0x0

.field private static final DIR_RIGHT:I = 0x1

.field protected static final DURATION:I = 0x3e8

.field protected static final IMAGE_VIEW_SIZE:I = 0x140

.field private static final SMART_ZOOM_DURATION:F = 600.0f

.field private static final TAG:Ljava/lang/String; = "FullScreen"

.field protected static final ZOOM_BUTTON_UPDATE_UI_DURATION:J = 0x2eeL

.field protected static mNewOrientation:I = 0x0

.field private static mScreenH:I = 0x0

.field private static mScreenW:I = 0x0

.field private static mUseBestFit:Z = false

.field private static mZoomButtonsController:Landroid/widget/ZoomButtonsController; = null

.field private static sBaseScrollDuration:I = 0x0

.field private static final sEnableMultiTouch:Z = true

.field private static final sEnablePanning:Z = true

.field private static sGIFParser:Landroid/webkit/GIFImageParser;

.field private static final sHysteresis:I

.field private static sPadding:I

.field private static sScrollOffset:I

.field private static final sUseBounce:Z


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAllowScroll:Z

.field private mChangeExifToFitRunnable:Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;

.field private mContext:Landroid/app/Activity;

.field private mCorruptIndicator:Landroid/graphics/Bitmap;

.field private mCurrentDirection:I

.field private mCurrentPosition:I

.field private mDataSetObserver:Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;

.field private mDown:Z

.field private mDrmBigLock:Landroid/graphics/Bitmap;

.field private mDrmMsgPaint:Landroid/graphics/Paint;

.field private mDrmSmallLock:Landroid/graphics/Bitmap;

.field private mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

.field private mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

.field private mDrmTapViewLandscapeX:I

.field private mDrmTapViewPortraitX:I

.field private mFirst:Z

.field private mHQDecodeCB:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

.field private mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

.field private mIsFromOutSideAp:Z

.field private mItemClickListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;

.field protected mLastOrientation:I

.field private mLayoutComplete:Z

.field private mLeaveFullScreen:Z

.field private mLoadingIndicator:Landroid/graphics/Bitmap;

.field private mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

.field private mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

.field private mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

.field private mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

.field private mPhysics:Lcom/htc/widget/EaseOutCubic;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

.field private mTagGroup:Landroid/widget/RelativeLayout;

.field private mVideoIndicator:Landroid/graphics/Bitmap;

.field private mViewSingleImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x5

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    .line 86
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sHysteresis:I

    .line 87
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sBaseScrollDuration:I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 119
    const/4 v0, -0x1

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mNewOrientation:I

    .line 122
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sGIFParser:Landroid/webkit/GIFImageParser;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    .line 93
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentDirection:I

    .line 94
    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mFirst:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLayoutComplete:Z

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .line 115
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLastOrientation:I

    .line 121
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mIsFromOutSideAp:Z

    .line 132
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z

    .line 133
    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAllowScroll:Z

    .line 137
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;

    .line 138
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeCB:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

    .line 139
    new-instance v0, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v0}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    .line 143
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;

    .line 739
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDown:Z

    .line 3865
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 3866
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mItemClickListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;

    .line 3867
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    .line 3868
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    .line 3869
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDataSetObserver:Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;

    .line 3870
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    .line 3871
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    .line 3872
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    .line 152
    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mIsFromOutSideAp:Z

    .line 153
    iput-object p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView;->initLocalPhoto(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method static synthetic access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->computeCurrScreenSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/home/personalize/opensense/FullScreenView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView;->measureDrmText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/htc/home/personalize/opensense/FullScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLayoutComplete:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/home/personalize/opensense/FullScreenView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView;->getScrollDuration(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/widget/EaseOutCubic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1900()Landroid/widget/ZoomButtonsController;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/home/personalize/opensense/FullScreenView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView;->loadQualityImage(ZZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$2800()Landroid/webkit/GIFImageParser;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sGIFParser:Landroid/webkit/GIFImageParser;

    return-object v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mItemClickListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    return-object v0
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sScrollOffset:I

    return v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sHysteresis:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/home/personalize/opensense/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewPortraitX:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/home/personalize/opensense/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewLandscapeX:I

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sBaseScrollDuration:I

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/home/personalize/opensense/FullScreenView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeCB:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private animateScrollTo(II)V
    .locals 1
    .parameter "xNew"
    .parameter "yNew"

    .prologue
    .line 3087
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->startScrollTo(II)V

    .line 3088
    return-void
.end method

.method private cancelHQDecode()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel()V

    .line 594
    :cond_0
    return-void
.end method

.method private computeCurrScreenSize()V
    .locals 2

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return-void

    .line 3111
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getWidth()I

    move-result v0

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    .line 3112
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getHeight()I

    move-result v0

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    .line 3114
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sget v1, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    add-int/2addr v0, v1

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sScrollOffset:I

    .line 3116
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sget v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    if-le v0, v1, :cond_2

    .line 3117
    const/16 v0, 0x3e8

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0

    .line 3118
    :cond_2
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sget v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    if-ge v0, v1, :cond_0

    .line 3119
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private getScrollDuration(II)I
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3323
    if-le p1, p2, :cond_0

    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sBaseScrollDuration:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0
.end method

.method private initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 11
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 257
    iput-boolean v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z

    .line 258
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    .line 259
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    .line 260
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 261
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 262
    invoke-direct {p0, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->useBestFit(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 265
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020004

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    .line 266
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020005

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    .line 268
    const v5, 0x7f0b000b

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    .line 270
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    .line 271
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const v5, 0x7f0b0006

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v8

    .line 272
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    invoke-virtual {v5, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setView(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 273
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    const-string v6, "image1"

    iput-object v6, v5, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->name:Ljava/lang/String;

    .line 274
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    invoke-virtual {v5, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->changeMode(I)V

    .line 275
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const v5, 0x7f0b0008

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v7

    .line 276
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setView(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 277
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    const-string v6, "image2"

    iput-object v6, v5, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->name:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->clearChildFocus(Landroid/view/View;)V

    .line 286
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setFocusable(Z)V

    .line 287
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setFocusableInTouchMode(Z)V

    .line 288
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->requestFocus()Z

    .line 292
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->changeMode(I)V

    .line 293
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setEnableTrackballScroll(Z)V

    .line 294
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const v5, 0x7f0b000a

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v9

    .line 295
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    invoke-virtual {v5, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setView(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 296
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    const-string v6, "image3"

    iput-object v6, v5, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->name:Ljava/lang/String;

    .line 297
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->changeMode(I)V

    .line 298
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    sget-boolean v6, Lcom/htc/home/personalize/opensense/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    .line 300
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    sget-boolean v6, Lcom/htc/home/personalize/opensense/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    .line 301
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    sget-boolean v6, Lcom/htc/home/personalize/opensense/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    .line 304
    :cond_0
    const v5, 0x7f0b0005

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    .line 306
    iput-boolean v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mFirst:Z

    .line 308
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/home/personalize/opensense/FullScreenView$1;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$1;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setOnStartListener(Ljava/lang/Runnable;)V

    .line 316
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/home/personalize/opensense/FullScreenView$2;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$2;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setOnFinishAnimationListener(Ljava/lang/Runnable;)V

    .line 331
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/home/personalize/opensense/FullScreenView$3;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$3;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setOnScrollListener(Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;)V

    .line 372
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/home/personalize/opensense/FullScreenView$4;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$4;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setOnDrawCallback(Ljava/lang/Runnable;)V

    .line 400
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/home/personalize/opensense/FullScreenView$5;

    invoke-direct {v6, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$5;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setLayoutCompletedCallback(Ljava/lang/Runnable;)V

    .line 513
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v5, :cond_2

    .line 514
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .local v0, arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 515
    .local v3, iv:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;
    if-eqz v3, :cond_1

    .line 516
    invoke-virtual {v3, v10, v7}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 514
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v0           #arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    .end local v1           #i$:I
    .end local v3           #iv:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;
    .end local v4           #len$:I
    :cond_2
    new-instance v5, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    iput-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    .line 522
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->start()V

    .line 525
    sget-boolean v5, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v5, :cond_3

    .line 526
    const-string v5, "FullScreen"

    const-string v6, "Enable Zoom Controls"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const v5, 0x7f0b0004

    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->setupZoomButtonController(Landroid/view/View;)V

    .line 529
    :cond_3
    return-void
.end method

.method private initLocalPhoto(Landroid/app/Activity;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 158
    invoke-static {}, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble;->ClearUsingFastDrawble()V

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must sepcify context when you call this function"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 166
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "position"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, pos:I
    const/4 v0, -0x1

    .line 170
    .local v0, listCount:I
    const-string v2, "FullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is it view single image? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mViewSingleImage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method private isOrientationChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3124
    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLastOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3126
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLastOrientation:I

    sget v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mNewOrientation:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadHQImage(Z)V
    .locals 2
    .parameter "load"

    .prologue
    .line 808
    if-eqz p1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->startDecodeHQ()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$2400(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)V

    .line 812
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel()V

    goto :goto_0
.end method

.method private loadQualityImage(ZZ)V
    .locals 0
    .parameter "bFull"
    .parameter "bHQ"

    .prologue
    .line 804
    invoke-direct {p0, p2}, Lcom/htc/home/personalize/opensense/FullScreenView;->loadHQImage(Z)V

    .line 805
    return-void
.end method

.method private measureDrmText(Ljava/lang/String;)V
    .locals 19
    .parameter "pathName"

    .prologue
    .line 178
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/htc/home/personalize/opensense/LayoutConstants;->DRM_MESSAGE_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    move-object/from16 v14, p1

    .line 185
    .local v14, tmpName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 186
    .local v13, size:I
    sget v17, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sget v18, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    sget v17, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    add-int/lit8 v11, v17, -0xa

    .line 187
    .local v11, portraitBase:I
    :goto_0
    sget v17, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sget v18, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    sget v17, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    add-int/lit8 v6, v17, -0xa

    .line 188
    .local v6, landscapeBase:I
    :goto_1
    if-lez v13, :cond_c

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 191
    .local v9, nameWidth:I
    div-int v2, v9, v13

    .line 193
    .local v2, charWidth:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v12, v9

    .line 197
    .local v12, portraitNameW:I
    if-ge v12, v11, :cond_0

    .line 198
    sub-int v17, v11, v12

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewPortraitX:I

    .line 200
    :cond_0
    const/4 v3, 0x0

    .line 201
    .local v3, crossLine:Z
    if-lt v12, v11, :cond_4

    .line 202
    sub-int v17, v12, v11

    div-int v15, v17, v2

    .line 203
    .local v15, totalChar:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #totalChar:I
    .local v16, totalChar:I
    sub-int v4, v13, v15

    .line 204
    .local v4, end:I
    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 205
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 206
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    if-nez v3, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 209
    .local v5, firstLineWidth:I
    sub-int v17, v11, v5

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewPortraitX:I

    .line 211
    .end local v5           #firstLineWidth:I
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, nexName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 213
    if-ge v12, v11, :cond_3

    .line 214
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_3
    const/4 v3, 0x1

    .line 217
    .end local v4           #end:I
    .end local v10           #nexName:Ljava/lang/String;
    .end local v16           #totalChar:I
    :cond_4
    if-nez v3, :cond_5

    .line 218
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

    .line 224
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 225
    move v7, v9

    .line 226
    .local v7, landscapeNameWidth:I
    if-ge v7, v6, :cond_6

    .line 227
    sub-int v17, v6, v7

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewLandscapeX:I

    .line 229
    :cond_6
    const/4 v3, 0x0

    .line 230
    if-lt v7, v6, :cond_a

    .line 231
    sub-int v17, v7, v6

    div-int v15, v17, v2

    .line 232
    .restart local v15       #totalChar:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #totalChar:I
    .restart local v16       #totalChar:I
    sub-int v4, v13, v15

    .line 233
    .restart local v4       #end:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 234
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 235
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    if-nez v3, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 238
    .restart local v5       #firstLineWidth:I
    sub-int v17, v6, v5

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewLandscapeX:I

    .line 240
    .end local v5           #firstLineWidth:I
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 241
    .restart local v10       #nexName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 242
    if-ge v7, v6, :cond_9

    .line 243
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_9
    const/4 v3, 0x1

    .line 246
    .end local v4           #end:I
    .end local v10           #nexName:Ljava/lang/String;
    .end local v16           #totalChar:I
    :cond_a
    if-nez v3, :cond_b

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

    .line 253
    .end local v2           #charWidth:I
    .end local v3           #crossLine:Z
    .end local v6           #landscapeBase:I
    .end local v7           #landscapeNameWidth:I
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #nameWidth:I
    .end local v11           #portraitBase:I
    .end local v12           #portraitNameW:I
    .end local v13           #size:I
    .end local v14           #tmpName:Ljava/lang/String;
    :cond_c
    return-void

    .line 186
    .restart local v13       #size:I
    .restart local v14       #tmpName:Ljava/lang/String;
    :cond_d
    sget v17, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenH:I

    add-int/lit8 v11, v17, -0xa

    goto/16 :goto_0

    .line 187
    .restart local v11       #portraitBase:I
    :cond_e
    sget v17, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    add-int/lit8 v6, v17, -0xa

    goto/16 :goto_1
.end method

.method private pauseThread()V
    .locals 0

    .prologue
    .line 3411
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->cancelHQDecode()V

    .line 3412
    return-void
.end method

.method private recalcMatrix()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3144
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v3

    if-nez v1, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return-void

    .line 3146
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v1, v3

    .line 3148
    .local v0, ivt:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    iget-object v1, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3149
    iget-object v1, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    .line 3150
    :cond_2
    iget-object v1, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3151
    iget-object v1, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "activity"
    .parameter "prefs"

    .prologue
    .line 3166
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V

    .line 3167
    return-void
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V
    .locals 4
    .parameter "activity"
    .parameter "prefs"
    .parameter "ignoreIntentExtra"

    .prologue
    const/4 v3, -0x1

    .line 3171
    const-string v2, "nuorientation"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3176
    .local v1, req:I
    if-ne v1, v3, :cond_0

    .line 3177
    const/4 v1, 0x2

    .line 3179
    :cond_0
    if-nez p2, :cond_1

    .line 3180
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3181
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3183
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3184
    return-void
.end method

.method private scrollToView(IZ)V
    .locals 9
    .parameter "direction"
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    .line 3297
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v8

    .line 3298
    .local v8, width:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v7

    .line 3302
    .local v7, height:I
    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    add-int v3, v8, v0

    .line 3303
    .local v3, toX:I
    const/4 v4, 0x0

    .line 3304
    .local v4, toY:I
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mFirst:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 3305
    :cond_0
    move v1, v3

    .line 3306
    .local v1, fromX:I
    move v2, v4

    .line 3312
    .local v2, fromY:I
    :goto_0
    if-eqz p1, :cond_1

    .line 3313
    if-eqz p2, :cond_4

    .line 3314
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-direct {p0, v8, v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->getScrollDuration(II)I

    move-result v5

    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V

    .line 3320
    :cond_1
    :goto_1
    return-void

    .line 3308
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    sget v0, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    add-int/2addr v0, v8

    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v5

    add-int v1, v0, v5

    .line 3310
    .restart local v1       #fromX:I
    :goto_2
    const/4 v2, 0x0

    .restart local v2       #fromY:I
    goto :goto_0

    .line 3308
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v0

    sget v5, Lcom/htc/home/personalize/opensense/FullScreenView;->sPadding:I

    add-int/2addr v5, v8

    sub-int v1, v0, v5

    goto :goto_2

    .line 3317
    .restart local v1       #fromX:I
    .restart local v2       #fromY:I
    :cond_4
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0, v3, v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollTo(II)V

    goto :goto_1
.end method

.method private setImage(IZ)V
    .locals 17
    .parameter "pos"
    .parameter "animation"

    .prologue
    .line 3189
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLayoutComplete:Z

    if-nez v14, :cond_1

    .line 3293
    :cond_0
    :goto_0
    return-void

    .line 3193
    :cond_1
    const/4 v4, 0x0

    .line 3194
    .local v4, direction:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    if-le v14, v0, :cond_2

    .line 3195
    const/4 v4, -0x1

    .line 3207
    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentDirection:I

    .line 3208
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    .line 3209
    .local v8, oldPos:I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    .line 3211
    const/4 v3, 0x0

    .line 3213
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v14, :cond_0

    .line 3214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .local v2, arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v13, v2, v5

    .line 3215
    .local v13, v:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    if-eqz v13, :cond_0

    .line 3216
    const/4 v14, 0x0

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v13, v14}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    .line 3214
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3196
    .end local v2           #arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    .end local v3           #count:I
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #oldPos:I
    .end local v13           #v:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    if-ge v14, v0, :cond_3

    .line 3197
    const/4 v4, 0x1

    goto :goto_1

    .line 3199
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 3224
    .restart local v2       #arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    .restart local v3       #count:I
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #oldPos:I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3225
    .local v9, t1:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mFirst:Z

    if-nez v14, :cond_6

    .line 3226
    packed-switch v4, :pswitch_data_0

    .line 3267
    :cond_5
    :goto_3
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3275
    .local v11, t2:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    array-length v7, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_8

    aget-object v6, v2, v5

    .line 3276
    .local v6, ivt:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;
    const/4 v14, 0x0

    iput-boolean v14, v6, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mIsZooming:Z

    .line 3275
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3228
    .end local v6           #ivt:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;
    .end local v11           #t2:J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;)V

    .line 3229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;)V

    .line 3232
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    if-gtz v14, :cond_5

    .line 3233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_3

    .line 3239
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;)V

    .line 3240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;)V

    .line 3245
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    .line 3246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    .line 3258
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    if-gtz v14, :cond_7

    .line 3259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    .line 3261
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    .line 3262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    .line 3279
    .restart local v11       #t2:J
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->scrollToView(IZ)V

    .line 3282
    sget-boolean v14, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v14, :cond_9

    .line 3283
    invoke-direct/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->showOnScreenControls()V

    .line 3287
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mFirst:Z

    .line 3289
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    if-eq v8, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    if-eqz v14, :cond_0

    .line 3290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    invoke-interface {v14, v8, v15}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    goto/16 :goto_0

    .line 3226
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setOrientation()V
    .locals 4

    .prologue
    .line 3130
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3131
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 3141
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3133
    const-string v2, "android.intent.extra.screenOrientation"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3135
    .local v1, orientation:I
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3136
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3139
    .end local v1           #orientation:I
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    .line 532
    new-instance v3, Landroid/widget/ZoomButtonsController;

    invoke-direct {v3, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    sput-object v3, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 533
    sget-object v3, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v3}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, zoomControls:Landroid/view/View;
    const v3, 0x102033a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 536
    .local v2, zoomOutButton:Landroid/widget/ImageButton;
    const v3, 0x10801f8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 537
    const v3, 0x102033b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 539
    .local v1, zoomInButton:Landroid/widget/ImageButton;
    const v3, 0x1080201

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 541
    sget-object v3, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 542
    sget-object v3, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v4, Lcom/htc/home/personalize/opensense/FullScreenView$6;

    invoke-direct {v4, p0}, Lcom/htc/home/personalize/opensense/FullScreenView$6;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 560
    return-void
.end method

.method private showOnScreenControls()V
    .locals 2

    .prologue
    .line 564
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 566
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateZoomButtonsEnabled()V

    .line 568
    :cond_0
    return-void
.end method

.method private storeIndex()V
    .locals 3

    .prologue
    .line 3091
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 3092
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3093
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "position"

    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3094
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3096
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 1

    .prologue
    .line 3616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews(Z)V

    .line 3617
    return-void
.end method

.method private updateViews(Z)V
    .locals 6
    .parameter "bForce"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 3595
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 3613
    :cond_0
    :goto_0
    return-void

    .line 3597
    :cond_1
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 3598
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    .line 3601
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$2300(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3602
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 3604
    :cond_4
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    if-lez v0, :cond_6

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$2300(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3605
    :cond_5
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 3606
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    .line 3609
    :cond_6
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_7

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v4

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$2300(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3610
    :cond_8
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 3611
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v4

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 570
    sget-object v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v2, v3

    .line 575
    .local v0, imageView:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    .line 577
    .local v1, scale:F
    sget-object v5, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 578
    sget-object v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/high16 v5, 0x3f80

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 577
    goto :goto_1

    :cond_3
    move v3, v4

    .line 578
    goto :goto_2
.end method

.method private useBestFit(Z)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 581
    sput-boolean p1, Lcom/htc/home/personalize/opensense/FullScreenView;->mUseBestFit:Z

    .line 582
    return-void
.end method


# virtual methods
.method public addViewToTagGroup(Landroid/view/View;Landroid/widget/AbsoluteLayout$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3469
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 3471
    :cond_0
    :goto_0
    return-void

    .line 3470
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public clearTagGroup()V
    .locals 1

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3484
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 789
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAllowScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    const/4 v4, 0x1

    .line 742
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 749
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v2

    sget v3, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x5

    .line 751
    .local v0, ox:I
    const/4 v1, 0x0

    .line 752
    .local v1, tx:I
    if-gez v0, :cond_1

    .line 754
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x5

    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 784
    .end local v0           #ox:I
    .end local v1           #tx:I
    :cond_0
    :goto_0
    return v4

    .line 757
    .restart local v0       #ox:I
    .restart local v1       #tx:I
    :cond_1
    if-lez v0, :cond_2

    .line 759
    sget v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mScreenW:I

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x5

    .line 760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 763
    :cond_2
    iput-boolean v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDown:Z

    .line 766
    .end local v0           #ox:I
    .end local v1           #tx:I
    :cond_3
    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDown:Z

    if-eqz v2, :cond_0

    .line 769
    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAllowScroll:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    if-eqz v2, :cond_5

    .line 770
    sget-boolean v2, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v2, :cond_4

    .line 771
    sget-object v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, p0, p1}, Landroid/widget/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 774
    :cond_4
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 778
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 780
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDown:Z

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x1

    .line 798
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAllowScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->handleTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 800
    :cond_0
    return v1
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCurrImageHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 717
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 718
    const/4 v0, 0x0

    .line 720
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getCurrImageWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 706
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 709
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getCurrOffsetX()I
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCurrOffsetY()I
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCurrPosition()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    return v0
.end method

.method public getCurrScale()F
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    return v0
.end method

.method public getCurrView()Landroid/view/View;
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getState()I

    move-result v0

    return v0
.end method

.method public isHitIndicator(II)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3501
    iget-object v10, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v3, v10, v8

    .line 3502
    .local v3, iv:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$5500(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-nez v10, :cond_1

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$5600(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 3523
    :cond_0
    :goto_0
    return v9

    .line 3504
    :cond_1
    const/4 v0, 0x0

    .line 3505
    .local v0, bmp:Landroid/graphics/Bitmap;
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$5600(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 3506
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 3510
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3512
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getWidth()I

    move-result v7

    .line 3513
    .local v7, screenW:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->getHeight()I

    move-result v6

    .line 3514
    .local v6, screenH:I
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 3516
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3517
    .local v2, indicatorW:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3518
    .local v1, indicatorH:I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 3520
    sub-int v10, v7, v2

    shr-int/lit8 v4, v10, 0x1

    .line 3521
    .local v4, marginX:I
    sub-int v10, v6, v1

    shr-int/lit8 v5, v10, 0x1

    .line 3523
    .local v5, marginY:I
    if-lt p1, v4, :cond_4

    sub-int v10, v7, v4

    if-gt p1, v10, :cond_4

    if-lt p2, v5, :cond_4

    sub-int v10, v6, v5

    if-gt p2, v10, :cond_4

    :goto_2
    move v9, v8

    goto :goto_0

    .line 3507
    .end local v1           #indicatorH:I
    .end local v2           #indicatorW:I
    .end local v4           #marginX:I
    .end local v5           #marginY:I
    .end local v6           #screenH:I
    .end local v7           #screenW:I
    :cond_3
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$5500(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3508
    iget-object v0, v3, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .restart local v1       #indicatorH:I
    .restart local v2       #indicatorW:I
    .restart local v4       #marginX:I
    .restart local v5       #marginY:I
    .restart local v6       #screenH:I
    .restart local v7       #screenW:I
    :cond_4
    move v8, v9

    .line 3523
    goto :goto_2
.end method

.method public isZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3490
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChanged(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 3573
    :goto_0
    return-void

    .line 3572
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3160
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mNewOrientation:I

    .line 3163
    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3335
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView;->storeIndex()V

    .line 3337
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeCB:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3339
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->preStop()V

    .line 3341
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3343
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->exit()V

    .line 3344
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    .line 3345
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeCB:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;

    .line 3348
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;

    if-eqz v0, :cond_1

    .line 3349
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;

    .line 3352
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_2

    .line 3353
    sget-object v0, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 3354
    sput-object v2, Lcom/htc/home/personalize/opensense/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 3358
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    if-eqz v0, :cond_3

    .line 3359
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->release()V

    .line 3360
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    .line 3363
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_4

    .line 3364
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->release()V

    .line 3365
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->release()V

    .line 3366
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->release()V

    .line 3367
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .line 3370
    :cond_4
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    .line 3372
    :cond_5
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    .line 3373
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    .line 3376
    :cond_6
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 3377
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3378
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 3381
    :cond_7
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 3382
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3383
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    .line 3386
    :cond_8
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 3387
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3388
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    .line 3391
    :cond_9
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 3392
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3393
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    .line 3396
    :cond_a
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 3397
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3398
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    .line 3401
    :cond_b
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mContext:Landroid/app/Activity;

    .line 3402
    :cond_c
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3408
    return-void

    .line 3342
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public removeViewFromTagGroup(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3475
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 3478
    :cond_0
    :goto_0
    return-void

    .line 3477
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v3, 0x1

    .line 3420
    if-eqz p1, :cond_3

    .line 3421
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDataSetObserver:Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3426
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 3428
    if-nez p1, :cond_4

    .line 3429
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    .line 3430
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    .line 3431
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    .line 3432
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_1

    .line 3433
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel()V

    .line 3434
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3435
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->abortAnimation()V

    .line 3437
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollTo(II)V

    .line 3441
    :goto_1
    return-void

    .line 3422
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 3423
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mDataSetObserver:Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 3439
    :cond_4
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews(Z)V

    goto :goto_1
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "bmp"
    .parameter "matrix"

    .prologue
    .line 3591
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 3592
    return-void
.end method

.method public setLoadedIndicator(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 3581
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    .line 3582
    return-void
.end method

.method public setOnHighQualityPhotoHandler(Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3539
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnHighQualityPhotoListener;

    .line 3540
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3531
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mItemClickListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnItemClickListener;

    .line 3532
    return-void
.end method

.method public setOnPanListener(Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3563
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    .line 3564
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    .line 3548
    return-void
.end method

.method public setOnZoomListener(Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3555
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    .line 3556
    return-void
.end method

.method public setPosition(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 3448
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    .line 3449
    .local v0, oldPos:I
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    .line 3451
    if-eq v0, p1, :cond_0

    .line 3452
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews(Z)V

    .line 3454
    :cond_0
    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 3455
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I

    invoke-interface {v1, v0, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    .line 3456
    :cond_1
    return-void
.end method

.method public showTagGroup(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 3460
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 3465
    :goto_0
    return-void

    .line 3462
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3464
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 3462
    .end local v0           #visibility:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

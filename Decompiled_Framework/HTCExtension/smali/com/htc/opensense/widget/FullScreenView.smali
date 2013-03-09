.class public Lcom/htc/opensense/widget/FullScreenView;
.super Landroid/widget/FrameLayout;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;,
        Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;,
        Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;,
        Lcom/htc/opensense/widget/FullScreenView$OnPanListener;,
        Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;,
        Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;,
        Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;,
        Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;,
        Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;,
        Lcom/htc/opensense/widget/FullScreenView$EaseLinear;,
        Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;,
        Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;,
        Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;
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

.field private static mUseBestFit:Z = false

.field private static mZoomButtonsController:Landroid/widget/ZoomButtonsController; = null

.field private static sBaseScrollDuration:I = 0x0

.field private static final sEnableMultiTouch:Z = true

.field private static final sEnablePanning:Z = true

.field private static final sHysteresis:I

.field private static sPadding:I

.field private static final sUseBounce:Z


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAllowScroll:Z

.field private mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

.field private mContext:Landroid/app/Activity;

.field private mCorruptIndicator:Landroid/graphics/Bitmap;

.field private mCurrentDirection:I

.field private mCurrentPosition:I

.field private mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

.field private mDown:Z

.field private mDrmBigLock:Landroid/graphics/Bitmap;

.field private mDrmMsgPaint:Landroid/graphics/Paint;

.field private mDrmSmallLock:Landroid/graphics/Bitmap;

.field private mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

.field private mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

.field private mDrmTapViewLandscapeX:I

.field private mDrmTapViewPortraitX:I

.field private mFirst:Z

.field private mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

.field private mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

.field private mIsFromOutSideAp:Z

.field private mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

.field protected mLastOrientation:I

.field private mLayoutComplete:Z

.field private mLeaveFullScreen:Z

.field private mLoadingIndicator:Landroid/graphics/Bitmap;

.field protected mNewOrientation:I

.field private mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

.field private mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

.field private mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

.field private mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

.field private mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

.field private mPhysics:Lcom/htc/widget/EaseOutCubic;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScreenH:I

.field private mScreenW:I

.field private mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

.field private mTagGroup:Landroid/widget/RelativeLayout;

.field private mVideoIndicator:Landroid/graphics/Bitmap;

.field private mViewSingleImage:Z

.field private sScrollOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sHysteresis:I

    const/16 v0, 0x4b0

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentDirection:I

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView;->mLastOrientation:I

    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView;->mNewOrientation:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mIsFromOutSideAp:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;-><init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;-><init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    new-instance v0, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v0}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;-><init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mIsFromOutSideAp:Z

    iput-object p2, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->initLocalPhoto(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->computeCurrScreenSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/widget/FullScreenView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->measureDrmText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/htc/opensense/widget/FullScreenView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/opensense/widget/FullScreenView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView;->getScrollDuration(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/widget/EaseOutCubic;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$2200()Landroid/widget/ZoomButtonsController;
    .locals 1

    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->updateViews()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->sScrollOffset:I

    return v0
.end method

.method static synthetic access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/htc/opensense/widget/FullScreenView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->loadHQImage(Z)V

    return-void
.end method

.method static synthetic access$4700()I
    .locals 1

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sHysteresis:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5900()I
    .locals 1

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    return v0
.end method

.method static synthetic access$6200(Lcom/htc/opensense/widget/FullScreenView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    return-object v0
.end method

.method private animateScrollTo(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->startScrollTo(II)V

    return-void
.end method

.method private cancelHQDecode()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    :cond_0
    return-void
.end method

.method private computeCurrScreenSize()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    sget v1, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->sScrollOffset:I

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    if-le v0, v1, :cond_2

    const/16 v0, 0x3e8

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    if-ge v0, v1, :cond_0

    const/16 v0, 0x4b0

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private getScrollDuration(II)I
    .locals 1

    if-le p1, p2, :cond_0

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0
.end method

.method private initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x2090039

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/htc/opensense/widget/FullScreenView;->useBestFit(Z)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801ba

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801b6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801b8

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    const v5, 0x20200da

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20802cc

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const v5, 0x20200d2

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v8

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    invoke-virtual {v5, p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setView(Lcom/htc/opensense/widget/FullScreenView;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    const-string v6, "image1"

    iput-object v6, v5, Lcom/htc/opensense/widget/ImageViewTouchBase;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    invoke-virtual {v5, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeMode(I)V

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const v5, 0x20200d3

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v7

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setView(Lcom/htc/opensense/widget/FullScreenView;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    const-string v6, "image2"

    iput-object v6, v5, Lcom/htc/opensense/widget/ImageViewTouchBase;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->clearChildFocus(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setFocusable(Z)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setFocusableInTouchMode(Z)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->requestFocus()Z

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeMode(I)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setEnableTrackballScroll(Z)V

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const v5, 0x20200d4

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v9

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    invoke-virtual {v5, p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setView(Lcom/htc/opensense/widget/FullScreenView;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    const-string v6, "image3"

    iput-object v6, v5, Lcom/htc/opensense/widget/ImageViewTouchBase;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeMode(I)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    sget-boolean v6, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    sget-boolean v6, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    sget-boolean v6, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    :cond_0
    const v5, 0x20200d1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    iput-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$1;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$1;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnStartListener(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$2;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$2;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnFinishAnimationListener(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$3;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$3;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnScrollListener(Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$4;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$4;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnDrawCallback(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$5;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$5;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setLayoutCompletedCallback(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v10, v7}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v5, :cond_3

    const-string v5, "FullScreen"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "Enable Zoom Controls"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    const v5, 0x20200d0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->setupZoomButtonController(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private initLocalPhoto(Landroid/app/Activity;)V
    .locals 6

    invoke-static {}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->ClearUsingFastDrawble()V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must sepcify context when you call this function"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/htc/opensense/widget/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "position"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, -0x1

    const-string v2, "FullScreen"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "is it view single image? "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mViewSingleImage:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isOrientationChanged()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLastOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLastOrientation:I

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mNewOrientation:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadHQImage(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    #calls: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->startDecodeHQ()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    goto :goto_0
.end method

.method private loadQualityImage(ZZ)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/htc/opensense/widget/FullScreenView;->loadHQImage(Z)V

    return-void
.end method

.method private measureDrmText(Ljava/lang/String;)V
    .locals 19

    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->DRM_MESSAGE_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v14, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0xa

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0xa

    :goto_1
    if-lez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    div-int v2, v9, v13

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v12, v9

    if-ge v12, v11, :cond_0

    sub-int v17, v11, v12

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I

    :cond_0
    const/4 v3, 0x0

    if-lt v12, v11, :cond_4

    sub-int v17, v12, v11

    div-int v15, v17, v2

    add-int/lit8 v16, v15, 0x1

    sub-int v4, v13, v15

    if-gez v4, :cond_1

    const/4 v4, 0x0

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    sub-int v17, v11, v5

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    if-ge v12, v11, :cond_3

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    move v7, v9

    if-ge v7, v6, :cond_6

    sub-int v17, v6, v7

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I

    :cond_6
    const/4 v3, 0x0

    if-lt v7, v6, :cond_a

    sub-int v17, v7, v6

    div-int v15, v17, v2

    add-int/lit8 v16, v15, 0x1

    sub-int v4, v13, v15

    if-gez v4, :cond_7

    const/4 v4, 0x0

    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    sub-int v17, v6, v5

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    if-ge v7, v6, :cond_9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v3, 0x1

    :cond_a
    if-nez v3, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

    :cond_c
    return-void

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0xa

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0xa

    goto/16 :goto_1
.end method

.method private pauseThread()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->cancelHQDecode()V

    return-void
.end method

.method private recalcMatrix()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v1, v3

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/widget/FullScreenView;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V
    .locals 4

    const/4 v3, -0x1

    const-string v2, "nuorientation"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private scrollToView(IZ)V
    .locals 9

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v7

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int v3, v8, v0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-direct {p0, v8, v7}, Lcom/htc/opensense/widget/FullScreenView;->getScrollDuration(II)I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int/2addr v0, v8

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v5

    add-int v1, v0, v5

    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v0

    sget v5, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int/2addr v5, v8

    sub-int v1, v0, v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    goto :goto_1
.end method

.method private setImage(IZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    if-le v14, v0, :cond_2

    const/4 v4, -0x1

    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentDirection:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    array-length v7, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v13, v2, v5

    if-eqz v13, :cond_0

    const/4 v14, 0x0

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v13, v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    if-ge v14, v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    if-nez v14, :cond_6

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_3
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    array-length v7, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_8

    aget-object v6, v2, v5

    const/4 v14, 0x0

    iput-boolean v14, v6, Lcom/htc/opensense/widget/ImageViewTouchBase;->mIsZooming:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-gtz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-gtz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/htc/opensense/widget/FullScreenView;->scrollToView(IZ)V

    sget-boolean v14, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v14, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V

    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-eq v8, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    invoke-interface {v14, v8, v15}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    goto/16 :goto_0

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

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.intent.extra.screenOrientation"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v3}, Lcom/htc/opensense/widget/FullScreenView;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .locals 5

    new-instance v3, Landroid/widget/ZoomButtonsController;

    invoke-direct {v3, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    sput-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    sget-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v3}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const v3, 0x102033a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x10801f8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v3, 0x102033b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x1080201

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    sget-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    sget-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v4, Lcom/htc/opensense/widget/FullScreenView$6;

    invoke-direct {v4, p0}, Lcom/htc/opensense/widget/FullScreenView$6;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    return-void
.end method

.method private showOnScreenControls()V
    .locals 2

    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->updateZoomButtonsEnabled()V

    :cond_0
    return-void
.end method

.method private stopHQThread()V
    .locals 11

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->preStop()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v5, "FullScreen"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Stop HQ Thread "

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->join()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "FullScreen"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Stopped HQ thread "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sub-long v8, v3, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->exit()V

    iput-object v10, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    iput-object v10, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private storeIndex()V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "position"

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    return-void
.end method

.method private updateViews(Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v4

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_3
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-lez v0, :cond_7

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v4}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v4}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    sget-object v5, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/high16 v5, 0x3f80

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private useBestFit(Z)V
    .locals 0

    sput-boolean p1, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    return-void
.end method


# virtual methods
.method public addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public clearTagGroup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x5

    const/4 v1, 0x0

    if-gez v0, :cond_1

    neg-int v2, v0

    add-int/lit8 v1, v2, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-lez v0, :cond_2

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_2
    iput-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    :cond_3
    iget-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, p0, p1}, Landroid/widget/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v4, v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->handleTrackballEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return v1
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCurrImageHeight()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getCurrImageWidth()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getCurrOffsetX()I
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCurrOffsetY()I
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCurrPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    return v0
.end method

.method public getCurrScale()F
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    return v0
.end method

.method public getCurrView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScrollState()I
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "FullScreen"

    const-string v1, "getScrollState fail. The object is null"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHitIndicator(II)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v3, v10, v8

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-nez v10, :cond_1

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$6000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I

    move-result v10

    if-eq v10, v8, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const/4 v0, 0x0

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$6000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I

    move-result v10

    if-ne v10, v8, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v6

    if-lez v7, :cond_0

    if-lez v6, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v2, :cond_0

    if-lez v1, :cond_0

    sub-int v10, v7, v2

    shr-int/lit8 v4, v10, 0x1

    sub-int v10, v6, v1

    shr-int/lit8 v5, v10, 0x1

    if-lt p1, v4, :cond_5

    sub-int v10, v7, v4

    if-gt p1, v10, :cond_5

    if-lt p2, v5, :cond_5

    sub-int v10, v6, v5

    if-gt p2, v10, :cond_5

    :goto_2
    move v9, v8

    goto :goto_0

    :cond_3
    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-eqz v10, :cond_2

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$6100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v0, v3, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    move v8, v9

    goto :goto_2
.end method

.method public isZoom()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

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

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mNewOrientation:I

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->storeIndex()V

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->stopHQThread()V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    :cond_0
    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    sput-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->release()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->release()V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->release()V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->release()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    :cond_9
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    :cond_a
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    :cond_b
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public removeViewFromTagGroup(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    invoke-virtual {p1, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->abortAnimation()V

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle observer. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    goto :goto_1
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setLoadedIndicator(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnHighQualityPhotoHandler(Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->stopHQThread()V

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->start()V

    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    return-void
.end method

.method public setOnLayoutCompleteListener(Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    return-void
.end method

.method public setOnPanListener(Lcom/htc/opensense/widget/FullScreenView$OnPanListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    return-void
.end method

.method public setOnZoomListener(Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 3

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    :cond_0
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    invoke-interface {v1, v0, v2}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    :cond_1
    return-void
.end method

.method public showTagGroup(Z)V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

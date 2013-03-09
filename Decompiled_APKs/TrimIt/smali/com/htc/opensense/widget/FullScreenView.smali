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

    .prologue
    .line 90
    const/4 v0, 0x5

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    .line 91
    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sHysteresis:I

    .line 92
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    .line 98
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentDirection:I

    .line 99
    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    .line 100
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    .line 120
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    .line 123
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView;->mLastOrientation:I

    .line 124
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView;->mNewOrientation:I

    .line 126
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mIsFromOutSideAp:Z

    .line 136
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    .line 137
    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    .line 141
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;-><init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    .line 142
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;-><init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    .line 143
    new-instance v0, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v0}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    .line 147
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    .line 810
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    .line 4315
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 4316
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    .line 4317
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    .line 4318
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    .line 4319
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;-><init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    .line 4320
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    .line 4321
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    .line 4322
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    .line 4323
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    .line 156
    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mIsFromOutSideAp:Z

    .line 157
    iput-object p2, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    .line 158
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->initLocalPhoto(Landroid/app/Activity;)V

    .line 159
    return-void
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->computeCurrScreenSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/widget/FullScreenView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->measureDrmText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/htc/opensense/widget/FullScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/opensense/widget/FullScreenView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView;->getScrollDuration(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/widget/EaseOutCubic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$2200()Landroid/widget/ZoomButtonsController;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->updateViews()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->sScrollOffset:I

    return v0
.end method

.method static synthetic access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/htc/opensense/widget/FullScreenView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->loadHQImage(Z)V

    return-void
.end method

.method static synthetic access$4700()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sHysteresis:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5900()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    return v0
.end method

.method static synthetic access$6200(Lcom/htc/opensense/widget/FullScreenView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/FullScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    return-object v0
.end method

.method private animateScrollTo(II)V
    .locals 1
    .parameter "xNew"
    .parameter "yNew"

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->startScrollTo(II)V

    .line 3408
    return-void
.end method

.method private cancelHQDecode()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    .line 650
    :cond_0
    return-void
.end method

.method private computeCurrScreenSize()V
    .locals 2

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 3441
    :cond_0
    :goto_0
    return-void

    .line 3431
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    .line 3432
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    .line 3434
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    sget v1, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->sScrollOffset:I

    .line 3436
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    if-le v0, v1, :cond_2

    .line 3437
    const/16 v0, 0x3e8

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0

    .line 3438
    :cond_2
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    if-ge v0, v1, :cond_0

    .line 3439
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/opensense/widget/FullScreenView;->sBaseScrollDuration:I

    goto :goto_0
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 641
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
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3660
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
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 261
    iput-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    .line 262
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    .line 263
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    .line 264
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 265
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x2090039

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 266
    invoke-direct {p0, v8}, Lcom/htc/opensense/widget/FullScreenView;->useBestFit(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801ba

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 269
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801b6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    .line 270
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801b8

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    .line 272
    const v5, 0x20200da

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    .line 278
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20802cc

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    .line 279
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const v5, 0x20200d2

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v8

    .line 280
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    invoke-virtual {v5, p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setView(Lcom/htc/opensense/widget/FullScreenView;)V

    .line 281
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    const-string v6, "image1"

    iput-object v6, v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->name:Ljava/lang/String;

    .line 282
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    invoke-virtual {v5, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeMode(I)V

    .line 283
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const v5, 0x20200d3

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v7

    .line 284
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setView(Lcom/htc/opensense/widget/FullScreenView;)V

    .line 285
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    const-string v6, "image2"

    iput-object v6, v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->name:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->clearChildFocus(Landroid/view/View;)V

    .line 294
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setFocusable(Z)V

    .line 295
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setFocusableInTouchMode(Z)V

    .line 296
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->requestFocus()Z

    .line 300
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeMode(I)V

    .line 301
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    invoke-virtual {v5, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setEnableTrackballScroll(Z)V

    .line 302
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const v5, 0x20200d4

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aput-object v5, v6, v9

    .line 303
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    invoke-virtual {v5, p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setView(Lcom/htc/opensense/widget/FullScreenView;)V

    .line 304
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    const-string v6, "image3"

    iput-object v6, v5, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->name:Ljava/lang/String;

    .line 305
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeMode(I)V

    .line 306
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v5, :cond_0

    .line 307
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v8

    sget-boolean v6, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    .line 308
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v7

    sget-boolean v6, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    .line 309
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v5, v5, v9

    sget-boolean v6, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setUseBestFit(Z)V

    .line 312
    :cond_0
    const v5, 0x20200d1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    iput-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    .line 314
    iput-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    .line 316
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$1;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$1;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnStartListener(Ljava/lang/Runnable;)V

    .line 343
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$2;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$2;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnFinishAnimationListener(Ljava/lang/Runnable;)V

    .line 358
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$3;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$3;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnScrollListener(Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;)V

    .line 399
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$4;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$4;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setOnDrawCallback(Ljava/lang/Runnable;)V

    .line 468
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    new-instance v6, Lcom/htc/opensense/widget/FullScreenView$5;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/FullScreenView$5;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setLayoutCompletedCallback(Ljava/lang/Runnable;)V

    .line 574
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v5, :cond_2

    .line 575
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    .local v0, arr$:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v3, v0, v1

    .line 576
    .local v3, iv:Lcom/htc/opensense/widget/ImageViewTouchBase;
    if-eqz v3, :cond_1

    .line 577
    invoke-virtual {v3, v10, v7}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 575
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v0           #arr$:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    .end local v1           #i$:I
    .end local v3           #iv:Lcom/htc/opensense/widget/ImageViewTouchBase;
    .end local v4           #len$:I
    :cond_2
    sget-boolean v5, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v5, :cond_3

    .line 582
    const-string v5, "FullScreen"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "Enable Zoom Controls"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    const v5, 0x20200d0

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/opensense/widget/FullScreenView;->setupZoomButtonController(Landroid/view/View;)V

    .line 585
    :cond_3
    return-void
.end method

.method private initLocalPhoto(Landroid/app/Activity;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 162
    invoke-static {}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->ClearUsingFastDrawble()V

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must sepcify context when you call this function"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/htc/opensense/widget/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 170
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "position"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 172
    .local v1, pos:I
    const/4 v0, -0x1

    .line 174
    .local v0, listCount:I
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

    .line 175
    return-void
.end method

.method private isOrientationChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3444
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLastOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3446
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
    .parameter "load"

    .prologue
    .line 882
    if-eqz p1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    #calls: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->startDecodeHQ()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    goto :goto_0
.end method

.method private loadQualityImage(ZZ)V
    .locals 0
    .parameter "bFull"
    .parameter "bHQ"

    .prologue
    .line 878
    invoke-direct {p0, p2}, Lcom/htc/opensense/widget/FullScreenView;->loadHQImage(Z)V

    .line 879
    return-void
.end method

.method private measureDrmText(Ljava/lang/String;)V
    .locals 19
    .parameter "pathName"

    .prologue
    .line 182
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->DRM_MESSAGE_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    move-object/from16 v14, p1

    .line 189
    .local v14, tmpName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 190
    .local v13, size:I
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

    .line 191
    .local v11, portraitBase:I
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

    .line 192
    .local v6, landscapeBase:I
    :goto_1
    if-lez v13, :cond_c

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 195
    .local v9, nameWidth:I
    div-int v2, v9, v13

    .line 197
    .local v2, charWidth:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v12, v9

    .line 201
    .local v12, portraitNameW:I
    if-ge v12, v11, :cond_0

    .line 202
    sub-int v17, v11, v12

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I

    .line 204
    :cond_0
    const/4 v3, 0x0

    .line 205
    .local v3, crossLine:Z
    if-lt v12, v11, :cond_4

    .line 206
    sub-int v17, v12, v11

    div-int v15, v17, v2

    .line 207
    .local v15, totalChar:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #totalChar:I
    .local v16, totalChar:I
    sub-int v4, v13, v15

    .line 208
    .local v4, end:I
    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 209
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 210
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    if-nez v3, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 213
    .local v5, firstLineWidth:I
    sub-int v17, v11, v5

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I

    .line 215
    .end local v5           #firstLineWidth:I
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, nexName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 217
    if-ge v12, v11, :cond_3

    .line 218
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_3
    const/4 v3, 0x1

    .line 221
    .end local v4           #end:I
    .end local v10           #nexName:Ljava/lang/String;
    .end local v16           #totalChar:I
    :cond_4
    if-nez v3, :cond_5

    .line 222
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;

    .line 228
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 229
    move v7, v9

    .line 230
    .local v7, landscapeNameWidth:I
    if-ge v7, v6, :cond_6

    .line 231
    sub-int v17, v6, v7

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I

    .line 233
    :cond_6
    const/4 v3, 0x0

    .line 234
    if-lt v7, v6, :cond_a

    .line 235
    sub-int v17, v7, v6

    div-int v15, v17, v2

    .line 236
    .restart local v15       #totalChar:I
    add-int/lit8 v16, v15, 0x1

    .end local v15           #totalChar:I
    .restart local v16       #totalChar:I
    sub-int v4, v13, v15

    .line 237
    .restart local v4       #end:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 238
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 239
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    if-nez v3, :cond_8

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 242
    .restart local v5       #firstLineWidth:I
    sub-int v17, v6, v5

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I

    .line 244
    .end local v5           #firstLineWidth:I
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 245
    .restart local v10       #nexName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 246
    if-ge v7, v6, :cond_9

    .line 247
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_9
    const/4 v3, 0x1

    .line 250
    .end local v4           #end:I
    .end local v10           #nexName:Ljava/lang/String;
    .end local v16           #totalChar:I
    :cond_a
    if-nez v3, :cond_b

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;

    .line 257
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

    .line 190
    .restart local v13       #size:I
    .restart local v14       #tmpName:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0xa

    goto/16 :goto_0

    .line 191
    .restart local v11       #portraitBase:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0xa

    goto/16 :goto_1
.end method

.method private pauseThread()V
    .locals 0

    .prologue
    .line 3739
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->cancelHQDecode()V

    .line 3740
    return-void
.end method

.method private recalcMatrix()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3464
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v3

    if-nez v1, :cond_1

    .line 3472
    :cond_0
    :goto_0
    return-void

    .line 3466
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v1, v3

    .line 3468
    .local v0, ivt:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    iget-object v1, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3469
    iget-object v1, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFullBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0

    .line 3470
    :cond_2
    iget-object v1, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3471
    iget-object v1, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "activity"
    .parameter "prefs"

    .prologue
    .line 3489
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/opensense/widget/FullScreenView;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V

    .line 3490
    return-void
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V
    .locals 4
    .parameter "activity"
    .parameter "prefs"
    .parameter "ignoreIntentExtra"

    .prologue
    const/4 v3, -0x1

    .line 3494
    const-string v2, "nuorientation"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3499
    .local v1, req:I
    if-ne v1, v3, :cond_0

    .line 3500
    const/4 v1, 0x2

    .line 3502
    :cond_0
    if-nez p2, :cond_1

    .line 3503
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3504
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3506
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3507
    return-void
.end method

.method private scrollToView(IZ)V
    .locals 9
    .parameter "direction"
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    .line 3634
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v8

    .line 3635
    .local v8, width:I
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v7

    .line 3639
    .local v7, height:I
    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int v3, v8, v0

    .line 3640
    .local v3, toX:I
    const/4 v4, 0x0

    .line 3641
    .local v4, toY:I
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 3642
    :cond_0
    move v1, v3

    .line 3643
    .local v1, fromX:I
    move v2, v4

    .line 3649
    .local v2, fromY:I
    :goto_0
    if-eqz p1, :cond_1

    .line 3650
    if-eqz p2, :cond_4

    .line 3651
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-direct {p0, v8, v7}, Lcom/htc/opensense/widget/FullScreenView;->getScrollDuration(II)I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mPhysics:Lcom/htc/widget/EaseOutCubic;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->startScroll(IIIIILcom/htc/widget/EaseOutCubic;)V

    .line 3657
    :cond_1
    :goto_1
    return-void

    .line 3645
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    sget v0, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int/2addr v0, v8

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v5

    add-int v1, v0, v5

    .line 3647
    .restart local v1       #fromX:I
    :goto_2
    const/4 v2, 0x0

    .restart local v2       #fromY:I
    goto :goto_0

    .line 3645
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v0

    sget v5, Lcom/htc/opensense/widget/FullScreenView;->sPadding:I

    add-int/2addr v5, v8

    sub-int v1, v0, v5

    goto :goto_2

    .line 3654
    .restart local v1       #fromX:I
    .restart local v2       #fromY:I
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0, v3, v4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollTo(II)V

    goto :goto_1
.end method

.method private setImage(IZ)V
    .locals 17
    .parameter "pos"
    .parameter "animation"

    .prologue
    .line 3512
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mLayoutComplete:Z

    if-nez v14, :cond_1

    .line 3630
    :cond_0
    :goto_0
    return-void

    .line 3516
    :cond_1
    const/4 v4, 0x0

    .line 3517
    .local v4, direction:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    if-le v14, v0, :cond_2

    .line 3518
    const/4 v4, -0x1

    .line 3530
    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentDirection:I

    .line 3531
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    .line 3532
    .local v8, oldPos:I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    .line 3534
    const/4 v3, 0x0

    .line 3536
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v14, :cond_0

    .line 3537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    .local v2, arr$:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v13, v2, v5

    .line 3538
    .local v13, v:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    if-eqz v13, :cond_0

    .line 3539
    const/4 v14, 0x0

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v13, v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    .line 3537
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3519
    .end local v2           #arr$:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    .end local v3           #count:I
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #oldPos:I
    .end local v13           #v:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    move/from16 v0, p1

    if-ge v14, v0, :cond_3

    .line 3520
    const/4 v4, 0x1

    goto :goto_1

    .line 3522
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 3547
    .restart local v2       #arr$:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    .restart local v3       #count:I
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #oldPos:I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3548
    .local v9, t1:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    if-nez v14, :cond_6

    .line 3549
    packed-switch v4, :pswitch_data_0

    .line 3604
    :cond_5
    :goto_3
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3612
    .local v11, t2:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    array-length v7, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_8

    aget-object v6, v2, v5

    .line 3613
    .local v6, ivt:Lcom/htc/opensense/widget/ImageViewTouchBase;
    const/4 v14, 0x0

    iput-boolean v14, v6, Lcom/htc/opensense/widget/ImageViewTouchBase;->mIsZooming:Z

    .line 3612
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3551
    .end local v6           #ivt:Lcom/htc/opensense/widget/ImageViewTouchBase;
    .end local v11           #t2:J
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

    .line 3552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    .line 3555
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-gtz v14, :cond_5

    .line 3556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_3

    .line 3569
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

    .line 3570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    .line 3575
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    .line 3576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    .line 3595
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-gtz v14, :cond_7

    .line 3596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    .line 3598
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    .line 3599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->recycleBitmaps()V

    .line 3600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v14, v15}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_3

    .line 3616
    .restart local v11       #t2:J
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/htc/opensense/widget/FullScreenView;->scrollToView(IZ)V

    .line 3619
    sget-boolean v14, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v14, :cond_9

    .line 3620
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V

    .line 3624
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mFirst:Z

    .line 3626
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-eq v8, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    if-eqz v14, :cond_0

    .line 3627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    invoke-interface {v14, v8, v15}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    goto/16 :goto_0

    .line 3549
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
    .line 3450
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3451
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 3461
    :cond_0
    :goto_0
    return-void

    .line 3452
    :cond_1
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3453
    const-string v2, "android.intent.extra.screenOrientation"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3455
    .local v1, orientation:I
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3456
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3459
    .end local v1           #orientation:I
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v3}, Lcom/htc/opensense/widget/FullScreenView;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    .line 588
    new-instance v3, Landroid/widget/ZoomButtonsController;

    invoke-direct {v3, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    sput-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 589
    sget-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v3}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, zoomControls:Landroid/view/View;
    const v3, 0x1020332

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 592
    .local v2, zoomOutButton:Landroid/widget/ImageButton;
    const v3, 0x10801f8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 593
    const v3, 0x1020333

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 595
    .local v1, zoomInButton:Landroid/widget/ImageButton;
    const v3, 0x1080201

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 597
    sget-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 598
    sget-object v3, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v4, Lcom/htc/opensense/widget/FullScreenView$6;

    invoke-direct {v4, p0}, Lcom/htc/opensense/widget/FullScreenView$6;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 616
    return-void
.end method

.method private showOnScreenControls()V
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 621
    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 622
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->updateZoomButtonsEnabled()V

    .line 624
    :cond_0
    return-void
.end method

.method private stopHQThread()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3999
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v5, :cond_0

    .line 4000
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4001
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->preStop()V

    .line 4003
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4004
    .local v1, t1:J
    const-string v5, "FullScreen"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Stop HQ Thread "

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4005
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->join()V

    .line 4006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4007
    .local v3, t2:J
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

    .line 4011
    .end local v1           #t1:J
    .end local v3           #t2:J
    :goto_0
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->exit()V

    .line 4012
    iput-object v10, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    .line 4013
    iput-object v10, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeCB:Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;

    .line 4015
    :cond_0
    return-void

    .line 4008
    :catch_0
    move-exception v0

    .line 4009
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private storeIndex()V
    .locals 3

    .prologue
    .line 3411
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 3412
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3413
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "position"

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3416
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 1

    .prologue
    .line 3995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    .line 3996
    return-void
.end method

.method private updateViews(Z)V
    .locals 6
    .parameter "bForce"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3970
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 3992
    :goto_0
    return-void

    .line 3972
    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3973
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    .line 3976
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

    .line 3977
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 3979
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

    .line 3980
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 3981
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    .line 3986
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

    .line 3987
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 3988
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0

    .line 3984
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v4}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_1

    .line 3991
    :cond_8
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v5

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v0, v4}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 626
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

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v2, v3

    .line 631
    .local v0, imageView:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    .line 633
    .local v1, scale:F
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

    .line 634
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

    .line 633
    goto :goto_1

    :cond_3
    move v3, v4

    .line 634
    goto :goto_2
.end method

.method private useBestFit(Z)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 637
    sput-boolean p1, Lcom/htc/opensense/widget/FullScreenView;->mUseBestFit:Z

    .line 638
    return-void
.end method


# virtual methods
.method public addViewToTagGroup(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3813
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 3815
    :cond_0
    :goto_0
    return-void

    .line 3814
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public clearTagGroup()V
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3834
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3835
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 860
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-nez v1, :cond_0

    .line 867
    :goto_0
    return v0

    .line 863
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

    .line 864
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 865
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 867
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "m"

    .prologue
    const/4 v4, 0x1

    .line 813
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 820
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x5

    .line 822
    .local v0, ox:I
    const/4 v1, 0x0

    .line 823
    .local v1, tx:I
    if-gez v0, :cond_1

    .line 825
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x5

    .line 826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 855
    .end local v0           #ox:I
    .end local v1           #tx:I
    :cond_0
    :goto_0
    return v4

    .line 828
    .restart local v0       #ox:I
    .restart local v1       #tx:I
    :cond_1
    if-lez v0, :cond_2

    .line 830
    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x5

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 834
    :cond_2
    iput-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    .line 837
    .end local v0           #ox:I
    .end local v1           #tx:I
    :cond_3
    iget-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    if-eqz v2, :cond_0

    .line 840
    iget-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    if-eqz v2, :cond_5

    .line 841
    sget-boolean v2, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v2, :cond_4

    .line 842
    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, p0, p1}, Landroid/widget/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 849
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 851
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDown:Z

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x1

    .line 872
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->handleTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 874
    :cond_0
    return v1
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCurrImageHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 784
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 785
    const/4 v0, 0x0

    .line 787
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

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

    .prologue
    const/4 v2, 0x1

    .line 773
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 776
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

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

    .prologue
    .line 757
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

    .prologue
    .line 765
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

    .prologue
    .line 741
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    return v0
.end method

.method public getCurrScale()F
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    return v0
.end method

.method public getCurrView()Landroid/view/View;
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getScrollState()I
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getState()I

    move-result v0

    .line 799
    :goto_0
    return v0

    .line 798
    :cond_0
    const-string v0, "FullScreen"

    const-string v1, "getScrollState fail. The object is null"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHitIndicator(II)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3852
    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v3, v10, v8

    .line 3853
    .local v3, iv:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-nez v10, :cond_1

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$6000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 3879
    :cond_0
    :goto_0
    return v9

    .line 3855
    :cond_1
    const/4 v0, 0x0

    .line 3856
    .local v0, bmp:Landroid/graphics/Bitmap;
    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$6000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I

    move-result v10

    if-ne v10, v8, :cond_3

    .line 3857
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 3866
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3868
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getWidth()I

    move-result v7

    .line 3869
    .local v7, screenW:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v6

    .line 3870
    .local v6, screenH:I
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 3872
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3873
    .local v2, indicatorW:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3874
    .local v1, indicatorH:I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 3876
    sub-int v10, v7, v2

    shr-int/lit8 v4, v10, 0x1

    .line 3877
    .local v4, marginX:I
    sub-int v10, v6, v1

    shr-int/lit8 v5, v10, 0x1

    .line 3879
    .local v5, marginY:I
    if-lt p1, v4, :cond_5

    sub-int v10, v7, v4

    if-gt p1, v10, :cond_5

    if-lt p2, v5, :cond_5

    sub-int v10, v6, v5

    if-gt p2, v10, :cond_5

    :goto_2
    move v9, v8

    goto :goto_0

    .line 3858
    .end local v1           #indicatorH:I
    .end local v2           #indicatorW:I
    .end local v4           #marginX:I
    .end local v5           #marginY:I
    .end local v6           #screenH:I
    .end local v7           #screenW:I
    :cond_3
    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3860
    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$6100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3861
    iget-object v0, v3, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 3863
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    goto :goto_1

    .restart local v1       #indicatorH:I
    .restart local v2       #indicatorW:I
    .restart local v4       #marginX:I
    .restart local v5       #marginY:I
    .restart local v6       #screenH:I
    .restart local v7       #screenW:I
    :cond_5
    move v8, v9

    .line 3879
    goto :goto_2
.end method

.method public isZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3841
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
    .parameter "position"

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 3948
    :goto_0
    return-void

    .line 3947
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
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 3480
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mNewOrientation:I

    .line 3481
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

    .line 3483
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v1

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 3486
    :cond_1
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3672
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->storeIndex()V

    .line 3674
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->stopHQThread()V

    .line 3676
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    if-eqz v0, :cond_0

    .line 3677
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mChangeExifToFitRunnable:Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;

    .line 3680
    :cond_0
    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_1

    .line 3681
    sget-object v0, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 3682
    sput-object v2, Lcom/htc/opensense/widget/FullScreenView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 3686
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    if-eqz v0, :cond_2

    .line 3687
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->release()V

    .line 3688
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    .line 3691
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    if-eqz v0, :cond_3

    .line 3692
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->release()V

    .line 3693
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->release()V

    .line 3694
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->release()V

    .line 3695
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    .line 3698
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mPrefs:Landroid/content/SharedPreferences;

    .line 3700
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    .line 3701
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;

    .line 3704
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 3705
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3706
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 3709
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 3710
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3711
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    .line 3714
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 3715
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3716
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;

    .line 3719
    :cond_8
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 3720
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3721
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;

    .line 3724
    :cond_9
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 3725
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3726
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;

    .line 3729
    :cond_a
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mContext:Landroid/app/Activity;

    .line 3730
    :cond_b
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3736
    return-void
.end method

.method public removeViewFromTagGroup(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3823
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 3826
    :cond_0
    :goto_0
    return-void

    .line 3825
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    .line 3750
    if-eqz p1, :cond_3

    .line 3751
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    invoke-virtual {p1, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3761
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 3763
    if-nez p1, :cond_4

    .line 3764
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    .line 3765
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    .line 3766
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->forceRecycleBitmaps()V

    .line 3767
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-eqz v1, :cond_1

    .line 3768
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    .line 3769
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3770
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->abortAnimation()V

    .line 3772
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

    .line 3776
    :goto_1
    return-void

    .line 3752
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 3753
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mDataSetObserver:Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3756
    :catch_0
    move-exception v0

    .line 3758
    .local v0, e:Ljava/lang/Exception;
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

    .line 3774
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v4}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    goto :goto_1
.end method

.method public setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "bmp"
    .parameter "matrix"

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setDisplayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 3967
    return-void
.end method

.method public setLoadedIndicator(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 3956
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;

    .line 3957
    return-void
.end method

.method public setOnHighQualityPhotoHandler(Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    if-eq v0, p1, :cond_0

    .line 3897
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView;->stopHQThread()V

    .line 3899
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnHighQualityPhotoListener:Lcom/htc/opensense/widget/FullScreenView$OnHighQualityPhotoListener;

    .line 3901
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    if-nez v0, :cond_1

    .line 3903
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    .line 3904
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->start()V

    .line 3906
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3887
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mItemClickListener:Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;

    .line 3888
    return-void
.end method

.method public setOnLayoutCompleteListener(Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3938
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnLayoutCompleteListener:Lcom/htc/opensense/widget/FullScreenView$OnLayoutCompleteListener;

    .line 3939
    return-void
.end method

.method public setOnPanListener(Lcom/htc/opensense/widget/FullScreenView$OnPanListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3929
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    .line 3930
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3913
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    .line 3914
    return-void
.end method

.method public setOnZoomListener(Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3921
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    .line 3922
    return-void
.end method

.method public setPosition(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 3783
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    .line 3784
    .local v0, oldPos:I
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    .line 3786
    if-eq v0, p1, :cond_0

    .line 3787
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V

    .line 3789
    :cond_0
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 3790
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I

    invoke-interface {v1, v0, v2}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    .line 3791
    :cond_1
    return-void
.end method

.method public showTagGroup(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 3799
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 3804
    :goto_0
    return-void

    .line 3801
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3803
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView;->mTagGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 3801
    .end local v0           #visibility:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

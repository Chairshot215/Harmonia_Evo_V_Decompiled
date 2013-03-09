.class Landroid/webkit/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$1;,
        Landroid/webkit/ZoomManager$PostScale;,
        Landroid/webkit/ZoomManager$ScaleDetectorListener;,
        Landroid/webkit/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 4.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static final ZOOM_ANIMATION_LENGTH:I = 0xaf

.field private static mLastTrimMemory:D


# instance fields
.field isMTing:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCustomizeMaxZoomScale:F

.field private mCustomizeMinZoomScale:F

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapZoomFactor:F

.field private mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

.field mEndzoomRatio:F

.field private mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

.field public mFocusNodeScaleBegin:I

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field protected mMatrixValues:[F

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field mStartZoomRatio:F

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field public m_bEnableHTCZoomMethod:Z

.field public m_bEnableMTBouncingToTabMode:Z

.field public m_bIsBrowserApp:Z

.field m_nSelectHighlightColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v1, 0x3be56042

    const-class v0, Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    sput v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    sput v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/webkit/ZoomManager;->mLastTrimMemory:D

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V
    .locals 3

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    const v0, 0x4479c000

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mMatrixValues:[F

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->m_bEnableHTCZoomMethod:Z

    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/ZoomManager;->m_nSelectHighlightColor:I

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    iput v2, p0, Landroid/webkit/ZoomManager;->mStartZoomRatio:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mEndzoomRatio:F

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->isMTing:Z

    iput v1, p0, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    iput-object p1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    new-instance v0, Landroid/webkit/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/ZoomManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/ZoomManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1100()F
    .locals 1

    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1202(Landroid/webkit/ZoomManager;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1300(Landroid/webkit/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/ZoomManager;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$1500(Landroid/webkit/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/ZoomManager;FZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/ZoomManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;
    .locals 1

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$502(Landroid/webkit/ZoomManager;F)F
    .locals 0

    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$602(Landroid/webkit/ZoomManager;F)F
    .locals 0

    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/ZoomManager;)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkit/ZoomControlBase;
    .locals 2

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomControlEmbedded;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-nez v0, :cond_2

    new-instance v0, Landroid/webkit/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    :cond_2
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultZoomScale(F)V
    .locals 5

    const-wide/16 v3, 0x0

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    iput p1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    const/high16 v1, 0x3f80

    div-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    const/high16 v1, 0x3e80

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    :goto_0
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    :goto_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    invoke-static {v1, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    :cond_0
    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return-void

    :cond_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_1
.end method

.method public static setTabEffectType_Transition(I)V
    .locals 0

    return-void
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x3d4

    iput v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    :goto_0
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    return-void

    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 18

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v14, p1, v14

    if-gez v14, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    :goto_1
    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz p2, :cond_0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v14, p1, v14

    if-nez v14, :cond_1

    if-eqz p3, :cond_5

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-double v2, v14

    sget-wide v14, Landroid/webkit/ZoomManager;->mLastTrimMemory:D

    sub-double v14, v2, v14

    const-wide v16, 0x40c3880000000000L

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    sput-wide v2, Landroid/webkit/ZoomManager;->mLastTrimMemory:D

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    const/16 v14, 0x14

    invoke-static {v14}, Landroid/webkit/WebView;->nativeOnTrimMemory(I)V

    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v14, p1, v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mActualScale:F

    const/high16 v14, 0x3f80

    div-float v14, v14, p1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    mul-float v9, p1, v5

    int-to-float v14, v7

    mul-float/2addr v14, v9

    const/high16 v15, 0x3f80

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float v12, v14, v15

    int-to-float v14, v8

    mul-float/2addr v14, v9

    const/high16 v15, 0x3f80

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    add-float v13, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v14, v14, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v14}, Landroid/webkit/ViewManager;->scaleAll()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14, v10, v11}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    :cond_5
    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v14

    move/from16 v0, p1

    invoke-static {v0, v14}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v14

    if-nez v14, :cond_0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z
    .locals 4

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private zoom(F)Z
    .locals 4

    const/4 v0, 0x0

    const/high16 v2, 0x3f00

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    return v0
.end method

.method private zoomToOverview()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    :cond_0
    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {p0, v3, v1}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private zoomToReadingLevelOrMore()V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sget v7, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iget v8, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v3, v6, v7, v8}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    sub-int v1, v3, v6

    if-lez v1, :cond_2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v6, v2, v6

    div-float/2addr v3, v6

    iput v3, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    :cond_0
    :goto_1
    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, v5}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    :goto_2
    return-void

    :cond_1
    add-int/lit8 v3, v0, -0x5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1, v4}, Landroid/webkit/WebView;->scrollBy(II)V

    const/4 v3, 0x0

    iput v3, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p0, v2, v4}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto :goto_2
.end method


# virtual methods
.method public RecoveryDefaultZoomLowerBound()V
    .locals 2

    const/high16 v1, -0x4080

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_0
.end method

.method public RecoveryDefaultZoomUpperBound()V
    .locals 2

    const v1, 0x4479c000

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_1

    const-string/jumbo v7, "webviewZoom"

    const-string v8, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v7, v9

    long-to-int v0, v7

    const/16 v7, 0xaf

    if-ge v0, v7, :cond_2

    int-to-float v7, v0

    const/high16 v8, 0x432f

    div-float v1, v7, v8

    const/high16 v7, 0x3f80

    iget v8, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    div-float v6, v7, v8

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->invalidate()V

    :goto_1
    iget v7, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    mul-float v2, v6, v7

    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    add-int v4, v7, v8

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v7, v8

    int-to-float v8, v3

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v5, v3, :cond_3

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2
    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    add-int v5, v7, v8

    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v4

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v6, v11}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_0

    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v11}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    :cond_2
    iget v6, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    iput v12, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    :cond_3
    sub-int v7, v5, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_2

    :cond_4
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return-void
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public disableMultiTouch()V
    .locals 0

    return-void
.end method

.method public dismissZoomPicker()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->hide()V

    :cond_0
    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 0

    return-void
.end method

.method public enableMultiTouch()V
    .locals 0

    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    goto :goto_0
.end method

.method public enableSmartZoom()V
    .locals 0

    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method getIsMTing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getReadingLevelScale()F
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method getZoomOverviewScale()F
    .locals 2

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method public handleDoubleTap(FF)V
    .locals 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    float-to-int v6, p1

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    float-to-int v6, p2

    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebView;->nativeGetHitTestNodeSafely(II)I

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebView;->getPluginBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->isRectFitOnScreen(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->centerFitRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_1
    iget v5, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v5, v6}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v4

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v5, :cond_5

    :cond_4
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    :cond_5
    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v4, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v4, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevelOrMore()V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v4

    iput v4, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v5, v1}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v5, :cond_9

    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v5, :cond_b

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v5

    iput v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    :cond_a
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevelOrMore()V

    goto/16 :goto_0
.end method

.method public init(F)V
    .locals 1

    sget-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isPureZoomMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    :cond_0
    return-void
.end method

.method public onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    iget-object v5, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v4, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_9

    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v7, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    :cond_4
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    iget v2, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    :cond_5
    :goto_1
    const/4 v1, 0x0

    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_7

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    :cond_6
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    :cond_7
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v2, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    :cond_8
    return-void

    :cond_9
    move v6, v0

    goto :goto_0

    :cond_a
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_b

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e

    :cond_b
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    iget v2, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    :goto_3
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_d

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_4
    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    :cond_c
    move v2, v0

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_4

    :cond_e
    move v2, v0

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_10

    :cond_f
    iget v6, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_10
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    :cond_11
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onNewPicture(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    :cond_0
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    :cond_4
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    move v3, v7

    :goto_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_b

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_b

    move v0, v7

    :goto_2
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_5
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_6

    if-eqz v0, :cond_d

    :cond_6
    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    :cond_7
    iput-boolean v8, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_c

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    :goto_4
    iget-boolean v7, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    :cond_8
    return-void

    :cond_9
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_0

    :cond_a
    move v3, v8

    goto :goto_1

    :cond_b
    move v0, v8

    goto :goto_2

    :cond_c
    move v7, v8

    goto :goto_3

    :cond_d
    if-nez v2, :cond_e

    :goto_5
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_e
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    iput v6, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    int-to-float v1, v0

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    :cond_0
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_2

    const/high16 v4, 0x3f80

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    :cond_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_4

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_5

    :goto_2
    invoke-direct {v5, p0, v1, v6, v2}, Landroid/webkit/ZoomManager$PostScale;-><init>(Landroid/webkit/ZoomManager;ZZZ)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget v1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public refreshZoomScale(Z)V
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2

    const/high16 v1, 0x3f80

    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2

    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    return-void
.end method

.method public setIsBrowserApp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->m_bIsBrowserApp:Z

    return-void
.end method

.method setIsMTing(Z)V
    .locals 0

    return-void
.end method

.method public setTextWrapScale(F)V
    .locals 0

    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0

    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    iput p2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_0
.end method

.method public setZoomScale(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 2

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iget v0, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public startZoomAnimation(FZ)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    invoke-static {p1, v3}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result p1

    :cond_0
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    div-float v2, v4, v0

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v2, v4, v2

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onFixedLengthZoomAnimationStart()V

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6

    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    :cond_1
    return-void

    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5

    const/4 v2, 0x1

    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    if-eqz v1, :cond_1

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    :goto_1
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    iput-boolean v4, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_6

    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v3, p0, v5}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_4

    iput-object v5, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->update()V

    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_0

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    :goto_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    :goto_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMaxZoomScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mCustomizeMinZoomScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return-void

    :cond_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1

    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

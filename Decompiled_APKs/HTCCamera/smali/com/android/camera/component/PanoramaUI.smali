.class public final Lcom/android/camera/component/PanoramaUI;
.super Lcom/android/camera/component/UIComponent;
.source "PanoramaUI.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEVICE_ORIENTATION_LANDSCAPE:I = 0x0

.field private static final MAX_ORIENTATION_DIFF:I = 0xf

.field public static final MSG_ABORTED:I = 0xb

.field private static final MSG_DEACTIVATE_SPINNER:I = 0x64

.field public static final MSG_DIRECTION_LOCKED:I = 0x8

.field public static final MSG_INTERMEDIATE_CAPTURE_PREPARE:I = 0x2

.field public static final MSG_INTERMEDIATE_CAPTURE_START:I = 0x3

.field public static final MSG_INTERMEDIATE_PHOTO:I = 0x5

.field public static final MSG_INTERMEDIATE_SHUTTER:I = 0x4

.field public static final MSG_PREVIEW_CREATED:I = 0x7

.field public static final MSG_REVIEW_IMAGE_CREATED:I = 0xc

.field public static final MSG_STITCH_COMPLETED:I = 0xa

.field public static final MSG_STITCH_STARTED:I = 0x9

.field public static final MSG_TRACKING:I = 0x6

.field public static final NAME:Ljava/lang/String; = "Panorama UI"

.field private static final SPINNER_ACTIVE_TIMEOUT:I


# instance fields
.field private final m_ActionScreenOpeningEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_CancelButton:Landroid/widget/ImageView;

.field private m_CenterIndicatorView:Landroid/widget/ImageView;

.field private m_CurrentCaptureIndex:I

.field private m_CurrentDeltaX:F

.field private final m_DeactivateHandler:Lcom/android/camera/IEventHandler;

.field private final m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_HideThumbBarEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Indicator:Lcom/android/camera/rotate/RotateImageView;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorTopPaddingView:Landroid/view/View;

.field private m_InitDirectionToast:Landroid/view/View;

.field private m_InitDirectionToastTextView:Landroid/widget/TextView;

.field private m_InitToast:Landroid/view/View;

.field private m_IsCaptureUINeeded:Z

.field private m_IsCaptureUIOpen:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsRestartingPreviewNeeded:Z

.field private m_IsSlowArrowShown:Z

.field private m_IsSpinnerActive:Z

.field private m_IsSweepPanorama:Z

.field private m_IsUIInitialized:Z

.field private final m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

.field private m_LeftArrow:Landroid/widget/ImageView;

.field private final m_MenuClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_OrientationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_PanoramaController:Lcom/android/camera/component/PanoramaController;

.field private m_PanoramaDirection:I

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

.field private final m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_RightArrow:Landroid/widget/ImageView;

.field private final m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShowThumbBarEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ShutterBar:Landroid/view/View;

.field private m_Spinner:Landroid/widget/ImageView;

.field private m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

.field private m_SweepIndicatorContainer:Landroid/view/View;

.field private m_Thumb:Landroid/widget/ImageView;

.field private m_ThumbBar:Landroid/view/View;

.field private m_ThumbBarBackground:Landroid/widget/ImageView;

.field private m_ThumbBarContent:Landroid/view/View;

.field private final m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbContainer:Landroid/view/ViewGroup;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailHighlightFrame:Landroid/view/View;

.field private m_ThumbnailShadowBottom:I

.field private m_ThumbnailShadowLeft:I

.field private m_ThumbnailShadowRight:I

.field private m_ThumbnailShadowTop:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field private m_Thumbs:[Landroid/widget/ImageView;

.field private m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v0

    sput v0, Lcom/android/camera/component/PanoramaUI;->DEVICE_ORIENTATION_LANDSCAPE:I

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x3e8

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x258

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Panorama UI"

    const/4 v1, 0x1

    const v2, 0x7f080052

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    new-instance v0, Lcom/android/camera/component/PanoramaUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$1;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ActionScreenOpeningEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$2;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_DeactivateHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$3;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$4;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_HideThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$5;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$6;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuClosedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$7;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$7;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$8;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_OrientationChangedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$9;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$9;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_QueryEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$10;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$10;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$11;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$11;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$12;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$12;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$13;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$13;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$14;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$14;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$15;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$15;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShowThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaUI$16;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$16;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-direct {v0}, Lcom/android/camera/component/PanoramaResolutionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {p0, v3}, Lcom/android/camera/component/PanoramaUI;->autoInflateView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/IEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_HideThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/widget/PanoramaIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/camera/component/PanoramaUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/component/PanoramaResolutionHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->rotateDsInitToast(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/component/PanoramaUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaUI;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/IEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShowThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method private activateSpinner()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v7

    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v7}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    const/16 v2, 0x64

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUINeeded:Z

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private deactivateSpinner()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    return-void
.end method

.method private deactivateSpinner(Z)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    instance-of v1, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->isUILandscape()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0a0042

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v5}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_9
    const v1, 0x7f0a0043

    goto :goto_1
.end method

.method private getVirtualDeviceOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getLastOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method private getVirtualDeviceOrientation(I)I
    .locals 3

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int v1, p1, v2

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x168

    :cond_0
    return v1
.end method

.method private hideArrows()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    return-void
.end method

.method private hideCenterIndicator()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/android/camera/component/PanoramaUI$17;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$17;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideSweepIndicator()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    goto :goto_0
.end method

.method private hideThumbnailBar()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v3, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private initializeUI()V
    .locals 8

    const v7, 0x7f08013e

    const v6, 0x7f080147

    const v5, 0x7f080145

    const v3, 0x7f080141

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    const v2, 0x7f080154

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    const v3, 0x7f080155

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    const v2, 0x7f08014d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-direct {p0, v4}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(I)V

    const v2, 0x7f08014f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/PanoramaIndicatorView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v3, 0x7f080150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    const v2, 0x7f080152

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f080153

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    const v2, 0x7f080156

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f080157

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    :cond_1
    :goto_1
    const v2, 0x7f08013f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    const v3, 0x7f080140

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/component/PanoramaUI$18;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$18;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->rotateDsInitToast(I)V

    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    goto :goto_1

    :cond_3
    const v2, 0x7f08013d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/PanoramaTrackingView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f080144

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    const v3, 0x7f080146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f080148

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHighlightFrame:Landroid/view/View;

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private linkToController()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v2, "Panorama Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaController;

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/PanoramaController;->link(Lcom/android/camera/component/PanoramaUI;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAborted()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    return-void
.end method

.method private onDirectionLocked(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, -0x2

    const/16 v4, 0x8

    const/4 v6, 0x0

    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailDirection()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, p1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v2, p1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v2, v2

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-ne p1, v7, :cond_3

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v6}, Lcom/android/camera/component/PanoramaUI;->updateHighlightFrameLayout(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private onIntermediateCapturePrepare(I)V
    .locals 3

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private onIntermediateCaptureStart(I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->activateSpinner()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    goto :goto_0
.end method

.method private onIntermediatePhoto(ILandroid/graphics/Bitmap;)V
    .locals 9

    const/4 v6, 0x2

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current capture index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but receive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onIntermediatePhoto()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v3, :cond_6

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Camera is paused or idle, stop capturing panorama picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v7, v4}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-direct {p0, v8}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v8}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    goto :goto_0

    :cond_6
    if-lez p1, :cond_a

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_7

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-ne v3, v6, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    :goto_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-ne v3, v6, :cond_9

    move v3, p1

    :goto_3
    aget-object v1, v4, v3

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateHighlightFrameLayout(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    iget v6, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHighlightFrame:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarBackground:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v8}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    goto/16 :goto_0
.end method

.method private onIntermediateShutter(I)V
    .locals 0

    return-void
.end method

.method private onPreviewCreated(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    return-void
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onStitchCompleted()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(Z)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    goto :goto_0
.end method

.method private onStitchStarted(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    const v1, 0x7f0a0045

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(ZI)V

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const v1, 0x7f0a0046

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Camera is paused or idle, will not show processing dialog"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onTracking(FF)V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-ne v1, v4, :cond_5

    const v0, 0x7f020158

    :goto_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    :cond_3
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    goto :goto_1

    :cond_5
    const v0, 0x7f020156

    goto :goto_2
.end method

.method private openCaptureUI()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUINeeded:Z

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuClosed()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectPanelOpen()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectPanelOpen()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v4, v4}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_4
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->rotateDsInitToast(I)V

    goto :goto_1
.end method

.method private registerEventListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "ActionScreen.Open"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ActionScreenOpeningEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/PanoramaUI$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$19;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/PanoramaUI$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$20;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_DeactivateHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DeviceOrientation.Changed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_OrientationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    :cond_0
    const-string v1, "EffectPanel.Closed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/PanoramaUI$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$21;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Key.Down"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Menu.Opening"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Menu.Closed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.IsZoomLockNeeded"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_QueryEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Resolution.Selected"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CameraActivity.RotateChanged"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    :cond_1
    const-string v1, "ThumbnailButton.Clicked"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "SelfTimer.Changed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method private rotateDsInitToast(I)V
    .locals 7

    const/16 v6, 0x2a

    const/4 v5, -0x2

    const/16 v4, 0xa

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    return-void

    :pswitch_0
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showCancelButton(Z)V
    .locals 8

    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/PanoramaUI$22;

    invoke-direct {v1, p0}, Lcom/android/camera/component/PanoramaUI$22;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private showDirectionIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showIndicator(ZZ)V
    .locals 0

    return-void
.end method

.method private syncResolutionBack()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoModeHandler;->getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/component/PanoramaResolutionHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    :cond_0
    return-void
.end method

.method private updateCancelButtonImage(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0001

    const v3, 0x7f02019a

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateHighlightFrameLayout(I)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    mul-int v2, p1, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHighlightFrame:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v2, v2

    sub-int/2addr v2, p1

    add-int/lit8 p1, v2, -0x1

    goto :goto_1
.end method

.method private updateIndicatorLocation(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b005f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b005e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateIndicatorOrientation(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :cond_1
    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private updatePreviewThumbnailDirection()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updatePreviewThumbnailSize(IF)V
    .locals 3

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    return-void

    :pswitch_1
    neg-float p2, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->syncResolutionBack()V

    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method public enterPanoramaMode()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Re-enter panorama mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for re-starting preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to panorama controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->lockZoom()V

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->initializeUI()V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitPanoramaMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitPanoramaMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Re-exit panorama mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :goto_1
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->unlockZoom()V

    :cond_3
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->collapseContentLayout()V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot exit panorama mode because there is no panorama controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getContentLayoutID()I
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-nez v0, :cond_0

    const v0, 0x7f03002d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03002f

    goto :goto_0

    :cond_1
    const v0, 0x7f03002e

    goto :goto_0
.end method

.method public final getResolutionHandler()Lcom/android/camera/IResolutionHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->onAborted()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    goto :goto_0

    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onDirectionLocked(I)V

    goto :goto_0

    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCapturePrepare(I)V

    goto :goto_0

    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureStart(I)V

    goto :goto_0

    :sswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediatePhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateShutter(I)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->onStitchCompleted()V

    goto :goto_0

    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onStitchStarted(Z)V

    goto :goto_0

    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onTracking(FF)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_b
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xb -> :sswitch_0
        0xc -> :sswitch_8
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->registerEventListeners()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    goto :goto_1
.end method

.method public isPanoramaModeEntered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method public final prepareEnteringPanoramaMode(Z)V
    .locals 7

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareEnteringPanoramaMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/PhotoModeHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/component/PanoramaResolutionHandler;->syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMenuHandler()Lcom/android/camera/MenuHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->updateResolutionList()V

    :cond_2
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method

.method public final prepareExitingPanoramaMode(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareExitingPanoramaMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->syncResolutionBack()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getMenuHandler()Lcom/android/camera/MenuHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateResolutionList()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method

.method public final stopCapture()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop capturing because there is no panorama controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

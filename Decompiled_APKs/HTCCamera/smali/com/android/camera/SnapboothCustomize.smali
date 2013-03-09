.class public Lcom/android/camera/SnapboothCustomize;
.super Ljava/lang/Object;
.source "SnapboothCustomize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothCustomize$SnapboothEffects;
    }
.end annotation


# static fields
.field public static CAPTURE_IMG_HEIGHT:I

.field public static CAPTURE_IMG_WIDTH:I

.field public static PREVIEW_HEIGHT:I

.field public static PREVIEW_LANDSCAPE_LEFT:I

.field public static PREVIEW_LANDSCAPE_TOP:I

.field public static PREVIEW_PORTRAIT_LEFT:I

.field public static PREVIEW_PORTRAIT_TOP:I

.field public static PREVIEW_WIDTH:I

.field public static REVIEW_HEIGHT:I

.field public static REVIEW_IMAGE_ANIMATION_DX_LAND:I

.field public static REVIEW_IMAGE_ANIMATION_DX_PORT:I

.field public static REVIEW_IMAGE_ANIMATION_DY_LAND:I

.field public static REVIEW_IMAGE_ANIMATION_DY_PORT:I

.field public static REVIEW_IMAGE_BOTTOM_LAND:I

.field public static REVIEW_IMAGE_HEIGHT:I

.field public static REVIEW_IMAGE_LEFT_LAND:I

.field public static REVIEW_IMAGE_LEFT_PORT:I

.field public static REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

.field public static REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

.field public static REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

.field public static REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

.field public static REVIEW_IMAGE_SQUARE_BOTTOM_LAND:I

.field public static REVIEW_IMAGE_SQUARE_LEFT_LAND:I

.field public static REVIEW_IMAGE_SQUARE_LEFT_PORT:I

.field public static REVIEW_IMAGE_SQUARE_SHADOW_BOTTOM_LAND:I

.field public static REVIEW_IMAGE_SQUARE_SHADOW_BOTTOM_PORT:I

.field public static REVIEW_IMAGE_SQUARE_SHADOW_RIGHT_LAND:I

.field public static REVIEW_IMAGE_SQUARE_SHADOW_RIGHT_PORT:I

.field public static REVIEW_IMAGE_SQUARE_SIZE:I

.field public static REVIEW_IMAGE_SQUARE_TOP_PORT:I

.field public static REVIEW_IMAGE_TOP_PORT:I

.field public static REVIEW_IMAGE_WIDTH:I

.field public static REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

.field public static REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

.field public static REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

.field public static REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

.field public static REVIEW_SCREEN_BUTTON_HEIGHT:I

.field public static REVIEW_SCREEN_BUTTON_WIDTH:I

.field public static REVIEW_WIDTH:I

.field private static final SnapboothEffectButton:[I

.field private static final SnapboothEffectIcon:[I

.field private static final SnapboothEffectLayout:[I

.field private static final SnapboothEffectMessage:[I

.field public static THUMBNAIL_IMG_DIFF:I

.field public static THUMBNAIL_IMG_HEIGHT:I

.field public static THUMBNAIL_IMG_WIDTH:I

.field public static VIEWFINDER_COVER_BOTTOM_LAND:I

.field public static VIEWFINDER_COVER_LEFT_LAND:I

.field public static VIEWFINDER_COVER_LEFT_PORT:I

.field public static VIEWFINDER_COVER_TOP_PORT:I

.field private static mNumCountBubble:I

.field private static mNumCountDown:I


# instance fields
.field private mBackground:Landroid/view/View;

.field mFirstEffectsInPort:I

.field private mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mGalleryLandscapeButton:Landroid/widget/ImageButton;

.field private mGalleryPortraitButton:Landroid/widget/ImageButton;

.field private mIsMultiShutter:Z

.field private mLandAnimationThumbnail:Landroid/widget/ImageView;

.field private mLandCountBubble:[Landroid/widget/ImageView;

.field private mLandCountdown:[Landroid/widget/ImageView;

.field private mLandEffectButtons:[Landroid/widget/ImageButton;

.field private mLandEffectIcons:[Landroid/widget/ImageView;

.field private mLandShutterBtn:Landroid/widget/Button;

.field private mLandSwitchButton:Landroid/widget/ImageButton;

.field private mLandSwitchButtonText:Landroid/widget/TextView;

.field private mLandthumbnail:Landroid/widget/ImageView;

.field mMaxEffectSize:I

.field private mPortAnimationThumbnail:Landroid/widget/ImageView;

.field private mPortCountBubble:[Landroid/widget/ImageView;

.field private mPortCountdown:[Landroid/widget/ImageView;

.field private mPortEffectButtons:[Landroid/widget/ImageButton;

.field private mPortEffectIcons:[Landroid/widget/ImageView;

.field private mPortShutterBtn:Landroid/widget/Button;

.field private mPortSwitchButton:Landroid/widget/ImageButton;

.field private mPortSwitchButtonText:Landroid/widget/TextView;

.field private mPortthumbnail:Landroid/widget/ImageView;

.field private mPreviewCover:Landroid/view/View;

.field private mPreviewFilter:Landroid/view/View;

.field private mPreviewSurface:Landroid/view/SurfaceView;

.field private mReviewImg:Landroid/widget/ImageView;

.field private mReviewImgContainer:Landroid/view/View;

.field private mReviewScreenButtons:[Landroid/widget/Button;

.field private mReviewScreenButtonsPanel:Landroid/view/View;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mThreadHandler:Landroid/os/Handler;

.field private mViewfinderCover:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x77

    const/16 v5, 0x14

    const/16 v4, 0x30

    const/4 v3, 0x0

    const/16 v2, 0x12

    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    const/16 v0, 0x500

    sput v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    const/16 v0, 0x500

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    const/16 v0, 0x6d

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    const/16 v0, 0x60

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    sget v1, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    const/16 v0, 0x157

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_WIDTH:I

    const/16 v0, 0x262

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_HEIGHT:I

    const/16 v0, 0x83

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_LEFT:I

    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_PORTRAIT_TOP:I

    const/16 v0, 0xb8

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_LEFT:I

    const/16 v0, 0xcf

    sput v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_LANDSCAPE_TOP:I

    const/16 v0, 0xc3

    sput v0, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_LAND:I

    const/16 v0, 0xab

    sput v0, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_BOTTOM_LAND:I

    sput v6, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_LEFT_PORT:I

    sput v4, Lcom/android/camera/SnapboothCustomize;->VIEWFINDER_COVER_TOP_PORT:I

    const/16 v0, 0x170

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_WIDTH:I

    const/16 v0, 0x27a

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_HEIGHT:I

    const/16 v0, 0x15f

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SIZE:I

    const/16 v0, 0xc3

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_LAND:I

    const/16 v0, 0xab

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_BOTTOM_LAND:I

    const/16 v0, 0x150

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_LAND:I

    const/16 v0, 0xb4

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_BOTTOM_LAND:I

    sput v6, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_LEFT_PORT:I

    sput v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_TOP_PORT:I

    const/16 v0, 0x7f

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_LEFT_PORT:I

    const/16 v0, 0xbe

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_TOP_PORT:I

    sput v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_LAND:I

    sput v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_LAND:I

    sput v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_RIGHT_PORT:I

    sput v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SHADOW_RIGHT_LAND:I

    sput v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SHADOW_BOTTOM_LAND:I

    sput v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SHADOW_BOTTOM_PORT:I

    sput v2, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SHADOW_RIGHT_PORT:I

    sput v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_SQUARE_SHADOW_BOTTOM_PORT:I

    const/16 v0, 0x112

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    const/16 v0, 0x31

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_HEIGHT:I

    const/16 v0, 0x238

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_LAND:I

    const/16 v0, 0x22e

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_WIDTH_PORT:I

    sput v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_LAND:I

    const/16 v0, 0x85

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_BOTTOM_PORT:I

    const/16 v0, 0xe4

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_LAND:I

    const/16 v0, 0x16

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTONS_LEFT_PORT:I

    const/4 v0, -0x6

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_LAND:I

    const/16 v0, -0x19f

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_LAND:I

    const/16 v0, -0xea

    sput v0, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_PORT:I

    sput v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_PORT:I

    const/4 v0, 0x3

    sput v0, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    const/4 v0, 0x4

    sput v0, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectMessage:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectLayout:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectButton:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/android/camera/SnapboothCustomize;->SnapboothEffectIcon:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/SnapboothCustomize;->mFirstEffectsInPort:I

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/SnapboothCustomize$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothCustomize$1;-><init>(Lcom/android/camera/SnapboothCustomize;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryBtnClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryLandscapeButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mGalleryPortraitButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandthumbnail:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandAnimationThumbnail:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortthumbnail:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortAnimationThumbnail:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mLandShutterBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mPortShutterBtn:Landroid/widget/Button;

    sget v0, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountdown:[Landroid/widget/ImageView;

    sget v0, Lcom/android/camera/SnapboothCustomize;->mNumCountDown:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountdown:[Landroid/widget/ImageView;

    sget v0, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandCountBubble:[Landroid/widget/ImageView;

    sget v0, Lcom/android/camera/SnapboothCustomize;->mNumCountBubble:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortCountBubble:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectButtons:[Landroid/widget/ImageButton;

    iget v0, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mLandEffectIcons:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectButtons:[Landroid/widget/ImageButton;

    iget v0, p0, Lcom/android/camera/SnapboothCustomize;->mMaxEffectSize:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mPortEffectIcons:[Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mViewfinderCover:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mReviewImgContainer:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtonsPanel:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/SnapboothCustomize;->mReviewScreenButtons:[Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothCustomize;->mIsMultiShutter:Z

    iput-object p1, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object p3, p0, Lcom/android/camera/SnapboothCustomize;->mThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SnapboothCustomize;)Lcom/android/camera/HTCSnapbooth;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothCustomize;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method public static getSnapbooth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSnapboothFrame(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSnapboothLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSnapboothMainLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSnapboothReviewLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSnapboothSecondLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public disableCountBubbles()V
    .locals 0

    return-void
.end method

.method public disableCountdowns(I)V
    .locals 0

    return-void
.end method

.method public enableCountBubble(I)V
    .locals 0

    return-void
.end method

.method public enableCountdown(II)V
    .locals 0

    return-void
.end method

.method public enableGalleryButton(Z)V
    .locals 0

    return-void
.end method

.method public getFlashImageView(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLandGalleryAnimationThumbnail()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLandGalleryButton()Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLandGalleryThumbnail()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLandReviewImg()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLandShutterBtn()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortGalleryAnimationThumbnail()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortGalleryButton()Landroid/widget/ImageButton;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortGalleryThumbnail()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortShutterBtn()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReviewScreenButtons()[Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReviewScreenButtonsPanel()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewfinderCover()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideViewfinderCover(Z)V
    .locals 0

    return-void
.end method

.method public initLandCountBubbleLayer(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initLandCountdownLayer(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initLandEffectBar(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initLandGalleryBar(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initLandShutterBar(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPortCountBubbleLayer(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPortCountdownLayer(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPortEffectBar(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPortGalleryBar(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPortShutterBar(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPreviewSurface()Landroid/view/SurfaceView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initReviewImage(Landroid/view/View;Z)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultiShutter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public selectEffectIcon(I)V
    .locals 0

    return-void
.end method

.method public setBackground(Z)V
    .locals 0

    return-void
.end method

.method public setReviewButtonBounds(Z)V
    .locals 0

    return-void
.end method

.method public setReviewImageBounds(Z)V
    .locals 0

    return-void
.end method

.method public setReviewImageShadow(ZZ)V
    .locals 0

    return-void
.end method

.method public setViewfinderCoverBounds(Z)V
    .locals 0

    return-void
.end method

.method public setViewfinderCoverImage(Z)V
    .locals 0

    return-void
.end method

.method public showActivityCover(Z)V
    .locals 0

    return-void
.end method

.method public showPreviewCover(Z)V
    .locals 0

    return-void
.end method

.method public showViewfinderCover(ZZ)V
    .locals 0

    return-void
.end method

.method public switchMultiBtn()V
    .locals 0

    return-void
.end method

.method public switchShutterBtn(Z)V
    .locals 0

    return-void
.end method

.method public updatePreviewOrientation(Z)V
    .locals 0

    return-void
.end method

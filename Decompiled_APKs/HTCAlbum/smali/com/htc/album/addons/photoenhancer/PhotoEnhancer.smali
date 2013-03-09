.class public Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.super Landroid/app/Activity;
.source "PhotoEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;,
        Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;,
        Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:J = 0x0L

.field private static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final FRAME_ID:Ljava/lang/String; = "mFrameId"

.field private static final JPG_MIME:Ljava/lang/String; = "image/jpeg"

.field private static final OLD_FRAME_COUNT:I = 0x8

.field public static final PRESET_ID:Ljava/lang/String; = "presetId"

.field private static final TAG:Ljava/lang/String; = null

.field public static final _OUTPUT_PATH:Ljava/lang/String; = "output"


# instance fields
.field private PRESETS:[Ljava/lang/String;

.field private aniBtnIn:Landroid/view/animation/Animation;

.field private aniBtnOut:Landroid/view/animation/Animation;

.field private aniGalleryInL:Landroid/view/animation/Animation;

.field private aniGalleryOutL:Landroid/view/animation/Animation;

.field private aniImageIn:Landroid/view/animation/AnimationSet;

.field private aniImageOut:Landroid/view/animation/AnimationSet;

.field private aniImgInListener:Landroid/view/animation/Animation$AnimationListener;

.field private aniImgOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private configChange:Z

.field private count:I

.field private cropToast:Landroid/widget/Toast;

.field private dialog:Lcom/htc/app/HtcProgressDialog;

.field private dstFilePath:Ljava/lang/String;

.field private duration:I

.field private externalGivenOutputPath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fullImgaeView:Landroid/widget/ImageView;

.field private galleryAniIn:Landroid/view/animation/Animation;

.field private galleryAniOut:Landroid/view/animation/Animation;

.field private galleryClick:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

.field private handler:Landroid/os/Handler;

.field private headerBarAniIn:Landroid/view/animation/Animation;

.field private headerBarAniOut:Landroid/view/animation/Animation;

.field private imageNoEffect:Landroid/graphics/Bitmap;

.field private imagePreview:Landroid/graphics/Bitmap;

.field private imageViewListener:Landroid/view/View$OnClickListener;

.field private img_status:Z

.field private mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

.field private mBitmapArray:[Landroid/graphics/Bitmap;

.field private mCancelBtn:Lcom/htc/widget/HtcFooterButton;

.field private mDegree:I

.field private mFrameId:I

.field private mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field private mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mImageAdapter:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

.field private mImageView:Landroid/widget/ImageView;

.field private mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSaveBtn:Lcom/htc/widget/HtcFooterButton;

.field private mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

.field private mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

.field private nImageHeight:I

.field private nImageWidth:I

.field private orientation:I

.field private photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

.field private presetId:I

.field private scaleUp:F

.field private screenHeight:I

.field private screenWidth:I

.field private uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    .line 60
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->DOUBLE_TAP_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;

    .line 64
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenHeight:I

    .line 65
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenWidth:I

    .line 66
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    .line 70
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    .line 72
    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    .line 74
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    .line 76
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    .line 78
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->configChange:Z

    .line 80
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    .line 82
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    .line 83
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    .line 85
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    .line 86
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 87
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 88
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    .line 89
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 90
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    .line 91
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    .line 93
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    .line 94
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnOut:Landroid/view/animation/Animation;

    .line 96
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    .line 98
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryOutL:Landroid/view/animation/Animation;

    .line 99
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    .line 100
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    .line 101
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniOut:Landroid/view/animation/Animation;

    .line 102
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniIn:Landroid/view/animation/Animation;

    .line 103
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    .line 104
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniOut:Landroid/view/animation/Animation;

    .line 106
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->scaleUp:F

    .line 108
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageHeight:I

    .line 109
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageWidth:I

    .line 111
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    .line 112
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mDegree:I

    .line 114
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 117
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->externalGivenOutputPath:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;

    .line 120
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    .line 121
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    .line 122
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    .line 125
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;

    .line 126
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;

    .line 127
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageAdapter:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

    .line 129
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    .line 545
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageViewListener:Landroid/view/View$OnClickListener;

    .line 657
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImgOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 675
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImgInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 722
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$11;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$11;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryClick:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    .line 747
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$12;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->handler:Landroid/os/Handler;

    .line 931
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getDstFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    return p1
.end method

.method static synthetic access$1312(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEffects;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    return-object v0
.end method

.method static synthetic access$1508(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    return v0
.end method

.method static synthetic access$1510(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    return v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->DOUBLE_TAP_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialImageAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniOut:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryOutL:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniIn:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageWidth:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageHeight:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->uriList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarMiddle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dialog:Lcom/htc/app/HtcProgressDialog;

    .line 926
    :cond_0
    return-void
.end method

.method private getDstFilePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 463
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->externalGivenOutputPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 465
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->externalGivenOutputPath:Ljava/lang/String;

    .line 484
    :goto_0
    return-object v1

    .line 467
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v4, oldPath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 472
    const/4 v1, 0x0

    .line 475
    .local v1, dstFilePath:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    .line 477
    .local v2, exists:Z
    if-nez v2, :cond_1

    .line 479
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSaveBtn_onClick: file candidate is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :cond_1
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->count:I

    goto :goto_1
.end method

.method private initialAnimationListener()V
    .locals 4

    .prologue
    .line 491
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnOut:Landroid/view/animation/Animation;

    new-instance v3, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$4;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$4;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 500
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    new-instance v3, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$5;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$5;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 511
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$6;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$6;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    .line 520
    .local v0, gAniIn:Landroid/view/animation/Animation$AnimationListener;
    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$7;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$7;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    .line 528
    .local v1, gAniOut:Landroid/view/animation/Animation$AnimationListener;
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 529
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 530
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryOutL:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 532
    return-void
.end method

.method private initialButton(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x20c01d6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 419
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$3;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$3;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    return-void
.end method

.method private initialImageAnimation()V
    .locals 20

    .prologue
    .line 600
    const/16 v19, 0x0

    .line 601
    .local v19, yDiff:I
    const/16 v18, 0x0

    .line 602
    .local v18, xDiff:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    if-nez v5, :cond_0

    .line 605
    const/4 v13, 0x5

    .line 606
    .local v13, adjustmentLeft:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/16 v17, 0x0

    .line 607
    .local v17, paddingTop:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/16 v16, 0x0

    .line 608
    .local v16, paddingLeft:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v15, v5, v17

    .line 609
    .local v15, mY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v14, v5, v16

    .line 611
    .local v14, mX:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->setImageScale()V

    .line 616
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->scaleUp:F

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->scaleUp:F

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 617
    .local v1, aniScale:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 618
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v19, v5, v15

    .line 619
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v18, v5, v14

    .line 623
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v19

    int-to-float v10, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 624
    .local v2, aniTrans:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 627
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    .line 628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImgOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 635
    .end local v1           #aniScale:Landroid/view/animation/ScaleAnimation;
    .end local v2           #aniTrans:Landroid/view/animation/TranslateAnimation;
    .end local v13           #adjustmentLeft:I
    .end local v14           #mX:I
    .end local v15           #mY:I
    .end local v16           #paddingLeft:I
    .end local v17           #paddingTop:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    if-nez v5, :cond_1

    .line 638
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->scaleUp:F

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->scaleUp:F

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 639
    .local v3, aniScale2:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 640
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v19

    int-to-float v10, v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 641
    .local v4, aniTrans2:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 644
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImgInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 652
    .end local v3           #aniScale2:Landroid/view/animation/ScaleAnimation;
    .end local v4           #aniTrans2:Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void

    .line 606
    .restart local v13       #adjustmentLeft:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v17

    goto/16 :goto_0

    .line 607
    .restart local v17       #paddingTop:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v16, v5, v13

    goto/16 :goto_1
.end method

.method private isFileExist()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1176
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1177
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1179
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v3, "File doesn\'t exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v0, 0x0

    .line 1187
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 1183
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 1184
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private releaseBitmap()V
    .locals 2

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1222
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1228
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1230
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1231
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1233
    :cond_3
    return-void
.end method

.method private setImageScale()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 538
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 539
    .local v0, scale:F
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->scaleUp:F

    .line 540
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 997
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 999
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1000
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 1001
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setAnimationCacheEnabled(Z)V

    .line 1002
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1003
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    .line 1004
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 1005
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1006
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    .line 1007
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAnimationCacheEnabled(Z)V

    .line 1009
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1010
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setOnItemClickListener(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;)V

    .line 1011
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    .line 1012
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1014
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    .line 1015
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 1016
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    .line 1018
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->setContentView(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenWidth:I

    .line 1021
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenHeight:I

    .line 1026
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    .line 1029
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1030
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v5, :cond_9

    .line 1032
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1043
    :cond_0
    :goto_0
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    .line 1044
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 1045
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    .line 1046
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    .line 1047
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    .line 1049
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 1050
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 1051
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1053
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 1054
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarMiddle;->enableTranparentBckground()V

    .line 1055
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 1057
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    .line 1058
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1059
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Icon_Add_Tab(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1060
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1061
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    if-nez v0, :cond_1

    .line 1063
    new-instance v0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/AdapterDropList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    .line 1064
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->onCreate()V

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1067
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    if-nez v0, :cond_2

    .line 1069
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1072
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$13;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$13;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 1082
    invoke-direct {p0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialButton(Landroid/content/Context;)V

    .line 1084
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    if-eqz v0, :cond_a

    .line 1085
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-nez v0, :cond_5

    .line 1094
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    if-ne v0, v5, :cond_4

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    if-eqz v0, :cond_b

    .line 1095
    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imagePreview:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    :goto_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 1105
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 1106
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAnimationCacheEnabled(Z)V

    .line 1107
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_6

    .line 1108
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    :cond_6
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v5}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAnimationCacheEnabled(Z)V

    .line 1114
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v5, :cond_c

    .line 1115
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v5}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setHorizontal(Z)V

    .line 1123
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageAdapter:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1124
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setNextSelectedPositionInt(I)V

    .line 1125
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryClick:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setOnItemClickListener(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;)V

    .line 1127
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_8

    .line 1129
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1134
    :cond_8
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1135
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_e

    .line 1137
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1138
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1143
    :goto_4
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1144
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialAnimationListener()V

    .line 1147
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;

    .line 1148
    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1150
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1151
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1152
    return-void

    .line 1034
    :cond_9
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v8, :cond_0

    .line 1036
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 1089
    :cond_a
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1097
    :cond_b
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1116
    :cond_c
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v8, :cond_7

    .line 1117
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_d

    .line 1118
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1120
    :cond_d
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setHorizontal(Z)V

    goto/16 :goto_3

    .line 1141
    :cond_e
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    const/16 v13, 0x64

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    if-eqz p1, :cond_0

    .line 175
    const-string v0, "presetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    .line 176
    const-string v0, "mFrameId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    .line 180
    :cond_0
    invoke-virtual {p0, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->requestWindowFeature(I)Z

    .line 182
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 184
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->setContentView(I)V

    .line 186
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 187
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 189
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 190
    .local v9, targetUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    .line 193
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "degree"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mDegree:I

    .line 194
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "externalGivenOutputPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->externalGivenOutputPath:Ljava/lang/String;

    .line 202
    .end local v9           #targetUri:Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->isFileExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: File not exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    .line 406
    :goto_0
    return-void

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenWidth:I

    .line 211
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenHeight:I

    .line 217
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    .line 220
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 221
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v10, :cond_6

    .line 223
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 230
    :cond_3
    :goto_1
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    .line 231
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mCancelBtn:Lcom/htc/widget/HtcFooterButton;

    .line 232
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    .line 233
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    .line 234
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    .line 236
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 237
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 238
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 240
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 241
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarMiddle;->enableTranparentBckground()V

    .line 242
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 244
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    .line 245
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 246
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Icon_Add_Tab(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 247
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 248
    new-instance v0, Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/AdapterDropList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    .line 249
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/AdapterDropList;->onCreate()V

    .line 250
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mAdapter:Lcom/htc/album/addons/photoenhancer/AdapterDropList;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    if-nez v0, :cond_4

    .line 253
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mItemClickListener:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderDropList:Lcom/htc/widget/HeaderBarImage;

    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 266
    invoke-direct {p0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialButton(Landroid/content/Context;)V

    .line 269
    const v0, 0x7f040007

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    .line 270
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 271
    const v0, 0x7f040006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniOut:Landroid/view/animation/Animation;

    .line 272
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniOut:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 273
    const v0, 0x7f040009

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    .line 274
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 275
    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryOutL:Landroid/view/animation/Animation;

    .line 276
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryOutL:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnOut:Landroid/view/animation/Animation;

    .line 278
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnOut:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 279
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    .line 280
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_7

    .line 286
    :cond_5
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "PRESETS is invalid. Finish PhotoEnhancer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    goto/16 :goto_0

    .line 225
    :cond_6
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v12, :cond_3

    .line 227
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 292
    :cond_7
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    if-nez v0, :cond_8

    .line 294
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;

    iget v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mDegree:I

    iget v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    .line 295
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->isError()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "PhotoEffects has error, finish PhotoEnhancer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    goto/16 :goto_0

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 306
    new-instance v8, Lcom/scalado/base/Size;

    invoke-direct {v8}, Lcom/scalado/base/Size;-><init>()V

    .line 307
    .local v8, nImageSize:Lcom/scalado/base/Size;
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenWidth:I

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->screenHeight:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->RenderNoEffect(IILcom/scalado/base/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    .line 309
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 311
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "PhotoEffects has error, finish PhotoEnhancer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    goto/16 :goto_0

    .line 315
    :cond_9
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: Image scaled w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageHeight:I

    .line 319
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageWidth:I

    .line 321
    .end local v8           #nImageSize:Lcom/scalado/base/Size;
    :cond_a
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageHeight:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageWidth:I

    if-nez v0, :cond_c

    .line 323
    :cond_b
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "Image size error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    goto/16 :goto_0

    .line 329
    :cond_c
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-nez v0, :cond_e

    .line 331
    :cond_d
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->PRESETS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mBitmapArray:[Landroid/graphics/Bitmap;

    .line 333
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 334
    .local v6, iconView:Landroid/widget/ImageView;
    if-eqz v6, :cond_12

    .line 336
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v1, Lcom/scalado/base/Size;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->RenderThumbnailAllPreset(Lcom/scalado/base/Size;)V

    .line 342
    .end local v6           #iconView:Landroid/widget/ImageView;
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setAnimationCacheEnabled(Z)V

    .line 344
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_f

    .line 346
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    :cond_f
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v10}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAnimationCacheEnabled(Z)V

    .line 352
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v10, :cond_13

    .line 354
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v10}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setHorizontal(Z)V

    .line 365
    :cond_10
    :goto_3
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageAdapter:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

    .line 366
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageAdapter:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 367
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryClick:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setOnItemClickListener(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;)V

    .line 369
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_11

    .line 371
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    :cond_11
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 377
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_15

    .line 380
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 381
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :goto_4
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialAnimationListener()V

    .line 393
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    if-ne v10, v0, :cond_16

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    if-nez v0, :cond_16

    .line 395
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->imageNoEffect:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 405
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onCREATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .restart local v6       #iconView:Landroid/widget/ImageView;
    :cond_12
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, v13, v13}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->RenderThumbnailAllPreset(Lcom/scalado/base/Size;)V

    goto/16 :goto_2

    .line 356
    .end local v6           #iconView:Landroid/widget/ImageView;
    :cond_13
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I

    if-ne v0, v12, :cond_10

    .line 358
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z

    if-eqz v0, :cond_14

    .line 360
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    :cond_14
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v11}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setHorizontal(Z)V

    goto/16 :goto_3

    .line 385
    :cond_15
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_4

    .line 401
    :cond_16
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    new-instance v1, Lcom/scalado/base/Size;

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageWidth:I

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->nImageHeight:I

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->RenderAllEffectOnPreset(Lcom/scalado/base/Size;II)V

    .line 402
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSaveBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1192
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseResource()V

    .line 1196
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->configChange:Z

    if-nez v0, :cond_1

    .line 1197
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->releaseBitmap()V

    .line 1198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->configChange:Z

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1202
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    if-eqz v0, :cond_3

    .line 1205
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1206
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    .line 1208
    :cond_3
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dismissProgressDialog()V

    .line 1209
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1211
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1166
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->isFileExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->finish()V

    .line 1169
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1157
    const-string v0, "presetId"

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1158
    const-string v0, "mFrameId"

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1159
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1160
    return-void
.end method

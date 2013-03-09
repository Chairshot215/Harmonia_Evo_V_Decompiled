.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "SceneLocalPhotoFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDToggleButtonListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPLAY_MODE_3D_LANDSCAPE:I = 0x0

.field private static final DISPLAY_MODE_3D_PORTRAIT:I = 0x1

.field private static final DISPLAY_MODE_NORMAL:I = 0x2

.field private static final DRM_FILENAME_BAR_FULLFILM_VIEW:I = 0x3

.field private static final EXTREME_PARALLAX_VALUE:F = 0.2f

.field private static final FOOTER_BAR_LOCAL_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoFullscreen"

.field private static final PARALLAX_DEFAULT:F = 0.0f

.field protected static final SW_BUTTON_OFF:I = 0x1

.field protected static final SW_BUTTON_ON:I = 0x0

.field private static final TIMER_PROGRESS_LOADING:I = 0x258


# instance fields
.field private final DEBUG:Z

.field private isActivityPaused:Z

.field private m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

.field private m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

.field private m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

.field private mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

.field protected mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

.field protected mAnimationState:I

.field private mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

.field private mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

.field private mCurrentAnimState:I

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDisplayService:Landroid/os/IDisplayService;

.field private mDoItemClickWhenBindAdapter:Z

.field private mDrmBackPreviosTemplate:Z

.field private mDrmDecoded:Z

.field private mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

.field private mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

.field private mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

.field private mDrmVideoRefresh:Z

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mHDMICableConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

.field private mInterleaveViewReady:Z

.field private mIsAnimating:Z

.field private mIsFromGridView:Z

.field private mIsHDMIConnected:Z

.field private mIsKeep3DBarrier:Z

.field private mIsKeyguardShow:Z

.field private mIsParallaxTuning:Z

.field private mIsTVSupport3D:Z

.field private final mKeyguardReceiver:Landroid/content/BroadcastReceiver;

.field protected mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

.field private mOriParallax:F

.field private mOrientation:I

.field private mOrientationHasChanged:Z

.field private mParallax:F

.field private mParallaxBarrierState:I

.field private mParallax_unit:F

.field private mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

.field private mPresentationViewHadSetExternalDisplay:Z

.field private mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSWButtonState:I

.field private mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mShouldShowPresentationView:Z

.field private mSideBySideBitmap:Landroid/graphics/Bitmap;

.field private mSideBySideBitmapItemIndex:I

.field private repeatClickLeftListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field private repeatClickRightListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 104
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->DEBUG:Z

    .line 105
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 106
    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 110
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    .line 111
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    .line 112
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 113
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 114
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    .line 115
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    .line 116
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    .line 117
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 118
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 120
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    .line 123
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    .line 124
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeep3DBarrier:Z

    .line 127
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    .line 128
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    .line 129
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    .line 130
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    .line 132
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    .line 134
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    .line 135
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsParallaxTuning:Z

    .line 139
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    .line 140
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 141
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewHadSetExternalDisplay:Z

    .line 142
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z

    .line 143
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    .line 144
    new-instance v0, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-direct {v0}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    .line 145
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    .line 149
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    .line 150
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    .line 151
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 152
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    .line 153
    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    .line 154
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isActivityPaused:Z

    .line 155
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mHDMICableConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    .line 170
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    .line 172
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeyguardShow:Z

    .line 479
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    .line 1212
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    .line 1843
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$8;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$8;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 3697
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$14;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$14;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->repeatClickLeftListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    .line 3705
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$15;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$15;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->repeatClickRightListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    .line 4170
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DAlignmentCancel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isActivityPaused:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setupSideBySideBitmap()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeep3DBarrier:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeyguardShow:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeyguardShow:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onHDMIConnected()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onHDMIDisconnected()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doShowDrmFileNameBar(ZZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doSimulateScreenTouched(IZ)V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmItemClickListener;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    return v0
.end method

.method static synthetic access$9302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    return p1
.end method

.method static synthetic access$9402(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    return p1
.end method

.method static synthetic access$9500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setAdjust3DAlignmentValueByMParallax()V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->resetAdjust3DBtn()V

    return-void
.end method

.method static synthetic access$9700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DLeftBtnClicked()V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DRightBtnClicked()V

    return-void
.end method

.method static synthetic access$9900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DAlignmentSave()V

    return-void
.end method

.method private clearSideBySideBitmap(Z)V
    .locals 7
    .parameter "bForce3DOff"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 4141
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][clearSideBySideBitmap] + "

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullscreen][clearSideBySideBitmap]mInterleaveView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullscreen][clearSideBySideBitmap]mSideBySideBitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    if-eqz v0, :cond_0

    .line 4147
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][clearSideBySideBitmap]mInterleaveView set invisible"

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4148
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 4149
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 4150
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4152
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4154
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4155
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    .line 4157
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    .line 4158
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSideBySideItemIndex(I)Z

    .line 4160
    if-eqz p1, :cond_3

    .line 4161
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 4166
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z

    .line 4167
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][clearSideBySideBitmap] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4168
    return-void

    .line 4163
    :cond_3
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeep3DBarrier:Z

    if-nez v0, :cond_2

    .line 4164
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    goto :goto_0
.end method

.method private doShowDrmFileNameBar(ZZ)V
    .locals 10
    .parameter "bIsShow"
    .parameter "bForce"

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 892
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-nez v5, :cond_2

    .line 894
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 900
    .local v0, activityRef:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 905
    new-instance v5, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const/4 v6, 0x3

    const v8, 0x7f03002e

    invoke-direct {v5, v6, v0, v8}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;-><init>(ILandroid/content/Context;I)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    .line 906
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 907
    .local v4, root:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v1

    .line 908
    .local v1, footer:Landroid/view/View;
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 910
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 911
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    .end local v0           #activityRef:Landroid/app/Activity;
    .end local v1           #footer:Landroid/view/View;
    .end local v4           #root:Landroid/widget/RelativeLayout;
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_0

    .line 920
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 921
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_4

    .line 923
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v5, v9}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto :goto_0

    .line 927
    :cond_4
    if-eqz p1, :cond_5

    .line 929
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v5, v7}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto :goto_0

    .line 933
    :cond_5
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 934
    .local v3, isDRMFL:Z
    :goto_1
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v5, :cond_6

    if-nez v3, :cond_6

    if-eqz p2, :cond_0

    .line 935
    :cond_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v5, v9}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setVisibility(I)V

    goto/16 :goto_0

    .end local v3           #isDRMFL:Z
    :cond_7
    move v3, v7

    .line 933
    goto :goto_1
.end method

.method private doSimulateScreenTouched(IZ)V
    .locals 20
    .parameter "position"
    .parameter "isFromOnPrepareOptionsMenu"

    .prologue
    .line 2373
    const/4 v5, 0x0

    .line 2374
    .local v5, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v5           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v5       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v5, :cond_1

    .line 2376
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]adapter is null"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    const/4 v13, 0x0

    .line 2381
    .local v13, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    .end local v13           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v13, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v13       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v13, :cond_2

    .line 2383
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]image is null"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2387
    :cond_2
    const/4 v4, 0x0

    .line 2388
    .local v4, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2390
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[HTCAlbum][SceneLocalPhotoFullscreen][doSimulateScreenTouched]activity is null"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 2394
    check-cast v3, Lcom/htc/opensense2/widget/ActivityMainBase;

    .line 2396
    .local v3, actBase:Lcom/htc/opensense2/widget/ActivityMainBase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v8, v0, Lcom/htc/album/addons/SingleCollection;

    .line 2398
    .local v8, bIsShowSingle:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isControlBarShowing()Z

    move-result v6

    .line 2399
    .local v6, bControlBarShowing:Z
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_5

    if-nez v8, :cond_5

    .line 2401
    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v13

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 2403
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->showDRMIndicator(Z)V

    .line 2411
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v17

    shr-int/lit8 v15, v17, 0x1

    .line 2412
    .local v15, posX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v17

    shr-int/lit8 v16, v17, 0x1

    .line 2414
    .local v16, posY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 2415
    .local v14, me:Landroid/view/MotionEvent;
    if-eqz v14, :cond_6

    .line 2417
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 2418
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2421
    :cond_6
    const/4 v7, 0x0

    .line 2422
    .local v7, bIndicatorClicked:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 2424
    const/4 v7, 0x1

    .line 2435
    :goto_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2436
    .local v9, bundle:Landroid/os/Bundle;
    const-string v17, "folder_type"

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    const-string v17, "key_folder_name"

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    const-string v17, "key_bucket_id"

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    const-string v17, "position"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    const/4 v11, 0x0

    .line 2442
    .local v11, goPlay:Z
    if-eqz v7, :cond_8

    if-eqz v13, :cond_8

    .line 2444
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2446
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2448
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    .line 2449
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmVideoRefresh:Z

    .line 2452
    :cond_7
    invoke-static {v4, v13, v9}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 2453
    const/4 v11, 0x1

    .line 2480
    :cond_8
    :goto_3
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 2482
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 2483
    .local v12, handler:Landroid/os/Handler;
    const/16 v17, 0x4e3c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2484
    if-nez v6, :cond_f

    .line 2486
    const/16 v17, 0x4e3c

    const-wide/16 v18, 0x1388

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2487
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 2493
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->toggleControlBarsVisibility()V

    goto/16 :goto_0

    .line 2407
    .end local v7           #bIndicatorClicked:Z
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v11           #goPlay:Z
    .end local v12           #handler:Landroid/os/Handler;
    .end local v14           #me:Landroid/view/MotionEvent;
    .end local v15           #posX:I
    .end local v16           #posY:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    goto/16 :goto_1

    .line 2426
    .restart local v7       #bIndicatorClicked:Z
    .restart local v14       #me:Landroid/view/MotionEvent;
    .restart local v15       #posX:I
    .restart local v16       #posY:I
    :cond_a
    if-eqz p2, :cond_b

    .line 2428
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2432
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isHitIndicator(II)Z

    move-result v7

    goto/16 :goto_2

    .line 2455
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v11       #goPlay:Z
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2457
    const/4 v11, 0x1

    goto :goto_3

    .line 2459
    :cond_d
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2461
    const/4 v10, -0x1

    .line 2462
    .local v10, count:I
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2464
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    move-object/from16 v17, v13

    .line 2465
    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v10

    .line 2472
    :goto_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v10, v0, :cond_8

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v13, v0, v9}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 2475
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 2469
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v10

    goto :goto_5

    .line 2491
    .end local v10           #count:I
    .restart local v12       #handler:Landroid/os/Handler;
    :cond_f
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    goto/16 :goto_4
.end method

.method private findPosFromList(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 3317
    const/4 v2, -0x1

    .line 3318
    .local v2, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3320
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3321
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3322
    add-int/lit8 v2, v2, 0x1

    .line 3324
    :cond_0
    if-ne v2, p1, :cond_1

    .line 3329
    .end local v0           #i:I
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return v0

    .line 3318
    .restart local v0       #i:I
    .restart local v1       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3328
    .end local v1           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneLocalPhotoFullScreen]Not match the item from list: oldPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 3329
    goto :goto_1
.end method

.method private getIfTVSupport3D()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3821
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][getIfTVSupport3D] + "

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    .line 3823
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v1, :cond_0

    .line 3825
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    .line 3826
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][getIfTVSupport3D]mDisplayService is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    :goto_0
    return-void

    .line 3831
    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    if-eqz v1, :cond_2

    .line 3835
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->getTVMode()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    .line 3836
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullscreen][getIfTVSupport3D]mIsHDMIConnected, mIsTVSupport3D = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3850
    :goto_2
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][getIfTVSupport3D] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3835
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 3838
    :catch_0
    move-exception v0

    .line 3840
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    .line 3841
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][getIfTVSupport3D]mIsHDMIConnected, mIsTVSupport3D -> false"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3846
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    .line 3847
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][getIfTVSupport3D]mIsHDMIConnected = false, mIsTVSupport3D = false"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getStartupIndex()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 3246
    const/4 v3, 0x0

    .line 3247
    .local v3, photoPos:I
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3249
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    move v4, v3

    .line 3312
    .end local v3           #photoPos:I
    .local v4, photoPos:I
    :goto_0
    return v4

    .line 3252
    .end local v4           #photoPos:I
    .restart local v3       #photoPos:I
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3254
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3258
    :cond_1
    const-string v7, "position"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3260
    .local v6, strPos:Ljava/lang/String;
    if-nez v6, :cond_3

    .line 3262
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v9, "itemIndex"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3263
    :goto_1
    const-string v7, "SceneLocalPhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]key item index Pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3264
    .end local v3           #photoPos:I
    .restart local v4       #photoPos:I
    goto :goto_0

    .end local v4           #photoPos:I
    .restart local v3       #photoPos:I
    :cond_2
    move v3, v8

    .line 3262
    goto :goto_1

    .line 3267
    :cond_3
    const/4 v5, 0x0

    .line 3270
    .local v5, pos:I
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3271
    const-string v7, "SceneLocalPhotoFullscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]strPos:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    if-eqz v5, :cond_4

    .line 3275
    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->findPosFromList(I)I

    move-result v5

    .line 3278
    :cond_4
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v5, v7, :cond_5

    .line 3279
    const/4 v5, 0x0

    .line 3287
    :cond_5
    :goto_2
    move v3, v5

    .line 3289
    const-string v7, "position"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3306
    .end local v5           #pos:I
    .end local v6           #strPos:Ljava/lang/String;
    :goto_3
    if-gez v3, :cond_6

    .line 3307
    const/4 v3, 0x0

    .line 3309
    :cond_6
    const-string v7, "SceneLocalPhotoFullscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getStartupIndex] poistion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_7

    .line 3311
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "itemIndex"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    move v4, v3

    .line 3312
    .end local v3           #photoPos:I
    .restart local v4       #photoPos:I
    goto/16 :goto_0

    .line 3281
    .end local v4           #photoPos:I
    .restart local v3       #photoPos:I
    .restart local v5       #pos:I
    .restart local v6       #strPos:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3283
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v9, "itemIndex"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3284
    :goto_4
    const-string v7, "SceneLocalPhotoFullscreen"

    const-string v8, "[HTCAlbum][SceneLocalPhotoFullscreen][getStartupIndex]NumberFormatException"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v5, v8

    .line 3283
    goto :goto_4

    .line 3291
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #pos:I
    .end local v6           #strPos:Ljava/lang/String;
    :cond_9
    const-string v7, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3294
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3295
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->queryPosByUri(Landroid/net/Uri;)I

    move-result v3

    :goto_5
    goto :goto_3

    :cond_a
    move v3, v8

    goto :goto_5

    .line 3297
    :cond_b
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3299
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    goto :goto_3

    .line 3303
    :cond_c
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v9, "itemIndex"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :goto_6
    goto/16 :goto_3

    :cond_d
    move v3, v8

    goto :goto_6
.end method

.method private is3DSWButtonOn()Z
    .locals 1

    .prologue
    .line 3816
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentItemCanShow3D()Z
    .locals 6

    .prologue
    .line 2656
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2657
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2658
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_3

    .line 2660
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 2661
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 2663
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 2664
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 2666
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2668
    const/4 v4, 0x1

    .line 2685
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 2673
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2678
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2683
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemCanShow3D]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCurrentItemVideo()Z
    .locals 6

    .prologue
    .line 2690
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 2691
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2692
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v4, :cond_3

    .line 2694
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/IMediaList;

    .line 2695
    .local v2, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v2, :cond_2

    .line 2697
    invoke-interface {v2, v3}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 2698
    .local v1, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v1, :cond_0

    .line 2700
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2702
    const/4 v4, 0x1

    .line 2719
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :goto_0
    return v4

    .line 2707
    .restart local v1       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]data is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    .end local v1           #data:Lcom/htc/sunny2/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2712
    .restart local v2       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2717
    .end local v2           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullScreen][isCurrentItemVideo]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isHitIndicator(II)Z
    .locals 20
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v18

    div-int/lit8 v17, v18, 0x5

    .line 2554
    .local v17, wSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v18

    div-int/lit8 v7, v18, 0x5

    .line 2555
    .local v7, hSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2556
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v13, v0

    .line 2558
    .local v13, left:I
    sub-int v18, p1, v13

    mul-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const/4 v10, 0x1

    .line 2559
    .local v10, hitX:Z
    :goto_0
    sub-int v18, p2, v16

    mul-int/lit8 v19, v7, 0x2

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v7, :cond_4

    const/4 v11, 0x1

    .line 2561
    .local v11, hitY:Z
    :goto_1
    const/4 v12, 0x0

    .line 2562
    .local v12, isDrm:Z
    const/4 v8, 0x0

    .line 2563
    .local v8, hitDrmX:Z
    const/4 v9, 0x0

    .line 2566
    .local v9, hitDrmY:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 2573
    :goto_2
    if-eqz v12, :cond_0

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2576
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 2577
    .local v15, screenw:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 2579
    .local v14, screenh:I
    div-int/lit8 v18, v15, 0x2

    sget v19, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    div-int/lit8 v19, v19, 0x2

    sub-int v4, v18, v19

    .line 2580
    .local v4, drmLeft:I
    div-int/lit8 v18, v14, 0x2

    sget v19, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    sget v19, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_Y_OFFSET:I

    add-int v5, v18, v19

    .line 2581
    .local v5, drmTop:I
    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    .line 2582
    .local v6, drmWidth:I
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    .line 2584
    .local v3, drmHeight:I
    sub-int v18, p1, v4

    if-lez v18, :cond_5

    sub-int v18, p1, v4

    move/from16 v0, v18

    if-ge v0, v6, :cond_5

    const/4 v8, 0x1

    .line 2585
    :goto_3
    sub-int v18, p2, v5

    if-lez v18, :cond_6

    sub-int v18, p2, v5

    move/from16 v0, v18

    if-ge v0, v3, :cond_6

    const/4 v9, 0x1

    .line 2588
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v14           #screenh:I
    .end local v15           #screenw:I
    :cond_0
    :goto_4
    if-eqz v10, :cond_1

    if-nez v11, :cond_2

    :cond_1
    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    :cond_2
    const/16 v18, 0x1

    :goto_5
    return v18

    .line 2558
    .end local v8           #hitDrmX:Z
    .end local v9           #hitDrmY:Z
    .end local v10           #hitX:Z
    .end local v11           #hitY:Z
    .end local v12           #isDrm:Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2559
    .restart local v10       #hitX:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 2584
    .restart local v2       #display:Landroid/view/Display;
    .restart local v3       #drmHeight:I
    .restart local v4       #drmLeft:I
    .restart local v5       #drmTop:I
    .restart local v6       #drmWidth:I
    .restart local v8       #hitDrmX:Z
    .restart local v9       #hitDrmY:Z
    .restart local v11       #hitY:Z
    .restart local v12       #isDrm:Z
    .restart local v14       #screenh:I
    .restart local v15       #screenw:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 2585
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    .line 2588
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #drmHeight:I
    .end local v4           #drmLeft:I
    .end local v5           #drmTop:I
    .end local v6           #drmWidth:I
    .end local v14           #screenh:I
    .end local v15           #screenw:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_5

    .line 2568
    :catch_0
    move-exception v18

    goto :goto_2
.end method

.method private normalizeParallax(F)F
    .locals 2
    .parameter "parallax"

    .prologue
    .line 3743
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 3744
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    mul-float p1, v0, v1

    goto :goto_0
.end method

.method private onAdjust3DAlignment()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1162
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 1164
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[onAdjust3DAlignment] parallax_unit not set up"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_1
    :goto_0
    return-void

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1172
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_4

    .line 1177
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[onAdjust3DAlignment] mAdjust3DAlignmentView is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1181
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1182
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->resetAdjust3DBtn()V

    .line 1183
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 1184
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 1185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsParallaxTuning:Z

    goto :goto_0
.end method

.method private onAdjust3DAlignmentCancel()V
    .locals 2

    .prologue
    .line 3748
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 3749
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setAdjust3DAlignmentValueByMParallax()V

    .line 3750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsParallaxTuning:Z

    .line 3751
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3753
    :cond_0
    return-void
.end method

.method private onAdjust3DAlignmentSave()V
    .locals 7

    .prologue
    .line 3721
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsParallaxTuning:Z

    if-eqz v3, :cond_2

    .line 3722
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 3723
    .local v2, pos:I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 3724
    :cond_0
    const-string v4, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onAdjust3DAlignmentSave] position error, pos "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Adapter count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DAlignmentCancel()V

    .line 3740
    .end local v2           #pos:I
    :goto_0
    return-void

    .line 3729
    .restart local v2       #pos:I
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3730
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_2

    .line 3731
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->normalizeParallax(F)F

    move-result v1

    .line 3732
    .local v1, new_parallax:F
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onAdjust3DAlignmentSave] parallax "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new parallax "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3733
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    if-eqz v3, :cond_2

    .line 3734
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->save(Ljava/lang/String;Ljava/lang/String;F)V

    .line 3735
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    .line 3739
    .end local v0           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v1           #new_parallax:F
    .end local v2           #pos:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DAlignmentCancel()V

    goto :goto_0
.end method

.method private onAdjust3DLeftBtnClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, -0x41b33333

    .line 3647
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_1

    .line 3648
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[onAdjust3DLeftBtnClicked] Adjust 3D Alignment Button is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    :goto_0
    return-void

    .line 3651
    :cond_1
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 3652
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3653
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3654
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_2

    .line 3655
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 3656
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/RepeatingImageButton;->setPressed(Z)V

    .line 3657
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3659
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setAdjust3DAlignmentValueByMParallax()V

    goto :goto_0
.end method

.method private onAdjust3DRightBtnClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x3e4ccccd

    .line 3663
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_1

    .line 3664
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[onAdjust3DRightBtnClicked] Adjust 3D Alignment Button is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    :goto_0
    return-void

    .line 3667
    :cond_1
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 3668
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3669
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3670
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_2

    .line 3671
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 3672
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/RepeatingImageButton;->setPressed(Z)V

    .line 3673
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3675
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setAdjust3DAlignmentValueByMParallax()V

    goto :goto_0
.end method

.method private onCamera()V
    .locals 4

    .prologue
    .line 1742
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1743
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    .line 1744
    .local v2, folderType:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1746
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 1758
    :goto_0
    return-void

    .line 1750
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    .line 1752
    .local v0, bVideo:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 1756
    :goto_1
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 1752
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 7
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 1855
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 1856
    .local v2, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1857
    .local v3, selectedItemPosition:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1859
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v4

    .line 1861
    .local v4, shareIntent:Landroid/content/Intent;
    const-string v5, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1863
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1865
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 1881
    :goto_0
    return-void

    .line 1871
    :cond_0
    const/4 v0, 0x0

    .line 1872
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1874
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    :cond_1
    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[HTCAlbum][SceneLocalPhotoFullScreens][onClickShareItemSelected]: get activity NG !"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCrop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1683
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1684
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1685
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1687
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v6}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 1694
    :goto_0
    return-void

    .line 1691
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7f00

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 8
    .parameter "selectDMR"

    .prologue
    .line 3209
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_1

    .line 3242
    :cond_0
    :goto_0
    return-void

    .line 3212
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    .line 3214
    .local v4, selectedPos:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3216
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v0, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3217
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v3, :cond_0

    .line 3220
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    .line 3222
    .local v2, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3224
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 3226
    const-string v5, "folder_type"

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    const-string v5, "key_folder_name"

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    const-string v5, "key_bucket_id"

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    :cond_2
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3233
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, p1, v6, v7, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3238
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v6

    invoke-static {v5, p1, v6, v4, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onDelete()V
    .locals 3

    .prologue
    .line 1666
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 1667
    .local v0, position:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1668
    .local v1, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1669
    return-void
.end method

.method private onDisplay()V
    .locals 5

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x1398

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 1766
    return-void

    .line 1762
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEffects()V
    .locals 5

    .prologue
    .line 1698
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1699
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1700
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1702
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 1708
    :goto_0
    return-void

    .line 1706
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method private onFavorite()V
    .locals 4

    .prologue
    .line 1651
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1652
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1653
    return-void
.end method

.method private onHDMIConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3859
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIConnected] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    if-eqz v0, :cond_0

    .line 3862
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIConnected]HDMI already connected, do nothing"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getIfTVSupport3D()V

    .line 3870
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    if-eqz v0, :cond_1

    .line 3872
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIConnected]TV supports 3D, update presentation view"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 3874
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    .line 3875
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 3876
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    .line 3882
    :goto_1
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIConnected] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    return-void

    .line 3866
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIConnected]mIsHDMIConnected set to true"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    goto :goto_0

    .line 3880
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIConnected]HDMI connected, but TV does not support 3D"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onHDMIDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3887
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    if-eqz v0, :cond_1

    .line 3890
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected]mIsHDMIConnected set to false"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    .line 3897
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getIfTVSupport3D()V

    .line 3898
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    if-eqz v0, :cond_2

    .line 3900
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected]HDMI disconnected, but TV still supports 3D"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    :goto_1
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewHadSetExternalDisplay:Z

    if-eqz v0, :cond_0

    .line 3910
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected]mPresentationViewSurfaceHolder.setExternalDisplay(0x00000)"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3911
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setExternalDisplay(I)V

    .line 3912
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewHadSetExternalDisplay:Z

    .line 3914
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3915
    return-void

    .line 3895
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected]HDMI already disconnected, do nothing"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3904
    :cond_2
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][mHDMICableConnectReceiver][onHDMIDisconnected]TV not support 3D, update presentation view"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 3906
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    goto :goto_1
.end method

.method private onPrint()V
    .locals 5

    .prologue
    .line 1799
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1800
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 1815
    :goto_0
    return-void

    .line 1803
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1804
    .local v1, tempIntent:Landroid/content/Intent;
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1808
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 1812
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRotateLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1727
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1728
    .local v3, pos:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1729
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3, v6}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 1738
    :goto_0
    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    const/16 v6, 0x10e

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager;->launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V

    goto :goto_0
.end method

.method private onRotateRight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1712
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1713
    .local v3, pos:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1714
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v6}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 1723
    :goto_0
    return-void

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;

    invoke-direct {v5, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    const/16 v6, 0x5a

    invoke-virtual/range {v0 .. v6}, Lcom/htc/album/helper/MenuManager;->launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V

    goto :goto_0
.end method

.method private onSaveAs2D()V
    .locals 5

    .prologue
    .line 1673
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1674
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1675
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1677
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 1679
    :cond_0
    return-void
.end method

.method private onScrollStateChange(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x2

    .line 3180
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3181
    .local v1, scrollState:I
    if-nez v1, :cond_3

    .line 3183
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateIDLE()V

    .line 3190
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_2

    .line 3192
    if-eqz v1, :cond_1

    if-ne v3, v1, :cond_2

    .line 3195
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 3196
    .local v0, nIndex:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    if-eqz v2, :cond_2

    .line 3198
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-virtual {v3, v0, v1}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->setScrollState(II)Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3200
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->doDispatch()V

    .line 3205
    .end local v0           #nIndex:I
    :cond_2
    return-void

    .line 3185
    :cond_3
    if-ne v1, v3, :cond_0

    .line 3187
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateScroll()V

    goto :goto_0
.end method

.method private onShare()V
    .locals 7

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1771
    .local v1, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1772
    .local v6, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1773
    .local v2, pos:I
    if-nez v6, :cond_0

    .line 1785
    :goto_0
    return-void

    .line 1775
    :cond_0
    invoke-virtual {v6, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1777
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1783
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private onShowOnMap()V
    .locals 4

    .prologue
    .line 1819
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1820
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1821
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1822
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1823
    return-void
.end method

.method private onSlideShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1789
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1790
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    .line 1791
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object v1, v3

    .line 1793
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :goto_0
    if-eqz v1, :cond_0

    .line 1794
    invoke-static {v0, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 1795
    :cond_0
    return-void

    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :cond_1
    move-object v1, v4

    .line 1791
    goto :goto_0
.end method

.method private onTrim()V
    .locals 4

    .prologue
    .line 1657
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1658
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1660
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1661
    .local v0, act:Landroid/app/Activity;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetAdjust3DBtn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x3e4ccccd

    const v2, -0x41b33333

    const/4 v1, 0x0

    .line 3680
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    if-nez v0, :cond_2

    .line 3681
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[resetAdjust3DBtn] Adjust 3D Alignment Button is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    :cond_1
    :goto_0
    return-void

    .line 3684
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3685
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 3686
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_3

    .line 3687
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    .line 3688
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setPressed(Z)V

    .line 3689
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3690
    :cond_3
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    .line 3691
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOriParallax:F

    .line 3692
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setPressed(Z)V

    .line 3693
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setAdjust3DAlignmentValueByMParallax()V
    .locals 2

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3715
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 3716
    const/16 v1, 0x13ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3718
    :cond_0
    return-void
.end method

.method private setDisplay3DModeOnOff(Z)V
    .locals 6
    .parameter "on"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3979
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    .line 3982
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeyguardShow:Z

    if-eqz v2, :cond_0

    .line 3984
    const/4 p1, 0x0

    .line 3987
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    .line 3989
    const/4 v0, 0x0

    .line 3990
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3992
    :cond_1
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]Can\'t get activity"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    if-ne v5, v2, :cond_6

    .line 4003
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v2, :cond_4

    .line 4005
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_3D_LANDSCAPE, mDisplayService is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4074
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    :goto_1
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff] - "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4075
    return-void

    .line 3996
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    goto :goto_0

    .line 4009
    :cond_4
    :try_start_1
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    if-eqz v2, :cond_5

    .line 4011
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_3D_LANDSCAPE"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    .line 4013
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-interface {v2, v3, v4}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4042
    :catch_0
    move-exception v1

    .line 4044
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode, orientation: error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4017
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    :try_start_2
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_3D_LANDSCAPE, not changed"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4021
    :cond_6
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    if-ne v4, v2, :cond_2

    .line 4023
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v2, :cond_7

    .line 4025
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_3D_PORTRAIT, mDisplayService is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4029
    :cond_7
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    if-eq v2, v4, :cond_8

    .line 4031
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_3D_PORTRAIT"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4032
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    .line 4033
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-interface {v2, v3, v4}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I

    goto :goto_1

    .line 4037
    :cond_8
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_3D_PORTRAIT, not changed"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 4051
    .end local v0           #activity:Landroid/app/Activity;
    :cond_9
    :try_start_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v2, :cond_a

    .line 4053
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_NORMAL, mDisplayService is null"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 4069
    :catch_1
    move-exception v1

    .line 4071
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode, normal: error"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4057
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_a
    :try_start_4
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    if-eq v2, v5, :cond_b

    .line 4059
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_NORMAL"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    .line 4061
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallaxBarrierState:I

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-interface {v2, v3, v4}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I

    goto/16 :goto_1

    .line 4065
    :cond_b
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][setDisplay3DModeOnOff]set mode: DISPLAY_MODE_NORMAL, not changed"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method private setupAdjustButton(Landroid/widget/RelativeLayout;)V
    .locals 9
    .parameter "adjust3DAlignment"

    .prologue
    const-wide/16 v7, 0x32

    .line 3588
    if-nez p1, :cond_1

    .line 3589
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[setupAdjustButton] Adjust3DAlignment mainView is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :cond_0
    :goto_0
    return-void

    .line 3592
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 3593
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f0a004e

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/RepeatingImageButton;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    .line 3594
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    if-eqz v3, :cond_3

    .line 3595
    if-eqz v0, :cond_2

    .line 3596
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "gallery_indicator_left_bg"

    const v6, 0x7f020028

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setBackgroundResource(I)V

    .line 3600
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;

    invoke-direct {v4, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$10;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3606
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentLeft:Lcom/htc/widget/RepeatingImageButton;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->repeatClickLeftListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v3, v4, v7, v8}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    .line 3608
    :cond_3
    const v3, 0x7f0a004f

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/RepeatingImageButton;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    .line 3609
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    if-eqz v3, :cond_5

    .line 3610
    if-eqz v0, :cond_4

    .line 3611
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "gallery_indicator_right_bg"

    const v6, 0x7f02002c

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setBackgroundResource(I)V

    .line 3615
    :cond_4
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$11;

    invoke-direct {v4, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$11;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3621
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mBtn3DAlignmentRight:Lcom/htc/widget/RepeatingImageButton;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->repeatClickRightListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v3, v4, v7, v8}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    .line 3624
    :cond_5
    const v3, 0x7f0a0033

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    .line 3625
    .local v2, mBtn3DAlignmentSave:Lcom/htc/widget/HtcFooterButton;
    if-eqz v2, :cond_6

    .line 3626
    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 3627
    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$12;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$12;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3634
    :cond_6
    const v3, 0x7f0a0032

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 3635
    .local v1, mBtn3DAlignmentCancel:Lcom/htc/widget/HtcFooterButton;
    if-eqz v1, :cond_0

    .line 3636
    const v3, 0x20c01d6

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 3637
    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$13;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$13;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setupSideBySideBitmap()V
    .locals 15

    .prologue
    .line 4079
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][setupSideBySideBitmap] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    if-nez v0, :cond_1

    .line 4082
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    .line 4137
    :goto_0
    return-void

    .line 4086
    :cond_1
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4089
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    goto :goto_0

    .line 4093
    :cond_3
    const/4 v14, 0x0

    .line 4094
    .local v14, screenW:F
    const/4 v13, 0x0

    .line 4097
    .local v13, screenH:F
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 4098
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v14, v0

    .line 4099
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v13, v0

    .line 4107
    .end local v6           #display:Landroid/view/Display;
    :goto_1
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][setupSideBySideBitmap]screenW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", screenH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    .line 4109
    .local v10, imageW:F
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v9, v0

    .line 4110
    .local v9, imageH:F
    div-float v12, v14, v13

    .line 4111
    .local v12, screenAspect:F
    div-float v8, v10, v9

    .line 4112
    .local v8, imageAspect:F
    const/high16 v4, 0x4000

    .line 4113
    .local v4, displayW:F
    const/high16 v5, 0x4000

    .line 4114
    .local v5, displayH:F
    cmpg-float v0, v10, v14

    if-gtz v0, :cond_5

    cmpg-float v0, v9, v13

    if-gtz v0, :cond_5

    .line 4116
    div-float v0, v10, v14

    mul-float/2addr v4, v0

    .line 4117
    div-float v0, v9, v13

    mul-float/2addr v5, v0

    .line 4127
    :goto_2
    const/high16 v0, 0x4000

    mul-float v1, v14, v4

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 4128
    .local v11, newParallaxUnit:F
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    invoke-static {v11, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_4

    .line 4129
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setupSideBySideBitmap] unit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    iput v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    .line 4131
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setAdjust3DAlignmentValueByMParallax()V

    .line 4133
    :cond_4
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][setupSideBySideBitmap]mInterleaveView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4134
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 4135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z

    .line 4136
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][setupSideBySideBitmap] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4101
    .end local v4           #displayW:F
    .end local v5           #displayH:F
    .end local v8           #imageAspect:F
    .end local v9           #imageH:F
    .end local v10           #imageW:F
    .end local v11           #newParallaxUnit:F
    .end local v12           #screenAspect:F
    :catch_0
    move-exception v7

    .line 4103
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][setupSideBySideBitmap]setupSideBySideBitmap error"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v0

    int-to-float v14, v0

    .line 4105
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v0

    int-to-float v13, v0

    goto/16 :goto_1

    .line 4121
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #displayW:F
    .restart local v5       #displayH:F
    .restart local v8       #imageAspect:F
    .restart local v9       #imageH:F
    .restart local v10       #imageW:F
    .restart local v12       #screenAspect:F
    :cond_5
    cmpl-float v0, v12, v8

    if-ltz v0, :cond_6

    .line 4122
    div-float v0, v8, v12

    mul-float/2addr v4, v0

    goto/16 :goto_2

    .line 4124
    :cond_6
    div-float v0, v12, v8

    mul-float/2addr v5, v0

    goto/16 :goto_2
.end method

.method private showDrmConsumeDialog(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "position"
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    .line 2507
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2510
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->setDrmStateToNonCheck()V

    .line 2512
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2513
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$9;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v1, v2

    .line 2539
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDrmFileNameBar(ZZ)V
    .locals 2
    .parameter "bIsShow"
    .parameter "bForce"

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 888
    return-void
.end method

.method private showEdit(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1473
    .local p1, editBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v13, "SceneLocalPhotoFullscreen"

    const-string v14, "[showEdit] + "

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    if-nez v13, :cond_1

    .line 1476
    :cond_0
    const-string v13, "SceneLocalPhotoFullscreen"

    const-string v14, "[showEdit]can\'t get context"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :goto_0
    return-void

    .line 1479
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1480
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1482
    .local v9, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v9, :cond_2

    .line 1484
    const-string v13, "SceneLocalPhotoFullscreen"

    const-string v14, "[showEdit]can\'t get image"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1488
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 1494
    const-string v13, "video/x-wmv-drm"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1495
    .local v12, isWMDrm:Z
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v9

    check-cast v13, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object v8, v13

    .line 1496
    .local v8, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz v12, :cond_6

    :cond_3
    const/4 v10, 0x1

    .line 1497
    .local v10, isDRM:Z
    :goto_2
    if-eqz v12, :cond_7

    const/4 v7, 0x1

    .line 1498
    .local v7, drmType:I
    :goto_3
    const/4 v13, 0x1

    if-ne v7, v13, :cond_9

    const/4 v11, 0x1

    .line 1500
    .local v11, isDRMFL:Z
    :goto_4
    if-nez v10, :cond_a

    const/4 v1, 0x1

    .line 1501
    .local v1, canShowEdit:Z
    :goto_5
    if-eqz v10, :cond_b

    move v4, v11

    .line 1502
    .local v4, canShowSetAs:Z
    :goto_6
    if-eqz v10, :cond_c

    move v5, v11

    .line 1504
    .local v5, canShowSlideShow:Z
    :goto_7
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v13, :cond_d

    if-nez v10, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z

    move-result v13

    if-eqz v13, :cond_d

    :cond_4
    const/4 v3, 0x1

    .line 1507
    .local v3, canShowSelectPlayer:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_e

    if-eqz v9, :cond_e

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    if-nez v12, :cond_e

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v2, 0x1

    .line 1512
    .local v2, canShowPrint:Z
    :goto_9
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1514
    const/16 v13, 0xe

    const/4 v14, 0x0

    const v15, 0x7f0b0123

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1515
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    goto/16 :goto_0

    .line 1495
    .end local v1           #canShowEdit:Z
    .end local v2           #canShowPrint:Z
    .end local v3           #canShowSelectPlayer:Z
    .end local v4           #canShowSetAs:Z
    .end local v5           #canShowSlideShow:Z
    .end local v7           #drmType:I
    .end local v8           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v10           #isDRM:Z
    .end local v11           #isDRMFL:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 1496
    .restart local v8       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1497
    .restart local v10       #isDRM:Z
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v7

    goto :goto_3

    :cond_8
    const/4 v7, -0x1

    goto :goto_3

    .line 1498
    .restart local v7       #drmType:I
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 1500
    .restart local v11       #isDRMFL:Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 1501
    .restart local v1       #canShowEdit:Z
    :cond_b
    const/4 v4, 0x1

    goto :goto_6

    .line 1502
    .restart local v4       #canShowSetAs:Z
    :cond_c
    const/4 v5, 0x1

    goto :goto_7

    .line 1504
    .restart local v5       #canShowSlideShow:Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_8

    .line 1507
    .restart local v3       #canShowSelectPlayer:Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_9

    .line 1519
    .restart local v2       #canShowPrint:Z
    :cond_f
    if-eqz v1, :cond_11

    .line 1521
    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1523
    const/16 v13, 0x16

    const/4 v14, 0x0

    const v15, 0x7f0b011b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1524
    sget-boolean v13, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v13, :cond_10

    .line 1526
    const/16 v13, 0x17

    const/4 v14, 0x0

    const v15, 0x7f0b0101

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1529
    :cond_10
    const/16 v13, 0x18

    const/4 v14, 0x0

    const v15, 0x7f0b011c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1530
    const/16 v13, 0x19

    const/4 v14, 0x0

    const v15, 0x7f0b011d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1531
    const/16 v13, 0x1a

    const/4 v14, 0x0

    const v15, 0x7f0b011e

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1532
    const/16 v13, 0x1b

    const/4 v14, 0x0

    const v15, 0x7f0b011f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1535
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    goto/16 :goto_0
.end method

.method private showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1540
    .local p1, moreBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[showMore] + "

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    if-nez v17, :cond_1

    .line 1543
    :cond_0
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[showMore]can\'t get context"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :goto_0
    return-void

    .line 1546
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 1547
    .local v9, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1549
    .local v13, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v13, :cond_2

    .line 1551
    const-string v17, "SceneLocalPhotoFullscreen"

    const-string v18, "[showMore]can\'t get image"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1555
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    .line 1561
    const-string v17, "video/x-wmv-drm"

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1562
    .local v16, isWMDrm:Z
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v13

    check-cast v17, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v11, v17

    .line 1563
    .local v11, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v16, :cond_6

    :cond_3
    const/4 v14, 0x1

    .line 1564
    .local v14, isDRM:Z
    :goto_2
    if-eqz v16, :cond_7

    const/4 v10, 0x1

    .line 1565
    .local v10, drmType:I
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_9

    const/4 v15, 0x1

    .line 1567
    .local v15, isDRMFL:Z
    :goto_4
    if-nez v14, :cond_a

    const/4 v4, 0x1

    .line 1568
    .local v4, canShowEdit:Z
    :goto_5
    if-eqz v14, :cond_b

    move v7, v15

    .line 1569
    .local v7, canShowSetAs:Z
    :goto_6
    if-eqz v14, :cond_c

    move v8, v15

    .line 1571
    .local v8, canShowSlideShow:Z
    :goto_7
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v17, :cond_d

    if-nez v14, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_4
    const/4 v6, 0x1

    .line 1574
    .local v6, canShowSelectPlayer:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    if-eqz v13, :cond_e

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    if-nez v16, :cond_e

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v5, 0x1

    .line 1585
    .local v5, canShowPrint:Z
    :goto_9
    const/16 v17, 0x2

    const/16 v18, 0x0

    const v19, 0x7f0b010a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1587
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1589
    const/16 v17, 0x1d

    const/16 v18, 0x0

    const v19, 0x7f0b0120

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1590
    const/16 v17, 0xb

    const/16 v18, 0x0

    const v19, 0x7f0b0121

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1591
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    goto/16 :goto_0

    .line 1562
    .end local v4           #canShowEdit:Z
    .end local v5           #canShowPrint:Z
    .end local v6           #canShowSelectPlayer:Z
    .end local v7           #canShowSetAs:Z
    .end local v8           #canShowSlideShow:Z
    .end local v10           #drmType:I
    .end local v11           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v14           #isDRM:Z
    .end local v15           #isDRMFL:Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1563
    .restart local v11       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1564
    .restart local v14       #isDRM:Z
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v10

    goto/16 :goto_3

    :cond_8
    const/4 v10, -0x1

    goto/16 :goto_3

    .line 1565
    .restart local v10       #drmType:I
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1567
    .restart local v15       #isDRMFL:Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1568
    .restart local v4       #canShowEdit:Z
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 1569
    .restart local v7       #canShowSetAs:Z
    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 1571
    .restart local v8       #canShowSlideShow:Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1574
    .restart local v6       #canShowSelectPlayer:Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    .line 1595
    .restart local v5       #canShowPrint:Z
    :cond_f
    if-eqz v7, :cond_10

    .line 1597
    const/16 v17, 0x7

    const/16 v18, 0x0

    const v19, 0x7f0b0124

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1599
    :cond_10
    if-eqz v8, :cond_11

    .line 1601
    const/16 v17, 0xd

    const/16 v18, 0x0

    const v19, 0x7f0b010d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1603
    :cond_11
    if-eqz v5, :cond_12

    .line 1605
    const/16 v17, 0x12

    const/16 v18, 0x0

    const v19, 0x7f0b010e

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1608
    :cond_12
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v12

    .line 1609
    .local v12, hasGPSInfo:Z
    sget-boolean v17, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v17, :cond_13

    if-eqz v12, :cond_13

    .line 1611
    const/16 v17, 0x1c

    const/16 v18, 0x0

    const v19, 0x7f0b010f

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1614
    :cond_13
    if-eqz v14, :cond_14

    .line 1616
    const/16 v17, 0xc

    const/16 v18, 0x0

    const v19, 0x7f0b0122

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1619
    :cond_14
    const/16 v17, 0xb

    const/16 v18, 0x0

    const v19, 0x7f0b0121

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 1620
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    goto/16 :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1455
    :cond_0
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1459
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1461
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v1, :cond_2

    .line 1463
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[showShare]can\'t get image"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareBubble(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    .line 1468
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    goto :goto_0
.end method

.method private updatePresentationView()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3919
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView] + "

    invoke-static {v1, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 3922
    :cond_0
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView] null mPresentationView or mPresentationViewSurfaceHolder"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    :goto_0
    return-void

    .line 3925
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getIfTVSupport3D()V

    .line 3926
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsTVSupport3D:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    if-ne v1, v4, :cond_6

    .line 3928
    const-string v4, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]mPresentationView.getVisibility() == android.view.View.VISIBLE = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 3932
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 3933
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_4

    .line 3935
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]canvas = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3936
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 3938
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]mSideBySideBitmap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3940
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x3c0

    const/16 v7, 0x21c

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3948
    :goto_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 3949
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    const/high16 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setExternalDisplay(I)V

    .line 3950
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]mPresentationViewHadSetExternalDisplay set true"

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewHadSetExternalDisplay:Z

    .line 3974
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :goto_3
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 3928
    goto/16 :goto_1

    .line 3945
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :cond_3
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]mSideBySideBitmap is null"

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3955
    :cond_4
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]canvas is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3960
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_5
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->setVisibility(I)V

    goto :goto_3

    .line 3965
    :cond_6
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewHadSetExternalDisplay:Z

    if-eqz v1, :cond_7

    .line 3967
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setExternalDisplay(I)V

    .line 3968
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewHadSetExternalDisplay:Z

    .line 3969
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][updatePresentationView]mPresentationViewSurfaceHolder.setExternalDisplay(0x00000)"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    :cond_7
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method public checkKeyGuard()V
    .locals 3

    .prologue
    .line 461
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 463
    :cond_0
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][checkKeyGuard]Can\'t get activity"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 467
    .local v0, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][checkKeyGuard]keyguard is shown"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeyguardShow:Z

    goto :goto_0

    .line 474
    :cond_2
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][checkKeyGuard]keyguard is not shown"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeyguardShow:Z

    goto :goto_0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public exclusionEditTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 2724
    const/high16 v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method public exclusionShowHideTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 2729
    const/high16 v0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 3123
    const/4 v0, 0x3

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2922
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2923
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 2925
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullScreen][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    :cond_0
    :goto_0
    return-object v2

    .line 2929
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2930
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2935
    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2905
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2906
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 2908
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullScreen][getHeaderTitle]adapter is null"

    invoke-static {v2, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 2916
    :goto_0
    return-object v2

    .line 2912
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2913
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 2914
    goto :goto_0

    .line 2916
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 3334
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 811
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 813
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 814
    .local v1, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 815
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 827
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2993
    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult] + "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 3074
    :goto_0
    return-void

    .line 2997
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2998
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    .line 3073
    :cond_1
    :goto_1
    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult] - "

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3004
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3005
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3006
    .local v4, strUri:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 3012
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v4           #strUri:Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3014
    .restart local v1       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3015
    .restart local v4       #strUri:Ljava/lang/String;
    const-string v5, "data2"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3017
    .local v3, strData:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 3019
    :cond_2
    const-string v5, "SceneLocalPhotoFullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LocalGridview3DTemplate][onActivityResult][CommonMessageID.MSG_INTENT_TRIMAPP] adpater,data1,data2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3026
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(Z)V

    goto :goto_1

    .line 3062
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v3           #strData:Ljava/lang/String;
    .end local v4           #strUri:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto :goto_1

    .line 3065
    :sswitch_3
    const-string v5, "DMR"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3066
    .local v2, selectDMR:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 3067
    if-eqz v2, :cond_1

    .line 3069
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 2998
    nop

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_3
        0x13ba -> :sswitch_1
        0x13bb -> :sswitch_0
        0x7f00 -> :sswitch_2
        0x7f08 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 11
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    .line 3081
    const-string v8, "SceneLocalPhotoFullscreen"

    const-string v10, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult_CROP_NONE] + "

    invoke-static {v8, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    new-instance v4, Landroid/media/MediaScanner;

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 3083
    .local v4, ms:Landroid/media/MediaScanner;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3084
    .local v2, extras:Landroid/os/Bundle;
    const-string v8, "filePath"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3085
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3087
    const-string v8, "external"

    const-string v10, "image/jpeg"

    invoke-virtual {v4, v1, v8, v10}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 3090
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 3091
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 3098
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 3099
    .local v3, itemCount:I
    add-int/lit8 v5, v3, -0x1

    .line 3110
    .local v5, pos:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v7

    .line 3111
    .local v7, type:Ljava/lang/String;
    const-string v8, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    move v6, v9

    .line 3112
    .local v6, shouldStayOnOriginalImage:Z
    :goto_0
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    if-nez v6, :cond_2

    .line 3115
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(Z)V

    .line 3116
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 3118
    :cond_2
    const-string v8, "SceneLocalPhotoFullscreen"

    const-string v9, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onActivityResult_CROP_NONE] - "

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    return-void

    .line 3111
    .end local v6           #shouldStayOnOriginalImage:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onAnimationBegin()V
    .locals 4

    .prologue
    .line 3339
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z

    .line 3340
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 3341
    .local v0, nIndex:I
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][onAnimationBegin]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformBegin(I)V

    .line 3343
    return-void
.end method

.method public onAnimationEnd()V
    .locals 4

    .prologue
    .line 3346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z

    .line 3347
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 3348
    .local v0, nIndex:I
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][onAnimationEnd]: nIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTransformEnd(I)V

    .line 3350
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    const/4 v1, 0x1

    .line 1291
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onAnimationEnd(I)V

    .line 1292
    packed-switch p1, :pswitch_data_0

    .line 1301
    :goto_0
    return-void

    .line 1296
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1297
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableHeaderTransparentBackground(Z)V

    goto :goto_0

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationSwitched()V
    .locals 4

    .prologue
    .line 3353
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z

    .line 3354
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 3356
    .local v0, nIndex:I
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][FullscreenZoomListener][onAnimationSwitched]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    return-void
.end method

.method public onBack()V
    .locals 4

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onLastViewItemUpdate()V

    .line 874
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v1, 0x0

    const-string v2, "SceneLocalPhotoThumbnail"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 875
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 831
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsParallaxTuning:Z

    if-eqz v3, :cond_1

    .line 834
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DAlignmentCancel()V

    .line 869
    :cond_0
    :goto_0
    return v6

    .line 838
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 840
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    goto :goto_0

    .line 844
    :cond_2
    const/4 v0, 0x0

    .line 845
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 846
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 848
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 850
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v1

    .line 852
    .local v1, bIsFullScreen:Z
    if-nez v1, :cond_4

    .line 853
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisableTransitionAnimation(Z)V

    .line 855
    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onLastViewItemUpdate()V

    .line 856
    const-string v3, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 858
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v4, 0x0

    const-string v5, "SceneLocalPhotoThumbnail"

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 864
    :goto_1
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_0

    .line 866
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    goto :goto_0

    .line 862
    :cond_5
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 714
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 715
    const/4 v1, 0x0

    .line 718
    .local v1, selectedItemIndex:I
    const/4 v2, 0x1

    invoke-direct {p0, v6, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 720
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getStartupIndex()I

    move-result v1

    .line 722
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 724
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 725
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;

    invoke-direct {v4, p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v3, v0, v2, v4}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 728
    new-instance v3, Lcom/htc/album/helper/ThreeDFlattenManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    invoke-direct {v4, p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-direct {v3, v0, v2, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;-><init>(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    .line 729
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    .line 736
    const/16 v2, 0x2724

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRemoveMessage(I)V

    .line 737
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 738
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 4

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1641
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 1630
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1631
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 1886
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1887
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 1888
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientationHasChanged:Z

    .line 1889
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1890
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1891
    .local v2, screenw:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1892
    .local v1, screenh:I
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->OnConfigChange(II)V

    .line 1893
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    if-eqz v3, :cond_0

    .line 1895
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 1896
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->doDispatch()V

    .line 1898
    :cond_0
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HTCAlbum][SceneLocalPhotoFullscreen][onConfigurationChanged]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1320
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1322
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1324
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShare(I)V

    .line 1448
    :goto_0
    return-void

    .line 1328
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1428
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1332
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisplay()V

    goto :goto_0

    .line 1337
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDelete()V

    goto :goto_0

    .line 1342
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCamera()V

    goto :goto_0

    .line 1348
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onBack()V

    goto :goto_0

    .line 1353
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSaveAs2D()V

    goto :goto_0

    .line 1358
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onAdjust3DAlignment()V

    goto :goto_0

    .line 1363
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCrop()V

    goto :goto_0

    .line 1368
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onEffects()V

    goto :goto_0

    .line 1373
    :pswitch_a
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateRight()V

    goto :goto_0

    .line 1378
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onRotateLeft()V

    goto :goto_0

    .line 1383
    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSetAs()V

    goto :goto_0

    .line 1388
    :pswitch_d
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onFavorite()V

    goto :goto_0

    .line 1393
    :pswitch_e
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onTrim()V

    goto :goto_0

    .line 1398
    :pswitch_f
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSlideShow()V

    goto :goto_0

    .line 1403
    :pswitch_10
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrint()V

    goto :goto_0

    .line 1408
    :pswitch_11
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShowOnMap()V

    goto :goto_0

    .line 1413
    :pswitch_12
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDetails()V

    goto :goto_0

    .line 1418
    :pswitch_13
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onProtectionInfo()V

    goto :goto_0

    .line 1423
    :pswitch_14
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 1433
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showEdit(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1438
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showMore(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    goto :goto_0

    .line 1444
    :pswitch_17
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->toggle3D()V

    goto :goto_0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_16
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_11
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 6
    .parameter "nAnimState"

    .prologue
    .line 1238
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1239
    .local v0, animationBundle:Landroid/os/Bundle;
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    .line 1242
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 1243
    .local v3, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 1244
    .local v2, sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1245
    .local v1, idx:I
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1246
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;ILcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1270
    :goto_0
    return-object v0

    .line 1265
    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1266
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1267
    const-string v4, "SceneLocalPhotoFullscreen"

    const-string v5, "[SceneLocalPhotoFullscreen] [onCreateAnimation] wait texture ready time: 0"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 323
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 329
    :goto_0
    return-object v1

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/ThreeDFlattenManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 327
    goto :goto_0

    .line 329
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 5
    .parameter "id"

    .prologue
    .line 2827
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateFooterBar] + "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2830
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 2831
    .local v2, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 2833
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 2834
    .local v1, footer:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/htc/widget/HtcFooter;

    if-eqz v3, :cond_0

    .line 2835
    check-cast v1, Lcom/htc/widget/HtcFooter;

    .end local v1           #footer:Landroid/view/ViewGroup;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 2838
    :cond_0
    return-object v2
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2735
    const/4 v2, 0x0

    .line 2736
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_0

    .line 2738
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2739
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_0

    .line 2741
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateHeaderBar]image is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2747
    :cond_1
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onCreateHeaderBar]can\'t get context"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const/4 v1, 0x0

    .line 2776
    :goto_0
    return-object v1

    .line 2751
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2752
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 2753
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-static {v0, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 2754
    const/16 v3, 0x10

    invoke-virtual {v1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2755
    const/4 v3, 0x3

    invoke-virtual {v1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2757
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2759
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v3, :cond_4

    .line 2761
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2769
    :cond_3
    :goto_1
    const v3, 0x7f020030

    invoke-virtual {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    goto :goto_0

    .line 2763
    :cond_4
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-ne v3, v6, :cond_3

    .line 2765
    const/16 v3, 0x2b

    invoke-virtual {v1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    goto :goto_1
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 346
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 347
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 348
    .local v1, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 349
    .local v3, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v2, v0, v6, v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 350
    .local v2, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v6, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 351
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v4, inValue:Landroid/os/Bundle;
    const-string v6, "TEXTURE_MAX_COUNT"

    const/16 v7, 0x24

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v6, "CACHE_SET"

    const/16 v7, 0xc

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    const-string v6, "FULL_MEM_CAHCE_SIZE"

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isFileCachable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 356
    const-string v6, "FULL_FILE_CAHCE_SIZE"

    const/16 v7, 0xa

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    :cond_0
    const-string v6, "ENABLE_QUALITY_OPTIONS"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 363
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_1

    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->raisePriorityOnce()V

    .line 368
    :cond_1
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v0, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 369
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 371
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_2

    .line 373
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    new-instance v7, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    invoke-direct {v7, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setSideBySideBitmapReadyListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$SideBySideBitmapReadyListener;)V

    .line 448
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 449
    new-instance v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;

    invoke-direct {v6, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 450
    new-instance v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;

    invoke-direct {v6, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 451
    new-instance v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;

    invoke-direct {v6, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 452
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 456
    return-object v2
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 535
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 526
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 527
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 528
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 529
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 530
    return-void
.end method

.method protected onDetails()V
    .locals 7

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 1828
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/album/addons/SingleCollection;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 1830
    .local v5, isViewSingle:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;

    .line 1834
    return-void

    .line 1828
    .end local v5           #isViewSingle:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onEnterImageIHT(II)I
    .locals 18
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 1906
    move/from16 v12, p1

    .line 1908
    .local v12, nIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v14, :cond_1

    .line 1910
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1912
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v7, :cond_1

    .line 1914
    const-string v14, "video/x-wmv-drm"

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1915
    .local v10, isWMDrm:Z
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v14, v7

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object v5, v14

    .line 1916
    .local v5, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_0
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v10, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 1917
    .local v8, isDRM:Z
    :goto_1
    if-eqz v10, :cond_4

    const/4 v4, 0x1

    .line 1918
    .local v4, drmType:I
    :goto_2
    const/4 v14, 0x1

    if-ne v4, v14, :cond_6

    const/4 v9, 0x1

    .line 1919
    .local v9, isDRMFL:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v14, :cond_1

    if-eqz v8, :cond_1

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-nez v14, :cond_1

    .line 1921
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 1922
    .local v3, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const v15, 0x7f0a006f

    invoke-virtual {v14, v15, v3}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 1923
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 1928
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #drmType:I
    .end local v5           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v7           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v8           #isDRM:Z
    .end local v9           #isDRMFL:Z
    .end local v10           #isWMDrm:Z
    :cond_1
    sget-boolean v14, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v14, :cond_7

    move v13, v12

    .line 2011
    .end local v12           #nIndex:I
    .local v13, nIndex:I
    :goto_4
    return v13

    .line 1915
    .end local v13           #nIndex:I
    .restart local v7       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v10       #isWMDrm:Z
    .restart local v12       #nIndex:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1916
    .restart local v5       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1917
    .restart local v8       #isDRM:Z
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, -0x1

    goto :goto_2

    .line 1918
    .restart local v4       #drmType:I
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1934
    .end local v4           #drmType:I
    .end local v5           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v7           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v8           #isDRM:Z
    .end local v10           #isWMDrm:Z
    :cond_7
    move/from16 v0, p2

    if-ne v12, v0, :cond_8

    .line 1936
    const-string v14, "SceneLocalPhotoFullscreen"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v13, v12

    .line 2011
    .end local v12           #nIndex:I
    .restart local v13       #nIndex:I
    goto :goto_4

    .line 1940
    .end local v13           #nIndex:I
    .restart local v12       #nIndex:I
    :cond_8
    move/from16 v12, p2

    .line 1941
    const-string v14, "SceneLocalPhotoFullscreen"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mIndex = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    .line 1943
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    .line 1944
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14, v12}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSideBySideItemIndex(I)Z

    .line 1945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    invoke-virtual {v14, v12}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->setIndex(I)V

    .line 1946
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 1947
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    .line 1949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1950
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v14, :cond_f

    .line 1952
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v11

    check-cast v11, Lcom/htc/sunny2/IMediaList;

    .line 1953
    .local v11, mediaList:Lcom/htc/sunny2/IMediaList;
    if-eqz v11, :cond_e

    .line 1955
    invoke-interface {v11, v12}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 1956
    .local v2, data:Lcom/htc/sunny2/IMediaData;
    if-eqz v2, :cond_d

    .line 1958
    instance-of v14, v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v14, :cond_9

    move-object v14, v2

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v14

    if-nez v14, :cond_9

    .line 1960
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]setDisplay3DModeOnOff off"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 1965
    :cond_9
    instance-of v14, v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v14, :cond_a

    move-object v14, v2

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1967
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 1968
    .local v6, handler:Landroid/os/Handler;
    if-eqz v6, :cond_a

    .line 1970
    const/16 v14, 0x13ef

    invoke-virtual {v6, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1974
    .end local v6           #handler:Landroid/os/Handler;
    :cond_a
    instance-of v14, v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v14, :cond_c

    move-object v14, v2

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object v14, v2

    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v14}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v14

    if-nez v14, :cond_c

    .line 1976
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 1977
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[onEnterImageIHT] Trigger load parallax"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    .line 1978
    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1979
    .restart local v7       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    if-eqz v14, :cond_b

    .line 1982
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    .line 1983
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->load(Ljava/lang/String;J)V

    .line 2008
    .end local v2           #data:Lcom/htc/sunny2/IMediaData;
    .end local v7           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v11           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    goto/16 :goto_5

    .line 1988
    .restart local v2       #data:Lcom/htc/sunny2/IMediaData;
    .restart local v11       #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    if-eqz v14, :cond_b

    .line 1990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->setDirty()V

    goto :goto_6

    .line 1996
    :cond_d
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: data is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2001
    .end local v2           #data:Lcom/htc/sunny2/IMediaData;
    :cond_e
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mediaList is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2006
    .end local v11           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_f
    const-string v14, "SceneLocalPhotoFullscreen"

    const-string v15, "[HtcAlbum][SceneLocalPhotoFullScreen][onEnterImageIHT]: mAdapter is null"

    invoke-static {v14, v15}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 12
    .parameter "bundle"

    .prologue
    .line 540
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_4

    .line 542
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->checkKeyGuard()V

    .line 543
    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 546
    .local v10, userPresentFilter:Landroid/content/IntentFilter;
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    .line 556
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    if-nez v0, :cond_1

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    .line 559
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onEnter]mDisplayService is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_1
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onEnter]mIsHDMIConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    :goto_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->getIfTVSupport3D()V

    .line 574
    const/4 v6, 0x0

    .line 575
    .local v6, activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_2

    .line 577
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[onEnter] Can\'t get activity"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .end local v6           #activity:Landroid/app/Activity;
    .end local v10           #userPresentFilter:Landroid/content/IntentFilter;
    :goto_3
    return-void

    .line 548
    .restart local v10       #userPresentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v7

    .line 550
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onEnter]mKeyguardReceiver register failed"

    invoke-static {v0, v1, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 563
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDisplayService:Landroid/os/IDisplayService;

    invoke-interface {v0}, Landroid/os/IDisplayService;->IsHDMIConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 567
    :catch_1
    move-exception v7

    .line 569
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    .line 570
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onEnter]mIsHDMIConnected -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsHDMIConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 580
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v6       #activity:Landroid/app/Activity;
    :cond_2
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOrientation:I

    .line 582
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$3;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mHDMICableConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 601
    .local v9, mHDMICableConnectEventsFilter:Landroid/content/IntentFilter;
    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mHDMICableConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v0, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z

    .line 609
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v6, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    .line 610
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 612
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    .line 613
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 616
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 617
    .local v8, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 618
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    invoke-direct {v0, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    .line 620
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationViewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 621
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 622
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    check-cast v11, Landroid/view/ViewGroup;

    .line 623
    .local v11, viewGroup:Landroid/view/ViewGroup;
    if-eqz v11, :cond_5

    .line 625
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 626
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 627
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    const/4 v1, -0x2

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 628
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 630
    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    .line 631
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setupAdjustButton(Landroid/widget/RelativeLayout;)V

    .line 632
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 633
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$4;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 644
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-direct {v0, p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    .line 645
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->start()V

    .line 653
    :cond_3
    :goto_4
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onEnter]mInterleaveView set invisible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 655
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 664
    .end local v6           #activity:Landroid/app/Activity;
    .end local v8           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #mHDMICableConnectEventsFilter:Landroid/content/IntentFilter;
    .end local v10           #userPresentFilter:Landroid/content/IntentFilter;
    .end local v11           #viewGroup:Landroid/view/ViewGroup;
    :cond_4
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 665
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->defaultControlBarOn()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->createHeaderBar(IZ)V

    .line 666
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->defaultControlBarOn()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->createFooterBar(IZ)V

    .line 668
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmRenewRightListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$DrmRenewRightListener;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/DrmManager;->registerRenewRightListener(Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;)V

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableControlBarAnimation(Z)V

    goto/16 :goto_3

    .line 650
    .restart local v6       #activity:Landroid/app/Activity;
    .restart local v8       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9       #mHDMICableConnectEventsFilter:Landroid/content/IntentFilter;
    .restart local v10       #userPresentFilter:Landroid/content/IntentFilter;
    .restart local v11       #viewGroup:Landroid/view/ViewGroup;
    :cond_5
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onEnter] ViewGroup is null. InterleaveView will not show."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onLeaveScene()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 760
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 761
    .local v1, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-virtual {v1, v5, v5, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    .line 762
    invoke-virtual {v1, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    .line 765
    const/4 v5, 0x0

    invoke-direct {p0, v5, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 766
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v5, :cond_0

    .line 768
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 769
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 770
    .local v2, parent:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 771
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #parent:Landroid/view/ViewParent;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 775
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    check-cast v4, Landroid/view/ViewGroup;

    .line 776
    .local v4, viewGroup:Landroid/view/ViewGroup;
    if-eqz v4, :cond_1

    .line 778
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 779
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mPresentationView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 780
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 781
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_1

    .line 783
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdjust3DAlignmentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 786
    :cond_1
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v5, :cond_2

    .line 788
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    .line 790
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    if-eqz v5, :cond_3

    .line 792
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;->release()V

    .line 793
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DAlignmentDBManager:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ThreeDAlignmentDBManager;

    .line 795
    :cond_3
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->unregisterRenewRightListener()V

    .line 798
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 807
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[HtcAlbum][SceneLocalPhotoFullscreen]mKeyguardReceiver unregister failed"

    invoke-static {v5, v6, v0}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 1067
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1098
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1070
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onShare()V

    goto :goto_0

    .line 1073
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSetAs()V

    goto :goto_0

    .line 1076
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onFavorite()V

    goto :goto_0

    .line 1079
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSlideShow()V

    goto :goto_0

    .line 1082
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDisplay()V

    goto :goto_0

    .line 1085
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrint()V

    goto :goto_0

    .line 1088
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onDetails()V

    goto :goto_0

    .line 1091
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onProtectionInfo()V

    goto :goto_0

    .line 1095
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->toggle3D()V

    goto :goto_0

    .line 1067
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0092 -> :sswitch_1
        0x7f0a0093 -> :sswitch_2
        0x7f0a0097 -> :sswitch_3
        0x7f0a0098 -> :sswitch_4
        0x7f0a009b -> :sswitch_0
        0x7f0a009c -> :sswitch_5
        0x7f0a009f -> :sswitch_7
        0x7f0a00a0 -> :sswitch_6
        0x7f0b00ef -> :sswitch_8
        0x7f0b00f0 -> :sswitch_8
    .end sparse-switch
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3129
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 3174
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 3132
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 3133
    invoke-direct {p0, v1, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 3134
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    move v1, v2

    .line 3135
    goto :goto_0

    .line 3137
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onScrollStateChange(Landroid/os/Message;)V

    move v1, v2

    .line 3138
    goto :goto_0

    .line 3140
    :sswitch_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    if-eqz v3, :cond_1

    .line 3144
    const/4 v0, 0x0

    .line 3145
    .local v0, new_parallax:F
    :try_start_0
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 3147
    :cond_0
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parallax or Unit not ready, parallax "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", unit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3154
    :catch_0
    move-exception v1

    .end local v0           #new_parallax:F
    :cond_1
    :goto_1
    move v1, v2

    .line 3160
    goto :goto_0

    .line 3150
    .restart local v0       #new_parallax:F
    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->normalizeParallax(F)F

    move-result v0

    .line 3151
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setAdjust3DAlignmentValue] parallax "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mParallax_unit:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new parallax "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setImageShiftOffset(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3162
    .end local v0           #new_parallax:F
    :sswitch_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    if-eqz v1, :cond_3

    .line 3166
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setImageShiftOffset(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    move v1, v2

    .line 3172
    goto/16 :goto_0

    .line 3168
    :catch_1
    move-exception v1

    goto :goto_2

    .line 3129
    :sswitch_data_0
    .sparse-switch
        0x13ee -> :sswitch_2
        0x13ef -> :sswitch_3
        0x4e3c -> :sswitch_0
        0x4f4f -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 338
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableEntryProgressload()V

    .line 339
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    .line 340
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 515
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 516
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    .line 520
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableHeaderTransparentBackground(Z)V

    .line 521
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 1
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 1275
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 1277
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 1287
    :goto_0
    return-void

    .line 1281
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableInvalidateWhenShow(Z)V

    .line 1282
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 1283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setEnableInvalidateWhenShow(Z)V

    goto :goto_0

    .line 1277
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 1217
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 1219
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v2, "SceneLocalPhotoThumbnail"

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isSceneExist(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    .line 1220
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsFromGridView:Z

    if-nez v1, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1223
    :cond_0
    const-string v1, "SceneLocalPhotoFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullscreen][onPrepareAnimation]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    packed-switch p1, :pswitch_data_0

    .line 1233
    :goto_0
    return v0

    .line 1229
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableHeaderTransparentBackground(Z)V

    goto :goto_0

    .line 1225
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 31
    .parameter "menu"

    .prologue
    .line 942
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object v15, v2

    .line 952
    .local v15, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :goto_0
    const/4 v5, 0x1

    .line 953
    .local v5, bViewSingle:Z
    if-eqz v15, :cond_0

    .line 955
    invoke-virtual {v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    instance-of v5, v2, Lcom/htc/album/addons/SingleCollection;

    .line 958
    :cond_0
    if-nez v5, :cond_2

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v24

    .line 961
    .local v24, position:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->doSimulateScreenTouched(IZ)V

    .line 1061
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 951
    .end local v5           #bViewSingle:Z
    .end local v15           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .end local v24           #position:I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 965
    .restart local v5       #bViewSingle:Z
    .restart local v15       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v24

    .line 966
    .restart local v24       #position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v18

    .line 967
    .local v18, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v7, -0x1

    .line 968
    .local v7, count:I
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v2, :cond_3

    .line 969
    check-cast v18, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .end local v18           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsImageCount()I

    move-result v7

    .line 971
    :cond_3
    const v8, 0x40938

    .line 975
    .local v8, excludeFlag:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 977
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_4

    .line 978
    const/4 v2, 0x0

    goto :goto_2

    .line 980
    :cond_4
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 981
    const/4 v2, 0x1

    goto :goto_2

    .line 983
    :cond_5
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v2, :cond_12

    .line 987
    const/4 v2, 0x0

    const v3, 0x7f0b00f0

    const/4 v6, 0x0

    const v9, 0x7f0b00f0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v23

    .line 988
    .local v23, menuItem:Landroid/view/MenuItem;
    const v2, 0x7f020001

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 997
    .end local v23           #menuItem:Landroid/view/MenuItem;
    :cond_6
    :goto_3
    const-string v2, "video/x-wmv-drm"

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 998
    .local v22, isWMDrm:Z
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v22, :cond_13

    const/16 v21, 0x1

    .line 999
    .local v21, isSharable:Z
    :goto_4
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v22, :cond_14

    :cond_7
    const/16 v19, 0x1

    .line 1000
    .local v19, isDRM:Z
    :goto_5
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v2, v4

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    move-object/from16 v17, v2

    .line 1004
    .local v17, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_6
    if-eqz v5, :cond_16

    if-eqz v21, :cond_16

    const/16 v29, 0x1

    .line 1005
    .local v29, showShare:Z
    :goto_7
    if-nez v29, :cond_8

    .line 1006
    or-int/lit8 v8, v8, 0x2

    .line 1010
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    if-nez v22, :cond_9

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1015
    :cond_9
    const/high16 v2, 0x8

    or-int/2addr v8, v2

    .line 1022
    :cond_a
    if-eqz v22, :cond_17

    const/16 v16, 0x1

    .line 1023
    .local v16, drmType:I
    :goto_8
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_19

    const/16 v20, 0x1

    .line 1024
    .local v20, isDRMFL:Z
    :goto_9
    if-eqz v5, :cond_1b

    if-eqz v19, :cond_1a

    move/from16 v28, v20

    .line 1025
    .local v28, showSetAs:Z
    :goto_a
    if-nez v28, :cond_b

    .line 1026
    or-int/lit8 v8, v8, 0x4

    .line 1029
    :cond_b
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_1c

    if-nez v19, :cond_1c

    if-nez v5, :cond_1c

    const/16 v25, 0x1

    .line 1030
    .local v25, showDLNA:Z
    :goto_b
    if-nez v25, :cond_c

    .line 1031
    const/high16 v2, 0x2

    or-int/2addr v8, v2

    .line 1035
    :cond_c
    if-nez v5, :cond_d

    if-eqz v21, :cond_1d

    :cond_d
    const/16 v26, 0x1

    .line 1036
    .local v26, showDetails:Z
    :goto_c
    if-nez v26, :cond_e

    .line 1037
    or-int/lit8 v8, v8, 0x40

    .line 1040
    :cond_e
    if-eqz v5, :cond_1e

    const/16 v30, 0x0

    .line 1041
    .local v30, showSlideShow:Z
    :goto_d
    if-nez v30, :cond_f

    .line 1042
    or-int/lit8 v8, v8, 0x1

    .line 1044
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_10
    const/16 v27, 0x1

    .line 1045
    .local v27, showSelectPlayer:Z
    :goto_e
    if-nez v27, :cond_11

    .line 1047
    const/high16 v2, 0x2

    or-int/2addr v8, v2

    .line 1050
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    move v6, v5

    invoke-virtual/range {v2 .. v8}, Lcom/htc/album/helper/MenuManager;->makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I

    move-result v14

    .line 1053
    .local v14, exclusion:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->exclusionEditTag(I)I

    move-result v14

    .line 1054
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->exclusionShowHideTag(I)I

    move-result v14

    .line 1056
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    move-object/from16 v12, p1

    move-object v13, v4

    invoke-virtual/range {v9 .. v14}, Lcom/htc/album/helper/MenuManager;->showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    goto/16 :goto_1

    .line 992
    .end local v14           #exclusion:I
    .end local v16           #drmType:I
    .end local v17           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v19           #isDRM:Z
    .end local v20           #isDRMFL:Z
    .end local v21           #isSharable:Z
    .end local v22           #isWMDrm:Z
    .end local v25           #showDLNA:Z
    .end local v26           #showDetails:Z
    .end local v27           #showSelectPlayer:Z
    .end local v28           #showSetAs:Z
    .end local v29           #showShare:Z
    .end local v30           #showSlideShow:Z
    :cond_12
    const/4 v2, 0x0

    const v3, 0x7f0b00ef

    const/4 v6, 0x0

    const v9, 0x7f0b00ef

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v23

    .line 993
    .restart local v23       #menuItem:Landroid/view/MenuItem;
    const v2, 0x7f020002

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 998
    .end local v23           #menuItem:Landroid/view/MenuItem;
    .restart local v22       #isWMDrm:Z
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 999
    .restart local v21       #isSharable:Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1000
    .restart local v19       #isDRM:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1004
    .restart local v17       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 1022
    .restart local v29       #showShare:Z
    :cond_17
    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v16

    goto/16 :goto_8

    :cond_18
    const/16 v16, -0x1

    goto/16 :goto_8

    .line 1023
    .restart local v16       #drmType:I
    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 1024
    .restart local v20       #isDRMFL:Z
    :cond_1a
    const/16 v28, 0x1

    goto/16 :goto_a

    :cond_1b
    const/16 v28, 0x1

    goto/16 :goto_a

    .line 1029
    .restart local v28       #showSetAs:Z
    :cond_1c
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 1035
    .restart local v25       #showDLNA:Z
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 1040
    .restart local v26       #showDetails:Z
    :cond_1e
    if-eqz v19, :cond_1f

    move/from16 v30, v20

    goto/16 :goto_d

    :cond_1f
    const/16 v30, 0x1

    goto/16 :goto_d

    .line 1044
    .restart local v30       #showSlideShow:Z
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_e
.end method

.method protected onProtectionInfo()V
    .locals 4

    .prologue
    .line 1838
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1839
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1840
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1841
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 12
    .parameter "footer"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2844
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar] + "

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2847
    :cond_0
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get context"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    :goto_0
    return-void

    .line 2850
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2851
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2853
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v7, :cond_2

    .line 2855
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get image"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2859
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 2861
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2863
    const/4 v3, 0x2

    const v5, 0x7f0b010a

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2864
    const/16 v3, 0xb

    const v5, 0x7f0b0121

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto :goto_0

    .line 2871
    :cond_3
    const-string v0, "video/x-wmv-drm"

    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2872
    .local v10, isWMDrm:Z
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v10, :cond_8

    move v9, v4

    .line 2873
    .local v9, isSharable:Z
    :goto_1
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v10, :cond_9

    :cond_4
    move v8, v4

    .line 2874
    .local v8, isDRM:Z
    :goto_2
    if-nez v8, :cond_a

    move v6, v4

    .line 2875
    .local v6, canShowEdit:Z
    :goto_3
    if-eqz v9, :cond_5

    .line 2877
    invoke-virtual {p1, v1, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2880
    :cond_5
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v6, :cond_7

    .line 2882
    :cond_6
    const/16 v0, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2885
    :cond_7
    const/16 v0, 0x11

    invoke-virtual {p1, v1, v2, v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v11

    .line 2886
    .local v11, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    goto :goto_0

    .end local v6           #canShowEdit:Z
    .end local v8           #isDRM:Z
    .end local v9           #isSharable:Z
    .end local v11           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_8
    move v9, v2

    .line 2872
    goto :goto_1

    .restart local v9       #isSharable:Z
    :cond_9
    move v8, v2

    .line 2873
    goto :goto_2

    .restart local v8       #isDRM:Z
    :cond_a
    move v6, v2

    .line 2874
    goto :goto_3
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 6
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 2782
    const/4 v2, 0x0

    .line 2783
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_0

    .line 2785
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2786
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_0

    .line 2788
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshHeaderBar]image is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    :goto_0
    return-void

    .line 2793
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    if-eqz v3, :cond_1

    .line 2795
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2796
    .local v1, displayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmFileNameBar:Lcom/htc/album/modules/ui/widget/DrmFileNameBar;

    const v4, 0x7f0a006f

    invoke-virtual {v3, v4, v1}, Lcom/htc/album/modules/ui/widget/DrmFileNameBar;->setText(ILjava/lang/String;)V

    .line 2799
    .end local v1           #displayName:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2801
    :cond_2
    const-string v3, "SceneLocalPhotoFullscreen"

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshHeaderBar]can\'t get context"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2804
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2805
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->clear()V

    .line 2806
    const/16 v3, 0x10

    invoke-virtual {p1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2807
    const/4 v3, 0x3

    invoke-virtual {p1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2809
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2811
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v3, :cond_5

    .line 2813
    const/16 v3, 0x2c

    invoke-virtual {p1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 2821
    :cond_4
    :goto_1
    const v3, 0x7f020030

    invoke-virtual {p1, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    goto :goto_0

    .line 2815
    :cond_5
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2817
    const/16 v3, 0x2b

    invoke-virtual {p1, v0, v5, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 502
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onResume()V

    .line 503
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->checkKeyGuard()V

    .line 506
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->clearSideBySideBitmap(Z)V

    .line 507
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    .line 508
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onResume]mSideBySideBitmapItemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSideBySideItemIndex(I)Z

    .line 511
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->enableHeaderTransparentBackground(Z)V

    .line 512
    return-void
.end method

.method public onScrollStateIDLE()V
    .locals 0

    .prologue
    .line 2298
    return-void
.end method

.method public onScrollStateScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 2303
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V

    .line 2304
    invoke-direct {p0, v8, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->showDrmFileNameBar(ZZ)V

    .line 2307
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2308
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const-string v6, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2309
    .local v5, isWMDrm:Z
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object v1, v3

    .line 2310
    .local v1, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_0
    if-eqz v5, :cond_3

    move v0, v4

    .line 2311
    .local v0, drmType:I
    :goto_1
    if-ne v0, v4, :cond_5

    .line 2312
    .local v4, isDRMFL:Z
    :goto_2
    if-nez v4, :cond_0

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmDecoded:Z

    if-eqz v6, :cond_1

    .line 2314
    :cond_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->hideDRMIndicator()V

    .line 2322
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v4           #isDRMFL:Z
    .end local v5           #isWMDrm:Z
    :cond_1
    :goto_3
    return-void

    .line 2309
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v5       #isWMDrm:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2310
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v1       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .restart local v0       #drmType:I
    :cond_5
    move v4, v8

    .line 2311
    goto :goto_2

    .line 2317
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v5           #isWMDrm:Z
    :catch_0
    move-exception v2

    .line 2319
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SceneLocalPhotoFullscreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcAlbum][SceneLocalFullscreen][onScrollStateScroll]err "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 708
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 709
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x1

    .line 676
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 687
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 689
    .local v1, selectedItemIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAnimateDispatcher:Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageAnimationListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/interleave/ImageAnimateDispatcher;->setListener(Lcom/htc/sunny2/fullfilmview/interleave/IImageAnimateListener;)V

    .line 694
    :cond_0
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 695
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 696
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HTCAlbum][SceneLocalPhotoFullScreen][onSendToForeground]Do item click for DRM."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDrmBackPreviosTemplate:Z

    .line 700
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/view/SView;I)V

    .line 702
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDoItemClickWhenBindAdapter:Z

    .line 703
    return-void
.end method

.method protected onSetAs()V
    .locals 4

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 1646
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    .line 1647
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 1308
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HTCAlbum][SceneLocalPhotoFullscreen][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 1312
    return-void
.end method

.method public onTransformBegin(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v2, 0x0

    .line 3361
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformBegin] + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_1

    .line 3364
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformBegin]mInterleaveView = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    if-eqz v0, :cond_0

    .line 3367
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformBegin]mInterleaveView set invisible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 3369
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 3370
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3374
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeep3DBarrier:Z

    if-nez v0, :cond_1

    .line 3375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 3378
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformBegin] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    return-void
.end method

.method public onTransformEnd(I)V
    .locals 5
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3383
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformEnd] + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    if-eqz v0, :cond_1

    .line 3387
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3389
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformEnd]case 1"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setupSideBySideBitmap()V

    .line 3392
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformEnd]mInterleaveView set visible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    invoke-virtual {v0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 3394
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3396
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3398
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 3401
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformEnd]mSideBySideBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is3DSWButtonOn() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3404
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 3405
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    .line 3409
    :cond_2
    const-string v0, "SceneLocalPhotoFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][onTransformEnd] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->release()V

    .line 750
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 753
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2899
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 2892
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "SceneLocalPhotoFullscreen"

    return-object v0
.end method

.method public toggle3D()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1114
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][toggle3D] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1117
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v0, :cond_2

    .line 1119
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    .line 1125
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1127
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1129
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setupSideBySideBitmap()V

    .line 1130
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][toggle3D]mInterleaveView set visible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 1132
    invoke-direct {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 1133
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 1134
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    .line 1135
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 1136
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    .line 1154
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->invalidateControlBars()V

    .line 1157
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][toggle3D] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    return-void

    .line 1121
    :cond_2
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-ne v0, v3, :cond_0

    .line 1123
    iput v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    goto :goto_0

    .line 1140
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    .line 1141
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmapItemIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSideBySideItemIndex(I)Z

    goto :goto_1

    .line 1146
    :cond_4
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][toggle3D]mInterleaveView set invisible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 1148
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 1149
    invoke-direct {p0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V

    .line 1150
    iput-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z

    .line 1151
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V

    goto :goto_1
.end method

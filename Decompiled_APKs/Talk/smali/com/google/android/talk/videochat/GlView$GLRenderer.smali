.class Lcom/google/android/talk/videochat/GlView$GLRenderer;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;,
        Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;,
        Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;
    }
.end annotation


# instance fields
.field private mCameraIsOpened:Z

.field private mCameraTextureName:I

.field mCount:I

.field private mCurrentEffectId:I

.field private mCurrentEffectParam:Ljava/lang/Object;

.field private mDeviceOrientation:I

.field private final mEffectCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;

.field private mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

.field private mFilterFrameworkActive:Z

.field private mFilterFrameworkOutputTextureName:I

.field private mHaveInitializedRemoteTexture:Z

.field private mIsInitialRemoteFrame:Z

.field private mIsInitialSelfFrame:Z

.field mLastFrameFrozen:Z

.field private final mOwningView:Lcom/google/android/talk/videochat/GlView;

.field private final mRemoteBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

.field private final mRemoteCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;

.field private final mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

.field private final mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

.field private final mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

.field private final mSelfBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

.field private final mSelfCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;

.field private final mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

.field private final mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

.field private mViewRect:Landroid/graphics/Rect;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/google/android/talk/videochat/GlView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/GlView;Lcom/google/android/talk/videochat/GlView;Lcom/google/android/videochat/CameraSpecification;)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "defaultCamera"

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    .line 237
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialSelfFrame:Z

    .line 238
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialRemoteFrame:Z

    .line 375
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mLastFrameFrozen:Z

    .line 376
    iput v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCount:I

    .line 241
    const-string v0, "Talk:GlView"

    const-string v1, "GlView.GLRenderer constructor"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/google/android/talk/videochat/GlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mWindowManager:Landroid/view/WindowManager;

    .line 244
    new-instance v0, Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;-><init>(Lcom/google/android/talk/videochat/GlView$GLRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;

    .line 245
    new-instance v0, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;-><init>(Lcom/google/android/talk/videochat/GlView$GLRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;

    .line 246
    iput-object p2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mOwningView:Lcom/google/android/talk/videochat/GlView;

    .line 247
    #getter for: Lcom/google/android/talk/videochat/GlView;->mRenderer:Lcom/google/android/videochat/RendererManager;
    invoke-static {p1}, Lcom/google/android/talk/videochat/GlView;->access$200(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/RendererManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$RemoteRendererCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->createRemoteRenderer(Lcom/google/android/videochat/Renderer$RendererThreadCallback;)Lcom/google/android/videochat/RemoteRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    .line 248
    new-instance v0, Lcom/google/android/talk/videochat/TextureRenderer;

    const-string v1, "remote"

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    .line 249
    new-instance v0, Lcom/google/android/talk/videochat/TextureRenderer;

    const-string v1, "self"

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    .line 250
    new-instance v0, Lcom/google/android/talk/videochat/BorderRenderer;

    const-string v1, "self"

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/BorderRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    .line 251
    new-instance v0, Lcom/google/android/talk/videochat/BorderRenderer;

    const-string v1, "remote"

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/BorderRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    .line 252
    new-instance v0, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    invoke-direct {v0}, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    .line 253
    new-instance v0, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;-><init>(Lcom/google/android/talk/videochat/GlView$GLRenderer;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mEffectCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;

    .line 254
    #getter for: Lcom/google/android/talk/videochat/GlView;->mRenderer:Lcom/google/android/videochat/RendererManager;
    invoke-static {p1}, Lcom/google/android/talk/videochat/GlView;->access$200(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/RendererManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$SelfRendererCallback;

    invoke-virtual {v0, v1, p3}, Lcom/google/android/videochat/RendererManager;->createSelfRenderer(Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;Lcom/google/android/videochat/CameraSpecification;)Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mDeviceOrientation:I

    .line 257
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/GlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mOwningView:Lcom/google/android/talk/videochat/GlView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/talk/videochat/GlView$GLRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialRemoteFrame:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/android/talk/videochat/GlView$GLRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialSelfFrame:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/talk/videochat/GlView$GLRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    iput p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/TextureRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/talk/videochat/FilterFrameworkEffects;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/videochat/GlView$GLRenderer;)Lcom/google/android/videochat/SelfRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    return-object v0
.end method

.method private drawRemote(Landroid/graphics/Rect;F)V
    .locals 10
    .parameter "remoteRect"
    .parameter "remoteAlpha"

    .prologue
    const/4 v6, 0x0

    .line 469
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mHaveInitializedRemoteTexture:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mRemoteStopWatch:Lcom/google/android/videochat/util/GLStopWatch;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$1000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/util/GLStopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 471
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v1}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getRemoteFrameXClip()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v2}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/VideoAnimator;->getRemoteFrameYClip()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/TextureRenderer;->setSourceTextureClip(FF)V

    .line 474
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/videochat/TextureRenderer;->drawFrame(Landroid/graphics/Rect;F)V

    .line 475
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v8, 0x3

    const v9, 0x3e99999a

    move-object v1, p1

    move v3, p2

    move v7, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/talk/videochat/BorderRenderer;->drawFrame(Landroid/graphics/Rect;ZFFIFFIF)V

    .line 478
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mRemoteStopWatch:Lcom/google/android/videochat/util/GLStopWatch;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$1000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/util/GLStopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 480
    :cond_0
    return-void
.end method

.method private drawSelf(Landroid/graphics/Rect;F)V
    .locals 10
    .parameter "selfRect"
    .parameter "selfAlpha"

    .prologue
    const/4 v6, 0x0

    .line 454
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mSelfStopWatch:Lcom/google/android/videochat/util/GLStopWatch;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$700(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/util/GLStopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 457
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v1}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getSelfFrameXClip()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mSelfBaseXClip:F
    invoke-static {v2}, Lcom/google/android/talk/videochat/GlView;->access$800(Lcom/google/android/talk/videochat/GlView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v2}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/VideoAnimator;->getSelfFrameYClip()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mSelfBaseYClip:F
    invoke-static {v3}, Lcom/google/android/talk/videochat/GlView;->access$900(Lcom/google/android/talk/videochat/GlView;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/TextureRenderer;->setSourceTextureClip(FF)V

    .line 460
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/videochat/TextureRenderer;->drawFrame(Landroid/graphics/Rect;F)V

    .line 461
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v8, 0x3

    const v9, 0x3e99999a

    move-object v1, p1

    move v3, p2

    move v7, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/talk/videochat/BorderRenderer;->drawFrame(Landroid/graphics/Rect;ZFFIFFIF)V

    .line 465
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mSelfStopWatch:Lcom/google/android/videochat/util/GLStopWatch;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$700(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/videochat/util/GLStopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 466
    return-void
.end method

.method private initializeFilterFramework(ILjava/lang/Object;)V
    .locals 7
    .parameter "effectId"
    .parameter "param"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 485
    const-string v3, "Talk:GlView"

    const-string v4, "initializeFilterFramework"

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-array v2, v6, [I

    .line 487
    .local v2, textures:[I
    invoke-static {v6, v2, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 488
    aget v3, v2, v5

    iput v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I

    .line 490
    new-instance v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/FilterSetupInputParameters;-><init>()V

    .line 491
    .local v0, filterSetupInput:Lcom/google/android/talk/videochat/FilterSetupInputParameters;
    iget v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    iput v3, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureName:I

    .line 492
    iget v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I

    iput v3, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->outputTextureName:I

    .line 493
    iget-object v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v3}, Lcom/google/android/videochat/SelfRenderer;->getCameraBufferSize()Lcom/google/android/videochat/Size;

    move-result-object v1

    .line 494
    .local v1, textureSize:Lcom/google/android/videochat/Size;
    iget v3, v1, Lcom/google/android/videochat/Size;->width:I

    iput v3, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureWidth:I

    .line 495
    iget v3, v1, Lcom/google/android/videochat/Size;->height:I

    iput v3, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureHeight:I

    .line 496
    iput p1, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectId:I

    .line 497
    iput-object p2, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectParam:Ljava/lang/Object;

    .line 498
    iget-object v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mEffectCallback:Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;

    iput-object v3, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectCallback:Landroid/media/effect/EffectUpdateListener;

    .line 500
    iget-object v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    if-nez v3, :cond_0

    .line 501
    new-instance v3, Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    invoke-direct {v3, v0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;-><init>(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)V

    iput-object v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    .line 507
    :goto_0
    const-string v3, "Talk:GlView"

    const-string v4, "initializeFilterFramework exit"

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    invoke-virtual {v3, v0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->switchEffect(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)I

    move-result v3

    iput v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I

    goto :goto_0
.end method

.method private stopFilterEffect()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->releaseEffect()V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    .line 516
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyRenderer()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/RemoteRenderer;->release()V

    .line 269
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->release()V

    .line 270
    return-void
.end method

.method public getActiveEffect()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectId:I

    return v0
.end method

.method public getActiveEffectParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteRenderer()Lcom/google/android/videochat/RemoteRenderer;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    return-object v0
.end method

.method public getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    return-object v0
.end method

.method onCameraOpened(Z)V
    .locals 2
    .parameter "isFrontCamera"

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraIsOpened:Z

    .line 332
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/TextureRenderer;->setFlipSourceTexture(Z)V

    .line 333
    iget v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectId:I

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectParam:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->setActiveEffect(ILjava/lang/Object;)V

    .line 334
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 380
    iget-boolean v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialSelfFrame:Z

    if-eqz v8, :cond_0

    .line 381
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #calls: Lcom/google/android/talk/videochat/GlView;->onInitialSelfFrame()V
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$300(Lcom/google/android/talk/videochat/GlView;)V

    .line 382
    iput-boolean v11, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialSelfFrame:Z

    .line 384
    :cond_0
    iget-boolean v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialRemoteFrame:Z

    if-eqz v8, :cond_1

    .line 385
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #calls: Lcom/google/android/talk/videochat/GlView;->onInitialRemoteFrame()V
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$400(Lcom/google/android/talk/videochat/GlView;)V

    .line 386
    iput-boolean v11, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mIsInitialRemoteFrame:Z

    .line 389
    :cond_1
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    #calls: Lcom/google/android/talk/videochat/GlView;->surfaceRotationEnumToDegress(I)I
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$500(I)I

    move-result v0

    .line 391
    .local v0, deviceOrientation:I
    iget v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mDeviceOrientation:I

    if-eq v0, v8, :cond_2

    .line 392
    iput v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mDeviceOrientation:I

    .line 393
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    iget v9, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mDeviceOrientation:I

    invoke-virtual {v8, v9}, Lcom/google/android/videochat/SelfRenderer;->setDeviceOrientation(I)V

    .line 395
    :cond_2
    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 396
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/videochat/RemoteRenderer;->drawTexture(Lcom/google/android/videochat/Renderer$DrawInputParams;Lcom/google/android/videochat/Renderer$DrawOutputParams;)V

    .line 397
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    iget-boolean v8, v8, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;->updatedTexture:Z

    if-eqz v8, :cond_3

    .line 398
    iput-boolean v12, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mHaveInitializedRemoteTexture:Z

    .line 400
    :cond_3
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    iget-boolean v8, v8, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;->frameSizeChanged:Z

    if-eqz v8, :cond_4

    .line 401
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    iget v9, v9, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;->frameWidth:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteFrameData:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    iget v10, v10, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;->frameHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteFrameAspectRatio(F)V

    .line 405
    :cond_4
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getFreezeFrame()Z

    move-result v8

    if-nez v8, :cond_6

    .line 406
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v8}, Lcom/google/android/videochat/SelfRenderer;->renderSelfFrame()Z

    move-result v1

    .line 407
    .local v1, haveNewFrame:Z
    if-eqz v1, :cond_6

    .line 408
    iget-boolean v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z

    if-eqz v8, :cond_5

    .line 409
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v8}, Lcom/google/android/videochat/SelfRenderer;->getMostRecentCameraFrameTime()J

    move-result-wide v6

    .line 410
    .local v6, timestamp:J
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    invoke-virtual {v8, v6, v7}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->setTimestamp(J)V

    .line 411
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->renderFrame()Z

    .line 413
    .end local v6           #timestamp:J
    :cond_5
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v8}, Lcom/google/android/videochat/SelfRenderer;->encodeFrame()V

    .line 417
    .end local v1           #haveNewFrame:Z
    :cond_6
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getRemoteFrameRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 418
    .local v3, remoteRect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getRemoteFrameAlpha()F

    move-result v2

    .line 419
    .local v2, remoteAlpha:F
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getSelfFrameRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 420
    .local v5, selfRect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getSelfFrameAlpha()F

    move-result v4

    .line 422
    .local v4, selfAlpha:F
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getFreezeFrame()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 423
    iget-boolean v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mLastFrameFrozen:Z

    if-nez v8, :cond_7

    .line 424
    iput v11, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCount:I

    .line 426
    :cond_7
    iget v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCount:I

    .line 427
    iput-boolean v12, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mLastFrameFrozen:Z

    .line 437
    :goto_0
    iget-boolean v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mHaveInitializedRemoteTexture:Z

    if-eqz v8, :cond_8

    float-to-double v8, v2

    const-wide/high16 v10, 0x3ff0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 439
    :cond_8
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    iget-object v9, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v9}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/talk/videochat/VideoAnimator;->getBackgroundColor()I

    move-result v9

    #calls: Lcom/google/android/talk/videochat/GlView;->drawBgColor(I)V
    invoke-static {v8, v9}, Lcom/google/android/talk/videochat/GlView;->access$600(Lcom/google/android/talk/videochat/GlView;I)V

    .line 443
    :cond_9
    iget-object v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v8}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/talk/videochat/VideoAnimator;->getFlipZOrder()Z

    move-result v8

    if-nez v8, :cond_c

    .line 444
    invoke-direct {p0, v3, v2}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->drawRemote(Landroid/graphics/Rect;F)V

    .line 445
    invoke-direct {p0, v5, v4}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->drawSelf(Landroid/graphics/Rect;F)V

    .line 451
    :goto_1
    return-void

    .line 429
    :cond_a
    iget-boolean v8, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mLastFrameFrozen:Z

    if-eqz v8, :cond_b

    .line 430
    const-string v8, "Talk:GlView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " frames were drawn during the last animation."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_b
    iput-boolean v11, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mLastFrameFrozen:Z

    goto :goto_0

    .line 447
    :cond_c
    invoke-direct {p0, v5, v4}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->drawSelf(Landroid/graphics/Rect;F)V

    .line 448
    invoke-direct {p0, v3, v2}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->drawRemote(Landroid/graphics/Rect;F)V

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 363
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "Talk:GlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlView.GLRenderer.onSurfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mViewRect:Landroid/graphics/Rect;

    .line 368
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/videochat/TextureRenderer;->setViewSize(II)V

    .line 369
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/videochat/TextureRenderer;->setViewSize(II)V

    .line 370
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/videochat/BorderRenderer;->setViewSize(II)V

    .line 371
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/videochat/BorderRenderer;->setViewSize(II)V

    .line 372
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$100(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/talk/videochat/VideoAnimator;->setViewportSize(II)V

    .line 373
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 338
    const-string v0, "Talk:GlView"

    const-string v1, "GlView.GLRenderer.onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraIsOpened:Z

    .line 340
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/RemoteRenderer;->initializeGLContext()V

    .line 341
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/TextureRenderer;->initGLContext()V

    .line 342
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    invoke-virtual {v1}, Lcom/google/android/videochat/RemoteRenderer;->getOutputTextureName()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 344
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->initializeGLContext()V

    .line 345
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/TextureRenderer;->initGLContext()V

    .line 346
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/BorderRenderer;->initGLContext()V

    .line 347
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mRemoteBorderRenderer:Lcom/google/android/talk/videochat/BorderRenderer;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/BorderRenderer;->initGLContext()V

    .line 348
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->getOutputTextureName()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    .line 349
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 350
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z

    .line 351
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->release()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFramework:Lcom/google/android/talk/videochat/FilterFrameworkEffects;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView;->mCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView;->mCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

    invoke-interface {v0}, Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;->complete()V

    .line 358
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mHaveInitializedRemoteTexture:Z

    .line 359
    return-void
.end method

.method setActiveEffect(ILjava/lang/Object;)V
    .locals 5
    .parameter "id"
    .parameter "param"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "Talk:GlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraOpened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraIsOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    iput p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectId:I

    .line 279
    iput-object p2, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectParam:Ljava/lang/Object;

    .line 283
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraIsOpened:Z

    if-nez v0, :cond_1

    .line 319
    .end local p2
    :goto_0
    return-void

    .line 287
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-static {p1}, Lcom/google/android/talk/videochat/EffectsController;->effectCanClip(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->setUseMaxSizeForCameraBuffer(Z)V

    .line 291
    const-string v0, "Talk:GlView"

    const-string v1, "Unlocking AE/AWB"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/GlView$GLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->getCamera()Lcom/google/android/videochat/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/CameraInterface;->setPreview3ALocks(Z)V

    .line 294
    if-ne p1, v4, :cond_2

    .line 295
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->getOutgoingVideoWithEffectsSpec()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->setMaxEncodeVideoSpec(Lcom/google/android/videochat/VideoSpecification;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->setImageStabilizationLevel(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->resetEncodeTexture()V

    .line 300
    invoke-direct {p0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->stopFilterEffect()V

    .line 301
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z

    goto :goto_0

    .line 302
    .restart local p2
    :cond_2
    if-eqz p1, :cond_3

    .line 303
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->getOutgoingVideoWithEffectsSpec()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->setMaxEncodeVideoSpec(Lcom/google/android/videochat/VideoSpecification;)V

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->initializeFilterFramework(ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/SelfRenderer;->setImageStabilizationLevel(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 308
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    iget v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkOutputTextureName:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->overrideEncodeTexture(I)V

    .line 309
    iput-boolean v4, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-static {}, Lcom/google/android/videochat/VideoSpecification;->getOutgoingVideoNoEffectsSpec()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->setMaxEncodeVideoSpec(Lcom/google/android/videochat/VideoSpecification;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/SelfRenderer;->setImageStabilizationLevel(I)V

    .line 314
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfScreenRenderer:Lcom/google/android/talk/videochat/TextureRenderer;

    iget v1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCameraTextureName:I

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/TextureRenderer;->setInputTextureName(I)V

    .line 315
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mSelfRenderer:Lcom/google/android/videochat/SelfRenderer;

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->resetEncodeTexture()V

    .line 316
    invoke-direct {p0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->stopFilterEffect()V

    .line 317
    iput-boolean v3, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->mFilterFrameworkActive:Z

    goto/16 :goto_0
.end method

.class public Lcom/htc/sunny2/view/SSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/htc/sunny2/RenderThread$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$1;,
        Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;,
        Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;,
        Lcom/htc/sunny2/view/SSurfaceView$ReLayout;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

.field private mCamera:I

.field private mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

.field private mIsTouchEnabled:Z

.field private final mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field private mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

.field private mRootNode:I

.field protected mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

.field private mScene:I

.field protected mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field protected mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

.field private mSunnyWindow:I

.field private mSurfacePixelFormat:I

.field private mViewPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/sunny2/view/SSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView;->onSurfaceChangedIRT()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/view/SSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    new-instance v1, Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v1}, Lcom/htc/sunny2/SunnyContext;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSurfacePixelFormat:I

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v3, v2}, Lcom/htc/sunny2/SunnyContext;->init(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Create Sunny Context Fail"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/Sunny2;->CreateWindowByContext(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    :goto_0
    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t create SunnyWindow"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->CreateWindow(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSurfacePixelFormat:I

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    new-instance v1, Lcom/htc/sunny2/RenderThread;

    const-string v2, "SunnyRenderThread"

    invoke-direct {v1, v2, p0}, Lcom/htc/sunny2/RenderThread;-><init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->beginThread()V

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/RenderThread;->setPriority(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method private onSurfaceChangedIRT()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->endThread()V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyContext;->deinit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    :cond_0
    return-void
.end method

.method public getSunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    return-object v0
.end method

.method public getSunnyEnvironmentHandler()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->pauseRender()V

    :cond_0
    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 8

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->runOnCurrentThread()Z

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Window_GetDefaultViewport(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v4

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->CreateScene(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Scene_GetRootNode(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRootNode:I

    new-instance v4, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRootNode:I

    invoke-direct {v4, p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;-><init>(Lcom/htc/sunny2/view/SSurfaceView;I)V

    iput-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->Scene_GetDefaultCamera(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    const/high16 v5, 0x4270

    const/high16 v6, 0x4120

    const v7, 0x461c4000

    invoke-static {v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Camera_2DIsometricSetup(IFFF)V

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I

    iget v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mCamera:I

    invoke-static {v4, v5}, Lcom/htc/sunny2/Sunny2;->Viewport_LinkCamera(II)V

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    new-instance v4, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    iget-object v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;-><init>(Lcom/htc/sunny2/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunny2/RenderThread;)V

    iput-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStartIRT()Z

    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public onRenderStopIRT()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStopIRT()V

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v3

    instance-of v4, v3, Lcom/htc/sunny2/view/SView;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->onDetachedFromWindow()V

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunny2/view/SView;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->release()V

    iput-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4, v6, v5, v5}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->DestroyWindow(I)V

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->release()V

    iget v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunny2/Sunny2;->DestroyScene(I)V

    iput v5, p0, Lcom/htc/sunny2/view/SSurfaceView;->mScene:I

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunny2/SunnyContext;->removeFromCurrentThread()V

    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/view/SSurfaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeRender()V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    :cond_0
    return v2
.end method

.method public refreshRenderOrder(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public set3DGlobalBackground(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setRenderThreadEventListener(Lcom/htc/sunny2/RenderThread$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    return-void
.end method

.method public setTouchEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mIsTouchEnabled:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mBindWindow:Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    :cond_0
    return-void
.end method

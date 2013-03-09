.class public Lcom/htc/sunny2/GLView;
.super Landroid/view/SurfaceView;
.source "GLView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/GLView$ScaleGestureListener;,
        Lcom/htc/sunny2/GLView$GestureListener;,
        Lcom/htc/sunny2/GLView$TouchListener;,
        Lcom/htc/sunny2/GLView$SurfaceListener;
    }
.end annotation


# static fields
.field public static ENABLE_ALPHA_SURFACE:Z

.field private static LTAG:Ljava/lang/String;


# instance fields
.field private mActionCode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

.field protected mHostContextName:Ljava/lang/String;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

.field private mZoomGesture:Z

.field private renderThread:Lcom/htc/sunny2/RenderThread;

.field private sunnyEnvironment:I

.field protected sunnyWindow:I

.field public supportMultitouch:Z

.field private surfaceHeight:I

.field private surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;

.field private surfaceWidth:I

.field private touchListener:Lcom/htc/sunny2/GLView$TouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SunnyGLView"

    sput-object v0, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/sunny2/GLView;->ENABLE_ALPHA_SURFACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/sunny2/GLView;->sunnyEnvironment:I

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    iput v1, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    iput v1, p0, Lcom/htc/sunny2/GLView;->surfaceWidth:I

    iput v1, p0, Lcom/htc/sunny2/GLView;->surfaceHeight:I

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;

    iput-boolean v1, p0, Lcom/htc/sunny2/GLView;->supportMultitouch:Z

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

    iput-boolean v1, p0, Lcom/htc/sunny2/GLView;->mZoomGesture:Z

    new-instance v0, Lcom/htc/sunny2/GLView$GestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/GLView$GestureListener;-><init>(Lcom/htc/sunny2/GLView;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/GLView;->mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/htc/sunny2/GLView$ScaleGestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/GLView$ScaleGestureListener;-><init>(Lcom/htc/sunny2/GLView;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/GLView;->mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/htc/sunny2/GLView;->sunnyEnvironment:I

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    iput v2, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    iput v2, p0, Lcom/htc/sunny2/GLView;->surfaceWidth:I

    iput v2, p0, Lcom/htc/sunny2/GLView;->surfaceHeight:I

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/GLView;->supportMultitouch:Z

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/GLView;->mZoomGesture:Z

    new-instance v0, Lcom/htc/sunny2/GLView$GestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/GLView$GestureListener;-><init>(Lcom/htc/sunny2/GLView;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/GLView;->mGestureListener:Lcom/htc/sunny2/GLView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/htc/sunny2/GLView$ScaleGestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/GLView$ScaleGestureListener;-><init>(Lcom/htc/sunny2/GLView;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/GLView;->mScaleGestureListener:Lcom/htc/sunny2/GLView$ScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$SurfaceListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/GLView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/GLView;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/GLView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/GLView;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunny2/GLView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/GLView;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/sunny2/GLView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/GLView;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/GLView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/GLView;->mZoomGesture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/sunny2/GLView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/GLView;->mZoomGesture:Z

    return p1
.end method


# virtual methods
.method protected deinit()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deinit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/GLView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget v1, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->DestroyWindow(I)V

    iput v4, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    iput v4, p0, Lcom/htc/sunny2/GLView;->sunnyEnvironment:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    return-void
.end method

.method public getSunnyWindow()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    return v0
.end method

.method protected init(IIILcom/htc/sunny2/RenderThread;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "init"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    sget-object v2, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "init() NG - null parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/GLView;->sunnyEnvironment:I

    iput-object p4, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz p2, :cond_2

    iget v3, p0, Lcom/htc/sunny2/GLView;->sunnyEnvironment:I

    invoke-static {v3, p2}, Lcom/htc/sunny2/Sunny2;->CreateWindowByContext(II)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    :goto_1
    iget v3, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    if-nez v3, :cond_3

    sget-object v2, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Sunny2.CreateWindow NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/GLView;->deinit()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/htc/sunny2/GLView;->sunnyEnvironment:I

    invoke-static {v3}, Lcom/htc/sunny2/Sunny2;->CreateWindow(I)I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v2, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getHolder() NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/GLView;->deinit()V

    goto :goto_0

    :cond_4
    if-ne p3, v7, :cond_5

    sget-object v1, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat RGB_565"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_2
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    move v1, v2

    goto/16 :goto_0

    :cond_5
    if-ne p3, v6, :cond_6

    sget-object v1, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat RGB_888"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    :cond_6
    if-ne p3, v2, :cond_7

    sget-object v1, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat RGBA_8888"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/GLView;->mActionCode:I

    iget v0, p0, Lcom/htc/sunny2/GLView;->mActionCode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/sunny2/GLView;->mZoomGesture:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/GLView;->supportMultitouch:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "onUp"

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_3
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    const-string v1, "onScrollEnd"

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/GLView;->mZoomGesture:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setSurfaceListener(Lcom/htc/sunny2/GLView$SurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;

    return-void
.end method

.method public setTouchListener(Lcom/htc/sunny2/GLView$TouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    sget-object v0, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceChanged + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v0, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;

    const-string v3, "BindSurface"

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny2/GLView$1RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunny2/GLView;Ljava/lang/Object;Ljava/lang/String;Landroid/view/Surface;II)V

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    :cond_0
    sget-object v0, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceChanged -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-object v0, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceDestroyed +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/GLView$1;

    const-string v2, "UnbindSurface"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunny2/GLView$1;-><init>(Lcom/htc/sunny2/GLView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z

    :cond_0
    sget-object v0, Lcom/htc/sunny2/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceDestroyed -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

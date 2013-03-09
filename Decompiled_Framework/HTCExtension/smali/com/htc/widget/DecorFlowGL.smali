.class public Lcom/htc/widget/DecorFlowGL;
.super Landroid/opengl/GLSurfaceView;
.source "DecorFlowGL.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;,
        Lcom/htc/widget/DecorFlowGL$LoadThread;,
        Lcom/htc/widget/DecorFlowGL$WrapBitmap;,
        Lcom/htc/widget/DecorFlowGL$Texture;
    }
.end annotation


# instance fields
.field private animationstate:I

.field private baseadapter:Landroid/widget/BaseAdapter;

.field private bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

.field public final bufcenter:I

.field public final buflength:I

.field private final centerchg:I

.field private final centerclk:I

.field private centeridx:I

.field private clickindex:I

.field private dfbitmap:Landroid/graphics/Bitmap;

.field private dpirescale:F

.field private drawrange:I

.field private final flingstop:I

.field private final flingstrt:I

.field private gesturedetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private imagesize:I

.field private imgframe:Lcom/htc/widget/DecorFlowIFrame;

.field private final itemclick:I

.field private lightflag:Z

.field private loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

.field public final maxthread:I

.field private ocenteridx:I

.field private oposition:I

.field private projectionmatrix:[F

.field private rdpirescale:F

.field private renderflag:Z

.field private sceneheight:I

.field private scenewidth:I

.field private scroller1:Landroid/widget/Scroller;

.field private scroller2:Landroid/widget/Scroller;

.field private scroller3:Landroid/widget/Scroller;

.field private sduration:I

.field private setdefault:Z

.field private statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

.field public final texquelen:I

.field private texqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/htc/widget/DecorFlowGL$Texture;",
            ">;"
        }
    .end annotation
.end field

.field private texture:Lcom/htc/widget/DecorFlowTexture;

.field public final updquelen:I

.field private updqueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xmoveshift:F

.field private xresolution:I

.field private yresolution:I

.field private zbaseshift:F

.field private zmoveratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v6, 0x40228f5c

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v3, 0xb

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->bufcenter:I

    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->maxthread:I

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->buflength:I

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->texquelen:I

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->updquelen:I

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    new-instance v1, Lcom/htc/widget/DecorFlowIFrame;

    invoke-direct {v1}, Lcom/htc/widget/DecorFlowIFrame;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    new-instance v1, Lcom/htc/widget/DecorFlowTexture;

    invoke-direct {v1, v3}, Lcom/htc/widget/DecorFlowTexture;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    new-array v1, v5, [Lcom/htc/widget/DecorFlowGL$LoadThread;

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

    new-array v1, v3, [Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->itemclick:I

    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->flingstop:I

    const/4 v1, -0x3

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->flingstrt:I

    const/4 v1, -0x4

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->centerchg:I

    const/4 v1, -0x5

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->centerclk:I

    new-instance v1, Lcom/htc/widget/DecorFlowGL$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DecorFlowGL$1;-><init>(Lcom/htc/widget/DecorFlowGL;)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    iput-boolean v4, p0, Lcom/htc/widget/DecorFlowGL;->lightflag:Z

    iput-boolean v4, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    iput-boolean v4, p0, Lcom/htc/widget/DecorFlowGL;->renderflag:Z

    const/16 v1, 0x100

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    const v1, 0x3f8ccccd

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    const/high16 v1, -0x4100

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->zmoveratio:F

    const/high16 v1, -0x3f80

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    new-instance v2, Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    invoke-direct {v2, p0}, Lcom/htc/widget/DecorFlowGL$WrapBitmap;-><init>(Lcom/htc/widget/DecorFlowGL;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

    new-instance v2, Lcom/htc/widget/DecorFlowGL$LoadThread;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/DecorFlowGL$LoadThread;-><init>(Lcom/htc/widget/DecorFlowGL;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->gesturedetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->gesturedetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v6

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v6, v1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    invoke-virtual {p0, p0}, Lcom/htc/widget/DecorFlowGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlowGL;->setDebugFlags(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowTexture;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DecorFlowGL;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->baseadapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    return v0
.end method

.method private drawAllEffectImage(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    const/16 v8, 0xde1

    const/16 v2, 0xb

    const v4, 0x3f99999a

    const v7, 0x3ecccccd

    const/4 v6, 0x0

    const/high16 v3, 0x3f80

    invoke-interface {p1, v4, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    const/4 v4, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    invoke-interface {p1, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    const/high16 v3, 0x3f80

    invoke-interface {p1, v7, v7, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/4 v1, 0x1

    :goto_1
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_5

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    add-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    add-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    rsub-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    rsub-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    rsub-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    const/4 v4, 0x5

    aget v0, v3, v4

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto/16 :goto_2

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    rsub-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto :goto_3

    :cond_5
    return-void
.end method

.method private drawAllImage(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    const/16 v8, 0xde1

    const/16 v2, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/high16 v3, 0x3f80

    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    aget v4, v4, v6

    invoke-interface {p1, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x1

    :goto_1
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_5

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    add-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    add-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    rsub-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    rsub-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    rsub-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v0, v3, v6

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto/16 :goto_2

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    rsub-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto :goto_3

    :cond_5
    return-void
.end method

.method private getXProjection(FF)F
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private getYProjection(FF)F
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private requestLoad(I)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "DecorFlowGL"

    const-string v3, "requestLoad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scrollershift1()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    sub-int v1, v0, v2

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    int-to-float v2, v1

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    if-nez v0, :cond_0

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    goto :goto_0
.end method

.method private scrollershift2()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    sub-int v1, v0, v2

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    int-to-float v2, v1

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    if-nez v0, :cond_0

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private scrollershift3()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    sub-int v1, v0, v2

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    int-to-float v2, v1

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    if-nez v0, :cond_0

    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    goto :goto_0
.end method

.method private shiftDistance(F)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x4

    const/16 v9, 0xb

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    const v3, 0x7f7fffff

    cmpl-float v6, p1, v5

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_3

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    add-int/lit8 v6, v6, -0x5

    add-int/2addr v6, v2

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v6, v7, :cond_2

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    add-int/lit8 v6, v6, -0x5

    add-int/2addr v6, v2

    if-le v6, v8, :cond_2

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v6, v6, v2

    add-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v6, v0, v3

    if-gez v6, :cond_2

    move v3, v0

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v4, v6, v2

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    add-int/lit8 v6, v6, -0x5

    add-int/2addr v6, v2

    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-float/2addr v4, p1

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    if-nez v6, :cond_4

    cmpl-float v6, p1, v5

    if-lez v6, :cond_4

    cmpl-float v6, v4, v5

    if-lez v6, :cond_4

    move v4, v5

    :cond_4
    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    cmpg-float v6, p1, v5

    if-gez v6, :cond_5

    cmpg-float v6, v4, v5

    if-gez v6, :cond_5

    move v4, v5

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_6

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->xmvoffset:[F

    aget v6, v6, v2

    add-float/2addr v6, v4

    aput v6, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->zmoveratio:F

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    add-float/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    sub-int v1, v5, v6

    if-lez v1, :cond_c

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_b

    rsub-int/lit8 v5, v1, 0xb

    if-ge v2, v5, :cond_8

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int v7, v2, v1

    aget v6, v6, v7

    aput v6, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int v7, v2, v1

    aget-boolean v6, v6, v7

    aput-boolean v6, v5, v2

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v11, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v5, v5, v2

    const/16 v6, 0xa

    if-le v5, v6, :cond_9

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, -0xb

    aput v6, v5, v2

    :cond_9
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    if-le v5, v8, :cond_7

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v5, v6, :cond_7

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    :cond_a
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    if-gez v1, :cond_0

    const/16 v2, 0xa

    :goto_5
    if-le v2, v8, :cond_11

    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_e

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int v7, v2, v1

    aget v6, v6, v7

    aput v6, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int v7, v2, v1

    aget-boolean v6, v6, v7

    aput-boolean v6, v5, v2

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v11, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aput v6, v5, v2

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v5, v5, v2

    if-gez v5, :cond_f

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, 0xb

    aput v6, v5, v2

    :cond_f
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    if-le v5, v8, :cond_d

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v5, v6, :cond_d

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    :cond_10
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    goto :goto_6

    :cond_11
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getCenterIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const/16 v6, 0x1e

    iget-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    const/16 v9, 0xb

    invoke-virtual {v7, p1, v8, v9}, Lcom/htc/widget/DecorFlowTexture;->uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->renderflag:Z

    if-eqz v7, :cond_3

    const/16 v7, 0x100

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/16 v7, 0x4000

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->lightflag:Z

    if-nez v7, :cond_5

    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlowGL;->drawAllImage(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_0
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/DecorFlowGL;->scrollershift1()V

    :cond_1
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/DecorFlowGL;->scrollershift2()V

    :cond_2
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/DecorFlowGL;->scrollershift3()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DecorFlowGL$Texture;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_1
    const/16 v7, 0xb

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v7, v8, :cond_4

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    const/4 v8, -0x1

    if-le v7, v8, :cond_4

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    invoke-direct {p0, v7}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlowGL;->drawAllEffectImage(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    :cond_7
    :goto_2
    sub-long v7, v4, v2

    const-wide/16 v9, 0x1e

    cmp-long v7, v7, v9

    if-gez v7, :cond_a

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    :cond_8
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DecorFlowGL$Texture;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    :goto_3
    const/16 v7, 0xb

    if-ge v1, v7, :cond_9

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v7, v8, :cond_f

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    const/4 v8, -0x1

    if-le v7, v8, :cond_f

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_f

    iget v7, v0, Lcom/htc/widget/DecorFlowGL$Texture;->viewindx:I

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v8, v8, -0x5

    add-int/2addr v8, v1

    if-ne v7, v8, :cond_f

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v9, v9, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v9, v9, v1

    invoke-virtual {v7, p1, v8, v9}, Lcom/htc/widget/DecorFlowTexture;->uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    aput v9, v7, v8

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    aput v9, v7, v8

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    const/4 v8, 0x0

    aput-boolean v8, v7, v1

    :cond_9
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v8, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    :cond_a
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "DecorFlowGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDrawFrame:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    const/4 v1, 0x0

    :goto_4
    const/16 v7, 0xb

    if-ge v1, v7, :cond_d

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v7, v8, :cond_e

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    const/4 v8, -0x1

    if-le v7, v8, :cond_e

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_e

    iget v7, v0, Lcom/htc/widget/DecorFlowGL$Texture;->viewindx:I

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v8, v8, -0x5

    add-int/2addr v8, v1

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v9, v9, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v9, v9, v1

    invoke-virtual {v7, p1, v8, v9}, Lcom/htc/widget/DecorFlowTexture;->uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    aput v9, v7, v8

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    aput v9, v7, v8

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    const/4 v8, 0x0

    aput-boolean v8, v7, v1

    :cond_d
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v8, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    goto/16 :goto_2

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 17

    const/16 v13, 0x5dc

    const/16 v14, -0x5dc

    const v1, 0x44bb8000

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    const p3, 0x44bb8000

    :cond_0
    const v1, -0x3b448000

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    const p3, -0x3b448000

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4320

    mul-float v15, v1, v3

    const v1, 0x43c10b3d

    mul-float/2addr v1, v15

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    mul-float v12, v1, v3

    const/high16 v1, 0x3f00

    mul-float v1, v1, p3

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_5

    int-to-float v1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v1, v3, :cond_2

    :goto_0
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v1, v3

    add-int/lit8 v16, v1, -0x1

    goto :goto_0

    :cond_3
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v1, v2

    mul-float/2addr v1, v12

    const/high16 v3, 0x4000

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v6, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    const/4 v3, 0x0

    neg-int v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, v2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    if-eqz v1, :cond_9

    int-to-float v1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_6

    :goto_2
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    move/from16 v16, v0

    goto :goto_2

    :cond_7
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v1, v2

    mul-float/2addr v1, v12

    const/high16 v3, 0x4000

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v6, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    neg-int v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    neg-int v4, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    neg-int v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x1

    const/high16 v1, 0x3f00

    neg-float v2, p3

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float v0, v2, v3

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    :cond_0
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    neg-float v0, v2

    :cond_1
    const/high16 v2, 0x3f00

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    iput v4, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->requestRender()V

    return v4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 15

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    sub-int v12, v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->sceneheight:I

    sub-int v13, v0, v2

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v0}, Lcom/htc/widget/DecorFlowIFrame;->getFrameWidth()F

    move-result v8

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v0}, Lcom/htc/widget/DecorFlowIFrame;->getFrameHeight()F

    move-result v7

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    const/4 v2, 0x5

    aget v0, v0, v2

    sub-float/2addr v0, v8

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getXProjection(FF)F

    move-result v9

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    const/4 v2, 0x5

    aget v0, v0, v2

    add-float/2addr v0, v8

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getXProjection(FF)F

    move-result v11

    int-to-float v0, v12

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    int-to-float v0, v12

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    aget v0, v0, v2

    invoke-direct {p0, v7, v0}, Lcom/htc/widget/DecorFlowGL;->getYProjection(FF)F

    move-result v14

    neg-float v0, v7

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getYProjection(FF)F

    move-result v6

    neg-int v0, v13

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->sceneheight:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    neg-int v0, v13

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->sceneheight:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    :cond_2
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    add-int/lit8 v0, v0, -0x5

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v0, v2

    const/4 v2, -0x1

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    add-int/lit8 v0, v0, -0x5

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    aget v0, v0, v2

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    add-int/lit8 v0, v0, -0x5

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v3, -0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    const/4 v2, 0x0

    neg-int v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    if-gez v12, :cond_7

    const/4 v10, 0x1

    :goto_1
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_7

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    rsub-int/lit8 v2, v10, 0x5

    aget v0, v0, v2

    sub-float/2addr v0, v8

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    rsub-int/lit8 v3, v10, 0x5

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getXProjection(FF)F

    move-result v9

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    rsub-int/lit8 v2, v10, 0x5

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    sub-float/2addr v0, v8

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    rsub-int/lit8 v3, v10, 0x5

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getXProjection(FF)F

    move-result v11

    int-to-float v0, v12

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    int-to-float v0, v12

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    rsub-int/lit8 v0, v10, 0x5

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    :cond_7
    if-lez v12, :cond_0

    const/4 v10, 0x1

    :goto_2
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    add-int/lit8 v2, v10, 0x5

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    add-float/2addr v0, v8

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    add-int/lit8 v3, v10, 0x5

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getXProjection(FF)F

    move-result v9

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    add-int/lit8 v2, v10, 0x5

    aget v0, v0, v2

    add-float/2addr v0, v8

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    add-int/lit8 v3, v10, 0x5

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getXProjection(FF)F

    move-result v11

    int-to-float v0, v12

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    int-to-float v0, v12

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    add-int/lit8 v0, v10, 0x5

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    shr-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->sceneheight:I

    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1, v5, v5, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v1, 0x4234

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    const/high16 v4, 0x4248

    invoke-static {p1, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v1, 0xba7

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DecorFlowGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecorFlowGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    iput v2, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    :cond_0
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    if-ne v0, v7, :cond_1

    if-ne v6, v7, :cond_1

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    const/4 v3, 0x5

    aget v0, v0, v3

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    neg-int v3, v1

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    shr-int/lit8 v5, v4, 0x1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->gesturedetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL;->baseadapter:Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p0, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    const/high16 v4, 0x3f80

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setFrame(FF)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    :cond_0
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/16 v6, 0xb

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    int-to-float v4, v2

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    int-to-float v4, v1

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aput v7, v3, v6

    :cond_1
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aput v7, v3, v6

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v8, v8, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnvironment()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aput v0, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v5, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    add-int/lit8 v3, v0, -0x5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->xmvoffset:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    add-int/lit8 v3, v0, -0x5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->zmoveratio:F

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/widget/DecorFlowGL$LoadThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v4, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    :cond_2
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    if-le v1, v4, :cond_3

    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setLightMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/DecorFlowGL;->lightflag:Z

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->requestRender()V

    return-void
.end method

.method public setListener(Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    :cond_0
    return-void
.end method

.method public setXResolution(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    :cond_0
    return-void
.end method

.method public setXShift(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    :cond_0
    return-void
.end method

.method public setYResolution(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    :cond_0
    return-void
.end method

.method public setZShiftBase(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    :cond_0
    return-void
.end method

.method public setZShiftRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->zmoveratio:F

    :cond_0
    return-void
.end method

.method public startRender()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlowGL;->renderflag:Z

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->requestRender()V

    return-void
.end method

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
    .parameter "context"
    .parameter "attrset"

    .prologue
    const v6, 0x40228f5c

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->bufcenter:I

    .line 71
    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->maxthread:I

    .line 72
    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->buflength:I

    .line 73
    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->texquelen:I

    .line 74
    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->updquelen:I

    .line 76
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    .line 78
    new-instance v1, Lcom/htc/widget/DecorFlowIFrame;

    invoke-direct {v1}, Lcom/htc/widget/DecorFlowIFrame;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    .line 79
    new-instance v1, Lcom/htc/widget/DecorFlowTexture;

    invoke-direct {v1, v3}, Lcom/htc/widget/DecorFlowTexture;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    .line 81
    new-array v1, v5, [Lcom/htc/widget/DecorFlowGL$LoadThread;

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

    .line 82
    new-array v1, v3, [Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    .line 84
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 85
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1091
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->itemclick:I

    .line 1092
    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->flingstop:I

    .line 1093
    const/4 v1, -0x3

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->flingstrt:I

    .line 1094
    const/4 v1, -0x4

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->centerchg:I

    .line 1095
    const/4 v1, -0x5

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->centerclk:I

    .line 1097
    new-instance v1, Lcom/htc/widget/DecorFlowGL$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DecorFlowGL$1;-><init>(Lcom/htc/widget/DecorFlowGL;)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    .line 91
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    .line 92
    iput-boolean v4, p0, Lcom/htc/widget/DecorFlowGL;->lightflag:Z

    .line 93
    iput-boolean v4, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    .line 94
    iput-boolean v4, p0, Lcom/htc/widget/DecorFlowGL;->renderflag:Z

    .line 96
    const/16 v1, 0x100

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    .line 97
    const/16 v1, 0x100

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    .line 99
    const v1, 0x3f8ccccd

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    .line 100
    const/high16 v1, -0x4100

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->zmoveratio:F

    .line 101
    const/high16 v1, -0x3f80

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    .line 103
    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    .line 105
    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 106
    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    .line 107
    iput-object v2, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    .line 109
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 110
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    new-instance v2, Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    invoke-direct {v2, p0}, Lcom/htc/widget/DecorFlowGL$WrapBitmap;-><init>(Lcom/htc/widget/DecorFlowGL;)V

    aput-object v2, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 113
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

    new-instance v2, Lcom/htc/widget/DecorFlowGL$LoadThread;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/DecorFlowGL$LoadThread;-><init>(Lcom/htc/widget/DecorFlowGL;I)V

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_1
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/htc/widget/DecorFlowGL;->gesturedetector:Landroid/view/GestureDetector;

    .line 116
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->gesturedetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v6

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v1, v6, v1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    .line 121
    invoke-virtual {p0, p0}, Lcom/htc/widget/DecorFlowGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 122
    invoke-virtual {p0, v5}, Lcom/htc/widget/DecorFlowGL;->setDebugFlags(I)V

    .line 123
    invoke-virtual {p0, v4}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DecorFlowGL;)[Lcom/htc/widget/DecorFlowGL$WrapBitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/DecorFlowGL;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DecorFlowGL;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->baseadapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/DecorFlowGL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    return v0
.end method

.method private drawAllEffectImage(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "glhandle"

    .prologue
    const/16 v8, 0xde1

    const/16 v2, 0xb

    const v4, 0x3f99999a

    const v7, 0x3ecccccd

    const/4 v6, 0x0

    .line 296
    const/high16 v3, 0x3f80

    invoke-interface {p1, v4, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 297
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    const/4 v4, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v0, v2

    .line 298
    .local v0, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 299
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    .line 301
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 302
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    invoke-interface {p1, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 303
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 305
    const/high16 v3, 0x3f80

    invoke-interface {p1, v7, v7, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 306
    const/4 v1, 0x1

    .local v1, loop:I
    :goto_1
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_5

    .line 308
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v3, v4, :cond_0

    .line 310
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    move v0, v2

    .line 311
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 312
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    .line 314
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 315
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    add-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    add-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 316
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 319
    :cond_0
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 321
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    rsub-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    move v0, v2

    .line 322
    :goto_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 323
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    .line 325
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 326
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    rsub-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    rsub-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 327
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 306
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 297
    .end local v0           #index:I
    .end local v1           #loop:I
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    const/4 v4, 0x5

    aget v0, v3, v4

    goto/16 :goto_0

    .line 310
    .restart local v0       #index:I
    .restart local v1       #loop:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto/16 :goto_2

    .line 321
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    rsub-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto :goto_3

    .line 330
    :cond_5
    return-void
.end method

.method private drawAllImage(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "glhandle"

    .prologue
    const/16 v8, 0xde1

    const/16 v2, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/high16 v3, 0x3f80

    .line 257
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 258
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_2

    move v0, v2

    .line 259
    .local v0, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 260
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    .line 262
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 263
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    aget v4, v4, v6

    invoke-interface {p1, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 264
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 266
    const/4 v1, 0x1

    .local v1, loop:I
    :goto_1
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_5

    .line 268
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v3, v4, :cond_0

    .line 270
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    move v0, v2

    .line 271
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 272
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    .line 274
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 275
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    add-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    add-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 276
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 279
    :cond_0
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 281
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    rsub-int/lit8 v4, v1, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    move v0, v2

    .line 282
    :goto_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v3, v3, v0

    invoke-interface {p1, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 283
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setTexture(FF)V

    .line 285
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 286
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    rsub-int/lit8 v4, v1, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v4, v4, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    rsub-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    invoke-interface {p1, v3, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 287
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DecorFlowIFrame;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 258
    .end local v0           #index:I
    .end local v1           #loop:I
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v0, v3, v6

    goto/16 :goto_0

    .line 270
    .restart local v0       #index:I
    .restart local v1       #loop:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto/16 :goto_2

    .line 281
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    rsub-int/lit8 v4, v1, 0x5

    aget v0, v3, v4

    goto :goto_3

    .line 290
    :cond_5
    return-void
.end method

.method private getXProjection(FF)F
    .locals 4
    .parameter "xposition"
    .parameter "zposition"

    .prologue
    .line 425
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
    .parameter "yposition"
    .parameter "zposition"

    .prologue
    .line 430
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
    .parameter "position"

    .prologue
    .line 903
    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v2

    if-nez v2, :cond_0

    .line 905
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 909
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 910
    .local v1, integer:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->updqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .end local v1           #integer:Ljava/lang/Integer;
    :goto_0
    const/4 v1, 0x0

    .line 918
    .restart local v1       #integer:Ljava/lang/Integer;
    return-void

    .line 912
    .end local v1           #integer:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 914
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "DecorFlowGL"

    const-string v3, "requestLoad"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scrollershift1()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 644
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 645
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    .line 647
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 653
    .local v0, cposition:I
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    sub-int v1, v0, v2

    .line 654
    .local v1, dposition:I
    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 656
    int-to-float v2, v1

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    .line 658
    if-nez v0, :cond_0

    .line 660
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    .line 661
    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 669
    .end local v0           #cposition:I
    .end local v1           #dposition:I
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    .line 667
    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    goto :goto_0
.end method

.method private scrollershift2()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 673
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    .line 674
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    .line 676
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 682
    .local v0, cposition:I
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    sub-int v1, v0, v2

    .line 683
    .local v1, dposition:I
    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 685
    int-to-float v2, v1

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    .line 687
    if-nez v0, :cond_0

    .line 689
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 690
    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 692
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    .end local v0           #cposition:I
    .end local v1           #dposition:I
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 699
    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 701
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private scrollershift3()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 708
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    .line 709
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 711
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 717
    .local v0, cposition:I
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    sub-int v1, v0, v2

    .line 718
    .local v1, dposition:I
    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 720
    int-to-float v2, v1

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    .line 722
    if-nez v0, :cond_0

    .line 724
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    .line 725
    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 733
    .end local v0           #cposition:I
    .end local v1           #dposition:I
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iput-object v4, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    .line 731
    iput v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    goto :goto_0
.end method

.method private shiftDistance(F)V
    .locals 12
    .parameter "distance"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x4

    const/16 v9, 0xb

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, xposition:F
    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    .line 342
    const v3, 0x7f7fffff

    .line 344
    .local v3, mindistance:F
    cmpl-float v6, p1, v5

    if-nez v6, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v2, 0x0

    .local v2, loop:I
    :goto_1
    if-ge v2, v9, :cond_3

    .line 348
    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    add-int/lit8 v6, v6, -0x5

    add-int/2addr v6, v2

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v6, v7, :cond_2

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    add-int/lit8 v6, v6, -0x5

    add-int/2addr v6, v2

    if-le v6, v8, :cond_2

    .line 349
    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v6, v6, v2

    add-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, absdistance:F
    cmpg-float v6, v0, v3

    if-gez v6, :cond_2

    .line 351
    move v3, v0

    .line 352
    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    aget v4, v6, v2

    .line 353
    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    add-int/lit8 v6, v6, -0x5

    add-int/2addr v6, v2

    iput v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    .line 347
    .end local v0           #absdistance:F
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 356
    :cond_3
    add-float/2addr v4, p1

    .line 357
    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    if-nez v6, :cond_4

    cmpl-float v6, p1, v5

    if-lez v6, :cond_4

    cmpl-float v6, v4, v5

    if-lez v6, :cond_4

    move v4, v5

    .line 358
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

    .line 360
    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_6

    .line 362
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->xmvoffset:[F

    aget v6, v6, v2

    add-float/2addr v6, v4

    aput v6, v5, v2

    .line 363
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

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 366
    :cond_6
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    iget v6, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    sub-int v1, v5, v6

    .line 368
    .local v1, indexshift:I
    if-lez v1, :cond_c

    .line 370
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_b

    .line 372
    rsub-int/lit8 v5, v1, 0xb

    if-ge v2, v5, :cond_8

    .line 374
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int v7, v2, v1

    aget v6, v6, v7

    aput v6, v5, v2

    .line 375
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int v7, v2, v1

    aget-boolean v6, v6, v7

    aput-boolean v6, v5, v2

    .line 370
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 379
    :cond_8
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v11, v5, v2

    .line 380
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    .line 382
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v5, v5, v2

    const/16 v6, 0xa

    if-le v5, v6, :cond_9

    .line 383
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, -0xb

    aput v6, v5, v2

    .line 385
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

    .line 386
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 387
    :cond_a
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    goto :goto_4

    .line 391
    :cond_b
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v5, :cond_c

    .line 392
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    :cond_c
    if-gez v1, :cond_0

    .line 397
    const/16 v2, 0xa

    :goto_5
    if-le v2, v8, :cond_11

    .line 399
    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_e

    .line 401
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int v7, v2, v1

    aget v6, v6, v7

    aput v6, v5, v2

    .line 402
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    add-int v7, v2, v1

    aget-boolean v6, v6, v7

    aput-boolean v6, v5, v2

    .line 397
    :cond_d
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 406
    :cond_e
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v11, v5, v2

    .line 407
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aput v6, v5, v2

    .line 409
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v5, v5, v2

    if-gez v5, :cond_f

    .line 410
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v5, v5, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    iget-object v6, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v6, v6, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, 0xb

    aput v6, v5, v2

    .line 412
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

    .line 413
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 414
    :cond_10
    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v5, v5, -0x5

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    goto :goto_6

    .line 418
    :cond_11
    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v5, :cond_0

    .line 419
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

    .prologue
    .line 1061
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 635
    const/4 v0, 0x1

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "glhandle"

    .prologue
    .line 133
    const/16 v6, 0x1e

    .line 135
    .local v6, threshold:I
    iget-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 137
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    .line 138
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    const/16 v9, 0xb

    invoke-virtual {v7, p1, v8, v9}, Lcom/htc/widget/DecorFlowTexture;->uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    .line 141
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 142
    .local v2, starttime:J
    iget-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->renderflag:Z

    if-eqz v7, :cond_3

    .line 144
    const/16 v7, 0x100

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 145
    const/16 v7, 0x4000

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 147
    iget-boolean v7, p0, Lcom/htc/widget/DecorFlowGL;->lightflag:Z

    if-nez v7, :cond_5

    .line 148
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlowGL;->drawAllImage(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 152
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/DecorFlowGL;->scrollershift1()V

    .line 153
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/DecorFlowGL;->scrollershift2()V

    .line 154
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/DecorFlowGL;->scrollershift3()V

    .line 156
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 158
    .local v4, stoptime:J
    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 162
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DecorFlowGL$Texture;

    .local v0, loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    if-nez v0, :cond_c

    .line 164
    const/4 v1, 0x0

    .local v1, loop:I
    :goto_1
    const/16 v7, 0xb

    if-ge v1, v7, :cond_6

    .line 165
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

    .line 166
    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v7, v7, -0x5

    add-int/2addr v7, v1

    invoke-direct {p0, v7}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    .line 164
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v0           #loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    .end local v1           #loop:I
    .end local v4           #stoptime:J
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/widget/DecorFlowGL;->drawAllEffectImage(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 167
    .restart local v0       #loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    .restart local v1       #loop:I
    .restart local v4       #stoptime:J
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    .line 186
    .end local v0           #loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    .end local v1           #loop:I
    :cond_7
    :goto_2
    sub-long v7, v4, v2

    const-wide/16 v9, 0x1e

    cmp-long v7, v7, v9

    if-gez v7, :cond_a

    .line 187
    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    iget v7, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    .line 191
    :cond_8
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texqueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DecorFlowGL$Texture;

    .restart local v0       #loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    if-eqz v0, :cond_a

    .line 193
    const/4 v1, 0x0

    .restart local v1       #loop:I
    :goto_3
    const/16 v7, 0xb

    if-ge v1, v7, :cond_9

    .line 194
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

    .line 195
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_f

    iget v7, v0, Lcom/htc/widget/DecorFlowGL$Texture;->viewindx:I

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v8, v8, -0x5

    add-int/2addr v8, v1

    if-ne v7, v8, :cond_f

    .line 197
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v9, v9, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v9, v9, v1

    invoke-virtual {v7, p1, v8, v9}, Lcom/htc/widget/DecorFlowTexture;->uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    .line 198
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    aput v9, v7, v8

    .line 199
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    aput v9, v7, v8

    .line 200
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    const/4 v8, 0x0

    aput-boolean v8, v7, v1

    .line 203
    :cond_9
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v8, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    .line 208
    .end local v0           #loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    .end local v1           #loop:I
    :cond_a
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v7

    if-eqz v7, :cond_b

    .line 209
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

    .line 210
    :cond_b
    return-void

    .line 171
    .restart local v0       #loadtex:Lcom/htc/widget/DecorFlowGL$Texture;
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #loop:I
    :goto_4
    const/16 v7, 0xb

    if-ge v1, v7, :cond_d

    .line 172
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

    .line 173
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_e

    iget v7, v0, Lcom/htc/widget/DecorFlowGL$Texture;->viewindx:I

    iget v8, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v8, v8, -0x5

    add-int/2addr v8, v1

    if-ne v7, v8, :cond_e

    .line 175
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v9, v9, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v9, v9, v1

    invoke-virtual {v7, p1, v8, v9}, Lcom/htc/widget/DecorFlowTexture;->uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V

    .line 176
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->xtexratio:F

    aput v9, v7, v8

    .line 177
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    iget-object v8, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v8, v8, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aget v8, v8, v1

    iget v9, v0, Lcom/htc/widget/DecorFlowGL$Texture;->ytexratio:F

    aput v9, v7, v8

    .line 178
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v7, v7, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    const/4 v8, 0x0

    aput-boolean v8, v7, v1

    .line 181
    :cond_d
    iget-object v7, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    iget v8, v0, Lcom/htc/widget/DecorFlowGL$Texture;->bitmapidx:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    goto/16 :goto_2

    .line 171
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 193
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 17
    .parameter "event1"
    .parameter "event2"
    .parameter "velocityx"
    .parameter "velocityy"

    .prologue
    .line 485
    const/16 v13, 0x5dc

    .line 486
    .local v13, maxvelocity:I
    const/16 v14, -0x5dc

    .line 488
    .local v14, minvelocity:I
    const v1, 0x44bb8000

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    const p3, 0x44bb8000

    .line 489
    :cond_0
    const v1, -0x3b448000

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    const p3, -0x3b448000

    .line 491
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

    .line 492
    .local v15, pixeldensity:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v15

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    mul-float v12, v1, v3

    .line 494
    .local v12, deceleration:F
    const/high16 v1, 0x3f00

    mul-float v1, v1, p3

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 496
    .local v2, distance:I
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_5

    .line 498
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

    .line 499
    .local v16, shiftslot:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v1, v3, :cond_2

    .line 501
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_3

    .line 502
    const/4 v1, 0x1

    .line 538
    .end local v16           #shiftslot:I
    :goto_1
    return v1

    .line 499
    .restart local v16       #shiftslot:I
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v1, v3

    add-int/lit8 v16, v1, -0x1

    goto :goto_0

    .line 504
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

    .line 505
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

    .line 507
    .local v6, velocity:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v1, :cond_4

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    :cond_4
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 511
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 512
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 513
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

    .line 514
    .end local v6           #velocity:I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    .line 517
    .end local v16           #shiftslot:I
    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    if-eqz v1, :cond_9

    .line 519
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

    .line 520
    .restart local v16       #shiftslot:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_6

    .line 522
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_7

    .line 523
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 520
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    move/from16 v16, v0

    goto :goto_2

    .line 525
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

    .line 526
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

    .line 528
    .restart local v6       #velocity:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v1, :cond_8

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    :cond_8
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 532
    neg-int v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 533
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DecorFlowGL;->scroller2:Landroid/widget/Scroller;

    .line 534
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

    .line 535
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    .line 538
    .end local v6           #velocity:I
    .end local v16           #shiftslot:I
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 640
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1066
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1068
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1070
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1073
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    .line 1074
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->bitmappool:[Lcom/htc/widget/DecorFlowGL$WrapBitmap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1080
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1082
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1083
    iput-boolean v2, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    .line 1085
    :cond_0
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v2, v1, v0

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "event1"
    .parameter "event2"
    .parameter "distancex"
    .parameter "distancey"

    .prologue
    const/4 v4, 0x1

    .line 461
    const/high16 v1, 0x3f00

    .line 465
    .local v1, rescale:F
    neg-float v2, p3

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->rdpirescale:F

    mul-float v0, v2, v3

    .line 466
    .local v0, distance:F
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    .line 467
    :cond_0
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    neg-float v0, v2

    .line 469
    :cond_1
    const/high16 v2, 0x3f00

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/htc/widget/DecorFlowGL;->shiftDistance(F)V

    .line 470
    iput v4, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 471
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->requestRender()V

    .line 473
    return v4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 631
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "event"

    .prologue
    .line 554
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    sub-int v12, v0, v2

    .line 556
    .local v12, scenex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->sceneheight:I

    sub-int v13, v0, v2

    .line 558
    .local v13, sceney:I
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v0}, Lcom/htc/widget/DecorFlowIFrame;->getFrameWidth()F

    move-result v8

    .line 559
    .local v8, frmaewidth:F
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    invoke-virtual {v0}, Lcom/htc/widget/DecorFlowIFrame;->getFrameHeight()F

    move-result v7

    .line 561
    .local v7, frameheight:F
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

    .line 562
    .local v9, leftposition:F
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

    .line 564
    .local v11, rightposition:F
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

    .line 565
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    .line 595
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 597
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    aget v0, v0, v2

    invoke-direct {p0, v7, v0}, Lcom/htc/widget/DecorFlowGL;->getYProjection(FF)F

    move-result v14

    .line 598
    .local v14, upposition:F
    neg-float v0, v7

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v2, v2, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/htc/widget/DecorFlowGL;->getYProjection(FF)F

    move-result v6

    .line 600
    .local v6, downposition:F
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

    .line 601
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    .line 604
    .end local v6           #downposition:F
    .end local v14           #upposition:F
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

    .line 608
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    aget v0, v0, v2

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 609
    .local v1, distance:I
    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 611
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    if-eqz v0, :cond_4

    .line 613
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    add-int/lit8 v0, v0, -0x5

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    .line 615
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    if-ne v0, v2, :cond_3

    .line 616
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v3, -0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->handler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 621
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    .line 622
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller3:Landroid/widget/Scroller;

    const/4 v2, 0x0

    neg-int v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 623
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    .line 626
    .end local v1           #distance:I
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 568
    :cond_6
    if-gez v12, :cond_7

    .line 569
    const/4 v10, 0x1

    .local v10, loop:I
    :goto_1
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_7

    .line 571
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

    .line 572
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

    .line 574
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

    .line 576
    rsub-int/lit8 v0, v10, 0x5

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    .line 581
    .end local v10           #loop:I
    :cond_7
    if-lez v12, :cond_0

    .line 582
    const/4 v10, 0x1

    .restart local v10       #loop:I
    :goto_2
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_0

    .line 584
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

    .line 585
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

    .line 587
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

    .line 589
    add-int/lit8 v0, v10, 0x5

    iput v0, p0, Lcom/htc/widget/DecorFlowGL;->clickindex:I

    goto/16 :goto_0

    .line 569
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 582
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter "glhandle"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 214
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 216
    .local v0, glhandle11:Ljavax/microedition/khronos/opengles/GL11;
    shr-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->scenewidth:I

    .line 217
    shr-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->sceneheight:I

    .line 219
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 220
    invoke-interface {p1, v5, v5, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 221
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 223
    const/high16 v1, 0x4234

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    const/high16 v4, 0x4248

    invoke-static {p1, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 224
    const/16 v1, 0xba7

    iget-object v2, p0, Lcom/htc/widget/DecorFlowGL;->projectionmatrix:[F

    invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    .line 226
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 227
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 229
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    if-eqz v1, :cond_0

    .line 230
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

    .line 231
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "glhandle"
    .parameter "config"

    .prologue
    .line 235
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 236
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 237
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 238
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 239
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 241
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 242
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 244
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 245
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 247
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 249
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 250
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

    .line 251
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 440
    .local v6, action:I
    if-nez v6, :cond_0

    .line 441
    iput v2, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 443
    :cond_0
    iget v0, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    if-ne v0, v7, :cond_1

    if-ne v6, v7, :cond_1

    .line 447
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v0, v0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    const/4 v3, 0x5

    aget v0, v0, v3

    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->dpirescale:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 449
    .local v1, distance:I
    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->oposition:I

    .line 450
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    .line 451
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->scroller1:Landroid/widget/Scroller;

    neg-int v3, v1

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    shr-int/lit8 v5, v4, 0x1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 452
    invoke-virtual {p0, v7}, Lcom/htc/widget/DecorFlowGL;->setRenderMode(I)V

    .line 455
    .end local v1           #distance:I
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL;->gesturedetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 456
    return v7
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 7
    .parameter "adapter"

    .prologue
    .line 928
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    .line 929
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->ocenteridx:I

    .line 930
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    .line 932
    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL;->baseadapter:Landroid/widget/BaseAdapter;

    .line 933
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p0, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 934
    .local v2, imageview:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 935
    .local v1, drawablewidth:I
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 936
    .local v0, drawableheight:I
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->imgframe:Lcom/htc/widget/DecorFlowIFrame;

    const/high16 v4, 0x3f80

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/DecorFlowIFrame;->setFrame(FF)V

    .line 937
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1025
    if-lez p1, :cond_0

    .line 1026
    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->sduration:I

    .line 1027
    :cond_0
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/16 v6, 0xb

    .line 974
    if-nez p1, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 977
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/DecorFlowGL;->setdefault:Z

    .line 978
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 979
    .local v2, drawablewidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 981
    .local v1, drawableheight:I
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    int-to-float v4, v2

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    .line 982
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    int-to-float v4, v1

    iget v5, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    .line 984
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    if-le v2, v3, :cond_1

    .line 986
    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    .line 987
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    aput v7, v3, v6

    .line 990
    :cond_1
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    if-le v1, v3, :cond_2

    .line 992
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    .line 993
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v3, v3, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    aput v7, v3, v6

    .line 996
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 997
    iget v3, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    iget v4, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    .line 999
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/htc/widget/DecorFlowGL;->dfbitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1000
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v8, v8, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1001
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1002
    const/4 v0, 0x0

    .line 1003
    goto :goto_0
.end method

.method public setEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 941
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/widget/DecorFlowGL;->drawrange:I

    .line 942
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    aput v0, v1, v0

    .line 945
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    aput-boolean v5, v1, v0

    .line 947
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    add-int/lit8 v3, v0, -0x5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 948
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->texture:Lcom/htc/widget/DecorFlowTexture;

    iget-object v1, v1, Lcom/htc/widget/DecorFlowTexture;->xmvoffset:[F

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    add-int/lit8 v3, v0, -0x5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 949
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

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 953
    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL;->loadthread:[Lcom/htc/widget/DecorFlowGL$LoadThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/widget/DecorFlowGL$LoadThread;->start()V

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 955
    :cond_1
    iput v4, p0, Lcom/htc/widget/DecorFlowGL;->animationstate:I

    .line 956
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    .line 957
    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 959
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    iget v2, p0, Lcom/htc/widget/DecorFlowGL;->imagesize:I

    if-ge v1, v2, :cond_2

    .line 960
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    .line 962
    :cond_2
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    add-int/lit8 v1, v1, -0x5

    add-int/2addr v1, v0

    if-le v1, v4, :cond_3

    .line 963
    iget v1, p0, Lcom/htc/widget/DecorFlowGL;->centeridx:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/htc/widget/DecorFlowGL;->requestLoad(I)V

    .line 957
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 965
    :cond_4
    return-void
.end method

.method public setLightMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1019
    iput-boolean p1, p0, Lcom/htc/widget/DecorFlowGL;->lightflag:Z

    .line 1020
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->requestRender()V

    .line 1021
    return-void
.end method

.method public setListener(Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    .line 1014
    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    .line 1015
    :cond_0
    return-void
.end method

.method public setXResolution(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 1049
    if-lez p1, :cond_0

    .line 1050
    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->xresolution:I

    .line 1051
    :cond_0
    return-void
.end method

.method public setXShift(F)V
    .locals 1
    .parameter "ixnoveshift"

    .prologue
    .line 1031
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1032
    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->xmoveshift:F

    .line 1033
    :cond_0
    return-void
.end method

.method public setYResolution(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 1055
    if-lez p1, :cond_0

    .line 1056
    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->yresolution:I

    .line 1057
    :cond_0
    return-void
.end method

.method public setZShiftBase(F)V
    .locals 1
    .parameter "izbaseshift"

    .prologue
    .line 1037
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1038
    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->zbaseshift:F

    .line 1039
    :cond_0
    return-void
.end method

.method public setZShiftRatio(F)V
    .locals 1
    .parameter "izmoveratio"

    .prologue
    .line 1043
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1044
    iput p1, p0, Lcom/htc/widget/DecorFlowGL;->zmoveratio:F

    .line 1045
    :cond_0
    return-void
.end method

.method public startRender()V
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlowGL;->renderflag:Z

    .line 1008
    invoke-virtual {p0}, Lcom/htc/widget/DecorFlowGL;->requestRender()V

    .line 1009
    return-void
.end method

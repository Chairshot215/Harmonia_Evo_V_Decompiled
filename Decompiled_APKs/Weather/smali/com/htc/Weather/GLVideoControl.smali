.class public Lcom/htc/Weather/GLVideoControl;
.super Ljava/lang/Object;
.source "GLVideoControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/GLVideoControl$VideoRenderer;
    }
.end annotation


# static fields
.field public static final FADEIN:I = 0x3

.field public static final FADEOUT:I = 0x4

.field public static final GL_SCALEDOWN:I = 0x2

.field public static final GL_SCALEDOWN_DURATION:I = 0x1f4

.field public static final GL_SCALEUP:I = 0x1

.field public static final GL_SCALEUP_DURATION:I = 0x1f4

.field public static final MODE_LANDSCAPE:I = 0x1

.field public static final MODE_PORTRAIT:I = 0x0

.field public static final PANEL_FULL:I = 0x0

.field public static final PANEL_TWO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLVideoControl"


# instance fields
.field private LANDSCAPE_FULL_BP:F

.field private LANDSCAPE_FULL_H:I

.field private LANDSCAPE_FULL_LP:F

.field private LANDSCAPE_FULL_RP:F

.field private LANDSCAPE_FULL_TP:F

.field private LANDSCAPE_FULL_W:I

.field private LANDSCAPE_FULL_X:I

.field private LANDSCAPE_FULL_Y:I

.field private LANDSCAPE_TWO_BP:F

.field private LANDSCAPE_TWO_H:I

.field private LANDSCAPE_TWO_LP:F

.field private LANDSCAPE_TWO_RP:F

.field private LANDSCAPE_TWO_TP:F

.field private LANDSCAPE_TWO_W:I

.field private LANDSCAPE_TWO_X:I

.field private LANDSCAPE_TWO_Y:I

.field private PORTRAIT_FULL_BP:F

.field private PORTRAIT_FULL_H:I

.field private PORTRAIT_FULL_LP:F

.field private PORTRAIT_FULL_RP:F

.field private PORTRAIT_FULL_TP:F

.field private PORTRAIT_FULL_W:I

.field private PORTRAIT_FULL_X:I

.field private PORTRAIT_FULL_Y:I

.field private PORTRAIT_TWO_BP:F

.field private PORTRAIT_TWO_H:I

.field private PORTRAIT_TWO_LP:F

.field private PORTRAIT_TWO_RP:F

.field private PORTRAIT_TWO_TP:F

.field private PORTRAIT_TWO_W:I

.field private PORTRAIT_TWO_X:I

.field private PORTRAIT_TWO_Y:I

.field private VP:[[F

.field public VideoIdx:I

.field public firstDrawFrame:Z

.field public glChangeVideo:Z

.field public glExit:Z

.field public glRain:Z

.field public glReturn:Z

.field public mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGLVideoPlayback:Lcom/htc/Weather/GLVideoPlayback;

.field public mInitVideoFilePath:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field public mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v2, p0, Lcom/htc/Weather/GLVideoControl;->VideoIdx:I

    .line 79
    invoke-static {v2}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    .line 81
    iput-object v1, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 82
    iput-boolean v2, p0, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/Weather/GLVideoControl;->glChangeVideo:Z

    .line 85
    iput-boolean v4, p0, Lcom/htc/Weather/GLVideoControl;->glRain:Z

    .line 86
    iput-boolean v4, p0, Lcom/htc/Weather/GLVideoControl;->firstDrawFrame:Z

    .line 404
    const/16 v0, 0x12

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->VP:[[F

    .line 90
    iput-object p1, p0, Lcom/htc/Weather/GLVideoControl;->mainHandler:Landroid/os/Handler;

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    .line 92
    invoke-virtual {p0}, Lcom/htc/Weather/GLVideoControl;->init()V

    .line 93
    return-void

    .line 404
    :array_0
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3et
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3dt
        0xa4t 0x70t 0x3dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3et
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xf1t 0xf4t 0xat 0x3et
        0xf7t 0x75t 0x10t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x8ft 0xc2t 0x75t 0x3dt
        0xa4t 0x70t 0x3dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xf1t 0xf4t 0xat 0x3et
        0xf7t 0x75t 0x10t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_8
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3et
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xf1t 0xf4t 0xat 0x3et
        0xf7t 0x75t 0x10t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
        0xf6t 0x28t 0x5ct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xf1t 0xf4t 0xat 0x3et
        0xf7t 0x75t 0x10t 0x3ft
    .end array-data

    :array_9
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x8ft 0xc2t 0x75t 0x3dt
        0xa4t 0x70t 0x3dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
    .end array-data

    :array_a
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3et
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x8ft 0xc2t 0x75t 0x3dt
        0xa4t 0x70t 0x3dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_c
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_f
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_10
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3et
        0x3dt 0xat 0x57t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x45t 0x47t 0x92t 0x3et
        0x5dt 0xdct 0x36t 0x3ft
    .end array-data

    :array_11
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3et
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x8ft 0xc2t 0x75t 0x3dt
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x24t 0x28t 0x3et 0x3et
        0xc4t 0x42t 0x1dt 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/Weather/GLVideoControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public FadeSwitchVideo(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 157
    .local v0, isfade:Z
    const-string v1, "GLVideoControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is FadeSwitchVideo success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v0
.end method

.method public InitializeNativeState()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public InitializeSource(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 277
    return-void
.end method

.method public TerminateNativeState()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public cleanGLVideoSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 192
    iput-object v1, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    if-eqz v0, :cond_1

    .line 195
    iput-object v1, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    .line 197
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 146
    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    .line 147
    return-void
.end method

.method public foreTerminateNativeState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    const-string v0, "GLVideoControl"

    const-string v1, "BRIANWeather : close - Start"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/htc/Weather/GLVideoControl;->TerminateNativeState()V

    .line 295
    iput-boolean v2, p0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 296
    iput-boolean v2, p0, Lcom/htc/Weather/GLVideoControl;->firstDrawFrame:Z

    .line 298
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    const-string v0, "GLVideoControl"

    const-string v1, "BRIANWeather : close - End"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public getGLVideoSurfaceView(Landroid/content/Context;)Landroid/opengl/GLSurfaceView;
    .locals 8
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 168
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    invoke-direct {v0, p0}, Lcom/htc/Weather/GLVideoControl$VideoRenderer;-><init>(Lcom/htc/Weather/GLVideoControl;)V

    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 173
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 174
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl;->mVideoRenderer:Lcom/htc/Weather/GLVideoControl$VideoRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 176
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/Weather/GLVideoControl;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0

    .line 181
    :catch_0
    move-exception v7

    .line 182
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v0, "GLVideoControl"

    const-string v1, "Error java.lang.RuntimeException on creat GL video playback !!"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_X:I

    .line 98
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_Y:I

    .line 99
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_W:I

    .line 100
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_H:I

    .line 102
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_X:I

    .line 103
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_Y:I

    .line 104
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_W:I

    .line 105
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_H:I

    .line 107
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_X:I

    .line 108
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_Y:I

    .line 109
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_W:I

    .line 110
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_H:I

    .line 112
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_X:I

    .line 113
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_Y:I

    .line 114
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_W:I

    .line 115
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_H:I

    .line 118
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, portrait_full:[Ljava/lang/String;
    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_LP:F

    .line 120
    aget-object v4, v2, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_RP:F

    .line 121
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_TP:F

    .line 122
    aget-object v4, v2, v9

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_BP:F

    .line 124
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, portrait_two:[Ljava/lang/String;
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_LP:F

    .line 126
    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_RP:F

    .line 127
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_TP:F

    .line 128
    aget-object v4, v3, v9

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_BP:F

    .line 130
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, landscape_full:[Ljava/lang/String;
    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_LP:F

    .line 132
    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_RP:F

    .line 133
    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_TP:F

    .line 134
    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_BP:F

    .line 136
    iget-object v4, p0, Lcom/htc/Weather/GLVideoControl;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, landscape_two:[Ljava/lang/String;
    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_LP:F

    .line 138
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_RP:F

    .line 139
    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_TP:F

    .line 140
    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_BP:F

    .line 142
    return-void
.end method

.method public renderFrame()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public setNativeDimensions(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 290
    return-void
.end method

.method public setNativeRunState(I)V
    .locals 0
    .parameter "s"

    .prologue
    .line 281
    return-void
.end method

.method public setParameter(ZZ)V
    .locals 13
    .parameter "isPortrait"
    .parameter "isFull"

    .prologue
    .line 200
    const-string v10, "GLVideoControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPortrait = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,isFullscreen = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eqz p1, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, mode:I
    const/4 v4, 0x0

    .line 211
    .local v4, panel:I
    iget v8, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_X:I

    .line 212
    .local v8, x:I
    iget v9, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_Y:I

    .line 213
    .local v9, y:I
    iget v7, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_W:I

    .line 214
    .local v7, w:I
    iget v1, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_H:I

    .line 215
    .local v1, h:I
    iget v2, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_LP:F

    .line 216
    .local v2, lp:F
    iget v5, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_RP:F

    .line 217
    .local v5, rp:F
    iget v6, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_TP:F

    .line 218
    .local v6, tp:F
    iget v0, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_FULL_BP:F

    .line 261
    .local v0, bp:F
    :goto_0
    return-void

    .line 220
    .end local v0           #bp:F
    .end local v1           #h:I
    .end local v2           #lp:F
    .end local v3           #mode:I
    .end local v4           #panel:I
    .end local v5           #rp:F
    .end local v6           #tp:F
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_0
    const/4 v3, 0x0

    .line 221
    .restart local v3       #mode:I
    const/4 v4, 0x1

    .line 222
    .restart local v4       #panel:I
    iget v8, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_X:I

    .line 223
    .restart local v8       #x:I
    iget v9, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_Y:I

    .line 224
    .restart local v9       #y:I
    iget v7, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_W:I

    .line 225
    .restart local v7       #w:I
    iget v1, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_H:I

    .line 226
    .restart local v1       #h:I
    iget v2, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_LP:F

    .line 227
    .restart local v2       #lp:F
    iget v5, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_RP:F

    .line 228
    .restart local v5       #rp:F
    iget v6, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_TP:F

    .line 229
    .restart local v6       #tp:F
    iget v0, p0, Lcom/htc/Weather/GLVideoControl;->PORTRAIT_TWO_BP:F

    .restart local v0       #bp:F
    goto :goto_0

    .line 233
    .end local v0           #bp:F
    .end local v1           #h:I
    .end local v2           #lp:F
    .end local v3           #mode:I
    .end local v4           #panel:I
    .end local v5           #rp:F
    .end local v6           #tp:F
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_1
    if-eqz p2, :cond_2

    .line 234
    const/4 v3, 0x1

    .line 235
    .restart local v3       #mode:I
    const/4 v4, 0x0

    .line 236
    .restart local v4       #panel:I
    iget v8, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_X:I

    .line 237
    .restart local v8       #x:I
    iget v9, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_Y:I

    .line 238
    .restart local v9       #y:I
    iget v7, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_W:I

    .line 239
    .restart local v7       #w:I
    iget v1, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_H:I

    .line 240
    .restart local v1       #h:I
    iget v2, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_LP:F

    .line 241
    .restart local v2       #lp:F
    iget v5, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_RP:F

    .line 242
    .restart local v5       #rp:F
    iget v6, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_TP:F

    .line 243
    .restart local v6       #tp:F
    iget v0, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_FULL_BP:F

    .restart local v0       #bp:F
    goto :goto_0

    .line 246
    .end local v0           #bp:F
    .end local v1           #h:I
    .end local v2           #lp:F
    .end local v3           #mode:I
    .end local v4           #panel:I
    .end local v5           #rp:F
    .end local v6           #tp:F
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_2
    const/4 v3, 0x1

    .line 247
    .restart local v3       #mode:I
    const/4 v4, 0x1

    .line 248
    .restart local v4       #panel:I
    iget v8, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_X:I

    .line 249
    .restart local v8       #x:I
    iget v9, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_Y:I

    .line 250
    .restart local v9       #y:I
    iget v7, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_W:I

    .line 251
    .restart local v7       #w:I
    iget v1, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_H:I

    .line 252
    .restart local v1       #h:I
    iget v2, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_LP:F

    .line 253
    .restart local v2       #lp:F
    iget v5, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_RP:F

    .line 254
    .restart local v5       #rp:F
    iget v6, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_TP:F

    .line 255
    .restart local v6       #tp:F
    iget v0, p0, Lcom/htc/Weather/GLVideoControl;->LANDSCAPE_TWO_BP:F

    .restart local v0       #bp:F
    goto :goto_0
.end method

.method public startAnimation(II)V
    .locals 0
    .parameter "s"
    .parameter "d"

    .prologue
    .line 265
    return-void
.end method

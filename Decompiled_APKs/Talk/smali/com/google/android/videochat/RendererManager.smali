.class public Lcom/google/android/videochat/RendererManager;
.super Ljava/lang/Object;
.source "RendererManager.java"


# static fields
.field static final IMAGE_STABILIZATION_RENDERER_LEVEL_KEY:Ljava/lang/String; = "is_level"

.field static final IMAGE_STABILIZATION_RENDERER_PULSE_RESET_KEY:Ljava/lang/String; = "is_reset"

.field static final RENDERER_FLIP_INPUT_KEY:Ljava/lang/String; = "sub_flipinput"

.field static final RENDERER_INPUT_CLIP_DIMENSIONS_KEY:Ljava/lang/String; = "sub_inclip"

.field static final RENDERER_INPUT_DIMENSIONS_KEY:Ljava/lang/String; = "sub_indims"

.field static final RENDERER_INPUT_TEXTURE_KEY:Ljava/lang/String; = "sub_intex"

.field static final RENDERER_OUTPUT_DIMENSIONS_KEY:Ljava/lang/String; = "sub_outdims"

.field static final RENDERER_OUTPUT_FBO_KEY:Ljava/lang/String; = "sub_outfbo"

.field static final RENDERER_OUTPUT_GL_FORMAT_KEY:Ljava/lang/String; = "sub_outformat"

.field static final RENDERER_OUTPUT_TEXTURE_KEY:Ljava/lang/String; = "sub_outtex"

.field static final RENDERER_RENDER_CALLS_KEY:Ljava/lang/String; = "sub_renderedframes"

.field static final RENDERER_TYPE_CAMERA:I = 0x1

.field static final RENDERER_TYPE_IMAGE_STABILIZATION:I = 0x2

.field static final RENDERER_TYPE_REMOTE:I = 0x3

.field static final RENDERER_TYPE_SELF:I = 0x0

.field static final SELF_RENDERER_CAMERA_ROTATION_KEY:Ljava/lang/String; = "c_rotation"

.field private static sRendererStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/videochat/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRendererStatsListLock:Ljava/lang/Object;


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/android/videochat/Libjingle;->load()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsListLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/google/android/videochat/RendererManager;->nativeInit()V

    .line 61
    sget-object v1, Lcom/google/android/videochat/RendererManager;->sRendererStatsListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "writer"

    .prologue
    .line 87
    sget-object v3, Lcom/google/android/videochat/RendererManager;->sRendererStatsListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_0
    sget-object v2, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 89
    sget-object v2, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/videochat/Renderer;

    .line 90
    .local v1, r:Lcom/google/android/videochat/Renderer;
    invoke-virtual {v1, p0}, Lcom/google/android/videochat/Renderer;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 93
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/google/android/videochat/Renderer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return-void
.end method

.method private final native nativeInit()V
.end method

.method private final native nativeRelease()V
.end method


# virtual methods
.method public createRemoteRenderer(Lcom/google/android/videochat/Renderer$RendererThreadCallback;)Lcom/google/android/videochat/RemoteRenderer;
    .locals 1
    .parameter "callback"

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/videochat/RemoteRenderer;

    invoke-direct {v0, p0, p1}, Lcom/google/android/videochat/RemoteRenderer;-><init>(Lcom/google/android/videochat/RendererManager;Lcom/google/android/videochat/Renderer$RendererThreadCallback;)V

    return-object v0
.end method

.method public createSelfRenderer(Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;Lcom/google/android/videochat/CameraSpecification;)Lcom/google/android/videochat/SelfRenderer;
    .locals 1
    .parameter "callback"
    .parameter "defaultCamera"

    .prologue
    .line 148
    new-instance v0, Lcom/google/android/videochat/SelfRenderer;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/videochat/SelfRenderer;-><init>(Lcom/google/android/videochat/RendererManager;Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;Lcom/google/android/videochat/CameraSpecification;)V

    return-object v0
.end method

.method final native getIntParam(ILjava/lang/String;)I
.end method

.method final native initializeGLContext(I)Z
.end method

.method final native instantiateRenderer(I)I
.end method

.method registerRendererForStats(Lcom/google/android/videochat/Renderer;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 102
    sget-object v1, Lcom/google/android/videochat/RendererManager;->sRendererStatsListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/videochat/RendererManager;->nativeRelease()V

    .line 77
    sget-object v1, Lcom/google/android/videochat/RendererManager;->sRendererStatsListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final native releaseRenderer(I)V
.end method

.method final native renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method final native setIntParam(ILjava/lang/String;I)V
.end method

.method unregisterRendererForStats(Lcom/google/android/videochat/Renderer;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 117
    sget-object v1, Lcom/google/android/videochat/RendererManager;->sRendererStatsListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/google/android/videochat/RendererManager;->sRendererStatsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

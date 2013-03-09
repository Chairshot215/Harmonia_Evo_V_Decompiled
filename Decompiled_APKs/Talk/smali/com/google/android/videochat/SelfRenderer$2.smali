.class Lcom/google/android/videochat/SelfRenderer$2;
.super Ljava/lang/Object;
.source "SelfRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/SelfRenderer;->initializeGLContext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/SelfRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/SelfRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer$2;->this$0:Lcom/google/android/videochat/SelfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$2;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$1100(Lcom/google/android/videochat/SelfRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$2;->this$0:Lcom/google/android/videochat/SelfRenderer;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z
    invoke-static {v0, v2}, Lcom/google/android/videochat/SelfRenderer;->access$1202(Lcom/google/android/videochat/SelfRenderer;Z)Z

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

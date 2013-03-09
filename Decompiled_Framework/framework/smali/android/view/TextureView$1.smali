.class Landroid/view/TextureView$1;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    #getter for: Landroid/view/TextureView;->mLock:[Ljava/lang/Object;
    invoke-static {v0}, Landroid/view/TextureView;->access$000(Landroid/view/TextureView;)[Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    const/4 v2, 0x1

    #setter for: Landroid/view/TextureView;->mUpdateLayer:Z
    invoke-static {v0, v2}, Landroid/view/TextureView;->access$102(Landroid/view/TextureView;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/TextureView;->postInvalidateDelayed(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

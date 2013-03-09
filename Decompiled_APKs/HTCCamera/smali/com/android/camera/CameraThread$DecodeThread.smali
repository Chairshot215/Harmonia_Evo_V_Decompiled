.class Lcom/android/camera/CameraThread$DecodeThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeThread"
.end annotation


# instance fields
.field data:[B

.field height:I

.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field width:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;[BII)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/CameraThread$DecodeThread;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread$DecodeThread;->data:[B

    iput-object p2, p0, Lcom/android/camera/CameraThread$DecodeThread;->data:[B

    iput p3, p0, Lcom/android/camera/CameraThread$DecodeThread;->width:I

    iput p4, p0, Lcom/android/camera/CameraThread$DecodeThread;->height:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v1, p0, Lcom/android/camera/CameraThread$DecodeThread;->width:I

    iget v2, p0, Lcom/android/camera/CameraThread$DecodeThread;->height:I

    mul-int/2addr v1, v2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread$DecodeThread;->data:[B

    iget-object v1, p0, Lcom/android/camera/CameraThread$DecodeThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v1, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread$DecodeThread;->this$0:Lcom/android/camera/CameraThread;

    iget v3, p0, Lcom/android/camera/CameraThread$DecodeThread;->width:I

    iget v4, p0, Lcom/android/camera/CameraThread$DecodeThread;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const-string v1, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOneShotBitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraThread$DecodeThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread$DecodeThread;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "CameraThread"

    const-string v3, "mOneShotBitmap != null - notifyAll()"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

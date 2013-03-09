.class Lcom/scalado/camera/autorama3d/Autorama3D$1;
.super Ljava/lang/Thread;
.source "Autorama3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/autorama3d/Autorama3D;->panoramaCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama3d/Autorama3D;


# direct methods
.method constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mLens:Lcom/scalado/caps/autorama/Lens;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$30(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Lens;

    move-result-object v8

    sget-object v9, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    iget-object v10, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v10}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$25(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v10

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;
    invoke-static {v7, v8, v9, v10}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$31(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    aget-object v7, v6, v12

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    aget-object v7, v6, v7

    if-nez v7, :cond_4

    :cond_0
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_1
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v7, "ScaladoCameraFramework"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Autorama generation failed with "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_3
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v4, Lcom/scalado/base/Image;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$17(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$34(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Image$Config;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v4}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-virtual {v7, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_2
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_5
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_6

    :try_start_2
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->encodePanorama([Lcom/scalado/caps/Session;)[B
    invoke-static {v7, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$35(Lcom/scalado/camera/autorama3d/Autorama3D;[Lcom/scalado/caps/Session;)[B

    move-result-object v0

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->reset()V
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$36(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v7, v11}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$37(Lcom/scalado/camera/autorama3d/Autorama3D;Ljava/lang/Thread;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$32(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v0, v7, [B

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :catch_2
    move-exception v1

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$33(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$13(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

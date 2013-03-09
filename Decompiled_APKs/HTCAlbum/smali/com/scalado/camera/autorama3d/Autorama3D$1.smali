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
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 464
    :try_start_0
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mLens:Lcom/scalado/caps/autorama/Lens;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Lens;

    move-result-object v8

    sget-object v9, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    iget-object v10, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v10}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1900(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;

    move-result-object v10

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;
    invoke-static {v7, v8, v9, v10}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2500(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 478
    .local v6, sessions:[Lcom/scalado/caps/Session;
    if-eqz v6, :cond_0

    aget-object v7, v6, v12

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    aget-object v7, v6, v7

    if-nez v7, :cond_4

    .line 479
    :cond_0
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 480
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 482
    :cond_1
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 483
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 524
    .end local v6           #sessions:[Lcom/scalado/caps/Session;
    :cond_2
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v2

    .line 466
    .local v2, e1:Ljava/lang/Exception;
    const-string v7, "ScaladoCameraFramework"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Autorama generation failed with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 469
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 471
    :cond_3
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 472
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto :goto_0

    .line 489
    .end local v2           #e1:Ljava/lang/Exception;
    .restart local v6       #sessions:[Lcom/scalado/caps/Session;
    :cond_4
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 490
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1300(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Image$Config;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 491
    .local v4, image:Lcom/scalado/base/Image;
    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v4}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 494
    .local v3, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-virtual {v7, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 495
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    .end local v5           #iterator:Lcom/scalado/base/Iterator;
    :goto_1
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 502
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 508
    .local v0, data:[B
    :goto_2
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 511
    .end local v0           #data:[B
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v4           #image:Lcom/scalado/base/Image;
    :cond_5
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 514
    :try_start_2
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->encodePanorama([Lcom/scalado/caps/Session;)[B
    invoke-static {v7, v6}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2600(Lcom/scalado/camera/autorama3d/Autorama3D;[Lcom/scalado/caps/Session;)[B

    move-result-object v0

    .line 515
    .restart local v0       #data:[B
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 522
    .end local v0           #data:[B
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #calls: Lcom/scalado/camera/autorama3d/Autorama3D;->reset()V
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2700(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    .line 523
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v7, v11}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2802(Lcom/scalado/camera/autorama3d/Autorama3D;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 496
    .restart local v3       #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v4       #image:Lcom/scalado/base/Image;
    :catch_1
    move-exception v1

    .line 497
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 498
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 505
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v0, v7, [B

    .line 506
    .restart local v0       #data:[B
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 516
    .end local v0           #data:[B
    .end local v3           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v4           #image:Lcom/scalado/base/Image;
    :catch_2
    move-exception v1

    .line 517
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v7}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/camera/autorama3d/Autorama3D$1;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v8}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 518
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

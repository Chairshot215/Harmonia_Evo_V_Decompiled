.class Lcom/scalado/camera/autorama/Autorama$2;
.super Ljava/lang/Thread;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$39(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Lens;

    move-result-object v12

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v13

    iget-object v14, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    #calls: Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    invoke-static {v11, v12, v13, v14}, Lcom/scalado/camera/autorama/Autorama;->access$40(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v7, Lcom/scalado/base/Image;

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$30(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v5, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    sget-object v11, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->PRESERVE_ASPECT_RATIO:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    invoke-direct {v5, v7, v11}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V

    const/4 v1, 0x0

    check-cast v1, [B

    :try_start_1
    invoke-virtual {v9, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v12

    invoke-interface {v11, v1, v12}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_0
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x5

    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v6}, Lcom/scalado/base/Buffer;-><init>(I)V

    new-instance v10, Lcom/scalado/stream/BufferStream;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    new-instance v5, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v5, v10, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/4 v1, 0x0

    check-cast v1, [B

    :try_start_2
    invoke-virtual {v9, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v11

    new-array v1, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v1

    invoke-virtual {v0, v1, v11, v12, v13}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v12

    invoke-interface {v11, v1, v12}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_1
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v12

    invoke-interface {v11, v9, v12}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V

    :cond_2
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->reset()V
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$43(Lcom/scalado/camera/autorama/Autorama;)V

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v12, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v11, v12}, Lcom/scalado/camera/autorama/Autorama;->access$44(Lcom/scalado/camera/autorama/Autorama;Ljava/lang/Thread;)V

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v4

    const-string v11, "ScaladoCameraFramework"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Autorama generation failed with "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_4
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_5
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    new-array v1, v11, [B

    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

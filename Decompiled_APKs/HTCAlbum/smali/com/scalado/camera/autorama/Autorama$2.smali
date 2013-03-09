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
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 704
    :try_start_0
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$1100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Lens;

    move-result-object v12

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;

    move-result-object v13

    iget-object v14, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    #calls: Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    invoke-static {v11, v12, v13, v14}, Lcom/scalado/camera/autorama/Autorama;->access$1200(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 720
    .local v9, session:Lcom/scalado/caps/Session;
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1300(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 721
    new-instance v7, Lcom/scalado/base/Image;

    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$1700(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 722
    .local v7, image:Lcom/scalado/base/Image;
    new-instance v5, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    sget-object v11, Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;->PRESERVE_ASPECT_RATIO:Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;

    invoke-direct {v5, v7, v11}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;Lcom/scalado/caps/codec/encoder/ImageEncoder$OutputOptions;)V

    .line 724
    .local v5, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    const/4 v1, 0x0

    .line 727
    .local v1, data:[B
    :try_start_1
    invoke-virtual {v9, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v8

    .line 728
    .local v8, iterator:Lcom/scalado/base/Iterator;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 730
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 731
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 741
    .end local v8           #iterator:Lcom/scalado/base/Iterator;
    :goto_0
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1300(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v12

    invoke-interface {v11, v1, v12}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 744
    .end local v1           #data:[B
    .end local v5           #encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .end local v7           #image:Lcom/scalado/base/Image;
    :cond_0
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1400(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 745
    invoke-virtual {v9}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 746
    .local v2, dims:Lcom/scalado/base/Size;
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x5

    .line 747
    .local v6, estimatedJpegSize:I
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v6}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 748
    .local v0, buffer:Lcom/scalado/base/Buffer;
    new-instance v10, Lcom/scalado/stream/BufferStream;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 749
    .local v10, stream:Lcom/scalado/stream/BufferStream;
    new-instance v5, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v5, v10, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 751
    .local v5, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/4 v1, 0x0

    .line 753
    .restart local v1       #data:[B
    :try_start_2
    invoke-virtual {v9, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v8

    .line 754
    .restart local v8       #iterator:Lcom/scalado/base/Iterator;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 756
    invoke-virtual {v0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v11

    new-array v1, v11, [B

    .line 757
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v1

    invoke-virtual {v0, v1, v11, v12, v13}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 762
    .end local v8           #iterator:Lcom/scalado/base/Iterator;
    :goto_1
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1400(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v12

    invoke-interface {v11, v1, v12}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 766
    .end local v0           #buffer:Lcom/scalado/base/Buffer;
    .end local v1           #data:[B
    .end local v2           #dims:Lcom/scalado/base/Size;
    .end local v5           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v6           #estimatedJpegSize:I
    .end local v10           #stream:Lcom/scalado/stream/BufferStream;
    :cond_1
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 767
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v12}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v12

    invoke-interface {v11, v9, v12}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V

    .line 770
    :cond_2
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->reset()V
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1800(Lcom/scalado/camera/autorama/Autorama;)V

    .line 771
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v12, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v11, v12}, Lcom/scalado/camera/autorama/Autorama;->access$1902(Lcom/scalado/camera/autorama/Autorama;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 772
    .end local v9           #session:Lcom/scalado/caps/Session;
    :cond_3
    :goto_2
    return-void

    .line 705
    :catch_0
    move-exception v4

    .line 706
    .local v4, e1:Ljava/lang/Exception;
    const-string v11, "ScaladoCameraFramework"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Autorama generation failed with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1300(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 709
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1300(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 711
    :cond_4
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1400(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 712
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1400(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 714
    :cond_5
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 715
    iget-object v11, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v11}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/scalado/camera/autorama/Autorama$2;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v13}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V

    goto :goto_2

    .line 734
    .end local v4           #e1:Ljava/lang/Exception;
    .restart local v1       #data:[B
    .local v5, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    .restart local v7       #image:Lcom/scalado/base/Image;
    .restart local v8       #iterator:Lcom/scalado/base/Iterator;
    .restart local v9       #session:Lcom/scalado/caps/Session;
    :cond_6
    :try_start_3
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    new-array v1, v11, [B

    .line 735
    invoke-virtual {v7}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 737
    .end local v8           #iterator:Lcom/scalado/base/Iterator;
    :catch_1
    move-exception v3

    .line 738
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 758
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #image:Lcom/scalado/base/Image;
    .restart local v0       #buffer:Lcom/scalado/base/Buffer;
    .restart local v2       #dims:Lcom/scalado/base/Size;
    .local v5, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v6       #estimatedJpegSize:I
    .restart local v10       #stream:Lcom/scalado/stream/BufferStream;
    :catch_2
    move-exception v3

    .line 759
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

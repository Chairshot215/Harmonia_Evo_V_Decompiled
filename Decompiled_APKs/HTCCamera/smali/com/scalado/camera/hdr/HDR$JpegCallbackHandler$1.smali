.class Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;
.super Ljava/lang/Thread;
.source "HDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;


# direct methods
.method constructor <init>(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v7

    new-instance v4, Lcom/scalado/base/Image;

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v10

    invoke-static {v10}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering HDR postview with Dims: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Gamma: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    iget v12, v12, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ExpsoureDiff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    iget v12, v12, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$28(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Lcom/scalado/caps/hdrimage/HDRImage;->generatePreview(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V

    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering postview took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    new-array v6, v10, [B

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$31(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$31(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Size;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    div-int/lit8 v3, v10, 0x5

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    new-instance v11, Lcom/scalado/base/Buffer;

    invoke-direct {v11, v3}, Lcom/scalado/base/Buffer;-><init>(I)V

    #setter for: Lcom/scalado/camera/hdr/HDR;->mDstBuffer:Lcom/scalado/base/Buffer;
    invoke-static {v10, v11}, Lcom/scalado/camera/hdr/HDR;->access$32(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/base/Buffer;)V

    new-instance v1, Lcom/scalado/stream/BufferStream;

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDstBuffer:Lcom/scalado/base/Buffer;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$33(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Buffer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering HDR jpeg with Gamma: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    iget v12, v12, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " expsoureDiff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    iget v12, v12, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$28(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/scalado/caps/hdrimage/HDRImage;->render(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/stream/Stream;)V

    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering jpeg took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDstBuffer:Lcom/scalado/base/Buffer;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$33(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v10

    new-array v5, v10, [B

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDstBuffer:Lcom/scalado/base/Buffer;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$33(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Buffer;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v5

    invoke-virtual {v10, v5, v11, v12, v13}, Lcom/scalado/base/Buffer;->get([BIII)V

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed rendering HDR postview: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed rendering HDR jpeg: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto :goto_1
.end method

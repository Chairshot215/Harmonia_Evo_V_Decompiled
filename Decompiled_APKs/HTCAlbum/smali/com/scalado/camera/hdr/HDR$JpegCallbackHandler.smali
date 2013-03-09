.class Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;
.super Ljava/lang/Object;
.source "HDR.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr/HDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 16
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v12

    new-instance v13, Lcom/scalado/base/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2000(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2000(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v13}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v14}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v15

    aget v14, v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1100(Lcom/scalado/camera/hdr/HDR;)F

    move-result v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13, v14}, Lcom/scalado/camera/hdr/HDR$HDRListener;->onIntermediateJpeg([BIF)V

    .line 451
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2108(Lcom/scalado/camera/hdr/HDR;)I

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v13}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_2

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    sget-object v13, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;
    invoke-static {v12, v13}, Lcom/scalado/camera/hdr/HDR;->access$1702(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$HDRStates;)Lcom/scalado/camera/hdr/HDR$HDRStates;

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v12

    invoke-interface {v12}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v7

    .line 460
    .local v7, parameters:Lcom/scalado/camera/Camera$Parameters;
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Lcom/scalado/camera/Camera$Parameters;->setExposureCompensation(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v12

    invoke-interface {v12, v7}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$1300(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 464
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$1300(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v12

    invoke-interface {v12}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 466
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$1400(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$1400(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v14}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 471
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$900(Lcom/scalado/camera/hdr/HDR;)I

    move-result v6

    .line 472
    .local v6, maxExposure:I
    const/4 v5, 0x0

    .line 473
    .local v5, indexOfMaxExposure:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_6

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v12

    aget v12, v12, v4

    if-le v12, v6, :cond_5

    .line 475
    move v5, v4

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v12

    aget v6, v12, v4

    .line 473
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 479
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/scalado/base/Buffer;

    .line 480
    .local v11, tmpBuffer:Lcom/scalado/base/Buffer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v12

    aget v10, v12, v5

    .line 483
    .local v10, tmp:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v13}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v12, v5

    .line 484
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v12

    const/4 v13, 0x0

    aput v10, v12, v13

    .line 487
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v12

    if-ge v4, v12, :cond_7

    .line 488
    new-instance v9, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/scalado/base/Buffer;

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 489
    .local v9, stream:Lcom/scalado/stream/Stream;
    invoke-static {v9}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v2

    .line 491
    .local v2, decoderIterator:Lcom/scalado/base/Iterator;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v2, v12}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    invoke-virtual {v2}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/Decoder;

    .line 497
    .local v1, decoder:Lcom/scalado/caps/Decoder;
    new-instance v8, Lcom/scalado/caps/Session;

    invoke-direct {v8, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 498
    .local v8, session:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2300(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/scalado/caps/hdrimage/HDRImage;->addLDRSession(Lcom/scalado/caps/Session;)V

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 492
    .end local v1           #decoder:Lcom/scalado/caps/Decoder;
    .end local v8           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v3

    .line 493
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 502
    .end local v2           #decoderIterator:Lcom/scalado/base/Iterator;
    .end local v3           #e1:Ljava/lang/Exception;
    .end local v9           #stream:Lcom/scalado/stream/Stream;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$1500(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$1600(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 504
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    new-instance v13, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;-><init>(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)V

    #setter for: Lcom/scalado/camera/hdr/HDR;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v12, v13}, Lcom/scalado/camera/hdr/HDR;->access$2402(Lcom/scalado/camera/hdr/HDR;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 549
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    #getter for: Lcom/scalado/camera/hdr/HDR;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2400(Lcom/scalado/camera/hdr/HDR;)Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

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

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v15

    new-instance v16, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2000(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2000(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static/range {v17 .. v17}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v18, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static/range {v18 .. v18}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v18

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v18, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F
    invoke-static/range {v18 .. v18}, Lcom/scalado/camera/hdr/HDR;->access$1100(Lcom/scalado/camera/hdr/HDR;)F

    move-result v18

    mul-float v17, v17, v18

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/scalado/camera/hdr/HDR$HDRListener;->onIntermediateJpeg([BIF)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2108(Lcom/scalado/camera/hdr/HDR;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    sget-object v16, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    #setter for: Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/hdr/HDR;->access$1702(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$HDRStates;)Lcom/scalado/camera/hdr/HDR$HDRStates;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Lcom/scalado/camera/Camera$Parameters;->setExposureCompensation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1300(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1300(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$ShutterCallback;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1400(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1400(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static/range {v17 .. v17}, Lcom/scalado/camera/hdr/HDR;->access$700(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$900(Lcom/scalado/camera/hdr/HDR;)I

    move-result v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v15

    array-length v15, v15

    if-ge v7, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v15

    aget v15, v15, v7

    if-le v15, v9, :cond_5

    move v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v15

    aget v9, v15, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/scalado/base/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v15

    aget v13, v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v16

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mExposures:[I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$400(Lcom/scalado/camera/hdr/HDR;)[I

    move-result-object v15

    const/16 v16, 0x0

    aput v13, v15, v16

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2100(Lcom/scalado/camera/hdr/HDR;)I

    move-result v15

    if-ge v7, v15, :cond_7

    new-instance v12, Lcom/scalado/stream/BufferStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2200(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/scalado/base/Buffer;

    const/4 v15, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-static {v12}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v5

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v5, v15}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/Decoder;

    new-instance v11, Lcom/scalado/caps/Session;

    invoke-direct {v11, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2300(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/scalado/caps/hdrimage/HDRImage;->addLDRSession(Lcom/scalado/caps/Session;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1500(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$1600(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v15

    if-eqz v15, :cond_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    new-instance v16, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;-><init>(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)V

    #setter for: Lcom/scalado/camera/hdr/HDR;->mWorkerThread:Ljava/lang/Thread;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/hdr/HDR;->access$2402(Lcom/scalado/camera/hdr/HDR;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/hdr/HDR;->mWorkerThread:Ljava/lang/Thread;
    invoke-static {v15}, Lcom/scalado/camera/hdr/HDR;->access$2400(Lcom/scalado/camera/hdr/HDR;)Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

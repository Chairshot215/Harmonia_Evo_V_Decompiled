.class Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegCallbackhandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 17

    const-string v14, "ScaladoCameraFramework"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got jpeg "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " out of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3600(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/scalado/base/Buffer;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-interface/range {p2 .. p2}, Lcom/scalado/camera/Camera;->getParameters()Lcom/scalado/camera/Camera$Parameters;

    move-result-object v14

    invoke-interface {v14}, Lcom/scalado/camera/Camera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v12

    new-instance v2, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v15

    invoke-direct {v2, v14, v4, v12, v15}, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Transform;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$700(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v15

    if-gt v14, v15, :cond_0

    new-instance v9, Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$1700(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v15

    invoke-direct {v9, v14, v15}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v8, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v8, v9}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance v13, Lcom/scalado/stream/BufferStream;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-static {v13}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v10, v14}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v10}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    new-instance v11, Lcom/scalado/caps/Session;

    invoke-direct {v11, v5}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    :try_start_1
    invoke-virtual {v11, v8}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v3, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v15

    invoke-direct {v3, v14, v9, v15}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$700(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v15

    invoke-interface {v14, v9, v15}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediatePostview(Lcom/scalado/base/Image;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$700(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v15

    invoke-interface {v14, v4, v15}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    const/4 v15, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v14, v15}, Lcom/scalado/camera/autorama/Autorama;->access$802(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$708(Lcom/scalado/camera/autorama/Autorama;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$2500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v14

    sget-object v15, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    if-eq v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    iget-object v14, v14, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3600(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v15, v0

    iget-object v15, v15, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$3600(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v15

    if-ge v14, v15, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3800(Lcom/scalado/camera/autorama/Autorama;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->stopTracking()V
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3900(Lcom/scalado/camera/autorama/Autorama;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$4000(Lcom/scalado/camera/autorama/Autorama;)V

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v14, "ScaladoCameraFramework"

    const-string v15, "Failed creating jpeg decoder for generating postview. Aborting panorama."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3700(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    :catch_1
    move-exception v14

    move-object v6, v14

    const-string v14, "ScaladoCameraFramework"

    const-string v15, "Failed rendering postview. Aborting panorama."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3700(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->startTracking()V
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$4100(Lcom/scalado/camera/autorama/Autorama;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v14}, Lcom/scalado/camera/autorama/Autorama;->access$3700(Lcom/scalado/camera/autorama/Autorama;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object v14, v0

    sget-object v15, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v14, v15}, Lcom/scalado/camera/autorama/Autorama;->access$2502(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)Lcom/scalado/camera/autorama/Autorama$State;

    goto :goto_0
.end method

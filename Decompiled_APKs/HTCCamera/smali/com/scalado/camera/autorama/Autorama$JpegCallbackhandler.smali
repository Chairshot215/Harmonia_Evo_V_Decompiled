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

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 20

    const-string v15, "ScaladoCameraFramework"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Got jpeg "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static/range {v17 .. v17}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " out of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/scalado/base/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/scalado/base/Buffer;-><init>([B)V

    invoke-interface/range {p2 .. p2}, Lcom/scalado/camera/Camera;->getParameters()Lcom/scalado/camera/Camera$Parameters;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/Camera$Parameters;->getPictureSize()Lcom/scalado/base/Size;

    move-result-object v13

    new-instance v1, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$31(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v15, v3, v13, v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Transform;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$32(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v15

    invoke-interface {v15}, Lcom/scalado/camera/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v15

    invoke-virtual {v15}, Lcom/scalado/base/Size;->getHeight()I

    move-result v15

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v15

    invoke-virtual {v15}, Lcom/scalado/base/Size;->getWidth()I

    move-result v15

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v15

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/scalado/base/Size;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v15

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/scalado/base/Size;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v16, Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static/range {v17 .. v17}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$20(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    new-instance v16, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v17, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static/range {v17 .. v17}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Size;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-object/from16 v18, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static/range {v18 .. v18}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v18

    rsub-int/lit8 v18, v18, 0x64

    mul-int v17, v17, v18

    div-int/lit8 v17, v17, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v18, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static/range {v18 .. v18}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-object/from16 v19, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I
    invoke-static/range {v19 .. v19}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v19

    rsub-int/lit8 v19, v19, 0x64

    mul-int v18, v18, v19

    div-int/lit8 v18, v18, 0x64

    invoke-direct/range {v16 .. v18}, Landroid/graphics/Point;-><init>(II)V

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    :cond_1
    new-instance v8, Lcom/scalado/base/Image;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$30(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v7, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v7, v8}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance v14, Lcom/scalado/stream/BufferStream;

    const/4 v15, 0x0

    invoke-direct {v14, v3, v15}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-static {v14}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v9

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v9, v15}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    new-instance v12, Lcom/scalado/caps/Session;

    invoke-direct {v12, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    :try_start_1
    invoke-virtual {v12, v7}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v9

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$31(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v8, v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$32(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-interface {v15, v8, v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediatePostview(Lcom/scalado/base/Image;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v16, v0

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static/range {v16 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-interface {v15, v3, v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/16 v16, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v15

    sget-object v16, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$34(Lcom/scalado/camera/autorama/Autorama;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$35(Lcom/scalado/camera/autorama/Autorama;)V

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v15, "ScaladoCameraFramework"

    const-string v16, "Failed creating jpeg decoder for generating postview. Aborting panorama."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v15}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$33(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v15, "ScaladoCameraFramework"

    const-string v16, "Failed rendering postview. Aborting panorama."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v15}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$33(Lcom/scalado/camera/autorama/Autorama;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$27(Lcom/scalado/camera/autorama/Autorama;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    sget-object v16, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$36(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->startTracking()V
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$37(Lcom/scalado/camera/autorama/Autorama;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
    invoke-static {v15}, Lcom/scalado/camera/autorama/Autorama;->access$33(Lcom/scalado/camera/autorama/Autorama;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    sget-object v16, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;
    invoke-static/range {v15 .. v16}, Lcom/scalado/camera/autorama/Autorama;->access$36(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)V

    goto :goto_0
.end method

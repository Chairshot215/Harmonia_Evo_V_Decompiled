.class public final Lcom/android/camera/ImageUtility;
.super Ljava/lang/Object;
.source "ImageUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageUtility$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRotateFilter(Lcom/scalado/caps/Session;I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "angle can only be 0, 90, 180 or 270"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    :goto_0
    :sswitch_1
    return-void

    :sswitch_2
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p0}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/base/Image;III)Landroid/graphics/Bitmap;
    .locals 12

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getConfig()Lcom/scalado/base/Image$Config;

    move-result-object v1

    if-nez p3, :cond_0

    sget-object v9, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne v1, v9, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    if-ne p1, v9, :cond_0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    if-eq p2, v9, :cond_1

    :cond_0
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v2, p0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v6, Lcom/scalado/base/Image;

    new-instance v9, Lcom/scalado/base/Size;

    invoke-direct {v9, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v10, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v6, v9, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v3, v6}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-static {v7, p3}, Lcom/android/camera/ImageUtility;->addRotateFilter(Lcom/scalado/caps/Session;I)V

    :try_start_0
    invoke-virtual {v7, v3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v6

    :cond_1
    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :catch_0
    move-exception v4

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-static {p0, v1, v2, p1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v5

    sparse-switch p3, :sswitch_data_0

    :goto_0
    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Lcom/scalado/base/Image;

    sget-object v6, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v3, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v1, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-static {p0, p3}, Lcom/android/camera/ImageUtility;->addRotateFilter(Lcom/scalado/caps/Session;I)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :sswitch_0
    new-instance v5, Lcom/scalado/base/Size;

    invoke-direct {v5, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    goto :goto_0

    :sswitch_1
    new-instance v5, Lcom/scalado/base/Size;

    invoke-direct {v5, p2, p1}, Lcom/scalado/base/Size;-><init>(II)V

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public static convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_0

    const/high16 v17, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v8, v17, v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v10, v17, v19

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v6

    move-wide/from16 v0, v17

    double-to-int v14, v0

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v6

    move-wide/from16 v0, v17

    double-to-int v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v17, v14

    div-int/lit8 v15, v17, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sub-int v17, v17, v13

    div-int/lit8 v16, v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v14, v13, v1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v18, Landroid/graphics/Rect;

    add-int v19, v15, v14

    add-int v20, v16, v13

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;III)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static convertToScaladoImage(Landroid/graphics/Bitmap;)Lcom/scalado/base/Image;
    .locals 7

    sget-object v4, Lcom/android/camera/ImageUtility$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "ImageUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported bitmap config : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupported bitmap config"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    sget-object v1, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    new-instance v4, Lcom/scalado/base/Image;

    new-instance v5, Lcom/scalado/base/Buffer;

    invoke-direct {v5, v0}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v6, Lcom/scalado/base/Size;

    invoke-direct {v6, v3, v2}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v4, v5, v6, v1}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    return-object v4

    :pswitch_1
    sget-object v1, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmapFromRawData(IILcom/scalado/base/Image$Config;[B)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/ImageUtility;->createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;
    .locals 3

    new-instance v0, Lcom/scalado/base/Image;

    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p3}, Lcom/scalado/base/Buffer;-><init>([B)V

    new-instance v2, Lcom/scalado/base/Size;

    invoke-direct {v2, p0, p1}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v0, v1, v2, p2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    return-object v0
.end method

.method public static encodeToJpeg(Lcom/scalado/base/Image;)[B
    .locals 13

    const/4 v12, 0x0

    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v1, p0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance v8, Lcom/scalado/caps/Session;

    invoke-direct {v8, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-virtual {p0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Lcom/scalado/base/Buffer;-><init>(I)V

    new-instance v9, Lcom/scalado/stream/BufferStream;

    invoke-direct {v9, v0, v12}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    invoke-direct {v2, v9, v4}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v10, 0x3f80

    invoke-virtual {v2, v10}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    :try_start_0
    invoke-virtual {v8, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->done()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lcom/scalado/stream/BufferStream;->getPosition()J

    move-result-wide v10

    long-to-int v7, v10

    new-array v6, v7, [B

    invoke-virtual {v0, v6, v12, v12, v7}, Lcom/scalado/base/Buffer;->get([BIII)V

    return-object v6

    :catch_0
    move-exception v3

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method public static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "degree can only be 0, 90, 180 or 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

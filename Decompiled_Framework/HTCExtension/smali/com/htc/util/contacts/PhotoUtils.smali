.class public Lcom/htc/util/contacts/PhotoUtils;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# static fields
.field public static BOTTOM_LEFT:I

.field public static BOTTOM_RIGHT:I

.field public static CENTER:I

.field public static final FULL_ICON_SIZE:I

.field private static final IS_HD:Z

.field public static final IS_HVGA:Z

.field private static final IS_QHD:Z

.field public static final IS_QVGA:Z

.field public static final IS_WVGA:Z

.field public static JPEG_QUALITY:I

.field public static JPEG_QUALITY_50:I

.field public static JPEG_QUALITY_90:I

.field private static TAG:Ljava/lang/String;

.field public static TOP_LEFT:I

.field public static TOP_RIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x5a

    const/16 v5, 0x20

    const/16 v3, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "PhotoUtils"

    sput-object v0, Lcom/htc/util/contacts/PhotoUtils;->TAG:Ljava/lang/String;

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x60

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xc

    if-ne v0, v4, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_QVGA:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x18

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x39

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x58

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x59

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x90

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x21

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x22

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-ne v0, v4, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_HVGA:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x19

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x40

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x79

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7a

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x30

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa8

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x93

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa9

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xaa

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x94

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7c

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1c

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xf

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9d

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8a

    if-ne v0, v4, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_WVGA:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x95

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x88

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x50

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x89

    if-ne v0, v4, :cond_7

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_QHD:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v0, v4, :cond_8

    :goto_4
    sput-boolean v2, Lcom/htc/util/contacts/PhotoUtils;->IS_HD:Z

    sget-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_QVGA:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x8c

    :goto_5
    sput v0, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sput v6, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    sput v6, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    const/16 v0, 0x32

    sput v0, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    const/16 v0, 0x1d

    sput v0, Lcom/htc/util/contacts/PhotoUtils;->CENTER:I

    const/16 v0, 0x1e

    sput v0, Lcom/htc/util/contacts/PhotoUtils;->BOTTOM_LEFT:I

    const/16 v0, 0x1f

    sput v0, Lcom/htc/util/contacts/PhotoUtils;->BOTTOM_RIGHT:I

    sput v5, Lcom/htc/util/contacts/PhotoUtils;->TOP_LEFT:I

    const/16 v0, 0x21

    sput v0, Lcom/htc/util/contacts/PhotoUtils;->TOP_RIGHT:I

    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    sget-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_HVGA:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xc8

    goto :goto_5

    :cond_a
    sget-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_WVGA:Z

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_5

    :cond_b
    sget-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_QHD:Z

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    sget-boolean v0, Lcom/htc/util/contacts/PhotoUtils;->IS_HD:Z

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_5

    :cond_d
    move v0, v3

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v2, v4, :cond_0

    if-ge v1, v3, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v3, v1

    invoke-direct {v7, v9, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 12

    const/4 v11, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/htc/util/contacts/PhotoUtils;->TAG:Ljava/lang/String;

    const-string v9, "drawOverlay bmSrc not mutable!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v4, v6, :cond_0

    if-gt v3, v5, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sget v8, Lcom/htc/util/contacts/PhotoUtils;->CENTER:I

    if-ne v8, p2, :cond_3

    sub-int v8, v6, v4

    div-int/lit8 v1, v8, 0x2

    sub-int v8, v5, v3

    div-int/lit8 v2, v8, 0x2

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v1, v4

    add-int v11, v2, v3

    invoke-direct {v9, v1, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    sget v8, Lcom/htc/util/contacts/PhotoUtils;->BOTTOM_LEFT:I

    if-ne v8, p2, :cond_4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v5, v3

    invoke-direct {v9, v11, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    sget v8, Lcom/htc/util/contacts/PhotoUtils;->BOTTOM_RIGHT:I

    if-ne v8, p2, :cond_5

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v6, v4

    sub-int v11, v5, v3

    invoke-direct {v9, v10, v11, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    sget v8, Lcom/htc/util/contacts/PhotoUtils;->TOP_LEFT:I

    if-ne v8, p2, :cond_6

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v11, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    sget v8, Lcom/htc/util/contacts/PhotoUtils;->TOP_RIGHT:I

    if-ne v8, p2, :cond_0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v6, v4

    invoke-direct {v9, v10, v11, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static getBitmapByteArray(Landroid/graphics/Bitmap;I)[B
    .locals 7

    const/4 v3, 0x0

    if-nez p0, :cond_0

    check-cast v3, [B

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/htc/util/contacts/PhotoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, [B

    goto :goto_0
.end method

.method public static getBitmapWithBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1, p3}, Lcom/htc/util/contacts/PhotoUtils;->drawOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method

.method public static getScaledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 18

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v14, v10

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v5, v14, v15

    int-to-float v14, v9

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v6, v14, v15

    cmpg-float v14, v5, v6

    if-gtz v14, :cond_2

    move v8, v10

    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v5

    float-to-int v7, v14

    sub-int v14, v9, v7

    div-int/lit8 v12, v14, 0x2

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v12, v7

    move/from16 v0, v16

    invoke-direct {v14, v15, v12, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v6

    float-to-int v8, v14

    move v7, v9

    sub-int v14, v10, v8

    div-int/lit8 v11, v14, 0x2

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v11, v8

    move/from16 v0, v16

    invoke-direct {v14, v11, v15, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->BOTTOM_LEFT:I

    invoke-static {v0, p3, v1}, Lcom/htc/util/contacts/PhotoUtils;->drawOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II[B)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p3, :cond_1

    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v2, 0x0

    array-length v3, p3

    invoke-static {p3, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

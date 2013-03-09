.class public Lcom/scalado/util/ScaladoUtil;
.super Ljava/lang/Object;
.source "ScaladoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/util/ScaladoUtil$RenderMode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScaladoUtil"

.field private static m_ScaladoUtil:Lcom/scalado/util/ScaladoUtil; = null

.field private static final sWidgetPadding:I = 0x1e


# instance fields
.field private m_bRelease:Z

.field private m_nReference:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "scaladoutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/scalado/util/ScaladoUtil;->m_bRelease:Z

    iput v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    invoke-direct {p0}, Lcom/scalado/util/ScaladoUtil;->nativeBegin()V

    iget v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    return-void
.end method

.method public static native GetImageSize(Ljava/lang/String;[I)I
.end method

.method public static LoadWidgetImage(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/scalado/util/ScaladoUtil;->NativeLoadWidgetImage(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static native NativeLoadWidgetImage(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
.end method

.method public static doScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 18

    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit8 p1, v12, -0x1e

    add-int/lit8 p2, v10, -0x1e

    const-string v14, "ScaladoUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "width "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", height "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "ScaladoUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "source width "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", source height "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v4, v14, v15

    int-to-float v14, v12

    int-to-float v15, v10

    div-float v11, v14, v15

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v14, v15, :cond_8

    const/high16 v14, 0x3f80

    cmpg-float v14, v4, v14

    if-gez v14, :cond_4

    const/high16 v14, 0x3f80

    cmpl-float v14, v11, v14

    if-lez v14, :cond_2

    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    int-to-float v15, v10

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v13, v14

    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    int-to-float v15, v10

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v2, v14

    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    int-to-float v15, v10

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v6, v14

    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    int-to-float v15, v10

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    if-gez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    if-le v9, v12, :cond_1

    move v9, v12

    :cond_1
    :goto_0
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v8, v9, v6

    sub-int v7, v2, v13

    const-string v14, "ScaladoUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "new width "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", new height "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v6, v13, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v14, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p0, 0x0

    :goto_1
    return-object v5

    :cond_2
    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    int-to-float v15, v12

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v6, v14

    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    int-to-float v15, v12

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    int-to-float v15, v12

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v13, v14

    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    int-to-float v15, v12

    div-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v2, v14

    if-gez v13, :cond_3

    const/4 v13, 0x0

    :cond_3
    if-le v2, v10, :cond_1

    move v2, v10

    goto/16 :goto_0

    :cond_4
    const/high16 v14, 0x3f80

    cmpl-float v14, v11, v14

    if-lez v14, :cond_6

    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    int-to-float v15, v10

    mul-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v6, v14

    div-int/lit8 v14, v12, 0x2

    int-to-float v14, v14

    int-to-float v15, v10

    mul-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    div-int/lit8 v14, v10, 0x2

    div-int/lit8 v15, v10, 0x2

    sub-int v13, v14, v15

    div-int/lit8 v14, v10, 0x2

    div-int/lit8 v15, v10, 0x2

    add-int v2, v14, v15

    if-gez v6, :cond_5

    const/4 v6, 0x0

    :cond_5
    if-le v9, v12, :cond_1

    move v9, v12

    goto/16 :goto_0

    :cond_6
    div-int/lit8 v14, v12, 0x2

    div-int/lit8 v15, v12, 0x2

    sub-int v6, v14, v15

    div-int/lit8 v14, v12, 0x2

    div-int/lit8 v15, v12, 0x2

    add-int v9, v14, v15

    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    int-to-float v15, v12

    mul-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    float-to-int v13, v14

    div-int/lit8 v14, v10, 0x2

    int-to-float v14, v14

    int-to-float v15, v12

    mul-float/2addr v15, v4

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v2, v14

    if-gez v13, :cond_7

    const/4 v13, 0x0

    :cond_7
    if-le v2, v10, :cond_1

    move v2, v10

    goto/16 :goto_0

    :cond_8
    div-int/lit8 v14, v10, 0x2

    div-int/lit8 v15, p2, 0x2

    sub-int v13, v14, v15

    div-int/lit8 v14, v10, 0x2

    div-int/lit8 v15, p2, 0x2

    add-int v2, v14, v15

    div-int/lit8 v14, v12, 0x2

    div-int/lit8 v15, p1, 0x2

    sub-int v6, v14, v15

    div-int/lit8 v14, v12, 0x2

    div-int/lit8 v15, p1, 0x2

    add-int v9, v14, v15

    const-string v14, "ScaladoUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "l "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", r "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", t "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", b "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private native nativeBegin()V
.end method

.method private native nativeRelease()V
.end method

.method public static sInstance()Lcom/scalado/util/ScaladoUtil;
    .locals 2

    sget-object v0, Lcom/scalado/util/ScaladoUtil;->m_ScaladoUtil:Lcom/scalado/util/ScaladoUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/scalado/util/ScaladoUtil;

    invoke-direct {v0}, Lcom/scalado/util/ScaladoUtil;-><init>()V

    sput-object v0, Lcom/scalado/util/ScaladoUtil;->m_ScaladoUtil:Lcom/scalado/util/ScaladoUtil;

    :goto_0
    sget-object v0, Lcom/scalado/util/ScaladoUtil;->m_ScaladoUtil:Lcom/scalado/util/ScaladoUtil;

    return-object v0

    :cond_0
    sget-object v0, Lcom/scalado/util/ScaladoUtil;->m_ScaladoUtil:Lcom/scalado/util/ScaladoUtil;

    iget v1, v0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    goto :goto_0
.end method


# virtual methods
.method public native CreateScreen(Ljava/lang/String;III)V
.end method

.method public Release()V
    .locals 2

    iget v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    iget v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    if-nez v0, :cond_2

    const-string v0, "ScaladoUtil"

    const-string v1, "Free "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/scalado/util/ScaladoUtil;->m_bRelease:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/util/ScaladoUtil;->nativeRelease()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/util/ScaladoUtil;->m_bRelease:Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/scalado/util/ScaladoUtil;->m_ScaladoUtil:Lcom/scalado/util/ScaladoUtil;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/scalado/util/ScaladoUtil;->m_nReference:I

    if-gez v0, :cond_1

    const-string v0, "ScaladoUtil"

    const-string v1, "Over Release"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "ScaladoUtil"

    const-string v1, "Finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/scalado/util/ScaladoUtil;->m_bRelease:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/util/ScaladoUtil;->nativeRelease()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/util/ScaladoUtil;->m_bRelease:Z

    :cond_0
    return-void
.end method

.method public synchronized native declared-synchronized loadImage(Ljava/lang/String;Landroid/graphics/Bitmap;IIIZ)I
.end method

.method public synchronized native declared-synchronized loadImage(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
.end method

.method public synchronized native declared-synchronized loadImageFromBuffer(Ljava/lang/String;[BILandroid/graphics/Bitmap;IIII[I)I
.end method

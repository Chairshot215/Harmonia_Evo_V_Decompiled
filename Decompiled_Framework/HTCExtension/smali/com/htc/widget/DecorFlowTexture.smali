.class public Lcom/htc/widget/DecorFlowTexture;
.super Ljava/lang/Object;
.source "DecorFlowTexture.java"


# instance fields
.field public mappingidx:[I

.field public texdirtyflg:[Z

.field public textureidx:[I

.field public xmvoffset:[F

.field public xposition:[F

.field public xtexratio:[F

.field public ytexratio:[F

.field public zposition:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->xmvoffset:[F

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    return-void
.end method


# virtual methods
.method public isPowerTwo(I)Z
    .locals 1

    neg-int v0, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Landroid/graphics/drawable/Drawable;[FI)Landroid/graphics/Bitmap;
    .locals 16

    const/16 v7, 0x40

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    if-nez p1, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/16 v13, 0x41

    move/from16 v0, p3

    if-ge v0, v13, :cond_2

    const/16 p3, 0x40

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowTexture;->isPowerTwo(I)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_1
    if-ge v9, v8, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/DecorFlowTexture;->nextPowerTwo(I)I

    move-result v11

    :goto_2
    add-int/lit8 v13, p3, 0x1

    if-ge v11, v13, :cond_7

    :try_start_0
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v13, 0x0

    int-to-float v14, v9

    int-to-float v15, v11

    div-float/2addr v14, v15

    aput v14, p2, v13

    const/4 v13, 0x1

    int-to-float v14, v8

    int-to-float v15, v11

    div-float/2addr v14, v15

    aput v14, p2, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_3
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_4
    move-object v13, v2

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowTexture;->nextPowerTwo(I)I

    move-result p3

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/DecorFlowTexture;->nextPowerTwo(I)I

    move-result v11

    goto :goto_2

    :cond_7
    :try_start_2
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-ge v9, v8, :cond_b

    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v8

    div-float v12, v13, v14

    :goto_4
    int-to-float v13, v8

    mul-float/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v13, v9

    mul-float/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v13, 0x1

    invoke-static {v4, v9, v8, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_4
    invoke-virtual {v5, v3, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v13, 0x0

    int-to-float v14, v9

    move/from16 v0, p3

    int-to-float v15, v0

    div-float/2addr v14, v15

    aput v14, p2, v13

    const/4 v13, 0x1

    int-to-float v14, v8

    move/from16 v0, p3

    int-to-float v15, v0

    div-float/2addr v14, v15

    aput v14, p2, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_a
    const-string v13, "DecorFlowGL"

    const-string v14, "loadBitmap"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v9

    div-float v12, v13, v14

    goto :goto_4

    :catch_1
    move-exception v10

    move-object v5, v6

    goto :goto_5
.end method

.method public nextPowerTwo(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x47012f00

    const v2, 0x46180400

    const/16 v1, 0xde1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v0, v0, p3

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-static {v1, v4, p2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecorFlowGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

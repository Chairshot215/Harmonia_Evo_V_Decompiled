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
    .parameter "buflength"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->mappingidx:[I

    .line 28
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    .line 30
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->zposition:[F

    .line 31
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->xposition:[F

    .line 32
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->xmvoffset:[F

    .line 33
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->xtexratio:[F

    .line 34
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->ytexratio:[F

    .line 36
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->texdirtyflg:[Z

    .line 37
    return-void
.end method


# virtual methods
.method public isPowerTwo(I)Z
    .locals 1
    .parameter "integer"

    .prologue
    .line 136
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
    .parameter "drawable"
    .parameter "rescale"
    .parameter "maxresolution"

    .prologue
    .line 57
    const/16 v7, 0x40

    .line 68
    .local v7, defresolution:I
    const/4 v5, 0x0

    .line 69
    .local v5, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    .line 70
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 71
    .local v4, bitmapt:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 73
    .local v3, bitmaps:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    const/4 v13, 0x0

    .line 131
    :goto_0
    return-object v13

    .line 74
    :cond_0
    if-nez p1, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 77
    .local v9, drawablewidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 79
    .local v8, drawableheight:I
    const/16 v13, 0x41

    move/from16 v0, p3

    if-ge v0, v13, :cond_2

    const/16 p3, 0x40

    .line 80
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowTexture;->isPowerTwo(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 81
    :goto_1
    if-ge v9, v8, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/DecorFlowTexture;->nextPowerTwo(I)I

    move-result v11

    .line 85
    .local v11, resolution:I
    :goto_2
    add-int/lit8 v13, p3, 0x1

    if-ge v11, v13, :cond_7

    .line 87
    :try_start_0
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 88
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .local v6, canvas:Landroid/graphics/Canvas;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    const/4 v13, 0x0

    int-to-float v14, v9

    int-to-float v15, v11

    div-float/2addr v14, v15

    aput v14, p2, v13

    .line 93
    const/4 v13, 0x1

    int-to-float v14, v8

    int-to-float v15, v11

    div-float/2addr v14, v15

    aput v14, p2, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 127
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :goto_3
    const/4 v5, 0x0

    .line 128
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    .line 129
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_4
    move-object v13, v2

    .line 131
    goto :goto_0

    .line 80
    .end local v11           #resolution:I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/widget/DecorFlowTexture;->nextPowerTwo(I)I

    move-result p3

    goto :goto_1

    .line 81
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/DecorFlowTexture;->nextPowerTwo(I)I

    move-result v11

    goto :goto_2

    .line 99
    .restart local v11       #resolution:I
    :cond_7
    :try_start_2
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 100
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    if-ge v9, v8, :cond_b

    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v8

    div-float v12, v13, v14

    .line 105
    .local v12, scaleratio:F
    :goto_4
    int-to-float v13, v8

    mul-float/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 106
    int-to-float v13, v9

    mul-float/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 108
    const/4 v13, 0x1

    invoke-static {v4, v9, v8, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 109
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 112
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_4
    invoke-virtual {v5, v3, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    const/4 v13, 0x0

    int-to-float v14, v9

    move/from16 v0, p3

    int-to-float v15, v0

    div-float/2addr v14, v15

    aput v14, p2, v13

    .line 115
    const/4 v13, 0x1

    int-to-float v14, v8

    move/from16 v0, p3

    int-to-float v15, v0

    div-float/2addr v14, v15

    aput v14, p2, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 118
    .end local v12           #scaleratio:F
    :catch_0
    move-exception v10

    .line 120
    .local v10, exception:Ljava/lang/Exception;
    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    .line 121
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    .line 122
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    .line 124
    :cond_a
    const-string v13, "DecorFlowGL"

    const-string v14, "loadBitmap"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 104
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v10           #exception:Ljava/lang/Exception;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    :cond_b
    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v9

    div-float v12, v13, v14

    goto :goto_4

    .line 118
    :catch_1
    move-exception v10

    move-object v5, v6

    .end local v6           #canvas:Landroid/graphics/Canvas;
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto :goto_5
.end method

.method public nextPowerTwo(I)I
    .locals 1
    .parameter "integer"

    .prologue
    .line 141
    add-int/lit8 p1, p1, -0x1

    .line 142
    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 143
    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 144
    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 145
    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 146
    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 147
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public uploadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "glhandle"
    .parameter "bitmap"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    const v3, 0x47012f00

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 41
    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/widget/DecorFlowTexture;->textureidx:[I

    aget v0, v0, p3

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 44
    const/16 v0, 0x2801

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 45
    const/16 v0, 0x2800

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 46
    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 47
    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 48
    invoke-static {v1, v4, p2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 50
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
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

    .line 53
    :cond_0
    return-void
.end method

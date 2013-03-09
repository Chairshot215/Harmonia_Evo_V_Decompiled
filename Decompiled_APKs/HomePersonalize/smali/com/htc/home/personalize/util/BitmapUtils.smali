.class public Lcom/htc/home/personalize/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkinPicker.BitmapUtils"

.field private static mOptions:Landroid/graphics/BitmapFactory$Options; = null

.field private static matrix:Landroid/graphics/Matrix; = null

.field private static final nReflectionRatio:I = 0x4

.field private static paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/util/BitmapUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkReleaseBitmap(Ljava/util/ArrayList;II)V
    .locals 5
    .parameter
    .parameter "position"
    .parameter "keepSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    .line 79
    sub-int v2, p1, p2

    .line 80
    .local v2, pos:I
    if-ltz v2, :cond_1

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 83
    .local v0, data:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    invoke-virtual {p0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0           #data:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    :cond_1
    add-int v2, p1, p2

    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 92
    move v1, v2

    .restart local v1       #i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 93
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 94
    .restart local v0       #data:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    invoke-virtual {p0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    .end local v0           #data:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method public static createMirrorImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "context"
    .parameter "orgImage"

    .prologue
    .line 106
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 107
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 110
    .local v4, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 112
    .local v15, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 113
    .local v17, refHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 116
    .local v18, tarHeight:I
    const/16 v16, 0x0

    .line 119
    .local v16, mirrorImage:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    int-to-float v1, v15

    const/high16 v3, 0x3f80

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    mul-float/2addr v1, v3

    float-to-int v3, v1

    int-to-float v1, v15

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v1, v6

    move/from16 v0, v18

    int-to-float v6, v0

    div-float/2addr v1, v6

    float-to-int v5, v1

    :try_start_0
    sget-object v6, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v16

    .line 132
    new-instance v13, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v13, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v9, v1

    const v10, 0x70ffffff

    const v11, 0xffffff

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 137
    .local v5, shader:Landroid/graphics/LinearGradient;
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 138
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 142
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v10, v1

    sget-object v11, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    move-object v6, v13

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, v16

    .line 144
    .end local v5           #shader:Landroid/graphics/LinearGradient;
    .end local v13           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v14

    .line 122
    .local v14, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 123
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v14

    .line 125
    .local v14, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 126
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    .end local v14           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v14

    .line 128
    .local v14, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createMirrorImage(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "orgImage"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 150
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 151
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 152
    const/4 v10, 0x0

    .line 155
    .local v10, mirrorImage:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Lcom/htc/home/personalize/util/BitmapUtils;->matrix:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 169
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v8, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x70ffffff

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 174
    .local v0, shader:Landroid/graphics/LinearGradient;
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 175
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    sget-object v1, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 179
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lcom/htc/home/personalize/util/BitmapUtils;->paint:Landroid/graphics/Paint;

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v1, v10

    .line 181
    .end local v0           #shader:Landroid/graphics/LinearGradient;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v9

    .line 158
    .local v9, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 159
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v9

    .line 161
    .local v9, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 162
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    .end local v9           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v9

    .line 164
    .local v9, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized createReflectedImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/ArrayList;I)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "context"
    .parameter "bmpOriginal"
    .parameter
    .parameter "nIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, arrayTargetImage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-class v18, Lcom/htc/home/personalize/util/BitmapUtils;

    monitor-enter v18

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 187
    :cond_0
    const/4 v9, 0x0

    .line 236
    :goto_0
    monitor-exit v18

    return-object v9

    .line 189
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 190
    .local v15, nPreviewWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 191
    .local v14, nPreviewHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 193
    .local v13, nImageHeight:I
    sget-object v3, Lcom/htc/home/personalize/util/BitmapUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v3, :cond_2

    .line 195
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v3, Lcom/htc/home/personalize/util/BitmapUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 196
    sget-object v3, Lcom/htc/home/personalize/util/BitmapUtils;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 199
    :cond_2
    invoke-virtual/range {p2 .. p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 201
    .local v9, bmpTarget:Landroid/graphics/Bitmap;
    if-nez v9, :cond_3

    .line 203
    const-string v3, "SkinPicker.BitmapUtils"

    const-string v4, "can not load resource"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v9, 0x0

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 208
    .local v17, nTargetWidth:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 210
    .local v16, nTargetHeight:I
    move/from16 v0, v17

    int-to-float v3, v0

    int-to-float v4, v15

    div-float v11, v3, v4

    .line 211
    .local v11, fScaleX:F
    int-to-float v3, v13

    int-to-float v4, v14

    div-float v12, v3, v4

    .line 213
    .local v12, fScaleY:F
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 215
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    .local v10, canvasReflect:Landroid/graphics/Canvas;
    neg-float v3, v12

    invoke-virtual {v10, v11, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 218
    const/4 v3, 0x0

    neg-int v4, v14

    int-to-float v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 219
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    const v6, 0x70ffffff

    const v7, 0xffffff

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 224
    .local v1, mLG:Landroid/graphics/LinearGradient;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    .local v2, canvasLG:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 226
    .local v7, paintReflection:Landroid/graphics/Paint;
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v17

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    const/4 v10, 0x0

    .line 233
    const/4 v2, 0x0

    .line 234
    const/4 v1, 0x0

    .line 236
    goto/16 :goto_0

    .line 186
    .end local v1           #mLG:Landroid/graphics/LinearGradient;
    .end local v2           #canvasLG:Landroid/graphics/Canvas;
    .end local v7           #paintReflection:Landroid/graphics/Paint;
    .end local v9           #bmpTarget:Landroid/graphics/Bitmap;
    .end local v10           #canvasReflect:Landroid/graphics/Canvas;
    .end local v11           #fScaleX:F
    .end local v12           #fScaleY:F
    .end local v13           #nImageHeight:I
    .end local v14           #nPreviewHeight:I
    .end local v15           #nPreviewWidth:I
    .end local v16           #nTargetHeight:I
    .end local v17           #nTargetWidth:I
    :catchall_0
    move-exception v3

    monitor-exit v18

    throw v3
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pathName"

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 44
    :goto_1
    return-object v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 39
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "pathName"
    .parameter "opts"

    .prologue
    const/4 v3, 0x0

    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 63
    :goto_1
    return-object v3

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 56
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 59
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 60
    .local v2, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public static getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 70
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    .line 71
    return-object v0
.end method

.method public static declared-synchronized release(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-class v3, Lcom/htc/home/personalize/util/BitmapUtils;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 250
    :goto_0
    monitor-exit v3

    return-void

    .line 243
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 244
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 240
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 247
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 248
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

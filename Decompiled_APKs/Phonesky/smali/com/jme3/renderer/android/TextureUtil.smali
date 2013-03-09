.class public Lcom/jme3/renderer/android/TextureUtil;
.super Ljava/lang/Object;
.source "TextureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/android/TextureUtil$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static buildMipmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x1

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, level:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 56
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 58
    .local v3, width:I
    :goto_0
    if-ge v1, v6, :cond_0

    if-lt v3, v6, :cond_1

    .line 60
    :cond_0
    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v4, v2, p0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 62
    if-eq v1, v6, :cond_1

    if-ne v3, v6, :cond_2

    .line 76
    :cond_1
    return-void

    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    div-int/lit8 v1, v1, 0x2

    .line 70
    div-int/lit8 v3, v3, 0x2

    .line 71
    invoke-static {p0, v3, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, bitmap2:Landroid/graphics/Bitmap;
    move-object p0, v0

    .line 75
    goto :goto_0
.end method

.method public static uploadTexture(Lcom/jme3/texture/Image;IIIZZZ)V
    .locals 29
    .parameter "img"
    .parameter "target"
    .parameter "index"
    .parameter "border"
    .parameter "tdc"
    .parameter "generateMips"
    .parameter "powerOf2"

    .prologue
    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getEfficentData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/jme3/asset/AndroidImageInfo;

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getEfficentData()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/jme3/asset/AndroidImageInfo;

    .line 125
    .local v24, imageInfo:Lcom/jme3/asset/AndroidImageInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/jme3/asset/AndroidImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v3, v1, v2}, Lcom/jme3/renderer/android/TextureUtil;->uploadTextureBitmap(ILandroid/graphics/Bitmap;ZZ)V

    .line 295
    .end local v24           #imageInfo:Lcom/jme3/asset/AndroidImageInfo;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v23

    .line 134
    .local v23, fmt:Lcom/jme3/texture/Image$Format;
    if-gez p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 135
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 140
    .local v10, data:Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v6

    .line 141
    .local v6, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v7

    .line 142
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v22

    .line 144
    .local v22, depth:I
    const/16 v20, 0x0

    .line 145
    .local v20, compress:Z
    const/16 v25, -0x1

    .line 146
    .local v25, internalFormat:I
    const/4 v5, -0x1

    .line 147
    .local v5, format:I
    const/16 v21, -0x1

    .line 149
    .local v21, dataType:I
    sget-object v3, Lcom/jme3/renderer/android/TextureUtil$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    invoke-virtual/range {v23 .. v23}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 227
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized format: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v5           #format:I
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v10           #data:Ljava/nio/ByteBuffer;
    .end local v20           #compress:Z
    .end local v21           #dataType:I
    .end local v22           #depth:I
    .end local v25           #internalFormat:I
    :cond_3
    const/4 v10, 0x0

    .restart local v10       #data:Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 152
    .restart local v5       #format:I
    .restart local v6       #width:I
    .restart local v7       #height:I
    .restart local v20       #compress:Z
    .restart local v21       #dataType:I
    .restart local v22       #depth:I
    .restart local v25       #internalFormat:I
    :pswitch_0
    const/16 v5, 0x1906

    .line 153
    const/16 v21, 0x1401

    .line 230
    :goto_2
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_4

    .line 232
    move/from16 v25, v5

    .line 235
    :cond_4
    if-eqz v10, :cond_5

    .line 236
    const/16 v3, 0xcf5

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 238
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v27

    .line 239
    .local v27, mipSizes:[I
    const/16 v28, 0x0

    .line 240
    .local v28, pos:I
    if-nez v27, :cond_6

    .line 241
    if-eqz v10, :cond_7

    .line 242
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v27, v0

    .end local v27           #mipSizes:[I
    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    aput v4, v27, v3

    .line 249
    .restart local v27       #mipSizes:[I
    :cond_6
    :goto_3
    if-eqz v20, :cond_8

    .line 250
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 251
    const/16 v3, 0xde1

    move-object/from16 v0, v27

    array-length v4, v0

    rsub-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-static/range {v3 .. v10}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto/16 :goto_0

    .line 156
    .end local v27           #mipSizes:[I
    .end local v28           #pos:I
    :pswitch_1
    const/16 v5, 0x1909

    .line 157
    const/16 v21, 0x1401

    .line 158
    goto :goto_2

    .line 160
    :pswitch_2
    const/16 v5, 0x190a

    .line 161
    const/16 v21, 0x1401

    .line 162
    goto :goto_2

    .line 164
    :pswitch_3
    const/16 v5, 0x190a

    .line 165
    const/16 v21, 0x1401

    .line 166
    goto :goto_2

    .line 168
    :pswitch_4
    const/16 v5, 0x1909

    .line 169
    const/16 v21, 0x1401

    .line 170
    goto :goto_2

    .line 172
    :pswitch_5
    const/16 v5, 0x1907

    .line 173
    const v25, 0x8d62

    .line 174
    const v21, 0x8363

    .line 175
    goto :goto_2

    .line 177
    :pswitch_6
    const/16 v5, 0x1908

    .line 178
    const v21, 0x8033

    .line 179
    goto :goto_2

    .line 181
    :pswitch_7
    const/16 v5, 0x1907

    .line 182
    const/16 v21, 0x1401

    .line 183
    goto :goto_2

    .line 185
    :pswitch_8
    const/16 v5, 0x1907

    .line 186
    const/16 v21, 0x1401

    .line 187
    goto :goto_2

    .line 189
    :pswitch_9
    const/16 v5, 0x1908

    .line 190
    const v25, 0x8057

    .line 191
    const v21, 0x8034

    .line 192
    goto :goto_2

    .line 194
    :pswitch_a
    const/16 v5, 0x1907

    .line 195
    const/16 v21, 0x1401

    .line 196
    goto :goto_2

    .line 198
    :pswitch_b
    const/16 v5, 0x1907

    .line 199
    const/16 v21, 0x1401

    .line 200
    goto :goto_2

    .line 202
    :pswitch_c
    const/16 v5, 0x1908

    .line 203
    const v25, 0x8056

    .line 204
    const/16 v21, 0x1401

    .line 205
    goto/16 :goto_2

    .line 207
    :pswitch_d
    const/16 v5, 0x1908

    .line 208
    const/16 v21, 0x1401

    .line 209
    goto/16 :goto_2

    .line 211
    :pswitch_e
    const v5, 0x86a3

    .line 212
    const/16 v21, 0x1401

    .line 214
    :pswitch_f
    const/16 v5, 0x1902

    .line 215
    const/16 v21, 0x1401

    .line 216
    goto/16 :goto_2

    .line 218
    :pswitch_10
    const/16 v5, 0x1902

    .line 219
    const v25, 0x81a5

    .line 220
    const/16 v21, 0x1401

    .line 221
    goto/16 :goto_2

    .line 225
    :pswitch_11
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported depth format: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    .restart local v27       #mipSizes:[I
    .restart local v28       #pos:I
    :cond_7
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v27, v0

    .end local v27           #mipSizes:[I
    const/4 v3, 0x0

    mul-int v4, v6, v7

    invoke-virtual/range {v23 .. v23}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v8

    mul-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x8

    aput v4, v27, v3

    .restart local v27       #mipSizes:[I
    goto/16 :goto_3

    .line 262
    :cond_8
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    move-object/from16 v0, v27

    array-length v3, v0

    if-ge v12, v3, :cond_0

    .line 263
    const/4 v3, 0x1

    shr-int v4, v6, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 264
    .local v14, mipWidth:I
    const/4 v3, 0x1

    shr-int v4, v7, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 265
    .local v15, mipHeight:I
    const/4 v3, 0x1

    shr-int v4, v22, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 267
    .local v26, mipDepth:I
    if-eqz v10, :cond_9

    .line 268
    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    aget v3, v27, v12

    add-int v3, v3, v28

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 272
    :cond_9
    if-eqz v20, :cond_a

    if-eqz v10, :cond_a

    .line 273
    const/16 v11, 0xde1

    const/16 v16, 0x0

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v17

    move v13, v5

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 293
    :goto_5
    aget v3, v27, v12

    add-int v28, v28, v3

    .line 262
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 282
    :cond_a
    const/16 v11, 0xde1

    const/16 v16, 0x0

    move/from16 v13, v25

    move/from16 v17, v5

    move/from16 v18, v21

    move-object/from16 v19, v10

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_5

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public static uploadTextureBitmap(ILandroid/graphics/Bitmap;ZZ)V
    .locals 5
    .parameter "target"
    .parameter "bitmap"
    .parameter "generateMips"
    .parameter "powerOf2"

    .prologue
    const/4 v4, 0x0

    .line 87
    if-nez p3, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 90
    .local v2, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 91
    .local v1, height:I
    invoke-static {v2}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    :cond_0
    invoke-static {v2}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v2

    .line 95
    invoke-static {v1}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v1

    .line 96
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bitmap2:Landroid/graphics/Bitmap;
    move-object p1, v0

    .line 102
    .end local v0           #bitmap2:Landroid/graphics/Bitmap;
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_1
    if-eqz p2, :cond_2

    .line 104
    invoke-static {p1}, Lcom/jme3/renderer/android/TextureUtil;->buildMipmap(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_2
    invoke-static {p0, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.class public Lcom/jme3/texture/plugins/DXTFlipper;
.super Ljava/lang/Object;
.source "DXTFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/plugins/DXTFlipper$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final bb:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/jme3/texture/plugins/DXTFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/texture/plugins/DXTFlipper;->$assertionsDisabled:Z

    .line 47
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    .line 50
    sget-object v0, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 51
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method public static flipDXT(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;
    .locals 13
    .parameter "img"
    .parameter "w"
    .parameter "h"
    .parameter "format"

    .prologue
    .line 200
    int-to-float v11, p1

    const/high16 v12, 0x4080

    div-float/2addr v11, v12

    invoke-static {v11}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v11

    float-to-int v3, v11

    .line 201
    .local v3, blocksX:I
    int-to-float v11, p2

    const/high16 v12, 0x4080

    div-float/2addr v11, v12

    invoke-static {v11}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v11

    float-to-int v4, v11

    .line 204
    .local v4, blocksY:I
    sget-object v11, Lcom/jme3/texture/plugins/DXTFlipper$1;->$SwitchMap$com$jme3$texture$Image$Format:[I

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/texture/Image$Format;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 222
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 207
    :pswitch_0
    const/4 v8, 0x1

    .line 227
    .local v8, type:I
    :goto_0
    const/4 v11, 0x1

    if-eq v8, v11, :cond_0

    const/4 v11, 0x5

    if-ne v8, v11, :cond_1

    :cond_0
    const/16 v5, 0x8

    .line 229
    .local v5, bpb:I
    :goto_1
    mul-int v11, v3, v4

    mul-int/2addr v11, v5

    invoke-static {v11}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 231
    .local v7, retImg:Ljava/nio/ByteBuffer;
    const/4 v11, 0x1

    if-ne p2, v11, :cond_2

    .line 232
    invoke-virtual {v7, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 314
    .end local v7           #retImg:Ljava/nio/ByteBuffer;
    :goto_2
    return-object v7

    .line 210
    .end local v5           #bpb:I
    .end local v8           #type:I
    :pswitch_1
    const/4 v8, 0x2

    .line 211
    .restart local v8       #type:I
    goto :goto_0

    .line 213
    .end local v8           #type:I
    :pswitch_2
    const/4 v8, 0x3

    .line 214
    .restart local v8       #type:I
    goto :goto_0

    .line 216
    .end local v8           #type:I
    :pswitch_3
    const/4 v8, 0x4

    .line 217
    .restart local v8       #type:I
    goto :goto_0

    .line 219
    .end local v8           #type:I
    :pswitch_4
    const/4 v8, 0x5

    .line 220
    .restart local v8       #type:I
    goto :goto_0

    .line 227
    :cond_1
    const/16 v5, 0x10

    goto :goto_1

    .line 235
    .restart local v5       #bpb:I
    .restart local v7       #retImg:Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v11, 0x2

    if-ne p2, v11, :cond_8

    .line 236
    const/16 v11, 0x8

    new-array v6, v11, [B

    .line 237
    .local v6, colorBlock:[B
    const/4 v11, 0x1

    if-eq v8, v11, :cond_5

    const/4 v11, 0x5

    if-eq v8, v11, :cond_5

    const/16 v11, 0x8

    new-array v0, v11, [B

    .line 238
    .local v0, alphaBlock:[B
    :goto_3
    const/4 v9, 0x0

    .local v9, x:I
    :goto_4
    if-ge v9, v3, :cond_7

    .line 240
    mul-int v1, v9, v5

    .line 241
    .local v1, blockByteOffset:I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 242
    add-int v11, v1, v5

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 245
    const/4 v11, 0x4

    if-eq v8, v11, :cond_3

    const/4 v11, 0x5

    if-ne v8, v11, :cond_6

    .line 246
    :cond_3
    invoke-static {v6, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    .line 252
    :goto_5
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    if-eqz v0, :cond_4

    .line 255
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 256
    packed-switch v8, :pswitch_data_1

    .line 264
    :goto_6
    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 238
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 237
    .end local v0           #alphaBlock:[B
    .end local v1           #blockByteOffset:I
    .end local v9           #x:I
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 248
    .restart local v0       #alphaBlock:[B
    .restart local v1       #blockByteOffset:I
    .restart local v9       #x:I
    :cond_6
    invoke-static {v6, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT1orDXTA3Block([BI)V

    goto :goto_5

    .line 258
    :pswitch_5
    invoke-static {v0, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT3Block([BI)V

    goto :goto_6

    .line 261
    :pswitch_6
    invoke-static {v0, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    goto :goto_6

    .line 267
    .end local v1           #blockByteOffset:I
    :cond_7
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_2

    .line 269
    .end local v0           #alphaBlock:[B
    .end local v6           #colorBlock:[B
    .end local v9           #x:I
    :cond_8
    const/4 v11, 0x4

    if-lt p2, v11, :cond_f

    .line 270
    const/16 v11, 0x8

    new-array v6, v11, [B

    .line 271
    .restart local v6       #colorBlock:[B
    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    const/4 v11, 0x5

    if-eq v8, v11, :cond_b

    const/16 v11, 0x8

    new-array v0, v11, [B

    .line 272
    .restart local v0       #alphaBlock:[B
    :goto_7
    const/4 v10, 0x0

    .local v10, y:I
    :goto_8
    if-ge v10, v4, :cond_e

    .line 273
    const/4 v9, 0x0

    .restart local v9       #x:I
    :goto_9
    if-ge v9, v3, :cond_d

    .line 275
    mul-int v11, v10, v3

    add-int v2, v11, v9

    .line 276
    .local v2, blockIdx:I
    mul-int v1, v2, v5

    .line 278
    .restart local v1       #blockByteOffset:I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 279
    add-int v11, v1, v5

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 281
    sub-int v11, v4, v10

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v3

    add-int v2, v11, v9

    .line 282
    mul-int v1, v2, v5

    .line 284
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 285
    add-int v11, v1, v5

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 287
    if-eqz v0, :cond_9

    .line 288
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 289
    packed-switch v8, :pswitch_data_2

    .line 298
    :goto_a
    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 301
    :cond_9
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 302
    const/4 v11, 0x4

    if-eq v8, v11, :cond_a

    const/4 v11, 0x5

    if-ne v8, v11, :cond_c

    .line 303
    :cond_a
    invoke-static {v6, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    .line 307
    :goto_b
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 273
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 271
    .end local v0           #alphaBlock:[B
    .end local v1           #blockByteOffset:I
    .end local v2           #blockIdx:I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 291
    .restart local v0       #alphaBlock:[B
    .restart local v1       #blockByteOffset:I
    .restart local v2       #blockIdx:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :pswitch_7
    invoke-static {v0, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT3Block([BI)V

    goto :goto_a

    .line 295
    :pswitch_8
    invoke-static {v0, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT5Block([BI)V

    goto :goto_a

    .line 305
    :cond_c
    invoke-static {v6, p2}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT1orDXTA3Block([BI)V

    goto :goto_b

    .line 272
    .end local v1           #blockByteOffset:I
    .end local v2           #blockIdx:I
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 310
    .end local v9           #x:I
    :cond_e
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 311
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 314
    .end local v0           #alphaBlock:[B
    .end local v6           #colorBlock:[B
    .end local v10           #y:I
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 256
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 289
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private static flipDXT1orDXTA3Block([BI)V
    .locals 6
    .parameter "block"
    .parameter "h"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 187
    aget-byte v0, p0, v5

    .line 188
    .local v0, tmp:B
    aget-byte v1, p0, v2

    aput-byte v1, p0, v5

    .line 189
    aput-byte v0, p0, v2

    .line 192
    aget-byte v0, p0, v4

    .line 193
    aget-byte v1, p0, v3

    aput-byte v1, p0, v4

    .line 194
    aput-byte v0, p0, v3

    .line 195
    .end local v0           #tmp:B
    :goto_0
    :pswitch_0
    return-void

    .line 178
    :pswitch_1
    aget-byte v0, p0, v3

    .line 179
    .restart local v0       #tmp:B
    aget-byte v1, p0, v2

    aput-byte v1, p0, v3

    .line 180
    aput-byte v0, p0, v2

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static flipDXT3Block([BI)V
    .locals 8
    .parameter "block"
    .parameter "h"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 127
    if-ne p1, v4, :cond_0

    .line 161
    :goto_0
    return-void

    .line 131
    :cond_0
    aget-byte v0, p0, v6

    .line 132
    .local v0, tmp0:B
    aget-byte v1, p0, v4

    .line 134
    .local v1, tmp1:B
    if-ne p1, v3, :cond_1

    .line 135
    aget-byte v2, p0, v3

    aput-byte v2, p0, v6

    .line 136
    aget-byte v2, p0, v5

    aput-byte v2, p0, v4

    .line 138
    aput-byte v0, p0, v3

    .line 139
    aput-byte v1, p0, v5

    goto :goto_0

    .line 142
    :cond_1
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    aput-byte v2, p0, v6

    .line 143
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    aput-byte v2, p0, v4

    .line 146
    const/4 v2, 0x6

    aput-byte v0, p0, v2

    .line 147
    const/4 v2, 0x7

    aput-byte v1, p0, v2

    .line 150
    aget-byte v0, p0, v3

    .line 151
    aget-byte v1, p0, v5

    .line 154
    aget-byte v2, p0, v7

    aput-byte v2, p0, v3

    .line 155
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    aput-byte v2, p0, v5

    .line 158
    aput-byte v0, p0, v7

    .line 159
    const/4 v2, 0x5

    aput-byte v1, p0, v2

    goto :goto_0
.end method

.method private static flipDXT5Block([BI)V
    .locals 10
    .parameter "block"
    .parameter "h"

    .prologue
    .line 74
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v2, 0x0

    aget-byte v6, p0, v2

    .line 78
    .local v6, c0:B
    const/4 v2, 0x1

    aget-byte v7, p0, v2

    .line 80
    .local v7, c1:B
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 81
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v2, p0, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 83
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 84
    .local v8, l:J
    move-wide v0, v8

    .line 86
    .local v0, n:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 87
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 88
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 89
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 90
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 92
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 93
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 94
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 95
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 118
    :goto_0
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 119
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 120
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 121
    sget-object v2, Lcom/jme3/texture/plugins/DXTFlipper;->bb:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v2, p0, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    sget-boolean v2, Lcom/jme3/texture/plugins/DXTFlipper;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    if-ne v6, v2, :cond_2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    if-eq v7, v2, :cond_0

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 97
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 98
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 99
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 100
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 103
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 104
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 105
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 107
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 108
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 109
    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 110
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 112
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 113
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 114
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    .line 115
    const/4 v2, 0x3

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v8, v9, v4, v5}, Lcom/jme3/texture/plugins/DXTFlipper;->readCode5(JII)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/jme3/texture/plugins/DXTFlipper;->writeCode5(JIIJ)J

    move-result-wide v0

    goto/16 :goto_0
.end method

.method private static readCode5(JII)J
    .locals 7
    .parameter "data"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 54
    mul-int/lit8 v6, p3, 0x4

    add-int/2addr v6, p2

    mul-int/lit8 v6, v6, 0x3

    int-to-long v4, v6

    .line 55
    .local v4, shift:J
    const-wide/16 v2, 0x7

    .line 56
    .local v2, mask:J
    long-to-int v6, v4

    shl-long/2addr v2, v6

    .line 57
    and-long v0, p0, v2

    .line 58
    .local v0, code:J
    long-to-int v6, v4

    shr-long/2addr v0, v6

    .line 59
    return-wide v0
.end method

.method private static writeCode5(JIIJ)J
    .locals 7
    .parameter "data"
    .parameter "x"
    .parameter "y"
    .parameter "code"

    .prologue
    .line 63
    mul-int/lit8 v4, p3, 0x4

    add-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x3

    int-to-long v2, v4

    .line 64
    .local v2, shift:J
    const-wide/16 v0, 0x7

    .line 65
    .local v0, mask:J
    and-long v4, p4, v0

    long-to-int v6, v2

    shl-long p4, v4, v6

    .line 66
    long-to-int v4, v2

    shl-long/2addr v0, v4

    .line 67
    const-wide/16 v4, -0x1

    xor-long/2addr v0, v4

    .line 68
    and-long/2addr p0, v0

    .line 69
    or-long/2addr p0, p4

    .line 70
    return-wide p0
.end method

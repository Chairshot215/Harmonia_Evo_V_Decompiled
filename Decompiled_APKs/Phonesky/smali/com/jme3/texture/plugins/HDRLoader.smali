.class public Lcom/jme3/texture/plugins/HDRLoader;
.super Ljava/lang/Object;
.source "HDRLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private dataStore:Ljava/nio/ByteBuffer;

.field private rleTempBuffer:Ljava/nio/ByteBuffer;

.field private final tempF:[F

.field private writeRGBE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jme3/texture/plugins/HDRLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/texture/plugins/HDRLoader;->$assertionsDisabled:Z

    .line 50
    const-class v0, Lcom/jme3/texture/plugins/HDRLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    .line 62
    return-void
.end method

.method public static convertRGBEtoFloat([B[F)V
    .locals 12
    .parameter "rgbe"
    .parameter "rgbf"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 81
    aget-byte v5, p0, v9

    and-int/lit16 v3, v5, 0xff

    .line 82
    .local v3, R:I
    aget-byte v5, p0, v10

    and-int/lit16 v2, v5, 0xff

    .line 83
    .local v2, G:I
    aget-byte v5, p0, v11

    and-int/lit16 v0, v5, 0xff

    .line 84
    .local v0, B:I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 86
    .local v1, E:I
    const-wide/high16 v5, 0x4000

    add-int/lit16 v7, v1, -0x88

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v4, v5

    .line 87
    .local v4, e:F
    int-to-float v5, v3

    mul-float/2addr v5, v4

    aput v5, p1, v9

    .line 88
    int-to-float v5, v2

    mul-float/2addr v5, v4

    aput v5, p1, v10

    .line 89
    int-to-float v5, v0

    mul-float/2addr v5, v4

    aput v5, p1, v11

    .line 90
    return-void
.end method

.method private decodeScanline(Ljava/io/InputStream;I)V
    .locals 5
    .parameter "in"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 200
    const/16 v2, 0x8

    if-lt p2, v2, :cond_0

    const/16 v2, 0x7fff

    if-le p2, v2, :cond_1

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanlineUncompressed(Ljava/io/InputStream;I)Z

    .line 206
    :cond_1
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 207
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 208
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 210
    :cond_2
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanlineUncompressed(Ljava/io/InputStream;I)Z

    .line 220
    :goto_0
    return-void

    .line 213
    :cond_3
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 214
    .local v1, readWidth:I
    if-eq v1, p2, :cond_4

    .line 215
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal scanline width in HDR file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanlineRLE(Ljava/io/InputStream;I)Z

    goto :goto_0
.end method

.method private decodeScanlineRLE(Ljava/io/InputStream;I)Z
    .locals 11
    .parameter "in"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 144
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_1

    .line 145
    mul-int/lit8 v7, p2, 0x4

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    .line 153
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_4

    .line 155
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, p2, :cond_3

    .line 156
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 157
    .local v0, code:I
    const/16 v7, 0x80

    if-le v0, v7, :cond_7

    .line 158
    add-int/lit8 v0, v0, -0x80

    .line 159
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, val:I
    move v1, v0

    .end local v0           #code:I
    .local v1, code:I
    move v4, v3

    .line 160
    .end local v3           #j:I
    .local v4, j:I
    :goto_3
    add-int/lit8 v0, v1, -0x1

    .end local v1           #code:I
    .restart local v0       #code:I
    if-eqz v1, :cond_2

    .line 161
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v2

    int-to-byte v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v1, v0

    .end local v0           #code:I
    .restart local v1       #code:I
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_3

    .line 147
    .end local v1           #code:I
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #val:I
    :cond_1
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 148
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    mul-int/lit8 v8, p2, 0x4

    if-ge v7, v8, :cond_0

    .line 149
    mul-int/lit8 v7, p2, 0x4

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .restart local v0       #code:I
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v6       #val:I
    :cond_2
    move v3, v4

    .line 164
    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    .line 165
    .end local v0           #code:I
    .end local v3           #j:I
    .end local v6           #val:I
    .restart local v1       #code:I
    .restart local v4       #j:I
    :goto_4
    add-int/lit8 v0, v1, -0x1

    .end local v1           #code:I
    .restart local v0       #code:I
    if-eqz v1, :cond_6

    .line 166
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 167
    .restart local v6       #val:I
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v2

    int-to-byte v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v1, v0

    .end local v0           #code:I
    .restart local v1       #code:I
    move v4, v3

    .line 169
    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_4

    .line 153
    .end local v1           #code:I
    .end local v4           #j:I
    .end local v6           #val:I
    .restart local v3       #j:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v3           #j:I
    :cond_4
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 175
    new-array v5, v10, [B

    .line 179
    .local v5, rgbe:[B
    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_5

    .line 180
    iget-object v7, p0, Lcom/jme3/texture/plugins/HDRLoader;->rleTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-direct {p0, v5}, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE([B)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 184
    :cond_5
    const/4 v7, 0x1

    return v7

    .end local v5           #rgbe:[B
    .restart local v0       #code:I
    .restart local v4       #j:I
    :cond_6
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_2

    :cond_7
    move v1, v0

    .end local v0           #code:I
    .restart local v1       #code:I
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_4
.end method

.method private decodeScanlineUncompressed(Ljava/io/InputStream;I)Z
    .locals 4
    .parameter "in"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 188
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 190
    .local v1, rgbe:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 191
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 192
    const/4 v2, 0x0

    .line 196
    :cond_0
    return v2

    .line 194
    :cond_1
    invoke-direct {p0, v1}, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE([B)V

    .line 190
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 135
    .local v0, i:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 136
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 138
    :cond_1
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private writeRGBE([B)V
    .locals 3
    .parameter "rgbe"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    invoke-static {p1, v0}, Lcom/jme3/texture/plugins/HDRLoader;->convertRGBEtoFloat([B[F)V

    .line 125
    iget-object v0, p0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/texture/plugins/HDRLoader;->tempF:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    .locals 21
    .parameter "in"
    .parameter "flipY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/high16 v6, -0x4080

    .line 224
    .local v6, gamma:F
    const/high16 v5, -0x4080

    .line 225
    .local v5, exposure:F
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    .line 227
    .local v4, colorcorr:[F
    const/16 v16, -0x1

    .local v16, width:I
    const/4 v7, -0x1

    .line 228
    .local v7, height:I
    const/4 v15, 0x0

    .line 231
    .local v15, verifiedFormat:Z
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/jme3/texture/plugins/HDRLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, ln:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 233
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 234
    :cond_1
    const-string v18, "#?RADIANCE"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "#?RGBE"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 235
    :cond_2
    const/4 v15, 0x1

    goto :goto_0

    .line 238
    :cond_3
    const-string v18, "+"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 240
    :cond_4
    const-string v18, "\\s"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, resData:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 242
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Invalid resolution string in HDR file"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 245
    :cond_5
    const/16 v18, 0x0

    aget-object v18, v11, v18

    const-string v19, "-Y"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x2

    aget-object v18, v11, v18

    const-string v19, "+X"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 246
    :cond_6
    sget-object v18, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    const-string v19, "Flipping/Rotating attributes ignored!"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 254
    :cond_7
    const/16 v18, 0x3

    aget-object v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 255
    const/16 v18, 0x1

    aget-object v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 283
    sget-boolean v18, Lcom/jme3/texture/plugins/HDRLoader;->$assertionsDisabled:Z

    if-nez v18, :cond_e

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    :cond_8
    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 261
    .end local v11           #resData:[Ljava/lang/String;
    :cond_9
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 262
    .local v8, index:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 263
    sget-object v18, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v20, "Ignored string: {0}"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 267
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 268
    .local v14, var:Ljava/lang/String;
    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 269
    .local v13, value:Ljava/lang/String;
    const-string v18, "format"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 270
    const-string v18, "32-bit_rle_rgbe"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "32-bit_rle_xyze"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 271
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unsupported format in HDR picture"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 273
    :cond_b
    const-string v18, "exposure"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 274
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto/16 :goto_0

    .line 275
    :cond_c
    const-string v18, "gamma"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 276
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    goto/16 :goto_0

    .line 278
    :cond_d
    sget-object v18, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v20, "HDR Command ignored: {0}"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 285
    .end local v8           #index:I
    .end local v13           #value:Ljava/lang/String;
    .end local v14           #var:Ljava/lang/String;
    .restart local v11       #resData:[Ljava/lang/String;
    :cond_e
    if-nez v15, :cond_f

    .line 286
    sget-object v18, Lcom/jme3/texture/plugins/HDRLoader;->logger:Ljava/util/logging/Logger;

    const-string v19, "Unsure if specified image is Radiance HDR"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 289
    :cond_f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jme3/texture/plugins/HDRLoader;->writeRGBE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 294
    sget-object v10, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .line 299
    .local v10, pixelFormat:Lcom/jme3/texture/Image$Format;
    :goto_1
    mul-int v18, v16, v7

    invoke-virtual {v10}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v19

    mul-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    .line 301
    invoke-virtual {v10}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v18

    div-int/lit8 v3, v18, 0x8

    .line 302
    .local v3, bytesPerPixel:I
    mul-int v12, v3, v16

    .line 303
    .local v12, scanLineBytes:I
    add-int/lit8 v17, v7, -0x1

    .local v17, y:I
    :goto_2
    if-ltz v17, :cond_12

    .line 304
    if-eqz p2, :cond_10

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    mul-int v19, v12, v17

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/plugins/HDRLoader;->decodeScanline(Ljava/io/InputStream;I)V

    .line 303
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 296
    .end local v3           #bytesPerPixel:I
    .end local v10           #pixelFormat:Lcom/jme3/texture/Image$Format;
    .end local v12           #scanLineBytes:I
    .end local v17           #y:I
    :cond_11
    sget-object v10, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    .restart local v10       #pixelFormat:Lcom/jme3/texture/Image$Format;
    goto :goto_1

    .line 309
    .restart local v3       #bytesPerPixel:I
    .restart local v12       #scanLineBytes:I
    .restart local v17       #y:I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 312
    new-instance v18, Lcom/jme3/texture/Image;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/HDRLoader;->dataStore:Ljava/nio/ByteBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v7, v2}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V

    return-object v18

    .line 225
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
    .end array-data
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 5
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    instance-of v3, v3, Lcom/jme3/asset/TextureKey;

    if-nez v3, :cond_0

    .line 317
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Texture assets must be loaded using a TextureKey"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    check-cast v3, Lcom/jme3/asset/TextureKey;

    invoke-virtual {v3}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    .line 320
    .local v0, flip:Z
    const/4 v2, 0x0

    .line 322
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 323
    invoke-virtual {p0, v2, v0}, Lcom/jme3/texture/plugins/HDRLoader;->load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 326
    .local v1, img:Lcom/jme3/texture/Image;
    if-eqz v2, :cond_1

    .line 327
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    .line 326
    .end local v1           #img:Lcom/jme3/texture/Image;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v3
.end method

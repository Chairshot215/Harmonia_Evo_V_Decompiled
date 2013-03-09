.class public final Lcom/jme3/texture/plugins/TGALoader;
.super Ljava/lang/Object;
.source "TGALoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method private static flipEndian(S)S
    .locals 3
    .parameter "signedShort"

    .prologue
    .line 505
    const v1, 0xffff

    and-int v0, p0, v1

    .line 506
    .local v0, input:I
    shl-int/lit8 v1, v0, 0x8

    const v2, 0xff00

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method private static getBitsAsByte([BII)B
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v7, 0x2

    .line 472
    div-int/lit8 v3, p1, 0x8

    .line 473
    .local v3, offsetBytes:I
    rem-int/lit8 v2, p1, 0x8

    .line 474
    .local v2, indexBits:I
    const/4 v4, 0x0

    .line 477
    .local v4, rVal:I
    move v1, p2

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 478
    aget-byte v0, p0, v3

    .line 479
    .local v0, b:B
    const/4 v6, 0x7

    if-ne v2, v6, :cond_2

    const/4 v5, 0x1

    .line 480
    .local v5, test:I
    :goto_1
    and-int v6, v0, v5

    if-eqz v6, :cond_1

    .line 481
    if-nez v1, :cond_3

    .line 482
    add-int/lit8 v4, v4, 0x1

    .line 486
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 487
    const/16 v6, 0x8

    if-ne v2, v6, :cond_0

    .line 488
    const/4 v2, 0x0

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v5           #test:I
    :cond_2
    rsub-int/lit8 v6, v2, 0x6

    shl-int v5, v7, v6

    goto :goto_1

    .line 484
    .restart local v5       #test:I
    :cond_3
    add-int/lit8 v6, v1, -0x1

    shl-int v6, v7, v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 493
    .end local v0           #b:B
    .end local v5           #test:I
    :cond_4
    int-to-byte v6, v4

    return v6
.end method

.method public static load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    .locals 46
    .parameter "in"
    .parameter "flip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/16 v22, 0x0

    .line 116
    .local v22, flipH:Z
    new-instance v19, Ljava/io/DataInputStream;

    new-instance v43, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 120
    .local v19, dis:Ljava/io/DataInputStream;
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v27

    .line 125
    .local v27, idLength:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    .line 128
    .local v15, colorMapType:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v29

    .line 133
    .local v29, imageType:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    .line 135
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v14

    .line 137
    .local v14, cMapLength:S
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    .line 142
    .local v12, cMapDepth:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    .line 145
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    .line 147
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v41

    .line 149
    .local v41, width:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v25

    .line 151
    .local v25, height:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v33

    .line 152
    .local v33, pixelDepth:I
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v28

    .line 153
    .local v28, imageDescriptor:I
    and-int/lit8 v43, v28, 0x20

    if-eqz v43, :cond_0

    .line 154
    if-nez p1, :cond_4

    const/16 p1, 0x1

    .line 155
    :cond_0
    :goto_0
    and-int/lit8 v43, v28, 0x10

    if-eqz v43, :cond_1

    .line 156
    if-nez v22, :cond_5

    const/16 v22, 0x1

    .line 161
    :cond_1
    :goto_1
    if-lez v27, :cond_2

    .line 162
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v43, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 164
    :cond_2
    const/4 v13, 0x0

    .line 165
    .local v13, cMapEntries:[Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    if-eqz v15, :cond_7

    .line 167
    mul-int v43, v12, v14

    shr-int/lit8 v9, v43, 0x3

    .line 168
    .local v9, bytesInColorMap:I
    div-int/lit8 v43, v12, 0x3

    const/16 v44, 0x8

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 170
    .local v7, bitsPerColor:I
    new-array v11, v9, [B

    .line 171
    .local v11, cMapData:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    .line 175
    const/16 v43, 0x1

    move/from16 v0, v29

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    const/16 v43, 0x9

    move/from16 v0, v29

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 176
    :cond_3
    new-array v13, v14, [Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;

    .line 177
    mul-int/lit8 v43, v7, 0x3

    sub-int v6, v12, v43

    .line 178
    .local v6, alphaSize:I
    const/high16 v43, 0x437f

    const/high16 v44, 0x4000

    int-to-float v0, v7

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v44

    const/high16 v45, 0x3f80

    sub-float v44, v44, v45

    div-float v38, v43, v44

    .line 179
    .local v38, scalar:F
    const/high16 v43, 0x437f

    const/high16 v44, 0x4000

    int-to-float v0, v6

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v44

    const/high16 v45, 0x3f80

    sub-float v44, v44, v45

    div-float v5, v43, v44

    .line 180
    .local v5, alphaScalar:F
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    if-ge v0, v14, :cond_7

    .line 181
    new-instance v21, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;

    invoke-direct/range {v21 .. v21}, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;-><init>()V

    .line 182
    .local v21, entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    mul-int v32, v12, v26

    .line 183
    .local v32, offset:I
    move/from16 v0, v32

    invoke-static {v11, v0, v7}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->red:B

    .line 184
    add-int v43, v32, v7

    move/from16 v0, v43

    invoke-static {v11, v0, v7}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->green:B

    .line 185
    mul-int/lit8 v43, v7, 0x2

    add-int v43, v43, v32

    move/from16 v0, v43

    invoke-static {v11, v0, v7}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->blue:B

    .line 186
    if-gtz v6, :cond_6

    .line 187
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    .line 191
    :goto_3
    aput-object v21, v13, v26

    .line 180
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 154
    .end local v5           #alphaScalar:F
    .end local v6           #alphaSize:I
    .end local v7           #bitsPerColor:I
    .end local v9           #bytesInColorMap:I
    .end local v11           #cMapData:[B
    .end local v13           #cMapEntries:[Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .end local v21           #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .end local v26           #i:I
    .end local v32           #offset:I
    .end local v38           #scalar:F
    :cond_4
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 156
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 189
    .restart local v5       #alphaScalar:F
    .restart local v6       #alphaSize:I
    .restart local v7       #bitsPerColor:I
    .restart local v9       #bytesInColorMap:I
    .restart local v11       #cMapData:[B
    .restart local v13       #cMapEntries:[Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .restart local v21       #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .restart local v26       #i:I
    .restart local v32       #offset:I
    .restart local v38       #scalar:F
    :cond_6
    mul-int/lit8 v43, v7, 0x3

    add-int v43, v43, v32

    move/from16 v0, v43

    invoke-static {v11, v0, v6}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v5

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v21

    iput-byte v0, v1, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    goto :goto_3

    .line 199
    .end local v5           #alphaScalar:F
    .end local v6           #alphaSize:I
    .end local v7           #bitsPerColor:I
    .end local v9           #bytesInColorMap:I
    .end local v11           #cMapData:[B
    .end local v21           #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .end local v26           #i:I
    .end local v32           #offset:I
    .end local v38           #scalar:F
    :cond_7
    const/16 v34, 0x0

    .line 201
    .local v34, rawData:[B
    const/16 v43, 0x20

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_b

    .line 202
    mul-int v43, v41, v25

    mul-int/lit8 v43, v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v34, v0

    .line 203
    const/16 v20, 0x4

    .line 208
    .local v20, dl:I
    :goto_4
    const/16 v35, 0x0

    .line 210
    .local v35, rawDataIndex:I
    const/16 v43, 0x2

    move/from16 v0, v29

    move/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 211
    const/16 v37, 0x0

    .line 212
    .local v37, red:B
    const/16 v24, 0x0

    .line 213
    .local v24, green:B
    const/4 v8, 0x0

    .line 214
    .local v8, blue:B
    const/4 v4, 0x0

    .line 218
    .local v4, alpha:B
    const/16 v43, 0x10

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_f

    .line 219
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 220
    .local v18, data:[B
    const v38, 0x41039ce7

    .line 221
    .restart local v38       #scalar:F
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_5
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_d

    .line 222
    if-nez p1, :cond_8

    .line 223
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 224
    :cond_8
    const/16 v31, 0x0

    .local v31, j:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .local v36, rawDataIndex:I
    :goto_6
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_c

    .line 225
    const/16 v43, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v44

    aput-byte v44, v18, v43

    .line 226
    const/16 v43, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v44

    aput-byte v44, v18, v43

    .line 227
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    const/16 v43, 0x1

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    aput-byte v43, v34, v36

    .line 228
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    const/16 v43, 0x6

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    aput-byte v43, v34, v35

    .line 229
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    const/16 v43, 0xb

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v43, v0

    aput-byte v43, v34, v36

    .line 230
    const/16 v43, 0x4

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_a

    .line 232
    const/16 v43, 0x0

    const/16 v44, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v4

    .line 233
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v4, v0, :cond_9

    const/4 v4, -0x1

    .line 234
    :cond_9
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v4, v34, v35

    move/from16 v35, v36

    .line 224
    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    :cond_a
    add-int/lit8 v31, v31, 0x1

    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto/16 :goto_6

    .line 205
    .end local v4           #alpha:B
    .end local v8           #blue:B
    .end local v18           #data:[B
    .end local v20           #dl:I
    .end local v24           #green:B
    .end local v26           #i:I
    .end local v31           #j:I
    .end local v36           #rawDataIndex:I
    .end local v37           #red:B
    .end local v38           #scalar:F
    :cond_b
    mul-int v43, v41, v25

    mul-int/lit8 v43, v43, 0x3

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v34, v0

    .line 206
    const/16 v20, 0x3

    .restart local v20       #dl:I
    goto/16 :goto_4

    .line 221
    .restart local v4       #alpha:B
    .restart local v8       #blue:B
    .restart local v18       #data:[B
    .restart local v24       #green:B
    .restart local v26       #i:I
    .restart local v31       #j:I
    .restart local v36       #rawDataIndex:I
    .restart local v37       #red:B
    .restart local v38       #scalar:F
    :cond_c
    add-int/lit8 v26, v26, 0x1

    move/from16 v35, v36

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    goto/16 :goto_5

    .line 239
    .end local v31           #j:I
    :cond_d
    const/16 v43, 0x4

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_e

    sget-object v23, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .line 456
    .end local v4           #alpha:B
    .end local v8           #blue:B
    .end local v18           #data:[B
    .end local v24           #green:B
    .end local v26           #i:I
    .end local v37           #red:B
    .end local v38           #scalar:F
    .local v23, format:Lcom/jme3/texture/Image$Format;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    .line 458
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v39

    .line 459
    .local v39, scratch:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v39 .. v39}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 460
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual/range {v39 .. v39}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 463
    new-instance v40, Lcom/jme3/texture/Image;

    invoke-direct/range {v40 .. v40}, Lcom/jme3/texture/Image;-><init>()V

    .line 464
    .local v40, textureImage:Lcom/jme3/texture/Image;
    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Image;->setFormat(Lcom/jme3/texture/Image$Format;)V

    .line 465
    invoke-virtual/range {v40 .. v41}, Lcom/jme3/texture/Image;->setWidth(I)V

    .line 466
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Image;->setHeight(I)V

    .line 467
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Image;->setData(Ljava/nio/ByteBuffer;)V

    .line 468
    return-object v40

    .line 239
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    .end local v39           #scratch:Ljava/nio/ByteBuffer;
    .end local v40           #textureImage:Lcom/jme3/texture/Image;
    .restart local v4       #alpha:B
    .restart local v8       #blue:B
    .restart local v18       #data:[B
    .restart local v24       #green:B
    .restart local v26       #i:I
    .restart local v37       #red:B
    .restart local v38       #scalar:F
    :cond_e
    sget-object v23, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    goto :goto_7

    .line 240
    .end local v18           #data:[B
    .end local v26           #i:I
    .end local v38           #scalar:F
    :cond_f
    const/16 v43, 0x18

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_12

    .line 241
    const/16 v42, 0x0

    .local v42, y:I
    :goto_8
    move/from16 v0, v42

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    .line 242
    if-nez p1, :cond_10

    .line 243
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v42

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 247
    :goto_9
    mul-int v43, v41, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 241
    add-int/lit8 v42, v42, 0x1

    goto :goto_8

    .line 245
    :cond_10
    mul-int v43, v42, v41

    mul-int v35, v43, v20

    goto :goto_9

    .line 258
    :cond_11
    sget-object v23, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    .restart local v23       #format:Lcom/jme3/texture/Image$Format;
    goto :goto_7

    .line 259
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    .end local v42           #y:I
    :cond_12
    const/16 v43, 0x20

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_16

    .line 260
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_a
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_15

    .line 261
    if-nez p1, :cond_13

    .line 262
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 264
    :cond_13
    const/16 v31, 0x0

    .restart local v31       #j:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_b
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_14

    .line 265
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 266
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v24

    .line 267
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    .line 268
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 269
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 270
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 271
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    .line 272
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v4, v34, v35

    .line 264
    add-int/lit8 v31, v31, 0x1

    goto :goto_b

    .line 260
    :cond_14
    add-int/lit8 v26, v26, 0x1

    move/from16 v35, v36

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    goto :goto_a

    .line 275
    .end local v31           #j:I
    :cond_15
    sget-object v23, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .restart local v23       #format:Lcom/jme3/texture/Image$Format;
    goto/16 :goto_7

    .line 277
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    .end local v26           #i:I
    :cond_16
    new-instance v43, Ljava/io/IOException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Unsupported TGA true color depth: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 279
    .end local v4           #alpha:B
    .end local v8           #blue:B
    .end local v24           #green:B
    .end local v37           #red:B
    :cond_17
    const/16 v43, 0xa

    move/from16 v0, v29

    move/from16 v1, v43

    if-ne v0, v1, :cond_2a

    .line 280
    const/16 v37, 0x0

    .line 281
    .restart local v37       #red:B
    const/16 v24, 0x0

    .line 282
    .restart local v24       #green:B
    const/4 v8, 0x0

    .line 283
    .restart local v8       #blue:B
    const/4 v4, 0x0

    .line 286
    .restart local v4       #alpha:B
    const/16 v43, 0x20

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_1d

    .line 287
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_c
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_1c

    .line 288
    if-nez p1, :cond_18

    .line 289
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 292
    :cond_18
    const/16 v31, 0x0

    .restart local v31       #j:I
    :goto_d
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_1b

    .line 294
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 295
    .local v16, count:I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v43, v0

    if-eqz v43, :cond_19

    .line 297
    and-int/lit8 v16, v16, 0x7f

    .line 298
    add-int v31, v31, v16

    .line 299
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 300
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v24

    .line 301
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    .line 302
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    move/from16 v17, v16

    .end local v16           #count:I
    .local v17, count:I
    move/from16 v36, v35

    .line 303
    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_e
    add-int/lit8 v16, v17, -0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    if-ltz v17, :cond_1a

    .line 304
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 305
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 306
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    .line 307
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v4, v34, v35

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_e

    .line 311
    .end local v17           #count:I
    .end local v36           #rawDataIndex:I
    .restart local v16       #count:I
    .restart local v35       #rawDataIndex:I
    :cond_19
    add-int v31, v31, v16

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .line 312
    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_f
    add-int/lit8 v16, v17, -0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    if-ltz v17, :cond_1a

    .line 313
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 314
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v24

    .line 315
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    .line 316
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 317
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 318
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 319
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    .line 320
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v4, v34, v35

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_f

    .end local v17           #count:I
    .restart local v16       #count:I
    :cond_1a
    move/from16 v35, v36

    .line 292
    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    add-int/lit8 v31, v31, 0x1

    goto :goto_d

    .line 287
    .end local v16           #count:I
    :cond_1b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_c

    .line 325
    .end local v31           #j:I
    :cond_1c
    sget-object v23, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .restart local v23       #format:Lcom/jme3/texture/Image$Format;
    goto/16 :goto_7

    .line 326
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    .end local v26           #i:I
    :cond_1d
    const/16 v43, 0x18

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_23

    .line 327
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_10
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_22

    .line 328
    if-nez p1, :cond_1e

    .line 329
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 331
    :cond_1e
    const/16 v31, 0x0

    .restart local v31       #j:I
    :goto_11
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_21

    .line 333
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 334
    .restart local v16       #count:I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v43, v0

    if-eqz v43, :cond_1f

    .line 336
    and-int/lit8 v16, v16, 0x7f

    .line 337
    add-int v31, v31, v16

    .line 338
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 339
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v24

    .line 340
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .line 341
    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_12
    add-int/lit8 v16, v17, -0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    if-ltz v17, :cond_20

    .line 342
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 343
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 344
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto :goto_12

    .line 348
    .end local v17           #count:I
    .end local v36           #rawDataIndex:I
    .restart local v16       #count:I
    .restart local v35       #rawDataIndex:I
    :cond_1f
    add-int v31, v31, v16

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .line 349
    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_13
    add-int/lit8 v16, v17, -0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    if-ltz v17, :cond_20

    .line 350
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 351
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v24

    .line 352
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v37

    .line 353
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 354
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 355
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto :goto_13

    .end local v17           #count:I
    .restart local v16       #count:I
    :cond_20
    move/from16 v35, v36

    .line 331
    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    add-int/lit8 v31, v31, 0x1

    goto :goto_11

    .line 327
    .end local v16           #count:I
    :cond_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 360
    .end local v31           #j:I
    :cond_22
    sget-object v23, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    .restart local v23       #format:Lcom/jme3/texture/Image$Format;
    goto/16 :goto_7

    .line 361
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    .end local v26           #i:I
    :cond_23
    const/16 v43, 0x10

    move/from16 v0, v33

    move/from16 v1, v43

    if-ne v0, v1, :cond_29

    .line 362
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 363
    .restart local v18       #data:[B
    const v38, 0x41039ce7

    .line 364
    .restart local v38       #scalar:F
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_14
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_28

    .line 365
    if-nez p1, :cond_24

    .line 366
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 368
    :cond_24
    const/16 v31, 0x0

    .restart local v31       #j:I
    :goto_15
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_27

    .line 370
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 371
    .restart local v16       #count:I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v43, v0

    if-eqz v43, :cond_25

    .line 373
    and-int/lit8 v16, v16, 0x7f

    .line 374
    add-int v31, v31, v16

    .line 375
    const/16 v43, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v44

    aput-byte v44, v18, v43

    .line 376
    const/16 v43, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v44

    aput-byte v44, v18, v43

    .line 377
    const/16 v43, 0x1

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v8, v0

    .line 378
    const/16 v43, 0x6

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v24, v0

    .line 379
    const/16 v43, 0xb

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v37, v0

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .line 380
    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_16
    add-int/lit8 v16, v17, -0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    if-ltz v17, :cond_26

    .line 381
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 382
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 383
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto :goto_16

    .line 387
    .end local v17           #count:I
    .end local v36           #rawDataIndex:I
    .restart local v16       #count:I
    .restart local v35       #rawDataIndex:I
    :cond_25
    add-int v31, v31, v16

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .line 388
    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_17
    add-int/lit8 v16, v17, -0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    if-ltz v17, :cond_26

    .line 389
    const/16 v43, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v44

    aput-byte v44, v18, v43

    .line 390
    const/16 v43, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readByte()B

    move-result v44

    aput-byte v44, v18, v43

    .line 391
    const/16 v43, 0x1

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v8, v0

    .line 392
    const/16 v43, 0x6

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v24, v0

    .line 393
    const/16 v43, 0xb

    const/16 v44, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/jme3/texture/plugins/TGALoader;->getBitsAsByte([BII)B

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v43, v43, v38

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-byte v0, v0

    move/from16 v37, v0

    .line 394
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v37, v34, v36

    .line 395
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    aput-byte v24, v34, v35

    .line 396
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    aput-byte v8, v34, v36

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto :goto_17

    .end local v17           #count:I
    .restart local v16       #count:I
    :cond_26
    move/from16 v35, v36

    .line 368
    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_15

    .line 364
    .end local v16           #count:I
    :cond_27
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_14

    .line 401
    .end local v31           #j:I
    :cond_28
    sget-object v23, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    .line 402
    .restart local v23       #format:Lcom/jme3/texture/Image$Format;
    goto/16 :goto_7

    .line 403
    .end local v18           #data:[B
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    .end local v26           #i:I
    .end local v38           #scalar:F
    :cond_29
    new-instance v43, Ljava/io/IOException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Unsupported TGA true color depth: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 406
    .end local v4           #alpha:B
    .end local v8           #blue:B
    .end local v24           #green:B
    .end local v37           #red:B
    :cond_2a
    const/16 v43, 0x1

    move/from16 v0, v29

    move/from16 v1, v43

    if-ne v0, v1, :cond_39

    .line 407
    div-int/lit8 v10, v33, 0x8

    .line 409
    .local v10, bytesPerIndex:I
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v10, v0, :cond_30

    .line 410
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_18
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_37

    .line 411
    if-nez p1, :cond_2b

    .line 412
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 413
    :cond_2b
    const/16 v31, 0x0

    .restart local v31       #j:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_19
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_2f

    .line 414
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v30

    .line 415
    .local v30, index:I
    array-length v0, v13

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_2c

    if-gez v30, :cond_2d

    .line 416
    :cond_2c
    new-instance v43, Ljava/io/IOException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "TGA: Invalid color map entry referenced: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 418
    :cond_2d
    aget-object v21, v13, v30

    .line 419
    .restart local v21       #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->red:B

    move/from16 v43, v0

    aput-byte v43, v34, v36

    .line 420
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->green:B

    move/from16 v43, v0

    aput-byte v43, v34, v35

    .line 421
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->blue:B

    move/from16 v43, v0

    aput-byte v43, v34, v36

    .line 422
    const/16 v43, 0x4

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_2e

    .line 423
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    move/from16 v43, v0

    aput-byte v43, v34, v35

    move/from16 v35, v36

    .line 413
    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    :cond_2e
    add-int/lit8 v31, v31, 0x1

    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto :goto_19

    .line 410
    .end local v21           #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .end local v30           #index:I
    :cond_2f
    add-int/lit8 v26, v26, 0x1

    move/from16 v35, v36

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    goto/16 :goto_18

    .line 428
    .end local v26           #i:I
    .end local v31           #j:I
    :cond_30
    const/16 v43, 0x2

    move/from16 v0, v43

    if-ne v10, v0, :cond_36

    .line 429
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_1a
    add-int/lit8 v43, v25, -0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-gt v0, v1, :cond_37

    .line 430
    if-nez p1, :cond_31

    .line 431
    add-int/lit8 v43, v25, -0x1

    sub-int v43, v43, v26

    mul-int v43, v43, v41

    mul-int v35, v43, v20

    .line 432
    :cond_31
    const/16 v31, 0x0

    .restart local v31       #j:I
    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    :goto_1b
    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_35

    .line 433
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v43

    invoke-static/range {v43 .. v43}, Lcom/jme3/texture/plugins/TGALoader;->flipEndian(S)S

    move-result v30

    .line 434
    .restart local v30       #index:I
    array-length v0, v13

    move/from16 v43, v0

    move/from16 v0, v30

    move/from16 v1, v43

    if-ge v0, v1, :cond_32

    if-gez v30, :cond_33

    .line 435
    :cond_32
    new-instance v43, Ljava/io/IOException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "TGA: Invalid color map entry referenced: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 437
    :cond_33
    aget-object v21, v13, v30

    .line 438
    .restart local v21       #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->red:B

    move/from16 v43, v0

    aput-byte v43, v34, v36

    .line 439
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->green:B

    move/from16 v43, v0

    aput-byte v43, v34, v35

    .line 440
    add-int/lit8 v35, v36, 0x1

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->blue:B

    move/from16 v43, v0

    aput-byte v43, v34, v36

    .line 441
    const/16 v43, 0x4

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_34

    .line 442
    add-int/lit8 v36, v35, 0x1

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    move-object/from16 v0, v21

    iget-byte v0, v0, Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;->alpha:B

    move/from16 v43, v0

    aput-byte v43, v34, v35

    move/from16 v35, v36

    .line 432
    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    :cond_34
    add-int/lit8 v31, v31, 0x1

    move/from16 v36, v35

    .end local v35           #rawDataIndex:I
    .restart local v36       #rawDataIndex:I
    goto :goto_1b

    .line 429
    .end local v21           #entry:Lcom/jme3/texture/plugins/TGALoader$ColorMapEntry;
    .end local v30           #index:I
    :cond_35
    add-int/lit8 v26, v26, 0x1

    move/from16 v35, v36

    .end local v36           #rawDataIndex:I
    .restart local v35       #rawDataIndex:I
    goto/16 :goto_1a

    .line 447
    .end local v26           #i:I
    .end local v31           #j:I
    :cond_36
    new-instance v43, Ljava/io/IOException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "TGA: unknown colormap indexing size used: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 450
    .restart local v26       #i:I
    :cond_37
    const/16 v43, 0x4

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_38

    sget-object v23, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .line 451
    .restart local v23       #format:Lcom/jme3/texture/Image$Format;
    :goto_1c
    goto/16 :goto_7

    .line 450
    .end local v23           #format:Lcom/jme3/texture/Image$Format;
    :cond_38
    sget-object v23, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    goto :goto_1c

    .line 452
    .end local v10           #bytesPerIndex:I
    .end local v26           #i:I
    :cond_39
    new-instance v43, Ljava/io/IOException;

    const-string v44, "Grayscale TGA not supported"

    invoke-direct/range {v43 .. v44}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v43
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 5
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    instance-of v3, v3, Lcom/jme3/asset/TextureKey;

    if-nez v3, :cond_0

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Texture assets must be loaded using a TextureKey"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    check-cast v3, Lcom/jme3/asset/TextureKey;

    invoke-virtual {v3}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    .line 86
    .local v0, flip:Z
    const/4 v2, 0x0

    .line 88
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 89
    invoke-static {v2, v0}, Lcom/jme3/texture/plugins/TGALoader;->load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 92
    .local v1, img:Lcom/jme3/texture/Image;
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    .line 92
    .end local v1           #img:Lcom/jme3/texture/Image;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v3
.end method

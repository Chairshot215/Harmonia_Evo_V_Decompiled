.class public Lcom/jme3/texture/plugins/PFMLoader;
.super Ljava/lang/Object;
.source "PFMLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/jme3/texture/plugins/PFMLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/PFMLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private flipScanline([B)V
    .locals 4
    .parameter "scanline"

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 65
    add-int/lit8 v2, v0, 0x3

    aget-byte v1, p1, v2

    .line 66
    .local v1, tmp:B
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, 0x0

    aget-byte v3, p1, v3

    aput-byte v3, p1, v2

    .line 67
    add-int/lit8 v2, v0, 0x0

    aput-byte v1, p1, v2

    .line 70
    add-int/lit8 v2, v0, 0x2

    aget-byte v1, p1, v2

    .line 71
    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, p1, v2

    .line 72
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 63
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 74
    .end local v1           #tmp:B
    :cond_0
    return-void
.end method

.method private load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    .locals 21
    .parameter "in"
    .parameter "needYFlip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, format:Lcom/jme3/texture/Image$Format;
    invoke-direct/range {p0 .. p1}, Lcom/jme3/texture/plugins/PFMLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, fmtStr:Ljava/lang/String;
    const-string v19, "PF"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 81
    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    .line 88
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/jme3/texture/plugins/PFMLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, sizeStr:Ljava/lang/String;
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 90
    .local v16, spaceIdx:I
    if-lez v16, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 91
    :cond_0
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Invalid size syntax in PFM file"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 82
    .end local v15           #sizeStr:Ljava/lang/String;
    .end local v16           #spaceIdx:I
    :cond_1
    const-string v19, "Pf"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 83
    sget-object v4, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 85
    :cond_2
    new-instance v19, Ljava/io/IOException;

    const-string v20, "File is not PFM format"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 93
    .restart local v15       #sizeStr:Ljava/lang/String;
    .restart local v16       #spaceIdx:I
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 94
    .local v17, width:I
    add-int/lit8 v19, v16, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 96
    .local v5, height:I
    if-lez v17, :cond_4

    if-gtz v5, :cond_5

    .line 97
    :cond_4
    new-instance v19, Ljava/io/IOException;

    const-string v20, "Invalid size specified in PFM file"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 99
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/jme3/texture/plugins/PFMLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, scaleStr:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 101
    .local v11, scale:F
    const/16 v19, 0x0

    cmpg-float v19, v11, v19

    if-gez v19, :cond_9

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 102
    .local v9, order:Ljava/nio/ByteOrder;
    :goto_1
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v9, v0, :cond_a

    const/4 v7, 0x1

    .line 106
    .local v7, needEndienFlip:Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 108
    invoke-virtual {v4}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v19

    div-int/lit8 v2, v19, 0x8

    .line 109
    .local v2, bytesPerPixel:I
    mul-int v13, v2, v17

    .line 111
    .local v13, scanLineBytes:I
    mul-int v19, v17, v5

    mul-int v19, v19, v2

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 112
    .local v6, imageData:Ljava/nio/ByteBuffer;
    mul-int v19, v17, v2

    move/from16 v0, v19

    new-array v14, v0, [B

    .line 114
    .local v14, scanline:[B
    add-int/lit8 v18, v5, -0x1

    .local v18, y:I
    :goto_3
    if-ltz v18, :cond_b

    .line 115
    if-nez p2, :cond_6

    .line 116
    mul-int v19, v13, v18

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    :cond_6
    const/4 v10, 0x0

    .line 119
    .local v10, read:I
    const/4 v8, 0x0

    .line 121
    .local v8, off:I
    :cond_7
    array-length v0, v14

    move/from16 v19, v0

    sub-int v19, v19, v8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v14, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 122
    add-int/2addr v8, v10

    .line 123
    if-gtz v10, :cond_7

    .line 125
    if-eqz v7, :cond_8

    .line 126
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/jme3/texture/plugins/PFMLoader;->flipScanline([B)V

    .line 129
    :cond_8
    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 101
    .end local v2           #bytesPerPixel:I
    .end local v6           #imageData:Ljava/nio/ByteBuffer;
    .end local v7           #needEndienFlip:Z
    .end local v8           #off:I
    .end local v9           #order:Ljava/nio/ByteOrder;
    .end local v10           #read:I
    .end local v13           #scanLineBytes:I
    .end local v14           #scanline:[B
    .end local v18           #y:I
    :cond_9
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    .line 102
    .restart local v9       #order:Ljava/nio/ByteOrder;
    :cond_a
    const/4 v7, 0x0

    goto :goto_2

    .line 131
    .restart local v2       #bytesPerPixel:I
    .restart local v6       #imageData:Ljava/nio/ByteBuffer;
    .restart local v7       #needEndienFlip:Z
    .restart local v13       #scanLineBytes:I
    .restart local v14       #scanline:[B
    .restart local v18       #y:I
    :cond_b
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 133
    new-instance v19, Lcom/jme3/texture/Image;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V

    return-object v19
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
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 55
    .local v0, i:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 58
    :cond_1
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 3
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/asset/TextureKey;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Texture assets must be loaded using a TextureKey"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 142
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/TextureKey;

    invoke-virtual {v1}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/texture/plugins/PFMLoader;->load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    .line 145
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v1
.end method

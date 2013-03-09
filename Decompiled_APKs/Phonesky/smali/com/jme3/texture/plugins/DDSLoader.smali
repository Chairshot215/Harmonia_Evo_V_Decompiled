.class public Lcom/jme3/texture/plugins/DDSLoader;
.super Ljava/lang/Object;
.source "DDSLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG2:D

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private alphaMask:I

.field private blueMask:I

.field private bpp:I

.field private caps1:I

.field private caps2:I

.field private compressed:Z

.field private depth:I

.field private directx10:Z

.field private flags:I

.field private grayscaleOrAlpha:Z

.field private greenMask:I

.field private height:I

.field private in:Ljava/io/DataInput;

.field private mipMapCount:I

.field private normal:Z

.field private pitchOrSize:I

.field private pixelFormat:Lcom/jme3/texture/Image$Format;

.field private redMask:I

.field private sizes:[I

.field private texture3D:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/jme3/texture/plugins/DDSLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/texture/plugins/DDSLoader;->$assertionsDisabled:Z

    .line 62
    const-class v0, Lcom/jme3/texture/plugins/DDSLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    .line 96
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/jme3/texture/plugins/DDSLoader;->LOG2:D

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method private static byte2int([B)I
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 801
    array-length v1, p0

    if-ne v1, v3, :cond_1

    .line 802
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    array-length v1, p0

    if-ne v1, v4, :cond_2

    .line 804
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 805
    :cond_2
    array-length v1, p0

    if-ne v1, v5, :cond_3

    .line 806
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    goto :goto_0

    .line 807
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 808
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aget-byte v1, p0, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private static count(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 781
    if-nez p0, :cond_1

    .line 782
    const/4 v0, 0x0

    .line 794
    :cond_0
    return v0

    .line 785
    :cond_1
    const/4 v0, 0x0

    .line 786
    .local v0, i:I
    :cond_2
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    .line 787
    shr-int/lit8 p0, p0, 0x1

    .line 788
    add-int/lit8 v0, v0, 0x1

    .line 789
    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    .line 790
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static is(II)Z
    .locals 1
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 773
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDX10Header()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 151
    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 152
    .local v1, dxgiFormat:I
    const/16 v4, 0x53

    if-eq v1, v4, :cond_0

    .line 153
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only DXGI_FORMAT_BC5_UNORM is supported for DirectX10 DDS! Got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_0
    sget-object v4, Lcom/jme3/texture/Image$Format;->LATC:Lcom/jme3/texture/Image$Format;

    iput-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 157
    const/16 v4, 0x8

    iput v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 158
    iput-boolean v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    .line 160
    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 161
    .local v3, resDim:I
    if-ne v3, v5, :cond_1

    .line 162
    iput-boolean v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 165
    .local v2, miscFlag:I
    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 166
    .local v0, arraySize:I
    invoke-static {v2, v5}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    .line 169
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cubemaps should consist of 6 images!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v4, v5}, Ljava/io/DataInput;->skipBytes(I)I

    .line 174
    return-void
.end method

.method private loadHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 180
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const v2, 0x20534444

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_1

    .line 181
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a DDS file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    .line 186
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    const/16 v2, 0x1007

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    invoke-static {v1, v3}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mandatory flags missing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 191
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 192
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    .line 193
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    .line 194
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    .line 195
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    const/16 v2, 0x2c

    invoke-interface {v1, v2}, Ljava/io/DataInput;->skipBytes(I)I

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 197
    iput-boolean v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    .line 198
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->readPixelFormat()V

    .line 199
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps1:I

    .line 200
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps2:I

    .line 201
    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Ljava/io/DataInput;->skipBytes(I)I

    .line 202
    iput-boolean v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    .line 204
    iget-boolean v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    if-nez v1, :cond_6

    .line 205
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps1:I

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File is not a texture"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_3
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-gtz v1, :cond_4

    .line 210
    iput v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    .line 213
    :cond_4
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps2:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    iput v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    .line 217
    :cond_5
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps2:I

    const/high16 v2, 0x20

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 218
    iput-boolean v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    .line 222
    :cond_6
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget-wide v3, Lcom/jme3/texture/plugins/DDSLoader;->LOG2:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 224
    .local v0, expectedMipmaps:I
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->caps1:I

    const/high16 v2, 0x40

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 225
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    const/high16 v2, 0x2

    invoke-static {v1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v1

    if-nez v1, :cond_9

    .line 226
    iput v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    .line 237
    :cond_7
    :goto_0
    iget-boolean v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    if-eqz v1, :cond_8

    .line 238
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadDX10Header()V

    .line 241
    :cond_8
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadSizes()V

    .line 242
    return-void

    .line 227
    :cond_9
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-eq v1, v0, :cond_7

    .line 230
    sget-object v1, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Got {0} mipmaps, expected {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_a
    iput v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    goto :goto_0
.end method

.method private loadSizes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 391
    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 392
    .local v2, mipWidth:I
    iget v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 394
    .local v1, mipHeight:I
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    .line 395
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v5}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v3

    .line 396
    .local v3, outBpp:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v0, v5, :cond_1

    .line 398
    iget-boolean v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v5, :cond_0

    .line 399
    add-int/lit8 v5, v2, 0x3

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x4

    mul-int/2addr v5, v6

    mul-int/2addr v5, v3

    mul-int/lit8 v4, v5, 0x2

    .line 404
    .local v4, size:I
    :goto_1
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    add-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x4

    aput v6, v5, v0

    .line 406
    div-int/lit8 v5, v2, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 407
    div-int/lit8 v5, v1, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v4           #size:I
    :cond_0
    mul-int v5, v2, v1

    mul-int/2addr v5, v3

    div-int/lit8 v4, v5, 0x8

    .restart local v4       #size:I
    goto :goto_1

    .line 409
    .end local v4           #size:I
    :cond_1
    return-void
.end method

.method private readPixelFormat()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 248
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 249
    .local v2, pfSize:I
    const/16 v5, 0x20

    if-eq v2, v5, :cond_0

    .line 250
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pixel format size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not 32"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 254
    .local v1, pfFlags:I
    const/high16 v5, -0x8000

    invoke-static {v1, v5}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->normal:Z

    .line 256
    invoke-static {v1, v7}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 257
    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    .line 258
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 259
    .local v0, fourcc:I
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 260
    .local v4, swizzle:I
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Ljava/io/DataInput;->skipBytes(I)I

    .line 262
    sparse-switch v0, :sswitch_data_0

    .line 297
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown fourcc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/jme3/texture/plugins/DDSLoader;->string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    :sswitch_0
    iput v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 265
    invoke-static {v1, v10}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    sget-object v5, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 300
    :cond_1
    :goto_0
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    add-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    mul-int/2addr v5, v6

    mul-int/lit8 v3, v5, 0x2

    .line 302
    .local v3, size:I
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    const/high16 v6, 0x8

    invoke-static {v5, v6}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 303
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    if-nez v5, :cond_4

    .line 304
    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Must use linear size with fourcc"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 305
    iput v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    .line 385
    .end local v0           #fourcc:I
    .end local v3           #size:I
    .end local v4           #swizzle:I
    :cond_2
    :goto_1
    return-void

    .line 268
    .restart local v0       #fourcc:I
    .restart local v4       #swizzle:I
    :cond_3
    sget-object v5, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 272
    :sswitch_1
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 273
    sget-object v5, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 276
    :sswitch_2
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 277
    sget-object v5, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 278
    const v5, 0x78477852

    if-ne v4, v5, :cond_1

    .line 279
    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->normal:Z

    goto :goto_0

    .line 283
    :sswitch_3
    iput v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 284
    sget-object v5, Lcom/jme3/texture/Image$Format;->LTC:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 287
    :sswitch_4
    iput v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 288
    sget-object v5, Lcom/jme3/texture/Image$Format;->LATC:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 291
    :sswitch_5
    iput-boolean v11, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    .line 292
    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->directx10:Z

    goto :goto_1

    .line 306
    .restart local v3       #size:I
    :cond_4
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    if-eq v5, v3, :cond_2

    .line 307
    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Expected size = {0}, real = {1}"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    :cond_5
    iput v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    goto :goto_1

    .line 314
    .end local v0           #fourcc:I
    .end local v3           #size:I
    .end local v4           #swizzle:I
    :cond_6
    iput-boolean v11, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    .line 317
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    .line 319
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    .line 320
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    .line 321
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    .line 322
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    .line 323
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    .line 325
    const/16 v5, 0x40

    invoke-static {v1, v5}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 326
    invoke-static {v1, v10}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 327
    sget-object v5, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 371
    :goto_2
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    div-int/lit8 v5, v5, 0x8

    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    mul-int v3, v5, v6

    .line 373
    .restart local v3       #size:I
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->flags:I

    const/high16 v6, 0x8

    invoke-static {v5, v6}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 374
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    if-nez v5, :cond_c

    .line 375
    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Linear size said to contain valid value but does not"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 376
    iput v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    goto/16 :goto_1

    .line 329
    .end local v3           #size:I
    :cond_7
    sget-object v5, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_2

    .line 331
    :cond_8
    const/high16 v5, 0x2

    invoke-static {v1, v5}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v1, v10}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 332
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sparse-switch v5, :sswitch_data_1

    .line 340
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported GrayscaleAlpha BPP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 334
    :sswitch_6
    sget-object v5, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 342
    :goto_3
    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    goto :goto_2

    .line 337
    :sswitch_7
    sget-object v5, Lcom/jme3/texture/Image$Format;->Luminance16Alpha16:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_3

    .line 343
    :cond_9
    const/high16 v5, 0x2

    invoke-static {v1, v5}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 344
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sparse-switch v5, :sswitch_data_2

    .line 352
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported Grayscale BPP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 346
    :sswitch_8
    sget-object v5, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 354
    :goto_4
    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    goto/16 :goto_2

    .line 349
    :sswitch_9
    sget-object v5, Lcom/jme3/texture/Image$Format;->Luminance16:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_4

    .line 355
    :cond_a
    invoke-static {v1, v8}, Lcom/jme3/texture/plugins/DDSLoader;->is(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 356
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    sparse-switch v5, :sswitch_data_3

    .line 364
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported Alpha BPP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 358
    :sswitch_a
    sget-object v5, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    .line 366
    :goto_5
    iput-boolean v10, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    goto/16 :goto_2

    .line 361
    :sswitch_b
    sget-object v5, Lcom/jme3/texture/Image$Format;->Alpha16:Lcom/jme3/texture/Image$Format;

    iput-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_5

    .line 368
    :cond_b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unknown PixelFormat in DDS file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 377
    .restart local v3       #size:I
    :cond_c
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    if-eq v5, v3, :cond_2

    .line 378
    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Expected size = {0}, real = {1}"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 382
    :cond_d
    iput v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->pitchOrSize:I

    goto/16 :goto_1

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x30315844 -> :sswitch_5
        0x31495441 -> :sswitch_3
        0x31545844 -> :sswitch_0
        0x32495441 -> :sswitch_4
        0x33545844 -> :sswitch_1
        0x35545844 -> :sswitch_2
    .end sparse-switch

    .line 332
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
    .end sparse-switch

    .line 344
    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_8
        0x10 -> :sswitch_9
    .end sparse-switch

    .line 356
    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_a
        0x10 -> :sswitch_b
    .end sparse-switch
.end method

.method private static string(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .local v0, buf:Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 822
    const/high16 v1, 0xff

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    const/high16 v1, 0xff0

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flipData([BII)[B
    .locals 4
    .parameter "data"
    .parameter "scanlineSize"
    .parameter "height"

    .prologue
    .line 419
    array-length v2, p1

    new-array v0, v2, [B

    .line 421
    .local v0, newData:[B
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 422
    mul-int v2, v1, p2

    sub-int v3, p3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p2

    invoke-static {p1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    return-object v0
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 8
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/asset/TextureKey;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Texture assets must be loaded using a TextureKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const/4 v7, 0x0

    .line 126
    .local v7, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 127
    new-instance v0, Lcom/jme3/util/LittleEndien;

    invoke-direct {v0, v7}, Lcom/jme3/util/LittleEndien;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    .line 128
    invoke-direct {p0}, Lcom/jme3/texture/plugins/DDSLoader;->loadHeader()V

    .line 129
    iget-boolean v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    invoke-virtual {v0}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/texture/plugins/DDSLoader;->readData(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 135
    .local v5, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    new-instance v0, Lcom/jme3/texture/Image;

    iget-object v1, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    iget v2, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    iget-object v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v7, :cond_2

    .line 138
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0

    .line 131
    .end local v5           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/TextureKey;

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 138
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0
.end method

.method public readDXT2D(ZI)Ljava/nio/ByteBuffer;
    .locals 10
    .parameter "flip"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 539
    sget-object v7, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v8, "Source image format: DXT"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 541
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 543
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 544
    .local v5, mipWidth:I
    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 546
    .local v4, mipHeight:I
    const/4 v3, 0x0

    .local v3, mip:I
    :goto_0
    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v3, v7, :cond_1

    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v7, v7, v3

    new-array v1, v7, [B

    .line 549
    .local v1, data:[B
    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v7, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 550
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 551
    .local v6, wrapped:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 552
    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v6, v5, v4, v7}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 553
    .local v2, flipped:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 560
    .end local v2           #flipped:Ljava/nio/ByteBuffer;
    .end local v6           #wrapped:Ljava/nio/ByteBuffer;
    :goto_1
    div-int/lit8 v7, v5, 0x2

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 561
    div-int/lit8 v7, v4, 0x2

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    .end local v1           #data:[B
    :cond_0
    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v7, v7, v3

    new-array v1, v7, [B

    .line 556
    .restart local v1       #data:[B
    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v7, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 557
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 563
    .end local v1           #data:[B
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 565
    return-object v0
.end method

.method public readDXT3D(ZI)Ljava/nio/ByteBuffer;
    .locals 12
    .parameter "flip"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 682
    sget-object v9, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v10, "Source image format: DXT"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 684
    iget v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    mul-int/2addr v9, p2

    invoke-static {v9}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 686
    .local v1, bufferAll:Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v4, v9, :cond_2

    .line 687
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 688
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 689
    .local v7, mipWidth:I
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 690
    .local v6, mipHeight:I
    const/4 v5, 0x0

    .local v5, mip:I
    :goto_1
    iget v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v5, v9, :cond_1

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iget-object v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v9, v9, v5

    new-array v2, v9, [B

    .line 693
    .local v2, data:[B
    iget-object v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v9, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 694
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 695
    .local v8, wrapped:Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 696
    iget-object v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-static {v8, v7, v6, v9}, Lcom/jme3/texture/plugins/DXTFlipper;->flipDXT(Ljava/nio/ByteBuffer;IILcom/jme3/texture/Image$Format;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 697
    .local v3, flipped:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 698
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 705
    .end local v3           #flipped:Ljava/nio/ByteBuffer;
    .end local v8           #wrapped:Ljava/nio/ByteBuffer;
    :goto_2
    div-int/lit8 v9, v7, 0x2

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 706
    div-int/lit8 v9, v6, 0x2

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 690
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 700
    .end local v2           #data:[B
    :cond_0
    iget-object v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v9, v9, v5

    new-array v2, v9, [B

    .line 701
    .restart local v2       #data:[B
    iget-object v9, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v9, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 702
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 708
    .end local v2           #data:[B
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 709
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 686
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 712
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v5           #mip:I
    .end local v6           #mipHeight:I
    .end local v7           #mipWidth:I
    :cond_2
    return-object v1
.end method

.method public readData(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "flip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v2, 0x0

    .line 732
    .local v2, totalSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 733
    iget-object v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, allMaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    if-nez v3, :cond_3

    .line 738
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v1, v3, :cond_4

    .line 739
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v3, :cond_1

    .line 740
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readDXT2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 741
    :cond_1
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    if-eqz v3, :cond_2

    .line 742
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readGrayscale2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 744
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readRGB2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 747
    :cond_3
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->texture3D:Z

    if-eqz v3, :cond_7

    .line 748
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v3, :cond_5

    .line 749
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readDXT3D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_4
    :goto_3
    return-object v0

    .line 750
    :cond_5
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    if-eqz v3, :cond_6

    .line 751
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readGrayscale3D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 753
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readRGB3D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 757
    :cond_7
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->compressed:Z

    if-eqz v3, :cond_8

    .line 758
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readDXT2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 759
    :cond_8
    iget-boolean v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->grayscaleOrAlpha:Z

    if-eqz v3, :cond_9

    .line 760
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readGrayscale2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 762
    :cond_9
    invoke-virtual {p0, p1, v2}, Lcom/jme3/texture/plugins/DDSLoader;->readRGB2D(ZI)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public readGrayscale2D(ZI)Ljava/nio/ByteBuffer;
    .locals 8
    .parameter "flip"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 438
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 440
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 441
    sget-object v5, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Source image format: R8"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 444
    :cond_0
    sget-boolean v5, Lcom/jme3/texture/plugins/DDSLoader;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    iget-object v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v6

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 446
    :cond_1
    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 447
    .local v4, mipWidth:I
    iget v3, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 449
    .local v3, mipHeight:I
    const/4 v2, 0x0

    .local v2, mip:I
    :goto_0
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v2, v5, :cond_3

    .line 450
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v5, v5, v2

    new-array v1, v5, [B

    .line 451
    .local v1, data:[B
    iget-object v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v5, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 452
    if-eqz p1, :cond_2

    .line 453
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {p0, v1, v5, v3}, Lcom/jme3/texture/plugins/DDSLoader;->flipData([BII)[B

    move-result-object v1

    .line 455
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 457
    div-int/lit8 v5, v4, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 458
    div-int/lit8 v5, v3, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v1           #data:[B
    :cond_3
    return-object v0
.end method

.method public readGrayscale3D(ZI)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter "flip"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 576
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    mul-int/2addr v6, p2

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 579
    sget-object v6, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v7, "Source image format: R8"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 582
    :cond_0
    sget-boolean v6, Lcom/jme3/texture/plugins/DDSLoader;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    iget-object v7, p0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v7}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v7

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 585
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    if-ge v2, v6, :cond_4

    .line 586
    iget v5, p0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 587
    .local v5, mipWidth:I
    iget v4, p0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 589
    .local v4, mipHeight:I
    const/4 v3, 0x0

    .local v3, mip:I
    :goto_1
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    if-ge v3, v6, :cond_3

    .line 590
    iget-object v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->sizes:[I

    aget v6, v6, v3

    new-array v1, v6, [B

    .line 591
    .local v1, data:[B
    iget-object v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    invoke-interface {v6, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 592
    if-eqz p1, :cond_2

    .line 593
    iget v6, p0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    mul-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {p0, v1, v6, v4}, Lcom/jme3/texture/plugins/DDSLoader;->flipData([BII)[B

    move-result-object v1

    .line 595
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 597
    div-int/lit8 v6, v5, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 598
    div-int/lit8 v6, v4, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 585
    .end local v1           #data:[B
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v3           #mip:I
    .end local v4           #mipHeight:I
    .end local v5           #mipWidth:I
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 602
    return-object v0
.end method

.method public readRGB2D(ZI)Ljava/nio/ByteBuffer;
    .locals 23
    .parameter "flip"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v16

    .line 474
    .local v16, redCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v6

    .line 475
    .local v6, blueCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v9

    .line 476
    .local v9, greenCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v3

    .line 478
    .local v3, alphaCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    move/from16 v21, v0

    const/high16 v22, 0xff

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    move/from16 v21, v0

    const v22, 0xff00

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    move/from16 v21, v0

    const/16 v22, 0xff

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v21, v0

    const/high16 v22, -0x100

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    move/from16 v21, v0

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 480
    sget-object v21, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v22, "Data source format: BGRA8"

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 486
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    move/from16 v21, v0

    div-int/lit8 v17, v21, 0x8

    .line 487
    .local v17, sourcebytesPP:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v21

    div-int/lit8 v18, v21, 0x8

    .line 489
    .local v18, targetBytesPP:I
    invoke-static/range {p2 .. p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 491
    .local v7, dataBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 492
    .local v13, mipWidth:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 494
    .local v12, mipHeight:I
    const/4 v14, 0x0

    .line 495
    .local v14, offset:I
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 496
    .local v4, b:[B
    const/4 v11, 0x0

    .local v11, mip:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 497
    const/16 v20, 0x0

    .local v20, y:I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v12, :cond_5

    .line 498
    const/16 v19, 0x0

    .local v19, x:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v13, :cond_4

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 501
    invoke-static {v4}, Lcom/jme3/texture/plugins/DDSLoader;->byte2int([B)I

    move-result v10

    .line 503
    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    move/from16 v21, v0

    and-int v21, v21, v10

    shr-int v21, v21, v16

    move/from16 v0, v21

    int-to-byte v15, v0

    .line 504
    .local v15, red:B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    move/from16 v21, v0

    and-int v21, v21, v10

    shr-int v21, v21, v9

    move/from16 v0, v21

    int-to-byte v8, v0

    .line 505
    .local v8, green:B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    move/from16 v21, v0

    and-int v21, v21, v10

    shr-int v21, v21, v6

    move/from16 v0, v21

    int-to-byte v5, v0

    .line 506
    .local v5, blue:B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v21, v0

    and-int v21, v21, v10

    shr-int v21, v21, v3

    move/from16 v0, v21

    int-to-byte v2, v0

    .line 508
    .local v2, alpha:B
    if-eqz p1, :cond_1

    .line 509
    sub-int v21, v12, v20

    add-int/lit8 v21, v21, -0x1

    mul-int v21, v21, v13

    add-int v21, v21, v19

    mul-int v21, v21, v18

    add-int v21, v21, v14

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 515
    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 498
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 481
    .end local v2           #alpha:B
    .end local v4           #b:[B
    .end local v5           #blue:B
    .end local v7           #dataBuffer:Ljava/nio/ByteBuffer;
    .end local v8           #green:B
    .end local v10           #i:I
    .end local v11           #mip:I
    .end local v12           #mipHeight:I
    .end local v13           #mipWidth:I
    .end local v14           #offset:I
    .end local v15           #red:B
    .end local v17           #sourcebytesPP:I
    .end local v18           #targetBytesPP:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    move/from16 v21, v0

    const/16 v22, 0x18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 482
    sget-object v21, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v22, "Data source format: BGR8"

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    .restart local v2       #alpha:B
    .restart local v4       #b:[B
    .restart local v5       #blue:B
    .restart local v7       #dataBuffer:Ljava/nio/ByteBuffer;
    .restart local v8       #green:B
    .restart local v10       #i:I
    .restart local v11       #mip:I
    .restart local v12       #mipHeight:I
    .restart local v13       #mipWidth:I
    .restart local v14       #offset:I
    .restart local v15       #red:B
    .restart local v17       #sourcebytesPP:I
    .restart local v18       #targetBytesPP:I
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_3
    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 497
    .end local v2           #alpha:B
    .end local v5           #blue:B
    .end local v8           #green:B
    .end local v10           #i:I
    .end local v15           #red:B
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 522
    .end local v19           #x:I
    :cond_5
    mul-int v21, v13, v12

    mul-int v21, v21, v18

    add-int v14, v14, v21

    .line 524
    div-int/lit8 v21, v13, 0x2

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 525
    div-int/lit8 v21, v12, 0x2

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 496
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 528
    .end local v20           #y:I
    :cond_6
    return-object v7
.end method

.method public readRGB3D(ZI)Ljava/nio/ByteBuffer;
    .locals 24
    .parameter "flip"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v17

    .line 615
    .local v17, redCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v6

    .line 616
    .local v6, blueCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v9

    .line 617
    .local v9, greenCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/jme3/texture/plugins/DDSLoader;->count(I)I

    move-result v3

    .line 619
    .local v3, alphaCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    move/from16 v22, v0

    const/high16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    move/from16 v22, v0

    const v23, 0xff00

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    move/from16 v22, v0

    const/16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v22, v0

    const/high16 v23, -0x100

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    move/from16 v22, v0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 621
    sget-object v22, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v23, "Data source format: BGRA8"

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 627
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    move/from16 v22, v0

    div-int/lit8 v18, v22, 0x8

    .line 628
    .local v18, sourcebytesPP:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->pixelFormat:Lcom/jme3/texture/Image$Format;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v22

    div-int/lit8 v19, v22, 0x8

    .line 630
    .local v19, targetBytesPP:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    move/from16 v22, v0

    mul-int v22, v22, p2

    invoke-static/range {v22 .. v22}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 632
    .local v7, dataBuffer:Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .local v11, k:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->depth:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_7

    .line 634
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/texture/plugins/DDSLoader;->width:I

    .line 635
    .local v14, mipWidth:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jme3/texture/plugins/DDSLoader;->height:I

    .line 636
    .local v13, mipHeight:I
    mul-int v15, v11, p2

    .line 637
    .local v15, offset:I
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 638
    .local v4, b:[B
    const/4 v12, 0x0

    .local v12, mip:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->mipMapCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 639
    const/16 v21, 0x0

    .local v21, y:I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v13, :cond_5

    .line 640
    const/16 v20, 0x0

    .local v20, x:I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v14, :cond_4

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->in:Ljava/io/DataInput;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 643
    invoke-static {v4}, Lcom/jme3/texture/plugins/DDSLoader;->byte2int([B)I

    move-result v10

    .line 645
    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->redMask:I

    move/from16 v22, v0

    and-int v22, v22, v10

    shr-int v22, v22, v17

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 646
    .local v16, red:B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->greenMask:I

    move/from16 v22, v0

    and-int v22, v22, v10

    shr-int v22, v22, v9

    move/from16 v0, v22

    int-to-byte v8, v0

    .line 647
    .local v8, green:B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->blueMask:I

    move/from16 v22, v0

    and-int v22, v22, v10

    shr-int v22, v22, v6

    move/from16 v0, v22

    int-to-byte v5, v0

    .line 648
    .local v5, blue:B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v22, v0

    and-int v22, v22, v10

    shr-int v22, v22, v3

    move/from16 v0, v22

    int-to-byte v2, v0

    .line 650
    .local v2, alpha:B
    if-eqz p1, :cond_1

    .line 651
    sub-int v22, v13, v21

    add-int/lit8 v22, v22, -0x1

    mul-int v22, v22, v14

    add-int v22, v22, v20

    mul-int v22, v22, v19

    add-int v22, v22, v15

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 656
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->alphaMask:I

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 657
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 622
    .end local v2           #alpha:B
    .end local v4           #b:[B
    .end local v5           #blue:B
    .end local v7           #dataBuffer:Ljava/nio/ByteBuffer;
    .end local v8           #green:B
    .end local v10           #i:I
    .end local v11           #k:I
    .end local v12           #mip:I
    .end local v13           #mipHeight:I
    .end local v14           #mipWidth:I
    .end local v15           #offset:I
    .end local v16           #red:B
    .end local v18           #sourcebytesPP:I
    .end local v19           #targetBytesPP:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/texture/plugins/DDSLoader;->bpp:I

    move/from16 v22, v0

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 623
    sget-object v22, Lcom/jme3/texture/plugins/DDSLoader;->logger:Ljava/util/logging/Logger;

    const-string v23, "Data source format: BGR8"

    invoke-virtual/range {v22 .. v23}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    .restart local v2       #alpha:B
    .restart local v4       #b:[B
    .restart local v5       #blue:B
    .restart local v7       #dataBuffer:Ljava/nio/ByteBuffer;
    .restart local v8       #green:B
    .restart local v10       #i:I
    .restart local v11       #k:I
    .restart local v12       #mip:I
    .restart local v13       #mipHeight:I
    .restart local v14       #mipWidth:I
    .restart local v15       #offset:I
    .restart local v16       #red:B
    .restart local v18       #sourcebytesPP:I
    .restart local v19       #targetBytesPP:I
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_3
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 639
    .end local v2           #alpha:B
    .end local v5           #blue:B
    .end local v8           #green:B
    .end local v10           #i:I
    .end local v16           #red:B
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 664
    .end local v20           #x:I
    :cond_5
    mul-int v22, v14, v13

    mul-int v22, v22, v19

    add-int v15, v15, v22

    .line 666
    div-int/lit8 v22, v14, 0x2

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 667
    div-int/lit8 v22, v13, 0x2

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 638
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 632
    .end local v21           #y:I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 670
    .end local v4           #b:[B
    .end local v12           #mip:I
    .end local v13           #mipHeight:I
    .end local v14           #mipWidth:I
    .end local v15           #offset:I
    :cond_7
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 671
    return-object v7
.end method

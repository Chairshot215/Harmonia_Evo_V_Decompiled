.class public Lcom/gracenote/media/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private littleEndianToBigEndianInt(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 67
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private littleEndianToBigEndianShort(I)I
    .locals 3
    .parameter "val"

    .prologue
    .line 61
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, p1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public extractWavHeader(Ljava/io/File;)Lcom/gracenote/media/WavHeader;
    .locals 13
    .parameter "wavFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x100

    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 24
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 25
    .local v5, is:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .local v2, dataIn:Ljava/io/DataInputStream;
    new-array v7, v12, [B

    .line 29
    .local v7, tempBytes:[B
    const/16 v9, 0x10

    invoke-virtual {v2, v7, v11, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7, v11, v10}, Ljava/lang/String;-><init>([BII)V

    .line 31
    .local v1, chunkId:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7, v10, v10}, Ljava/lang/String;-><init>([BII)V

    .line 32
    .local v0, chunkDataSize:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    const/16 v9, 0x8

    invoke-direct {v6, v7, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 33
    .local v6, riffType:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const/16 v9, 0xc

    invoke-direct {v3, v7, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 37
    .local v3, fmt:Ljava/lang/String;
    new-instance v8, Lcom/gracenote/media/WavHeader;

    invoke-direct {v8}, Lcom/gracenote/media/WavHeader;-><init>()V

    .line 38
    .local v8, wavheader:Lcom/gracenote/media/WavHeader;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianInt(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->format:I

    .line 39
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianShort(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->encoding:I

    .line 40
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianShort(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->channels:I

    .line 42
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianInt(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->sampleRate:I

    .line 43
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianInt(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->byteRate:I

    .line 44
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianShort(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->bytesPerSample:I

    .line 45
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    invoke-direct {p0, v9}, Lcom/gracenote/media/WavHeaderReader;->littleEndianToBigEndianShort(I)I

    move-result v9

    iput v9, v8, Lcom/gracenote/media/WavHeader;->bitsPerSample:I

    .line 50
    invoke-virtual {v2, v7, v11, v12}, Ljava/io/DataInputStream;->read([BII)I

    .line 51
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 52
    .local v4, headerEndStr:Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x24

    iput v9, v8, Lcom/gracenote/media/WavHeader;->headerLength:I

    .line 53
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 55
    return-object v8
.end method

.class public Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;
.super Ljava/lang/Object;
.source "GNSampleBuffer.java"


# instance fields
.field bytesPerSample:I

.field numChannels:I

.field sampleRate:I

.field samples:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .parameter "inSamples"
    .parameter "inNumChannels"
    .parameter "inSampleRate"

    .prologue
    .line 58
    mul-int/lit8 v0, p2, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;-><init>([BIII)V

    .line 59
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 5
    .parameter "inSamples"
    .parameter "inBytesPerSample"
    .parameter "inNumChannels"
    .parameter "inSampleRate"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    .line 26
    iput p2, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->bytesPerSample:I

    .line 27
    iput p3, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    .line 28
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "numChannels must be 1 or 2"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 29
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->bytesPerSample:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->bytesPerSample:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    move v2, v1

    :cond_1
    const-string v0, "16-bit PCM is required"

    invoke-static {v2, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 31
    sparse-switch p4, :sswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unsupperted sample rate: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 44
    :sswitch_0
    iput p4, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->sampleRate:I

    .line 45
    return-void

    :cond_2
    move v0, v2

    .line 28
    goto :goto_0

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x2b11 -> :sswitch_0
        0x3e80 -> :sswitch_0
        0x5622 -> :sswitch_0
        0x5dc0 -> :sswitch_0
        0x7d00 -> :sswitch_0
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getBytesPerSample()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->bytesPerSample:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->numChannels:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->sampleRate:I

    return v0
.end method

.method public getSamples()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSampleBuffer;->samples:[B

    return-object v0
.end method

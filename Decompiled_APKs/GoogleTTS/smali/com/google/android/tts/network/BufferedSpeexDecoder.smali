.class public Lcom/google/android/tts/network/BufferedSpeexDecoder;
.super Ljava/lang/Object;
.source "BufferedSpeexDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;
    }
.end annotation


# instance fields
.field private mChunkSize:I

.field private mInputBufferSizeBytes:I

.field private mOutputBufferSizeBytes:I

.field private mSynthesisHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "speexwrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    .line 61
    return-void
.end method

.method private static native native_destroy(I)V
.end method

.method private static native native_getChunk(I[BII[BI)I
.end method

.method private static native native_getInputFrameSize(I)I
.end method

.method private static native native_getOutputFrameSize(I)I
.end method

.method private static native native_start(I)I
.end method


# virtual methods
.method public endSynthesis()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 95
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 96
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    invoke-static {v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->native_destroy(I)V

    .line 97
    iput v1, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputBufferSize()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 91
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mInputBufferSizeBytes:I

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextChunk([BII[B)I
    .locals 6
    .parameter "encoded"
    .parameter "offset"
    .parameter "length"
    .parameter "decoded"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->getInputBufferSize()I

    move-result v0

    if-gt p3, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    array-length v0, p4

    invoke-virtual {p0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->getOutputBufferSize()I

    move-result v3

    if-gt v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    array-length v5, p4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->native_getChunk(I[BII[BI)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v1, v2

    .line 78
    goto :goto_2
.end method

.method public getOutputBufferSize()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 86
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mOutputBufferSizeBytes:I

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSynthesis(Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;I)V
    .locals 2
    .parameter "rate"
    .parameter "chunkSize"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/google/android/tts/network/BufferedSpeexDecoder$SamplingRate;->getRate()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->native_start(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    .line 65
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error initializing native decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput p2, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mChunkSize:I

    .line 70
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    invoke-static {v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->native_getOutputFrameSize(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mChunkSize:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mOutputBufferSizeBytes:I

    .line 71
    iget v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mSynthesisHandle:I

    invoke-static {v0}, Lcom/google/android/tts/network/BufferedSpeexDecoder;->native_getInputFrameSize(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mChunkSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/tts/network/BufferedSpeexDecoder;->mInputBufferSizeBytes:I

    .line 72
    return-void
.end method

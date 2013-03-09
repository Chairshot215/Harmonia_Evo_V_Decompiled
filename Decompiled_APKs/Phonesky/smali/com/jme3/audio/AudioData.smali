.class public abstract Lcom/jme3/audio/AudioData;
.super Lcom/jme3/util/NativeObject;
.source "AudioData.java"


# instance fields
.field protected bitsPerSample:I

.field protected channels:I

.field protected sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/jme3/audio/AudioData;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/jme3/audio/AudioData;

    invoke-direct {p0, v0, p1}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public setupFormat(III)V
    .locals 2
    .parameter "channels"
    .parameter "bitsPerSample"
    .parameter "sampleRate"

    .prologue
    .line 102
    iget v0, p0, Lcom/jme3/audio/AudioData;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already set up"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput p1, p0, Lcom/jme3/audio/AudioData;->channels:I

    .line 106
    iput p2, p0, Lcom/jme3/audio/AudioData;->bitsPerSample:I

    .line 107
    iput p3, p0, Lcom/jme3/audio/AudioData;->sampleRate:I

    .line 108
    return-void
.end method

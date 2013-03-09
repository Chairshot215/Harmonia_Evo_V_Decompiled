.class public Lcom/jme3/audio/AudioBuffer;
.super Lcom/jme3/audio/AudioData;
.source "AudioBuffer.java"


# instance fields
.field protected audioData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/jme3/audio/AudioData;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/jme3/audio/AudioData;-><init>(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/jme3/audio/AudioBuffer;

    iget v1, p0, Lcom/jme3/audio/AudioBuffer;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/audio/AudioBuffer;-><init>(I)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 112
    check-cast p1, Lcom/jme3/audio/AudioRenderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/audio/AudioRenderer;->deleteAudioData(Lcom/jme3/audio/AudioData;)V

    .line 113
    return-void
.end method

.method public getDuration()F
    .locals 3

    .prologue
    .line 71
    iget v1, p0, Lcom/jme3/audio/AudioBuffer;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/jme3/audio/AudioBuffer;->channels:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/jme3/audio/AudioBuffer;->sampleRate:I

    mul-int v0, v1, v2

    .line 72
    .local v0, bytesPerSec:I
    iget-object v1, p0, Lcom/jme3/audio/AudioBuffer;->audioData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/jme3/audio/AudioBuffer;->audioData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 75
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc0

    goto :goto_0
.end method

.method public resetObject()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/audio/AudioBuffer;->id:I

    .line 103
    invoke-virtual {p0}, Lcom/jme3/audio/AudioBuffer;->setUpdateNeeded()V

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/audio/AudioBuffer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/audio/AudioBuffer;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/audio/AudioBuffer;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/audio/AudioBuffer;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioBuffer;->getDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jme3/audio/AudioBuffer;->audioData:Ljava/nio/ByteBuffer;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/audio/AudioBuffer;->updateNeeded:Z

    .line 92
    return-void
.end method

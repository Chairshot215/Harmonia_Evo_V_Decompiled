.class public Lcom/jme3/audio/AudioKey;
.super Lcom/jme3/asset/AssetKey;
.source "AudioKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey",
        "<",
        "Lcom/jme3/audio/AudioData;",
        ">;"
    }
.end annotation


# instance fields
.field private stream:Z

.field private streamCache:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    .line 83
    return-void
.end method


# virtual methods
.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->read(Lcom/jme3/export/JmeImporter;)V

    .line 132
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 133
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "do_stream"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    .line 134
    const-string v1, "use_stream_cache"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    .line 135
    return-void
.end method

.method public shouldCache()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/audio/AudioKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->stream:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioKey;->streamCache:Z

    if-eqz v0, :cond_0

    const-string v0, " (Stream/Cache)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " (Stream)"

    goto :goto_0

    :cond_1
    const-string v0, " (Buffer)"

    goto :goto_0
.end method

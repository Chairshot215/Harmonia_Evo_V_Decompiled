.class public Lcom/jme3/audio/AudioNode;
.super Lcom/jme3/scene/Node;
.source "AudioNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/AudioNode$Status;
    }
.end annotation


# instance fields
.field protected audioKey:Lcom/jme3/audio/AudioKey;

.field protected volatile transient channel:I

.field protected transient data:Lcom/jme3/audio/AudioData;

.field protected direction:Lcom/jme3/math/Vector3f;

.field private directional:Z

.field protected dryFilter:Lcom/jme3/audio/Filter;

.field protected innerAngle:F

.field protected loop:Z

.field protected maxDistance:F

.field protected outerAngle:F

.field protected pitch:F

.field protected positional:Z

.field protected refDistance:F

.field protected reverbEnabled:Z

.field protected reverbFilter:Lcom/jme3/audio/Filter;

.field protected volatile transient status:Lcom/jme3/audio/AudioNode$Status;

.field protected timeOffset:F

.field protected velocity:Lcom/jme3/math/Vector3f;

.field protected volume:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x43b4

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    .line 66
    iput-boolean v4, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    .line 67
    iput v2, p0, Lcom/jme3/audio/AudioNode;->volume:F

    .line 68
    iput v2, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    .line 69
    iput v1, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    .line 73
    sget-object v0, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioNode$Status;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/audio/AudioNode;->channel:I

    .line 75
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    .line 76
    iput-boolean v5, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    .line 77
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    .line 78
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    .line 80
    iput-boolean v4, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    .line 81
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    .line 82
    iput v3, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    .line 83
    iput v3, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    .line 84
    iput-boolean v5, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    .line 113
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/audio/AudioNode;
    .locals 2

    .prologue
    .line 722
    invoke-super {p0}, Lcom/jme3/scene/Node;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioNode;

    .line 724
    .local v0, clone:Lcom/jme3/audio/AudioNode;
    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    .line 725
    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    .line 727
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->clone()Lcom/jme3/audio/AudioNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->clone()Lcom/jme3/audio/AudioNode;

    move-result-object v0

    return-object v0
.end method

.method public getAudioData()Lcom/jme3/audio/AudioData;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    return-object v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/jme3/audio/AudioNode;->channel:I

    return v0
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDryFilter()Lcom/jme3/audio/Filter;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    return-object v0
.end method

.method public getMaxDistance()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    return v0
.end method

.method public getRefDistance()F
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    return v0
.end method

.method protected getRenderer()Lcom/jme3/audio/AudioRenderer;
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lcom/jme3/audio/AudioContext;->getAudioRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    .line 237
    .local v0, result:Lcom/jme3/audio/AudioRenderer;
    if-nez v0, :cond_0

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No audio renderer available, make sure call is being performed on render thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    return-object v0
.end method

.method public getVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/jme3/audio/AudioNode;->volume:F

    return v0
.end method

.method public isDirectional()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    return v0
.end method

.method public isPositional()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    return v0
.end method

.method public isReverbEnabled()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x43b4

    const/high16 v2, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 757
    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    .line 758
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 763
    const-class v0, Lcom/jme3/audio/AudioNode;

    invoke-interface {v1, v0}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_1

    .line 764
    const-string v0, "key"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioKey;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    .line 769
    :goto_0
    const-string v0, "looping"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    .line 770
    const-string v0, "volume"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->volume:F

    .line 771
    const-string v0, "pitch"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    .line 772
    const-string v0, "time_offset"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    .line 773
    const-string v0, "dry_filter"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/Filter;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    .line 775
    const-string v0, "velocity"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    .line 776
    const-string v0, "reverb_enabled"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    .line 777
    const-string v0, "reverb_filter"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/Filter;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    .line 778
    const-string v0, "max_distance"

    const/high16 v2, 0x41a0

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    .line 779
    const-string v0, "ref_distance"

    const/high16 v2, 0x4120

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    .line 781
    const-string v0, "directional"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    .line 782
    const-string v0, "direction"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    .line 783
    const-string v0, "inner_angle"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    .line 784
    const-string v0, "outer_angle"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    .line 786
    const-string v0, "positional"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    .line 788
    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    if-eqz v0, :cond_0

    .line 790
    :try_start_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAudio(Lcom/jme3/audio/AudioKey;)Lcom/jme3/audio/AudioData;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_0
    :goto_1
    return-void

    .line 766
    :cond_1
    const-string v0, "audio_key"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioKey;

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    goto/16 :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    const-class v0, Lcom/jme3/audio/AudioNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Cannot locate {0} for audio node {1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jme3/audio/AudioNode;->key:Lcom/jme3/asset/AssetKey;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderAudio()Lcom/jme3/audio/AudioData;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    goto :goto_1
.end method

.method public final setChannel(I)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioNode$Status;

    sget-object v1, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    if-eq v0, v1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only set source id when stopped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iput p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    .line 282
    return-void
.end method

.method public final setStatus(Lcom/jme3/audio/AudioNode$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioNode$Status;

    .line 357
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioNode$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/jme3/audio/AudioNode;->volume:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/audio/AudioNode;->volume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_0
    iget v1, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateGeometricState()V
    .locals 3

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, updatePos:Z
    iget v1, p0, Lcom/jme3/audio/AudioNode;->refreshFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 711
    const/4 v0, 0x1

    .line 714
    :cond_0
    invoke-super {p0}, Lcom/jme3/scene/Node;->updateGeometricState()V

    .line 716
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz v1, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v1

    sget-object v2, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    invoke-interface {v1, p0, v2}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioNode;Lcom/jme3/audio/AudioParam;)V

    .line 718
    :cond_1
    return-void
.end method

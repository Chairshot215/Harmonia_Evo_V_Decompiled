.class public Lcom/jme3/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private length:F

.field private name:Ljava/lang/String;

.field private tracks:[Lcom/jme3/animation/Track;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .parameter "name"
    .parameter "length"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/jme3/animation/Animation;->name:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/jme3/animation/Animation;->length:F

    .line 74
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/animation/Animation;
    .locals 5

    .prologue
    .line 171
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/Animation;

    .line 172
    .local v2, result:Lcom/jme3/animation/Animation;
    iget-object v3, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    invoke-virtual {v3}, [Lcom/jme3/animation/Track;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/jme3/animation/Track;

    iput-object v3, v2, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    .line 173
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 174
    iget-object v3, v2, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    iget-object v4, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lcom/jme3/animation/Track;->clone()Lcom/jme3/animation/Track;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1           #i:I
    .end local v2           #result:Lcom/jme3/animation/Animation;
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 176
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    .restart local v1       #i:I
    .restart local v2       #result:Lcom/jme3/animation/Animation;
    :cond_0
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->clone()Lcom/jme3/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getLength()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/jme3/animation/Animation;->length:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jme3/animation/Animation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 197
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 198
    .local v1, in:Lcom/jme3/export/InputCapsule;
    const-string v2, "name"

    invoke-interface {v1, v2, v5}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/animation/Animation;->name:Ljava/lang/String;

    .line 199
    const-string v2, "length"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/animation/Animation;->length:F

    .line 201
    const-string v2, "tracks"

    invoke-interface {v1, v2, v5}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    .line 202
    .local v0, arr:[Lcom/jme3/export/Savable;
    array-length v2, v0

    new-array v2, v2, [Lcom/jme3/animation/Track;

    iput-object v2, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    .line 203
    iget-object v2, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    return-void
.end method

.method setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 7
    .parameter "time"
    .parameter "blendAmount"
    .parameter "control"
    .parameter "channel"
    .parameter "vars"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    return-void

    .line 107
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    aget-object v0, v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/jme3/animation/Track;->setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public setTracks([Lcom/jme3/animation/Track;)V
    .locals 0
    .parameter "tracks"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jme3/animation/Animation;->tracks:[Lcom/jme3/animation/Track;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/animation/Animation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/animation/Animation;->length:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/jme3/light/Light;
.super Ljava/lang/Object;
.source "Light.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/light/Light$Type;
    }
.end annotation


# instance fields
.field protected color:Lcom/jme3/math/ColorRGBA;

.field protected enabled:Z

.field protected transient lastDistance:F

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    .line 101
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jme3/light/Light;->lastDistance:F

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/light/Light;
    .locals 2

    .prologue
    .line 176
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/Light;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jme3/light/Light;->clone()Lcom/jme3/light/Light;

    move-result-object v0

    return-object v0
.end method

.method protected abstract computeLastDistance(Lcom/jme3/scene/Spatial;)V
.end method

.method public getColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public abstract getType()Lcom/jme3/light/Light$Type;
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 191
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "color"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/ColorRGBA;

    iput-object v1, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    .line 192
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/light/Light;->enabled:Z

    .line 193
    const-string v1, "name"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/light/Light;->name:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 157
    return-void
.end method

.class public Lcom/jme3/shader/ShaderVariable;
.super Ljava/lang/Object;
.source "ShaderVariable.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field protected location:I

.field protected name:Ljava/lang/String;

.field protected updateNeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x2

    iput v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 64
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLocation(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 68
    iput p1, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    .line 69
    return-void
.end method

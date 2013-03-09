.class public Lcom/jme3/shader/ShaderKey;
.super Lcom/jme3/asset/AssetKey;
.source "ShaderKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey",
        "<",
        "Lcom/jme3/shader/Shader;",
        ">;"
    }
.end annotation


# instance fields
.field protected defines:Lcom/jme3/shader/DefineList;

.field protected fragName:Ljava/lang/String;

.field protected language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/shader/DefineList;Ljava/lang/String;)V
    .locals 0
    .parameter "vertName"
    .parameter "fragName"
    .parameter "defines"
    .parameter "lang"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    .line 55
    iput-object p4, p0, Lcom/jme3/shader/ShaderKey;->language:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/jme3/shader/ShaderKey;

    .line 73
    .local v0, other:Lcom/jme3/shader/ShaderKey;
    iget-object v2, p0, Lcom/jme3/shader/ShaderKey;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/jme3/shader/ShaderKey;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    iget-object v3, v0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    if-eqz v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v1}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v2}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    if-nez v2, :cond_0

    .line 80
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDefines()Lcom/jme3/shader/DefineList;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    return-object v0
.end method

.method public getFragName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jme3/shader/ShaderKey;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getVertName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jme3/shader/ShaderKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x7

    .line 88
    .local v0, hash:I
    iget-object v1, p0, Lcom/jme3/shader/ShaderKey;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x11f

    .line 89
    mul-int/lit8 v1, v0, 0x29

    iget-object v2, p0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 90
    mul-int/lit8 v2, v0, 0x29

    iget-object v1, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v1}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 91
    return v0

    .line 90
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    const/4 v2, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->read(Lcom/jme3/export/JmeImporter;)V

    .line 121
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 122
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "fragment_name"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    .line 123
    const-string v1, "language"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/shader/ShaderKey;->language:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/ShaderKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/ShaderKey;->fragName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/shader/ShaderKey;->defines:Lcom/jme3/shader/DefineList;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

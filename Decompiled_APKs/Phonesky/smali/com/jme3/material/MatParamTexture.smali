.class public Lcom/jme3/material/MatParamTexture;
.super Lcom/jme3/material/MatParam;
.source "MatParamTexture.java"


# instance fields
.field private texture:Lcom/jme3/texture/Texture;

.field private unit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jme3/material/MatParam;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/Texture;I)V
    .locals 1
    .parameter "type"
    .parameter "name"
    .parameter "texture"
    .parameter "unit"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/material/MatParam;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;Lcom/jme3/material/FixedFuncBinding;)V

    .line 19
    iput-object p3, p0, Lcom/jme3/material/MatParamTexture;->texture:Lcom/jme3/texture/Texture;

    .line 20
    iput p4, p0, Lcom/jme3/material/MatParamTexture;->unit:I

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Lcom/jme3/renderer/Renderer;Lcom/jme3/material/Technique;)V
    .locals 5
    .parameter "r"
    .parameter "technique"

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    .line 46
    .local v0, techDef:Lcom/jme3/material/TechniqueDef;
    invoke-virtual {p0}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/jme3/renderer/Renderer;->setTexture(ILcom/jme3/texture/Texture;)V

    .line 47
    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->isUsingShaders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/jme3/material/MatParamTexture;->getPrefixedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/material/MatParamTexture;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/jme3/material/Technique;->updateUniformParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public getTextureValue()Lcom/jme3/texture/Texture;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jme3/material/MatParamTexture;->texture:Lcom/jme3/texture/Texture;

    return-object v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jme3/material/MatParamTexture;->unit:I

    return v0
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
    .line 62
    invoke-super {p0, p1}, Lcom/jme3/material/MatParam;->read(Lcom/jme3/export/JmeImporter;)V

    .line 63
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 64
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "texture_unit"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/material/MatParamTexture;->unit:I

    .line 65
    const-string v1, "texture"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/Texture;

    iput-object v1, p0, Lcom/jme3/material/MatParamTexture;->texture:Lcom/jme3/texture/Texture;

    .line 66
    return-void
.end method

.method public setTextureValue(Lcom/jme3/texture/Texture;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jme3/material/MatParamTexture;->value:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/jme3/material/MatParamTexture;->texture:Lcom/jme3/texture/Texture;

    .line 33
    return-void
.end method

.method public setUnit(I)V
    .locals 0
    .parameter "unit"

    .prologue
    .line 36
    iput p1, p0, Lcom/jme3/material/MatParamTexture;->unit:I

    .line 37
    return-void
.end method

.class public Lcom/jme3/material/Technique;
.super Ljava/lang/Object;
.source "Technique.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/Technique$1;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private def:Lcom/jme3/material/TechniqueDef;

.field private defines:Lcom/jme3/shader/DefineList;

.field private needReload:Z

.field private owner:Lcom/jme3/material/Material;

.field private shader:Lcom/jme3/shader/Shader;

.field private worldBindUniforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jme3/material/Technique;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/Technique;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/Technique;->needReload:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/jme3/material/Material;Lcom/jme3/material/TechniqueDef;)V
    .locals 1
    .parameter "owner"
    .parameter "def"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/material/Technique;->needReload:Z

    .line 64
    iput-object p1, p0, Lcom/jme3/material/Technique;->owner:Lcom/jme3/material/Material;

    .line 65
    iput-object p2, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    .line 66
    invoke-virtual {p2}, Lcom/jme3/material/TechniqueDef;->isUsingShaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Technique;->worldBindUniforms:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/jme3/shader/DefineList;

    invoke-direct {v0}, Lcom/jme3/shader/DefineList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    .line 70
    :cond_0
    return-void
.end method

.method private loadShader(Lcom/jme3/asset/AssetManager;)V
    .locals 8
    .parameter "manager"

    .prologue
    .line 210
    new-instance v0, Lcom/jme3/shader/DefineList;

    invoke-direct {v0}, Lcom/jme3/shader/DefineList;-><init>()V

    .line 211
    .local v0, allDefines:Lcom/jme3/shader/DefineList;
    iget-object v5, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v5}, Lcom/jme3/material/TechniqueDef;->getShaderPresetDefines()Lcom/jme3/shader/DefineList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jme3/shader/DefineList;->addFrom(Lcom/jme3/shader/DefineList;)V

    .line 212
    iget-object v5, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v0, v5}, Lcom/jme3/shader/DefineList;->addFrom(Lcom/jme3/shader/DefineList;)V

    .line 214
    new-instance v3, Lcom/jme3/shader/ShaderKey;

    iget-object v5, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v5}, Lcom/jme3/material/TechniqueDef;->getVertexShaderName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v6}, Lcom/jme3/material/TechniqueDef;->getFragmentShaderName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v7}, Lcom/jme3/material/TechniqueDef;->getShaderLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v0, v7}, Lcom/jme3/shader/ShaderKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/shader/DefineList;Ljava/lang/String;)V

    .line 218
    .local v3, key:Lcom/jme3/shader/ShaderKey;
    invoke-interface {p1, v3}, Lcom/jme3/asset/AssetManager;->loadShader(Lcom/jme3/shader/ShaderKey;)Lcom/jme3/shader/Shader;

    move-result-object v5

    iput-object v5, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    .line 219
    iget-object v5, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    if-nez v5, :cond_0

    .line 220
    sget-object v5, Lcom/jme3/material/Technique;->logger:Ljava/util/logging/Logger;

    const-string v6, "Failed to reload shader!"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v5, p0, Lcom/jme3/material/Technique;->worldBindUniforms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v5, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v5}, Lcom/jme3/material/TechniqueDef;->getWorldBindings()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 230
    iget-object v5, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v5}, Lcom/jme3/material/TechniqueDef;->getWorldBindings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/UniformBinding;

    .line 231
    .local v1, binding:Lcom/jme3/shader/UniformBinding;
    iget-object v5, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/jme3/shader/UniformBinding;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v4

    .line 232
    .local v4, uniform:Lcom/jme3/shader/Uniform;
    invoke-virtual {v4, v1}, Lcom/jme3/shader/Uniform;->setBinding(Lcom/jme3/shader/UniformBinding;)V

    .line 233
    if-eqz v4, :cond_1

    .line 234
    iget-object v5, p0, Lcom/jme3/material/Technique;->worldBindUniforms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v1           #binding:Lcom/jme3/shader/UniformBinding;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #uniform:Lcom/jme3/shader/Uniform;
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jme3/material/Technique;->needReload:Z

    goto :goto_0
.end method


# virtual methods
.method public getDef()Lcom/jme3/material/TechniqueDef;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    return-object v0
.end method

.method public getShader()Lcom/jme3/shader/Shader;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    return-object v0
.end method

.method public getWorldBindUniforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jme3/material/Technique;->worldBindUniforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNeedReload()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/jme3/material/Technique;->needReload:Z

    return v0
.end method

.method public makeCurrent(Lcom/jme3/asset/AssetManager;)V
    .locals 7
    .parameter "assetManager"

    .prologue
    .line 186
    iget-object v5, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v5}, Lcom/jme3/material/TechniqueDef;->isUsingShaders()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    new-instance v2, Lcom/jme3/shader/DefineList;

    invoke-direct {v2}, Lcom/jme3/shader/DefineList;-><init>()V

    .line 188
    .local v2, newDefines:Lcom/jme3/shader/DefineList;
    iget-object v5, p0, Lcom/jme3/material/Technique;->owner:Lcom/jme3/material/Material;

    invoke-virtual {v5}, Lcom/jme3/material/Material;->getParams()Ljava/util/Collection;

    move-result-object v4

    .line 189
    .local v4, params:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jme3/material/MatParam;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/MatParam;

    .line 190
    .local v3, param:Lcom/jme3/material/MatParam;
    iget-object v5, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/material/TechniqueDef;->getShaderParamDefine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, defineName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v5, v6}, Lcom/jme3/shader/DefineList;->set(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0           #defineName:Ljava/lang/String;
    .end local v3           #param:Lcom/jme3/material/MatParam;
    :cond_1
    iget-boolean v5, p0, Lcom/jme3/material/Technique;->needReload:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v5}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 197
    const/4 v2, 0x0

    .line 206
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #newDefines:Lcom/jme3/shader/DefineList;
    .end local v4           #params:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jme3/material/MatParam;>;"
    :cond_2
    :goto_1
    return-void

    .line 200
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #newDefines:Lcom/jme3/shader/DefineList;
    .restart local v4       #params:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jme3/material/MatParam;>;"
    :cond_3
    iget-object v5, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v5}, Lcom/jme3/shader/DefineList;->clear()V

    .line 201
    iget-object v5, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v5, v2}, Lcom/jme3/shader/DefineList;->addFrom(Lcom/jme3/shader/DefineList;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/jme3/material/Technique;->loadShader(Lcom/jme3/asset/AssetManager;)V

    goto :goto_1
.end method

.method notifySetParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 2
    .parameter "paramName"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v1, p1}, Lcom/jme3/material/TechniqueDef;->getShaderParamDefine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, defineName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v1, v0, p2, p3}, Lcom/jme3/shader/DefineList;->set(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/material/Technique;->needReload:Z

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/material/Technique;->updateUniformParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 122
    :cond_1
    return-void
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

    .line 253
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 254
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "def"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/TechniqueDef;

    iput-object v1, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    .line 255
    const-string v1, "worldBindUniforms"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/material/Technique;->worldBindUniforms:Ljava/util/ArrayList;

    .line 256
    const-string v1, "defines"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/DefineList;

    iput-object v1, p0, Lcom/jme3/material/Technique;->defines:Lcom/jme3/shader/DefineList;

    .line 257
    const-string v1, "shader"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Shader;

    iput-object v1, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    .line 260
    return-void
.end method

.method updateUniformParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 1
    .parameter "paramName"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/material/Technique;->updateUniformParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;Z)V

    .line 163
    return-void
.end method

.method updateUniformParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "paramName"
    .parameter "type"
    .parameter "value"
    .parameter "ifNotOwner"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/jme3/material/Technique;->shader:Lcom/jme3/shader/Shader;

    invoke-virtual {v1, p1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v0

    .line 146
    .local v0, u:Lcom/jme3/shader/Uniform;
    sget-object v1, Lcom/jme3/material/Technique$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p2}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 155
    invoke-virtual {v0, p2, p3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 152
    :pswitch_0
    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {v0, v1, p3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

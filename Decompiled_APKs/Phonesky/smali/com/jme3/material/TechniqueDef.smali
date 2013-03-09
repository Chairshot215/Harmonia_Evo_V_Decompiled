.class public Lcom/jme3/material/TechniqueDef;
.super Ljava/lang/Object;
.source "TechniqueDef.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/TechniqueDef$ShadowMode;,
        Lcom/jme3/material/TechniqueDef$LightMode;
    }
.end annotation


# instance fields
.field private defineParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragName:Ljava/lang/String;

.field private lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

.field private name:Ljava/lang/String;

.field private presetDefines:Lcom/jme3/shader/DefineList;

.field private renderState:Lcom/jme3/material/RenderState;

.field private requiredCaps:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end field

.field private shaderLang:Ljava/lang/String;

.field private shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

.field private usesShaders:Z

.field private vertName:Ljava/lang/String;

.field private worldBinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/shader/UniformBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    .line 109
    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 110
    sget-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    .line 109
    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 110
    sget-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 124
    if-nez p1, :cond_0

    const-string p1, "Default"

    :cond_0
    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public addShaderParamDefine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "defineName"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineParams:Ljava/util/HashMap;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method public addShaderPresetDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 1
    .parameter "defineName"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->presetDefines:Lcom/jme3/shader/DefineList;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/jme3/shader/DefineList;

    invoke-direct {v0}, Lcom/jme3/shader/DefineList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->presetDefines:Lcom/jme3/shader/DefineList;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->presetDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/shader/DefineList;->set(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public addWorldParam(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    .line 349
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/jme3/shader/UniformBinding;->valueOf(Ljava/lang/String;)Lcom/jme3/shader/UniformBinding;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v1, 0x1

    .line 352
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFragmentShaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->fragName:Ljava/lang/String;

    return-object v0
.end method

.method public getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getRequiredCaps()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getShaderLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLang:Ljava/lang/String;

    return-object v0
.end method

.method public getShaderParamDefine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "paramName"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineParams:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getShaderPresetDefines()Lcom/jme3/shader/DefineList;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->presetDefines:Lcom/jme3/shader/DefineList;

    return-object v0
.end method

.method public getVertexShaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->vertName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/shader/UniformBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isUsingShaders()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->usesShaders:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 385
    const-string v0, "name"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    .line 386
    const-string v0, "vertName"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->vertName:Ljava/lang/String;

    .line 387
    const-string v0, "fragName"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->fragName:Ljava/lang/String;

    .line 388
    const-string v0, "shaderLang"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLang:Ljava/lang/String;

    .line 389
    const-string v0, "presetDefines"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/DefineList;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->presetDefines:Lcom/jme3/shader/DefineList;

    .line 390
    const-string v0, "lightMode"

    const-class v2, Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v3, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 391
    const-string v0, "shadowMode"

    const-class v2, Lcom/jme3/material/TechniqueDef$ShadowMode;

    sget-object v3, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 392
    const-string v0, "renderState"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    .line 393
    const-string v0, "usesShaders"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->usesShaders:Z

    .line 394
    return-void
.end method

.method public setLightMode(Lcom/jme3/material/TechniqueDef$LightMode;)V
    .locals 0
    .parameter "lightMode"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 161
    return-void
.end method

.method public setRenderState(Lcom/jme3/material/RenderState;)V
    .locals 0
    .parameter "renderState"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    .line 200
    return-void
.end method

.method public setShaderFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "vertexShader"
    .parameter "fragmentShader"
    .parameter "shaderLanguage"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->vertName:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/jme3/material/TechniqueDef;->fragName:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lcom/jme3/material/TechniqueDef;->shaderLang:Ljava/lang/String;

    .line 235
    invoke-static {p3}, Lcom/jme3/renderer/Caps;->valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Caps;

    move-result-object v0

    .line 236
    .local v0, langCap:Lcom/jme3/renderer/Caps;
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/material/TechniqueDef;->usesShaders:Z

    .line 239
    return-void
.end method

.method public setShadowMode(Lcom/jme3/material/TechniqueDef$ShadowMode;)V
    .locals 0
    .parameter "shadowMode"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 180
    return-void
.end method

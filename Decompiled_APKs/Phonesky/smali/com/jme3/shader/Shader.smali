.class public final Lcom/jme3/shader/Shader;
.super Lcom/jme3/util/NativeObject;
.source "Shader.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/Shader$ShaderSource;,
        Lcom/jme3/shader/Shader$ShaderType;
    }
.end annotation


# instance fields
.field private attribs:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/shader/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private shaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/shader/Shader$ShaderSource;",
            ">;"
        }
    .end annotation
.end field

.field private uniforms:Lcom/jme3/util/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/ListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private usable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/jme3/shader/Shader;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Shader;->usable:Z

    .line 230
    return-void
.end method

.method protected constructor <init>(Lcom/jme3/shader/Shader;)V
    .locals 3
    .parameter

    .prologue
    .line 233
    const-class v0, Lcom/jme3/shader/Shader;

    iget v1, p1, Lcom/jme3/shader/Shader;->id:I

    invoke-direct {p0, v0, v1}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Shader;->usable:Z

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    .line 240
    iget-object v0, p1, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderSource;

    .line 241
    iget-object v2, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->createDestructableClone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    const-class v0, Lcom/jme3/shader/Shader;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Shader;->usable:Z

    .line 218
    iput-object p1, p0, Lcom/jme3/shader/Shader;->language:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-direct {v0}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    .line 222
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    .line 223
    return-void
.end method


# virtual methods
.method public addSource(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "source"
    .parameter "defines"

    .prologue
    .line 294
    new-instance v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-direct {v0, p1}, Lcom/jme3/shader/Shader$ShaderSource;-><init>(Lcom/jme3/shader/Shader$ShaderType;)V

    .line 295
    .local v0, shader:Lcom/jme3/shader/Shader$ShaderSource;
    invoke-virtual {v0, p3}, Lcom/jme3/shader/Shader$ShaderSource;->setSource(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p2}, Lcom/jme3/shader/Shader$ShaderSource;->setName(Ljava/lang/String;)V

    .line 297
    if-eqz p4, :cond_0

    .line 298
    invoke-virtual {v0, p4}, Lcom/jme3/shader/Shader$ShaderSource;->setDefines(Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->setUpdateNeeded()V

    .line 302
    return-void
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/jme3/shader/Shader;

    invoke-direct {v0, p0}, Lcom/jme3/shader/Shader;-><init>(Lcom/jme3/shader/Shader;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 436
    check-cast p1, Lcom/jme3/renderer/Renderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteShader(Lcom/jme3/shader/Shader;)V

    .line 437
    return-void
.end method

.method public getAttribute(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/shader/Attribute;
    .locals 3
    .parameter "attribType"

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Type;->ordinal()I

    move-result v1

    .line 337
    .local v1, ordinal:I
    iget-object v2, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    invoke-virtual {v2, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Attribute;

    .line 338
    .local v0, attrib:Lcom/jme3/shader/Attribute;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/jme3/shader/Attribute;

    .end local v0           #attrib:Lcom/jme3/shader/Attribute;
    invoke-direct {v0}, Lcom/jme3/shader/Attribute;-><init>()V

    .line 340
    .restart local v0       #attrib:Lcom/jme3/shader/Attribute;
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jme3/shader/Attribute;->name:Ljava/lang/String;

    .line 341
    iget-object v2, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    invoke-virtual {v2, v1, v0}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jme3/shader/Shader;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/jme3/shader/Shader$ShaderSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;
    .locals 2
    .parameter "name"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Uniform;

    .line 323
    .local v0, uniform:Lcom/jme3/shader/Uniform;
    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/jme3/shader/Uniform;

    .end local v0           #uniform:Lcom/jme3/shader/Uniform;
    invoke-direct {v0}, Lcom/jme3/shader/Uniform;-><init>()V

    .line 325
    .restart local v0       #uniform:Lcom/jme3/shader/Uniform;
    iput-object p1, v0, Lcom/jme3/shader/Uniform;->name:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1, v0}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    return-object v0
.end method

.method public getUniformMap()Lcom/jme3/util/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/Uniform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    return-object v0
.end method

.method public isUsable()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/jme3/shader/Shader;->usable:Z

    return v0
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

    .line 254
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 255
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v2, "language"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/shader/Shader;->language:Ljava/lang/String;

    .line 256
    const-string v2, "shaderList"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    .line 257
    const-string v2, "attribs"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readIntSavableMap(Ljava/lang/String;Lcom/jme3/util/IntMap;)Lcom/jme3/util/IntMap;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    .line 259
    const-string v2, "uniforms"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 260
    .local v1, uniMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jme3/shader/Uniform;>;"
    new-instance v2, Lcom/jme3/util/ListMap;

    invoke-direct {v2, v1}, Lcom/jme3/util/ListMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    .line 261
    return-void
.end method

.method public resetLocations()V
    .locals 5

    .prologue
    .line 404
    iget-object v3, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v3}, Lcom/jme3/util/ListMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    .line 405
    .local v2, uniform:Lcom/jme3/shader/Uniform;
    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->reset()V

    goto :goto_0

    .line 407
    .end local v2           #uniform:Lcom/jme3/shader/Uniform;
    :cond_0
    iget-object v3, p0, Lcom/jme3/shader/Shader;->attribs:Lcom/jme3/util/IntMap;

    invoke-virtual {v3}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap$Entry;

    .line 408
    .local v0, entry:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Lcom/jme3/shader/Attribute;>;"
    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/shader/Attribute;

    const/4 v4, -0x2

    iput v4, v3, Lcom/jme3/shader/Attribute;->location:I

    goto :goto_1

    .line 410
    .end local v0           #entry:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Lcom/jme3/shader/Attribute;>;"
    :cond_1
    return-void
.end method

.method public resetObject()V
    .locals 3

    .prologue
    .line 424
    const/4 v2, -0x1

    iput v2, p0, Lcom/jme3/shader/Shader;->id:I

    .line 425
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jme3/shader/Shader;->usable:Z

    .line 427
    iget-object v2, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Shader$ShaderSource;

    .line 428
    .local v1, source:Lcom/jme3/shader/Shader$ShaderSource;
    invoke-virtual {v1}, Lcom/jme3/shader/Shader$ShaderSource;->resetObject()V

    goto :goto_0

    .line 431
    .end local v1           #source:Lcom/jme3/shader/Shader$ShaderSource;
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->setUpdateNeeded()V

    .line 432
    return-void
.end method

.method public resetSources()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    return-void
.end method

.method public setUpdateNeeded()V
    .locals 0

    .prologue
    .line 414
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    .line 415
    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->resetLocations()V

    .line 416
    return-void
.end method

.method public setUsable(Z)V
    .locals 0
    .parameter "usable"

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/jme3/shader/Shader;->usable:Z

    .line 396
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/Shader;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/Shader;->shaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numUniforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/Shader;->uniforms:Lcom/jme3/util/ListMap;

    invoke-virtual {v1}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shaderSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

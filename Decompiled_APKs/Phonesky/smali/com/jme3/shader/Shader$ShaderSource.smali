.class public Lcom/jme3/shader/Shader$ShaderSource;
.super Lcom/jme3/util/NativeObject;
.source "Shader.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderSource"
.end annotation


# instance fields
.field defines:Ljava/lang/String;

.field name:Ljava/lang/String;

.field shaderType:Lcom/jme3/shader/Shader$ShaderType;

.field source:Ljava/lang/String;

.field usable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    const-class v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    .line 102
    iput-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    .line 123
    return-void
.end method

.method protected constructor <init>(Lcom/jme3/shader/Shader$ShaderSource;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    const-class v0, Lcom/jme3/shader/Shader$ShaderSource;

    iget v1, p1, Lcom/jme3/shader/Shader$ShaderSource;->id:I

    invoke-direct {p0, v0, v1}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;I)V

    .line 101
    iput-boolean v3, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    .line 102
    iput-object v2, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/jme3/shader/Shader$ShaderSource;->shaderType:Lcom/jme3/shader/Shader$ShaderType;

    iput-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->shaderType:Lcom/jme3/shader/Shader$ShaderType;

    .line 116
    iput-boolean v3, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    .line 117
    iget-object v0, p1, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    const-class v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    .line 102
    iput-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->shaderType:Lcom/jme3/shader/Shader$ShaderType;

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shader type must be specified"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/jme3/shader/Shader$ShaderSource;

    invoke-direct {v0, p0}, Lcom/jme3/shader/Shader$ShaderSource;-><init>(Lcom/jme3/shader/Shader$ShaderSource;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 205
    check-cast p1, Lcom/jme3/renderer/Renderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V

    .line 206
    return-void
.end method

.method public getDefines()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/jme3/shader/Shader$ShaderType;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->shaderType:Lcom/jme3/shader/Shader$ShaderType;

    return-object v0
.end method

.method public isUsable()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 135
    const-string v0, "shaderType"

    const-class v2, Lcom/jme3/shader/Shader$ShaderType;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderType;

    iput-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->shaderType:Lcom/jme3/shader/Shader$ShaderType;

    .line 136
    const-string v0, "name"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    .line 137
    const-string v0, "source"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    .line 138
    const-string v0, "defines"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public resetObject()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->id:I

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    .line 201
    invoke-virtual {p0}, Lcom/jme3/shader/Shader$ShaderSource;->setUpdateNeeded()V

    .line 202
    return-void
.end method

.method public setDefines(Ljava/lang/String;)V
    .locals 2
    .parameter "defines"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Shader defines cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/jme3/shader/Shader$ShaderSource;->setUpdateNeeded()V

    .line 167
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Shader source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->source:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/jme3/shader/Shader$ShaderSource;->setUpdateNeeded()V

    .line 159
    return-void
.end method

.method public setUsable(Z)V
    .locals 0
    .parameter "usable"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/jme3/shader/Shader$ShaderSource;->usable:Z

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    const-string v0, ""

    .line 188
    .local v0, nameTxt:Ljava/lang/String;
    iget-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/shader/Shader$ShaderSource;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/jme3/shader/Shader$ShaderSource;->defines:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "defines, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/shader/Shader$ShaderSource;->shaderType:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v2}, Lcom/jme3/shader/Shader$ShaderType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

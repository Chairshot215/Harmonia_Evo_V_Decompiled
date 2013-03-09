.class public Lcom/jme3/renderer/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected fbosUsed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected memoryFrameBuffers:I

.field protected memoryShaders:I

.field protected memoryTextures:I

.field protected numFboSwitches:I

.field protected numObjects:I

.field protected numShaderSwitches:I

.field protected numTextureBinds:I

.field protected numTriangles:I

.field protected numUniformsSet:I

.field protected numVertices:I

.field protected shadersUsed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected texturesUsed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/renderer/Statistics;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Ljava/util/HashSet;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public clearFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 192
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 193
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->fbosUsed:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 195
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    .line 196
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    .line 197
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    .line 198
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    .line 199
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    .line 200
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numFboSwitches:I

    .line 201
    iput v1, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    .line 202
    return-void
.end method

.method public clearMemory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryFrameBuffers:I

    .line 251
    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    .line 252
    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    .line 253
    return-void
.end method

.method public onDeleteShader()V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    .line 230
    return-void
.end method

.method public onDeleteTexture()V
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    .line 237
    return-void
.end method

.method public onMeshDrawn(Lcom/jme3/scene/Mesh;I)V
    .locals 2
    .parameter "mesh"
    .parameter "lod"

    .prologue
    .line 125
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numObjects:I

    .line 126
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getTriangleCount(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numTriangles:I

    .line 127
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numVertices:I

    .line 128
    return-void
.end method

.method public onNewShader()V
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryShaders:I

    .line 209
    return-void
.end method

.method public onNewTexture()V
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->memoryTextures:I

    .line 216
    return-void
.end method

.method public onShaderUse(Lcom/jme3/shader/Shader;Z)V
    .locals 2
    .parameter "shader"
    .parameter "wasSwitched"

    .prologue
    .line 137
    sget-boolean v0, Lcom/jme3/renderer/Statistics;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->shadersUsed:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    if-eqz p2, :cond_2

    .line 143
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numShaderSwitches:I

    .line 144
    :cond_2
    return-void
.end method

.method public onTextureUse(Lcom/jme3/texture/Image;Z)V
    .locals 2
    .parameter "image"
    .parameter "wasSwitched"

    .prologue
    .line 160
    sget-boolean v0, Lcom/jme3/renderer/Statistics;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/jme3/renderer/Statistics;->texturesUsed:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    if-eqz p2, :cond_2

    .line 166
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numTextureBinds:I

    .line 167
    :cond_2
    return-void
.end method

.method public onUniformSet()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/renderer/Statistics;->numUniformsSet:I

    .line 151
    return-void
.end method

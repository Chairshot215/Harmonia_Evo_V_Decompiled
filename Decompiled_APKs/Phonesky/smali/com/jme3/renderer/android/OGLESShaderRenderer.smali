.class public Lcom/jme3/renderer/android/OGLESShaderRenderer;
.super Ljava/lang/Object;
.source "OGLESShaderRenderer.java"

# interfaces
.implements Lcom/jme3/renderer/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/android/OGLESShaderRenderer$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private boundShader:Lcom/jme3/shader/Shader;

.field private final caps:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end field

.field private checkErrors:Z

.field private clipH:I

.field private clipW:I

.field private clipX:I

.field private clipY:I

.field private final context:Lcom/jme3/renderer/RenderContext;

.field private fragTextureUnits:I

.field private glslVer:I

.field private final intBuf1:Ljava/nio/IntBuffer;

.field private final intBuf16:Ljava/nio/IntBuffer;

.field private lastFb:Lcom/jme3/texture/FrameBuffer;

.field private maxCubeTexSize:I

.field private maxTexSize:I

.field private final nameBuf:Ljava/nio/ByteBuffer;

.field private final objManager:Lcom/jme3/util/NativeObjectManager;

.field private powerOf2:Z

.field private powerVr:Z

.field private final statistics:Lcom/jme3/renderer/Statistics;

.field private final stringBuf:Ljava/lang/StringBuilder;

.field private tdc:Z

.field private useVBO:Z

.field private verboseLogging:Z

.field private vertexAttribs:I

.field private vertexTextureUnits:I

.field private vpH:I

.field private vpW:I

.field private vpX:I

.field private vpY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    .line 69
    const-class v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xfa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->stringBuf:Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    .line 75
    new-instance v0, Lcom/jme3/renderer/RenderContext;

    invoke-direct {v0}, Lcom/jme3/renderer/RenderContext;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    .line 76
    new-instance v0, Lcom/jme3/util/NativeObjectManager;

    invoke-direct {v0}, Lcom/jme3/util/NativeObjectManager;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    .line 77
    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->lastFb:Lcom/jme3/texture/FrameBuffer;

    .line 97
    new-instance v0, Lcom/jme3/renderer/Statistics;

    invoke-direct {v0}, Lcom/jme3/renderer/Statistics;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    .line 101
    iput-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerVr:Z

    .line 102
    iput-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerOf2:Z

    .line 103
    iput-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    .line 104
    iput-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->useVBO:Z

    .line 105
    iput-boolean v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkErrors:Z

    .line 108
    return-void
.end method

.method private checkGLError()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkErrors:Z

    if-nez v1, :cond_1

    .line 138
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGL Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I
    .locals 2
    .parameter

    .prologue
    .line 2050
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2073
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown buffer format."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2052
    :pswitch_0
    const/16 v0, 0x1400

    .line 2069
    :goto_0
    return v0

    .line 2054
    :pswitch_1
    const/16 v0, 0x1401

    goto :goto_0

    .line 2056
    :pswitch_2
    const/16 v0, 0x1402

    goto :goto_0

    .line 2058
    :pswitch_3
    const/16 v0, 0x1403

    goto :goto_0

    .line 2060
    :pswitch_4
    const/16 v0, 0x1404

    goto :goto_0

    .line 2062
    :pswitch_5
    const/16 v0, 0x1405

    goto :goto_0

    .line 2069
    :pswitch_6
    const/16 v0, 0x1406

    goto :goto_0

    .line 2050
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private convertMagFilter(Lcom/jme3/texture/Texture$MagFilter;)I
    .locals 3
    .parameter

    .prologue
    .line 1731
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$MagFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mag filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    :pswitch_0
    const/16 v0, 0x2601

    .line 1735
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x2600

    goto :goto_0

    .line 1731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertMinFilter(Lcom/jme3/texture/Texture$MinFilter;)I
    .locals 3
    .parameter

    .prologue
    .line 1742
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1756
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown min filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :pswitch_0
    const/16 v0, 0x2703

    .line 1754
    :goto_0
    return v0

    .line 1746
    :pswitch_1
    const/16 v0, 0x2701

    goto :goto_0

    .line 1748
    :pswitch_2
    const/16 v0, 0x2702

    goto :goto_0

    .line 1750
    :pswitch_3
    const/16 v0, 0x2700

    goto :goto_0

    .line 1752
    :pswitch_4
    const/16 v0, 0x2601

    goto :goto_0

    .line 1754
    :pswitch_5
    const/16 v0, 0x2600

    goto :goto_0

    .line 1742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private convertTextureType(Lcom/jme3/texture/Texture$Type;)I
    .locals 3
    .parameter

    .prologue
    .line 1716
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1726
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown texture type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1718
    :pswitch_0
    const/16 v0, 0xde1

    .line 1724
    :goto_0
    return v0

    :pswitch_1
    const v0, 0x8513

    goto :goto_0

    .line 1716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertUsage(Lcom/jme3/scene/VertexBuffer$Usage;)I
    .locals 2
    .parameter

    .prologue
    .line 2037
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2045
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown usage type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2039
    :pswitch_0
    const v0, 0x88e4

    .line 2043
    :goto_0
    return v0

    .line 2041
    :pswitch_1
    const v0, 0x88e8

    goto :goto_0

    .line 2043
    :pswitch_2
    const v0, 0x88e0

    goto :goto_0

    .line 2037
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I
    .locals 3
    .parameter

    .prologue
    .line 1761
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wrap mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1765
    :pswitch_0
    const v0, 0x812f

    .line 1769
    :goto_0
    return v0

    .line 1767
    :pswitch_1
    const/16 v0, 0x2901

    goto :goto_0

    .line 1769
    :pswitch_2
    const v0, 0x8370

    goto :goto_0

    .line 1761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private renderMeshDefault(Lcom/jme3/scene/Mesh;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2664
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2665
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "renderMeshDefault({0}, {1}, {2})"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2670
    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    .line 2671
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2672
    invoke-virtual {p0, v4}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    .line 2676
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    if-lez v0, :cond_3

    .line 2677
    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    move-object v1, v0

    .line 2681
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    array-length v5, v0

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v0, v2

    .line 2683
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v7

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v7

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v7

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v7, v8, :cond_4

    .line 2681
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2679
    :cond_3
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2689
    :cond_4
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v7

    if-nez v7, :cond_5

    .line 2691
    invoke-virtual {p0, v6}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_2

    .line 2694
    :cond_5
    invoke-virtual {p0, v6, v4}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_2

    .line 2697
    :cond_6
    if-eqz v1, :cond_7

    .line 2698
    invoke-virtual {p0, v1, p1, p3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->drawTriangleList(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/Mesh;I)V

    .line 2708
    :goto_3
    invoke-virtual {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clearVertexAttribs()V

    .line 2709
    invoke-virtual {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clearTextureUnits()V

    .line 2710
    return-void

    .line 2701
    :cond_7
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_8

    .line 2702
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glDrawArrays({0}, 0, {1})"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2706
    :cond_8
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_3
.end method

.method private renderMeshVertexArray(Lcom/jme3/scene/Mesh;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2620
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2621
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "renderMeshVertexArray"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2625
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 2627
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v5, v6, :cond_2

    .line 2625
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2633
    :cond_2
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v5

    if-nez v5, :cond_3

    .line 2635
    invoke-virtual {p0, v4}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVertexAttrib_Array(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_1

    .line 2638
    :cond_3
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    .line 2639
    invoke-virtual {p0, v4, v5}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVertexAttrib_Array(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_1

    .line 2644
    :cond_4
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    if-lez v0, :cond_5

    .line 2645
    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    .line 2649
    :goto_2
    if-eqz v0, :cond_6

    .line 2650
    invoke-virtual {p0, v0, p1, p3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->drawTriangleList_Array(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/Mesh;I)V

    .line 2659
    :goto_3
    invoke-virtual {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clearVertexAttribs()V

    .line 2660
    invoke-virtual {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clearTextureUnits()V

    .line 2661
    return-void

    .line 2647
    :cond_5
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    goto :goto_2

    .line 2652
    :cond_6
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_7

    .line 2653
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "GLES20.glDrawArrays({0}, {1}, {2})"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2657
    :cond_7
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_3
.end method

.method private setupTextureParams(Lcom/jme3/texture/Texture;)V
    .locals 6
    .parameter

    .prologue
    .line 1780
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;)I

    move-result v0

    .line 1783
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertMinFilter(Lcom/jme3/texture/Texture$MinFilter;)I

    move-result v1

    .line 1784
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getMagFilter()Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertMagFilter(Lcom/jme3/texture/Texture$MagFilter;)I

    move-result v2

    .line 1786
    iget-boolean v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v3, :cond_0

    .line 1787
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glTexParameteri("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", GLES20.GL_TEXTURE_MIN_FILTER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1790
    :cond_0
    const/16 v3, 0x2801

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1792
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_1

    .line 1793
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLES20.glTexParameteri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", GLES20.GL_TEXTURE_MAG_FILTER, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1796
    :cond_1
    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1811
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1835
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown texture type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1819
    :pswitch_0
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_2

    .line 1820
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glTexParameteri("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GLES20.GL_TEXTURE_WRAP_T, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v3}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1823
    :cond_2
    const/16 v1, 0x2803

    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v2}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1828
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_3

    .line 1829
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glTexParameteri("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GLES20.GL_TEXTURE_WRAP_S, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v3}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1832
    :cond_3
    const/16 v1, 0x2802

    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p1, v2}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertWrapMode(Lcom/jme3/texture/Texture$WrapMode;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1850
    return-void

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyRenderState(Lcom/jme3/material/RenderState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/16 v7, 0x302

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 446
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthTest()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    if-nez v0, :cond_d

    .line 447
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glEnable(GLES20.GL_DEPTH_TEST)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 450
    :cond_0
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 451
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 452
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1

    .line 453
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDepthFunc(GLES20.GL_LEQUAL)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 455
    :cond_1
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 456
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 457
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v5, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    .line 466
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isAlphaTest()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->alphaTestEnabled:Z

    if-nez v0, :cond_f

    .line 469
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v5, v0, Lcom/jme3/renderer/RenderContext;->alphaTestEnabled:Z

    .line 474
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthWrite()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    if-nez v0, :cond_10

    .line 475
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_4

    .line 476
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDepthMask(true)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 478
    :cond_4
    invoke-static {v5}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 479
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 480
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v5, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    .line 489
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isColorWrite()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    if-nez v0, :cond_12

    .line 490
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_6

    .line 491
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glColorMask(true, true, true, true)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 493
    :cond_6
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 494
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 495
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v5, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    .line 504
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isPointSprite()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->pointSprite:Z

    if-nez v0, :cond_14

    .line 513
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isPolyOffset()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 514
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    if-nez v0, :cond_15

    .line 515
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_9

    .line 516
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glEnable(GLES20.GL_POLYGON_OFFSET_FILL)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 518
    :cond_9
    const v0, 0x8037

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 519
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 520
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_a

    .line 521
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glPolygonOffset({0}, {1})"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :cond_a
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    .line 525
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 526
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v5, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    .line 527
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    .line 528
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    .line 554
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v1, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    if-eq v0, v1, :cond_1d

    .line 555
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    if-ne v0, v1, :cond_1a

    .line 556
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_c

    .line 557
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDisable(GLES20.GL_CULL_FACE)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 559
    :cond_c
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 567
    :goto_6
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 569
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized face cull mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_d
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthTest()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    if-eqz v0, :cond_2

    .line 459
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_e

    .line 460
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDisable(GLES20.GL_DEPTH_TEST)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 462
    :cond_e
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 463
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 464
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v6, v0, Lcom/jme3/renderer/RenderContext;->depthTestEnabled:Z

    goto/16 :goto_0

    .line 470
    :cond_f
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isAlphaTest()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->alphaTestEnabled:Z

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v6, v0, Lcom/jme3/renderer/RenderContext;->alphaTestEnabled:Z

    goto/16 :goto_1

    .line 481
    :cond_10
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isDepthWrite()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    if-eqz v0, :cond_5

    .line 482
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_11

    .line 483
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDepthMask(false)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 485
    :cond_11
    invoke-static {v6}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 486
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 487
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v6, v0, Lcom/jme3/renderer/RenderContext;->depthWriteEnabled:Z

    goto/16 :goto_2

    .line 496
    :cond_12
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isColorWrite()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    if-eqz v0, :cond_7

    .line 497
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_13

    .line 498
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glColorMask(false, false, false, false)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 500
    :cond_13
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 501
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 502
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v6, v0, Lcom/jme3/renderer/RenderContext;->colorWriteEnabled:Z

    goto/16 :goto_3

    .line 509
    :cond_14
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->isPointSprite()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->pointSprite:Z

    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 530
    :cond_15
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    .line 532
    :cond_16
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_17

    .line 533
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glPolygonOffset({0}, {1})"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    :cond_17
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    .line 537
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 538
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetFactor()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    .line 539
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getPolyOffsetUnits()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    goto/16 :goto_5

    .line 543
    :cond_18
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    if-eqz v0, :cond_b

    .line 544
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_19

    .line 545
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDisable(GLES20.GL_POLYGON_OFFSET_FILL)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 547
    :cond_19
    const v0, 0x8037

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 548
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 549
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v6, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetEnabled:Z

    .line 550
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetFactor:F

    .line 551
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v2, v0, Lcom/jme3/renderer/RenderContext;->polyOffsetUnits:F

    goto/16 :goto_5

    .line 561
    :cond_1a
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1b

    .line 562
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glEnable(GLES20.GL_CULL_FACE)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 564
    :cond_1b
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto/16 :goto_6

    .line 573
    :pswitch_0
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1c

    .line 574
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glCullFace(GLES20.GL_BACK)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 576
    :cond_1c
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 595
    :goto_7
    :pswitch_1
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 597
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getFaceCullMode()Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 600
    :cond_1d
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v1, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    if-eq v0, v1, :cond_1f

    .line 601
    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    if-ne v0, v1, :cond_22

    .line 602
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1e

    .line 603
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDisable(GLES20.GL_BLEND)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 605
    :cond_1e
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 662
    :goto_8
    :pswitch_2
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 664
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/RenderContext;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    .line 666
    :cond_1f
    return-void

    .line 579
    :pswitch_3
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_20

    .line 580
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glCullFace(GLES20.GL_FRONT)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 582
    :cond_20
    const/16 v0, 0x404

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    goto :goto_7

    .line 585
    :pswitch_4
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_21

    .line 586
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glCullFace(GLES20.GL_FRONT_AND_BACK)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 588
    :cond_21
    const/16 v0, 0x408

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    goto :goto_7

    .line 607
    :cond_22
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_23

    .line 608
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glEnable(GLES20.GL_BLEND)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 610
    :cond_23
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 611
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized blend mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/material/RenderState;->getBlendMode()Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :pswitch_5
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_24

    .line 616
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_ONE, GLES20.GL_ONE)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 618
    :cond_24
    invoke-static {v5, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_8

    .line 621
    :pswitch_6
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_25

    .line 622
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_SRC_ALPHA, GLES20.GL_ONE)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 624
    :cond_25
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_8

    .line 627
    :pswitch_7
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_26

    .line 628
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_ONE, GLES20.GL_ONE_MINUS_SRC_COLOR)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 630
    :cond_26
    const/16 v0, 0x301

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_8

    .line 633
    :pswitch_8
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_27

    .line 634
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_SRC_ALPHA, GLES20.GL_ONE_MINUS_SRC_ALPHA)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 636
    :cond_27
    const/16 v0, 0x303

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_8

    .line 639
    :pswitch_9
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_28

    .line 640
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_ONE, GLES20.GL_ONE_MINUS_SRC_ALPHA)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 642
    :cond_28
    const/16 v0, 0x303

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_8

    .line 645
    :pswitch_a
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_29

    .line 646
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_DST_COLOR, GLES20.GL_ZERO)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 648
    :cond_29
    const/16 v0, 0x306

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_8

    .line 651
    :pswitch_b
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_2a

    .line 652
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glBlendFunc(GLES20.GL_DST_COLOR, GLES20.GL_SRC_COLOR)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 654
    :cond_2a
    const/16 v0, 0x306

    const/16 v1, 0x300

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_8

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 611
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p0}, Lcom/jme3/util/NativeObjectManager;->deleteAllObjects(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->clearMemory()V

    .line 388
    return-void
.end method

.method public clearBuffers(ZZZ)V
    .locals 7
    .parameter "color"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, bits:I
    if-eqz p1, :cond_0

    .line 411
    const/16 v0, 0x4000

    .line 413
    :cond_0
    if-eqz p2, :cond_1

    .line 414
    or-int/lit16 v0, v0, 0x100

    .line 416
    :cond_1
    if-eqz p3, :cond_2

    .line 417
    or-int/lit16 v0, v0, 0x400

    .line 419
    :cond_2
    if-eqz v0, :cond_4

    .line 420
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_3

    .line 421
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "GLES20.glClear(color={0}, depth={1}, stencil={2})"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :cond_3
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 424
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 426
    :cond_4
    return-void
.end method

.method public clearTextureUnits()V
    .locals 5

    .prologue
    .line 2002
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v2, v4, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    .line 2003
    .local v2, textureList:Lcom/jme3/renderer/IDList;
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v3, v4, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    .line 2004
    .local v3, textures:[Lcom/jme3/texture/Image;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, v2, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v0, v4, :cond_0

    .line 2005
    iget-object v4, v2, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v1, v4, v0

    .line 2011
    .local v1, idx:I
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 2004
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2013
    .end local v1           #idx:I
    :cond_0
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v4, v4, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v4}, Lcom/jme3/renderer/IDList;->copyNewToOld()V

    .line 2014
    return-void
.end method

.method public clearVertexAttribs()V
    .locals 6

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    .line 2297
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lcom/jme3/renderer/IDList;->oldLen:I

    if-ge v0, v2, :cond_1

    .line 2298
    iget-object v2, v1, Lcom/jme3/renderer/IDList;->oldList:[I

    aget v2, v2, v0

    .line 2300
    iget-boolean v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v3, :cond_0

    .line 2301
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glDisableVertexAttribArray("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2304
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 2305
    iget-object v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v3, v3, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Lcom/jme3/scene/VertexBuffer;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 2297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v0}, Lcom/jme3/renderer/IDList;->copyNewToOld()V

    .line 2308
    return-void
.end method

.method public convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I
    .locals 3
    .parameter

    .prologue
    .line 2551
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized mesh mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2553
    :pswitch_0
    const/4 v0, 0x0

    .line 2565
    :goto_0
    return v0

    .line 2555
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2557
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2559
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2561
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2563
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 2565
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 2551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public convertShaderType(Lcom/jme3/shader/Shader$ShaderType;)I
    .locals 2
    .parameter

    .prologue
    .line 949
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 957
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unrecognized shader type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :pswitch_0
    const v0, 0x8b30

    .line 953
    :goto_0
    return v0

    :pswitch_1
    const v0, 0x8b31

    goto :goto_0

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2281
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getId()I

    move-result v0

    .line 2282
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 2285
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2286
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2287
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDeleteBuffers(1, buffer)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 2291
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->resetObject()V

    .line 2293
    :cond_1
    return-void
.end method

.method public deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 1686
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "deleteFrameBuffer is not supported."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method public deleteImage(Lcom/jme3/texture/Image;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2017
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getId()I

    move-result v0

    .line 2018
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2019
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 2020
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 2022
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2023
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glDeleteTexture(1, buffer)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 2027
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->resetObject()V

    .line 2029
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onDeleteTexture()V

    .line 2031
    :cond_1
    return-void
.end method

.method public deleteShader(Lcom/jme3/shader/Shader;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 1276
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1277
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Shader is not uploaded to GPU, cannot delete."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1303
    :goto_0
    return-void

    .line 1280
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderSource;

    .line 1281
    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 1283
    iget-boolean v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v2, :cond_2

    .line 1284
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLES20.glDetachShader("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1287
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glDetachShader(II)V

    goto :goto_1

    .line 1294
    :cond_3
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->resetSources()V

    .line 1296
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_4

    .line 1297
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20.glDeleteProgram("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1300
    :cond_4
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1302
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onDeleteShader()V

    goto/16 :goto_0
.end method

.method public deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
    .locals 3
    .parameter

    .prologue
    .line 1260
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v0

    if-gez v0, :cond_0

    .line 1261
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Shader source is not uploaded to GPU, cannot delete."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1273
    :goto_0
    return-void

    .line 1264
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/shader/Shader$ShaderSource;->setUsable(Z)V

    .line 1265
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->clearUpdateNeeded()V

    .line 1267
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1

    .line 1268
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20.glDeleteShader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1271
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1272
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->resetObject()V

    goto :goto_0
.end method

.method public drawTriangleList(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/Mesh;I)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2436
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_0

    .line 2437
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawTriangleList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2440
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v1, v2, :cond_1

    .line 2441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only index buffers are allowed as triangle lists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2444
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->isUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2445
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_2

    .line 2446
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v2, "updateBufferData for indexBuf."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2448
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    .line 2451
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getId()I

    move-result v1

    .line 2452
    sget-boolean v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2454
    :cond_4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 2455
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v3, "invalid buffer id!"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2458
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v2, v2, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    if-eq v2, v1, :cond_7

    .line 2459
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v2, :cond_6

    .line 2460
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "GLES20.glBindBuffer(GLES20.GL_ELEMENT_ARRAY_BUFFER, {0})"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2463
    :cond_6
    const v2, 0x8893

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v1, v2, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    .line 2467
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v2

    .line 2468
    const/4 v1, 0x1

    move/from16 v0, p3

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    sget-object v3, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 2470
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    .line 2472
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    if-ne v4, v5, :cond_d

    .line 2473
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getModeStart()[I

    move-result-object v2

    .line 2474
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getElementLengths()[I

    move-result-object v5

    .line 2476
    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v4

    .line 2477
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v6

    .line 2478
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v7

    .line 2479
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 2480
    const/4 v3, 0x1

    aget v8, v2, v3

    .line 2481
    const/4 v3, 0x2

    aget v9, v2, v3

    .line 2482
    const/4 v3, 0x0

    .line 2483
    const/4 v2, 0x0

    :goto_1
    array-length v10, v5

    if-ge v2, v10, :cond_10

    .line 2484
    if-ne v2, v8, :cond_a

    .line 2485
    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v4

    .line 2489
    :cond_8
    :goto_2
    aget v10, v5, v2

    .line 2491
    if-eqz v1, :cond_b

    .line 2493
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "instancing is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2468
    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    .line 2486
    :cond_a
    if-ne v2, v9, :cond_8

    .line 2487
    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v4

    goto :goto_2

    .line 2502
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2503
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v11, :cond_c

    .line 2504
    sget-object v11, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v13, "glDrawElements(): {0}, {1}"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2507
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v11

    invoke-static {v4, v10, v6, v11}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 2518
    mul-int/2addr v10, v7

    add-int/2addr v3, v10

    .line 2483
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2521
    :cond_d
    if-eqz v1, :cond_e

    .line 2522
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "instancing is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2532
    :cond_e
    invoke-virtual {v3}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 2534
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_f

    .line 2535
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "glDrawElements(), indexBuf.capacity ({0}), vertCount ({1})"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2538
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 2545
    :cond_10
    return-void
.end method

.method public drawTriangleList_Array(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/Mesh;I)V
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2761
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_0

    .line 2762
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "drawTriangleList_Array(Count = {0})"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2765
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v1, v2, :cond_1

    .line 2766
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only index buffers are allowed as triangle lists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2769
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p3

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 2770
    :goto_0
    if-eqz v1, :cond_3

    .line 2771
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Caps.MeshInstancing is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2769
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2774
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    .line 2775
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    .line 2776
    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 2778
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    if-ne v2, v3, :cond_7

    .line 2779
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getModeStart()[I

    move-result-object v1

    .line 2780
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getElementLengths()[I

    move-result-object v4

    .line 2782
    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v3

    .line 2783
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v5

    .line 2784
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v6

    .line 2785
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 2786
    const/4 v2, 0x1

    aget v7, v1, v2

    .line 2787
    const/4 v2, 0x2

    aget v8, v1, v2

    .line 2788
    const/4 v2, 0x0

    .line 2789
    const/4 v1, 0x0

    :goto_1
    array-length v9, v4

    if-ge v1, v9, :cond_9

    .line 2790
    if-ne v1, v7, :cond_6

    .line 2791
    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v3

    .line 2795
    :cond_4
    :goto_2
    aget v9, v4, v1

    .line 2797
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2798
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v10, :cond_5

    .line 2799
    sget-object v10, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v12, "glDrawElements(): {0}, {1}"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2802
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v10

    invoke-static {v3, v9, v5, v10}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 2804
    mul-int/2addr v9, v6

    add-int/2addr v2, v9

    .line 2789
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2792
    :cond_6
    if-ne v1, v8, :cond_4

    .line 2793
    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v3

    goto :goto_2

    .line 2807
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v2, :cond_8

    .line 2808
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "glDrawElements(), indexBuf.capacity ({0}), vertCount ({1})"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2811
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertElementMode(Lcom/jme3/scene/Mesh$Mode;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 2817
    :cond_9
    return-void
.end method

.method public getCaps()Ljava/util/EnumSet;
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
    .line 150
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getStatistics()Lcom/jme3/renderer/Statistics;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    return-object v0
.end method

.method public initialize()V
    .locals 14

    .prologue
    const/16 v13, 0x1f01

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 155
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Vendor: {0}"

    const/16 v10, 0x1f00

    invoke-static {v10}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Renderer: {0}"

    invoke-static {v13}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Version: {0}"

    const/16 v10, 0x1f02

    invoke-static {v10}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {v13}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PowerVR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerVr:Z

    .line 161
    const v7, 0x8b8c

    invoke-static {v7}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, versionStr:Ljava/lang/String;
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "GLES20.Shading Language Version: {0}"

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 164
    :cond_0
    const/4 v7, -0x1

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->glslVer:I

    .line 165
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "GLSL and OpenGL2 is required for the OpenGL ES renderer!"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 176
    :cond_1
    const-string v2, "OpenGL ES GLSL ES "

    .line 177
    .local v2, openGlEsStr:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, spaceIdx:I
    if-lt v3, v12, :cond_4

    .line 179
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 184
    :goto_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 185
    .local v5, version:F
    const/high16 v7, 0x42c8

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->glslVer:I

    .line 187
    iget v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->glslVer:I

    .line 191
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 196
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v8, "Force-adding GLSL100 support, since OpenGL2 is supported."

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_2
    const v7, 0x8b4c

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 201
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vertexTextureUnits:I

    .line 202
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "VTF Units: {0}"

    iget v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vertexTextureUnits:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vertexTextureUnits:I

    if-lez v7, :cond_3

    .line 204
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    sget-object v8, Lcom/jme3/renderer/Caps;->VertexTextureFetch:Lcom/jme3/renderer/Caps;

    invoke-virtual {v7, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_3
    const v7, 0x8872

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 208
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->fragTextureUnits:I

    .line 209
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Texture Units: {0}"

    iget v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->fragTextureUnits:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    const v7, 0x8869

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 221
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vertexAttribs:I

    .line 222
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Vertex Attributes: {0}"

    iget v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vertexAttribs:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    const/16 v7, 0xd50

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 231
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 232
    .local v4, subpixelBits:I
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Subpixel Bits: {0}"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const/16 v7, 0xd33

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 243
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->maxTexSize:I

    .line 244
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Maximum Texture Resolution: {0}"

    iget v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->maxTexSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const v7, 0x851c

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 247
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iput v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->maxCubeTexSize:I

    .line 248
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Maximum CubeMap Resolution: {0}"

    iget v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->maxCubeTexSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    const/16 v7, 0x1f03

    invoke-static {v7}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, extensions:Ljava/lang/String;
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "GL_EXTENSIONS: {0}"

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    const v7, 0x86a3

    iget-object v8, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 349
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->limit()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 350
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Compressed Texture Formats: {0}"

    iget-object v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf16:Ljava/nio/IntBuffer;

    invoke-virtual {v10, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v0           #extensions:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #subpixelBits:I
    .end local v5           #version:F
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 353
    .restart local v0       #extensions:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #subpixelBits:I
    .restart local v5       #version:F
    :cond_5
    const-string v7, "GL_OES_texture_npot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 354
    iput-boolean v12, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerOf2:Z

    .line 357
    :cond_6
    sget-object v7, Lcom/jme3/material/RenderState;->DEFAULT:Lcom/jme3/material/RenderState;

    invoke-virtual {p0, v7}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    .line 358
    const/16 v7, 0xbd0

    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 360
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 362
    iput-boolean v11, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->useVBO:Z

    .line 367
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_7

    .line 368
    iput-boolean v12, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->useVBO:Z

    .line 371
    :cond_7
    sget-object v7, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Caps: {0}"

    iget-object v10, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->caps:Ljava/util/EnumSet;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public onFrame()V
    .locals 4

    .prologue
    .line 724
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkErrors:Z

    if-nez v1, :cond_0

    .line 725
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 726
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 727
    new-instance v1, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGL Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Enable error checking for more info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    .end local v0           #error:I
    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v1, p0}, Lcom/jme3/util/NativeObjectManager;->deleteUnused(Ljava/lang/Object;)V

    .line 732
    return-void
.end method

.method public renderMesh(Lcom/jme3/scene/Mesh;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->pointSize:F

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getPointSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2715
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2716
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES10.glPointSize({0})"

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getPointSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2719
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getPointSize()F

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES10;->glPointSize(F)V

    .line 2720
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getPointSize()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->pointSize:F

    .line 2722
    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 2724
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_2

    .line 2725
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glLineWidth({0})"

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2728
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 2729
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getLineWidth()F

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->lineWidth:F

    .line 2732
    :cond_3
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/renderer/Statistics;->onMeshDrawn(Lcom/jme3/scene/Mesh;I)V

    .line 2737
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->useVBO:Z

    if-eqz v0, :cond_5

    .line 2738
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_4

    .line 2739
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "RENDERING A MESH USING VertexBufferObject"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2742
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->renderMeshDefault(Lcom/jme3/scene/Mesh;II)V

    .line 2752
    :goto_0
    return-void

    .line 2744
    :cond_5
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_6

    .line 2745
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "RENDERING A MESH USING VertexArray"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2748
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->renderMeshVertexArray(Lcom/jme3/scene/Mesh;II)V

    goto :goto_0
.end method

.method public resetGLObjects()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0}, Lcom/jme3/util/NativeObjectManager;->resetObjects()V

    .line 379
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->clearMemory()V

    .line 380
    iput-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->boundShader:Lcom/jme3/shader/Shader;

    .line 381
    iput-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->lastFb:Lcom/jme3/texture/FrameBuffer;

    .line 382
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderContext;->reset()V

    .line 383
    return-void
.end method

.method protected resetUniformLocations(Lcom/jme3/shader/Shader;)V
    .locals 4
    .parameter "shader"

    .prologue
    .line 933
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object v2

    .line 935
    .local v2, uniforms:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<Ljava/lang/String;Lcom/jme3/shader/Uniform;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/jme3/util/ListMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 936
    invoke-virtual {v2, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Uniform;

    .line 937
    .local v1, uniform:Lcom/jme3/shader/Uniform;
    invoke-virtual {v1}, Lcom/jme3/shader/Uniform;->reset()V

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    .end local v1           #uniform:Lcom/jme3/shader/Uniform;
    :cond_0
    return-void
.end method

.method public setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 6
    .parameter "color"

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glClearColor({0}, {1}, {2}, {3})"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_0
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 433
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 434
    return-void
.end method

.method public setClipRect(IIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    .line 686
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-boolean v0, v0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    if-nez v0, :cond_1

    .line 687
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 688
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glEnable(GLES20.GL_SCISSOR_TEST)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 690
    :cond_0
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 691
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 692
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput-boolean v6, v0, Lcom/jme3/renderer/RenderContext;->clipRectEnabled:Z

    .line 694
    :cond_1
    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipX:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipY:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipW:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipH:I

    if-eq v0, p4, :cond_4

    .line 695
    :cond_2
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_3

    .line 696
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glScissor({0}, {1}, {2}, {3})"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    :cond_3
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 699
    iput p1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipX:I

    .line 700
    iput p2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipY:I

    .line 701
    iput p3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipW:I

    .line 702
    iput p4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->clipH:I

    .line 703
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 705
    :cond_4
    return-void
.end method

.method public setDepthRange(FF)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glDepthRangef({0}, {1})"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDepthRangef(FF)V

    .line 405
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 406
    return-void
.end method

.method public setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 1544
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "setFrameBuffer is not supported."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public setLighting(Lcom/jme3/light/LightList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 946
    return-void
.end method

.method public setShader(Lcom/jme3/shader/Shader;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1186
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 1187
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1190
    :cond_0
    if-nez p1, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    if-lez v0, :cond_2

    .line 1193
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1

    .line 1194
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glUseProgram(0)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1197
    :cond_1
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1199
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, v5, v4}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    .line 1200
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v3, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    .line 1201
    iput-object v5, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->boundShader:Lcom/jme3/shader/Shader;

    .line 1257
    :cond_2
    :goto_0
    return-void

    .line 1204
    :cond_3
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1205
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateShaderData(Lcom/jme3/shader/Shader;)V

    .line 1211
    :cond_4
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->isUsable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1212
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "shader is not usable."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_5
    sget-boolean v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    if-gtz v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1218
    :cond_6
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateShaderUniforms(Lcom/jme3/shader/Shader;)V

    .line 1219
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v0, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1244
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_7

    .line 1245
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20.glUseProgram("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1248
    :cond_7
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1250
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, p1, v4}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    .line 1251
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v1

    iput v1, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    .line 1252
    iput-object p1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->boundShader:Lcom/jme3/shader/Shader;

    goto :goto_0

    .line 1254
    :cond_8
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, p1, v3}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    goto :goto_0
.end method

.method public setTexture(ILcom/jme3/texture/Texture;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1941
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    .line 1942
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->isUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;Z)V

    .line 1959
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getId()I

    move-result v1

    .line 1960
    sget-boolean v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v1, v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1962
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1963
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v3, "error: texture image has -1 id"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1966
    :cond_2
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v2, v2, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    .line 1968
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;)I

    move-result v3

    .line 1969
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v4, v4, Lcom/jme3/renderer/RenderContext;->textureIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v4, p1}, Lcom/jme3/renderer/IDList;->moveToNew(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1977
    :cond_3
    aget-object v4, v2, p1

    if-eq v4, v0, :cond_7

    .line 1978
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v4, v4, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    if-eq v4, p1, :cond_5

    .line 1979
    iget-boolean v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v4, :cond_4

    .line 1980
    sget-object v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glActiveTexture(GLES20.GL_TEXTURE0 + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1982
    :cond_4
    const v4, 0x84c0

    add-int/2addr v4, p1

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1983
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput p1, v4, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    .line 1986
    :cond_5
    iget-boolean v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v4, :cond_6

    .line 1987
    sget-object v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glBindTexture("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1990
    :cond_6
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1991
    aput-object v0, v2, p1

    .line 1993
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/renderer/Statistics;->onTextureUse(Lcom/jme3/texture/Image;Z)V

    .line 1998
    :goto_0
    invoke-direct {p0, p2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setupTextureParams(Lcom/jme3/texture/Texture;)V

    .line 1999
    return-void

    .line 1995
    :cond_7
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/renderer/Statistics;->onTextureUse(Lcom/jme3/texture/Image;Z)V

    goto :goto_0
.end method

.method public setUseVA(Z)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "use_VBO [{0}] -> [{1}]"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->useVBO:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->useVBO:Z

    .line 113
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v1, v2

    .line 112
    goto :goto_1
.end method

.method public setVerboseLogging(Z)V
    .locals 6
    .parameter "value"

    .prologue
    .line 116
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "verboseLogging [{0}] -> [{1}]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iput-boolean p1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    .line 118
    return-void
.end method

.method public setVertexAttrib(Lcom/jme3/scene/VertexBuffer;)V
    .locals 1
    .parameter "vb"

    .prologue
    .line 2417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    .line 2418
    return-void
.end method

.method public setVertexAttrib(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    .line 2311
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2312
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVertexAttrib("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2315
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v0, v1, :cond_1

    .line 2316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index buffers not allowed to be set to vertex attrib"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2319
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 2320
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateBufferData(Lcom/jme3/scene/VertexBuffer;)V

    .line 2323
    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    .line 2324
    if-lez v1, :cond_10

    .line 2325
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->boundShader:Lcom/jme3/shader/Shader;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getAttribute(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/shader/Attribute;

    move-result-object v2

    .line 2326
    invoke-virtual {v2}, Lcom/jme3/shader/Attribute;->getLocation()I

    move-result v0

    .line 2327
    if-ne v0, v7, :cond_4

    .line 2329
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_3

    .line 2330
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location is invalid for attrib: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2414
    :cond_3
    :goto_0
    return-void

    .line 2336
    :cond_4
    const/4 v3, -0x2

    if-ne v0, v3, :cond_7

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2343
    iget-boolean v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v3, :cond_5

    .line 2344
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glGetAttribLocation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2347
    :cond_5
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 2351
    if-gez v0, :cond_6

    .line 2352
    invoke-virtual {v2, v7}, Lcom/jme3/shader/Attribute;->setLocation(I)V

    .line 2354
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_3

    .line 2355
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute is invalid in shader: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 2360
    :cond_6
    invoke-virtual {v2, v0}, Lcom/jme3/shader/Attribute;->setLocation(I)V

    .line 2364
    :cond_7
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v6, v1, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Lcom/jme3/scene/VertexBuffer;

    .line 2365
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v1, Lcom/jme3/renderer/RenderContext;->attribIndexList:Lcom/jme3/renderer/IDList;

    invoke-virtual {v1, v0}, Lcom/jme3/renderer/IDList;->moveToNew(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2366
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_8

    .line 2367
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glEnableVertexAttribArray("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2370
    :cond_8
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2373
    :cond_9
    aget-object v1, v6, v0

    if-eq v1, p1, :cond_3

    .line 2375
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getId()I

    move-result v1

    .line 2376
    :goto_1
    sget-boolean v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    if-ne v1, v7, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2375
    :cond_a
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getId()I

    move-result v1

    goto :goto_1

    .line 2378
    :cond_b
    if-ne v1, v7, :cond_c

    .line 2379
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v3, "invalid buffer id"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2382
    :cond_c
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v2, v2, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    if-eq v2, v1, :cond_e

    .line 2383
    iget-boolean v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v2, :cond_d

    .line 2384
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLES20.glBindBuffer(34962, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2386
    :cond_d
    const v2, 0x8892

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 2387
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v1, v2, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    .line 2390
    :cond_e
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 2392
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_f

    .line 2393
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glVertexAttribPointer(location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "numComponents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isNormalized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stride="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.capacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2402
    :cond_f
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/jme3/renderer/android/Android22Workaround;->glVertexAttribPointer(IIIZII)V

    .line 2409
    aput-object p1, v6, v0

    goto/16 :goto_0

    .line 2412
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot render mesh without shader bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVertexAttrib_Array(Lcom/jme3/scene/VertexBuffer;)V
    .locals 1
    .parameter "vb"

    .prologue
    .line 2912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVertexAttrib_Array(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V

    .line 2913
    return-void
.end method

.method public setVertexAttrib_Array(Lcom/jme3/scene/VertexBuffer;Lcom/jme3/scene/VertexBuffer;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2825
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 2826
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "setVertexAttrib_Array({0}, {1})"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v9

    aput-object p2, v3, v10

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2829
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v0, v1, :cond_1

    .line 2830
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index buffers not allowed to be set to vertex attrib"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2834
    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v0, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    .line 2835
    if-lez v1, :cond_a

    .line 2836
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v6, v0, Lcom/jme3/renderer/RenderContext;->boundAttribs:[Lcom/jme3/scene/VertexBuffer;

    .line 2838
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->boundShader:Lcom/jme3/shader/Shader;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/shader/Shader;->getAttribute(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/shader/Attribute;

    move-result-object v2

    .line 2839
    invoke-virtual {v2}, Lcom/jme3/shader/Attribute;->getLocation()I

    move-result v0

    .line 2840
    if-ne v0, v12, :cond_3

    .line 2842
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_2

    .line 2843
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "attribute is invalid in shader: [{0}]"

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2905
    :cond_2
    :goto_0
    return-void

    .line 2846
    :cond_3
    const/4 v3, -0x2

    if-ne v0, v3, :cond_6

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2849
    iget-boolean v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v3, :cond_4

    .line 2850
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "GLES20.glGetAttribLocation({0}, {1})"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-virtual {v3, v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2853
    :cond_4
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 2854
    if-gez v0, :cond_5

    .line 2855
    invoke-virtual {v2, v12}, Lcom/jme3/shader/Attribute;->setLocation(I)V

    .line 2856
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_2

    .line 2857
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "attribute is invalid in shader: [{0}]"

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2861
    :cond_5
    invoke-virtual {v2, v0}, Lcom/jme3/shader/Attribute;->setLocation(I)V

    .line 2866
    :cond_6
    aget-object v1, v6, v0

    if-ne v1, p1, :cond_7

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2868
    :cond_7
    if-eqz p2, :cond_9

    .line 2869
    :goto_1
    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 2870
    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2872
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_8

    .line 2873
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "GLES20.glVertexAttribPointer(location={0}, numComponents={1}, format={2}, isNormalized={3}, stride={4}, data.capacity={5})"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2890
    :cond_8
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertFormat(Lcom/jme3/scene/VertexBuffer$Format;)I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getStride()I

    move-result v4

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2896
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 2898
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 2900
    aput-object p1, v6, v0

    goto/16 :goto_0

    :cond_9
    move-object p2, p1

    .line 2868
    goto/16 :goto_1

    .line 2903
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot render mesh without shader bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewPort(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 672
    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpW:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpH:I

    if-eq v0, p4, :cond_2

    .line 673
    :cond_0
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_1

    .line 674
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "GLES20.glViewport({0}, {1}, {2}, {3})"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 677
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 678
    iput p1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpX:I

    .line 679
    iput p2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpY:I

    .line 680
    iput p3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpW:I

    .line 681
    iput p4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->vpH:I

    .line 683
    :cond_2
    return-void
.end method

.method public setViewProjectionMatrices(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
    .locals 0
    .parameter "viewMatrix"
    .parameter "projMatrix"

    .prologue
    .line 738
    return-void
.end method

.method public setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 0
    .parameter "worldMatrix"

    .prologue
    .line 735
    return-void
.end method

.method public updateBufferData(Lcom/jme3/scene/VertexBuffer;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2080
    iget-boolean v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v2, :cond_0

    .line 2081
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBufferData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2084
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getId()I

    move-result v2

    .line 2086
    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 2089
    iget-boolean v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v2, :cond_1

    .line 2090
    sget-object v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v3, "GLES20.glGenBuffers(1, buffer)"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2093
    :cond_1
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 2094
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 2095
    invoke-virtual {p1, v2}, Lcom/jme3/scene/VertexBuffer;->setId(I)V

    .line 2096
    iget-object v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v3, p1}, Lcom/jme3/util/NativeObjectManager;->registerForCleanup(Lcom/jme3/util/NativeObject;)V

    .line 2103
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-ne v3, v4, :cond_5

    .line 2104
    const v3, 0x8893

    .line 2106
    iget-boolean v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v4, :cond_2

    .line 2107
    sget-object v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v5, "vb.getBufferType() == VertexBuffer.Type.Index"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2110
    :cond_2
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v4, v4, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    if-eq v4, v2, :cond_8

    .line 2112
    iget-boolean v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v4, :cond_3

    .line 2113
    sget-object v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glBindBuffer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2116
    :cond_3
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 2117
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v2, v4, Lcom/jme3/renderer/RenderContext;->boundElementArrayVBO:I

    move v2, v3

    .line 2137
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertUsage(Lcom/jme3/scene/VertexBuffer$Usage;)I

    move-result v3

    .line 2138
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 2140
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->hasDataSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2142
    :cond_4
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v1

    mul-int/2addr v1, v0

    .line 2144
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 2188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown buffer format."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2120
    :cond_5
    iget-boolean v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v3, :cond_6

    .line 2121
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v4, "vb.getBufferType() != VertexBuffer.Type.Index"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2124
    :cond_6
    const v3, 0x8892

    .line 2126
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v4, v4, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    if-eq v4, v2, :cond_8

    .line 2128
    iget-boolean v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v4, :cond_7

    .line 2129
    sget-object v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glBindBuffer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2132
    :cond_7
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 2133
    iget-object v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v2, v4, Lcom/jme3/renderer/RenderContext;->boundArrayVBO:I

    :cond_8
    move v2, v3

    goto/16 :goto_1

    .line 2148
    :pswitch_0
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_9

    .line 2149
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2152
    :cond_9
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 2277
    :goto_2
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->clearUpdateNeeded()V

    .line 2278
    return-void

    .line 2158
    :pswitch_1
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_a

    .line 2159
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2162
    :cond_a
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_2

    .line 2167
    :pswitch_2
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_b

    .line 2168
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2171
    :cond_b
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto/16 :goto_2

    .line 2174
    :pswitch_3
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_c

    .line 2175
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2178
    :cond_c
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto/16 :goto_2

    .line 2181
    :pswitch_4
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_d

    .line 2182
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2185
    :cond_d
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    invoke-static {v2, v1, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto/16 :goto_2

    .line 2191
    :cond_e
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v3

    mul-int/2addr v3, v0

    .line 2193
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 2233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown buffer format."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :pswitch_5
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_f

    .line 2197
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferSubData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2200
    :cond_f
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v3, v0}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto/16 :goto_2

    .line 2204
    :pswitch_6
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_10

    .line 2205
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferSubData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2208
    :cond_10
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-static {v2, v1, v3, v0}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto/16 :goto_2

    .line 2212
    :pswitch_7
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_11

    .line 2213
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferSubData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2216
    :cond_11
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-static {v2, v1, v3, v0}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto/16 :goto_2

    .line 2219
    :pswitch_8
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_12

    .line 2220
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferSubData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2223
    :cond_12
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-static {v2, v1, v3, v0}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto/16 :goto_2

    .line 2226
    :pswitch_9
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_13

    .line 2227
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBufferSubData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (data))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 2230
    :cond_13
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    invoke-static {v2, v1, v3, v0}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    goto/16 :goto_2

    :cond_14
    move v0, v1

    goto/16 :goto_0

    .line 2144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2193
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateNameBuffer()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 123
    .local v1, len:I
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->nameBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 130
    return-void
.end method

.method public updateShaderData(Lcom/jme3/shader/Shader;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1079
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    .line 1081
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1084
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 1085
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glCreateProgram()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1088
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 1090
    if-gtz v0, :cond_1

    .line 1091
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v1, "Invalid ID received when trying to create shader program."

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_1
    invoke-virtual {p1, v0}, Lcom/jme3/shader/Shader;->setId(I)V

    move v1, v2

    move v4, v0

    .line 1098
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getSources()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader$ShaderSource;

    .line 1099
    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->isUpdateNeeded()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1100
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateShaderSourceData(Lcom/jme3/shader/Shader$ShaderSource;Ljava/lang/String;)V

    .line 1104
    :cond_2
    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->isUsable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1106
    invoke-virtual {p1, v3}, Lcom/jme3/shader/Shader;->setUsable(Z)V

    .line 1107
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->clearUpdateNeeded()V

    .line 1183
    :goto_2
    return-void

    .line 1110
    :cond_3
    iget-boolean v6, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v6, :cond_4

    .line 1111
    sget-object v6, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GLES20.glAttachShader("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1114
    :cond_4
    invoke-virtual {v0}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    goto :goto_1

    .line 1118
    :cond_5
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_6

    .line 1119
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glLinkProgram("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1122
    :cond_6
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1125
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_7

    .line 1126
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glGetProgramiv("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1129
    :cond_7
    const v0, 0x8b82

    iget-object v5, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 1131
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_b

    move v5, v2

    .line 1132
    :goto_3
    const/4 v0, 0x0

    .line 1134
    if-nez v5, :cond_a

    .line 1135
    iget-boolean v6, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v6, :cond_8

    .line 1136
    sget-object v6, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GLES20.glGetProgramiv("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", GLES20.GL_INFO_LOG_LENGTH, buffer)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1139
    :cond_8
    const v6, 0x8b84

    iget-object v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v4, v6, v7}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 1141
    iget-object v6, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    .line 1142
    const/4 v7, 0x3

    if-le v6, v7, :cond_a

    .line 1145
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_9

    .line 1146
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GLES20.glGetProgramInfoLog("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1149
    :cond_9
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 1153
    :cond_a
    if-eqz v5, :cond_d

    .line 1154
    if-eqz v0, :cond_c

    .line 1155
    sget-object v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "shader link success. \n{0}"

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    :goto_4
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->clearUpdateNeeded()V

    .line 1168
    if-nez v5, :cond_f

    .line 1170
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->resetSources()V

    .line 1171
    invoke-virtual {p1, v3}, Lcom/jme3/shader/Shader;->setUsable(Z)V

    .line 1172
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->deleteShader(Lcom/jme3/shader/Shader;)V

    goto/16 :goto_2

    :cond_b
    move v5, v3

    .line 1131
    goto :goto_3

    .line 1157
    :cond_c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v4, "shader link success"

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_4

    .line 1160
    :cond_d
    if-eqz v0, :cond_e

    .line 1161
    new-instance v1, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shader link failure, shader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1163
    :cond_e
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shader link failure, shader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info: <not provided>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_f
    invoke-virtual {p1, v2}, Lcom/jme3/shader/Shader;->setUsable(Z)V

    .line 1175
    if-eqz v1, :cond_10

    .line 1176
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p1}, Lcom/jme3/util/NativeObjectManager;->registerForCleanup(Lcom/jme3/util/NativeObject;)V

    .line 1177
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onNewShader()V

    goto/16 :goto_2

    .line 1180
    :cond_10
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->resetUniformLocations(Lcom/jme3/shader/Shader;)V

    goto/16 :goto_2

    :cond_11
    move v1, v3

    move v4, v0

    goto/16 :goto_0
.end method

.method public updateShaderSourceData(Lcom/jme3/shader/Shader$ShaderSource;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 962
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getId()I

    move-result v0

    .line 963
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 965
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 966
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20.glCreateShader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 968
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertShaderType(Lcom/jme3/shader/Shader$ShaderType;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 969
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 970
    if-gtz v0, :cond_1

    .line 971
    new-instance v0, Lcom/jme3/renderer/RendererException;

    const-string v1, "Invalid ID received when trying to create shader."

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_1
    invoke-virtual {p1, v0}, Lcom/jme3/shader/Shader$ShaderSource;->setId(I)V

    .line 979
    :cond_2
    new-array v1, v4, [B

    .line 981
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getDefines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 982
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 983
    array-length v6, v1

    array-length v7, v2

    add-int/2addr v6, v7

    array-length v7, v5

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 986
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 987
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 988
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 989
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 991
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_3

    .line 992
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glShaderSource("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 995
    :cond_3
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerVr:Z

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne v1, v2, :cond_a

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getDefines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1009
    :goto_0
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 1011
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_4

    .line 1012
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glCompileShader("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1015
    :cond_4
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1017
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 1019
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_5

    .line 1020
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glGetShaderiv("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", GLES20.GL_COMPILE_STATUS)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1023
    :cond_5
    const v1, 0x8b81

    iget-object v2, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 1025
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 1027
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 1028
    :goto_1
    const/4 v1, 0x0

    .line 1030
    if-nez v2, :cond_8

    .line 1033
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_6

    .line 1034
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v5, "GLES20.glGetShaderiv()"

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1036
    :cond_6
    const v1, 0x8b84

    iget-object v5, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 1037
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 1038
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_7

    .line 1039
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES20.glGetShaderInfoLog("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1041
    :cond_7
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 1042
    sget-object v5, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Errooooooooooot("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1045
    :cond_8
    if-eqz v2, :cond_d

    .line 1046
    if-eqz v1, :cond_c

    .line 1047
    sget-object v3, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compile success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1061
    :goto_2
    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->clearUpdateNeeded()V

    .line 1063
    invoke-virtual {p1, v2}, Lcom/jme3/shader/Shader$ShaderSource;->setUsable(Z)V

    .line 1064
    if-nez v2, :cond_f

    .line 1067
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_9

    .line 1068
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glDeleteShader("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1070
    :cond_9
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1071
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 1076
    :goto_3
    return-void

    .line 1002
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getDefines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v2, v4

    .line 1027
    goto/16 :goto_1

    .line 1049
    :cond_c
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compile success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 1052
    :cond_d
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Bad compile of:\n{0}{1}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getDefines()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p1}, Lcom/jme3/shader/Shader$ShaderSource;->getSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v0, v2, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    if-eqz v1, :cond_e

    .line 1055
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compile error in:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_e
    new-instance v0, Lcom/jme3/renderer/RendererException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile error in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: <not provided>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_f
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0, p1}, Lcom/jme3/util/NativeObjectManager;->registerForCleanup(Lcom/jme3/util/NativeObject;)V

    goto/16 :goto_3
.end method

.method protected updateShaderUniforms(Lcom/jme3/shader/Shader;)V
    .locals 4
    .parameter "shader"

    .prologue
    .line 922
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object v2

    .line 924
    .local v2, uniforms:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<Ljava/lang/String;Lcom/jme3/shader/Uniform;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/jme3/util/ListMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 925
    invoke-virtual {v2, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Uniform;

    .line 926
    .local v1, uniform:Lcom/jme3/shader/Uniform;
    invoke-virtual {v1}, Lcom/jme3/shader/Uniform;->isUpdateNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 927
    invoke-virtual {p0, p1, v1}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateUniform(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V

    .line 924
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 930
    .end local v1           #uniform:Lcom/jme3/shader/Uniform;
    :cond_1
    return-void
.end method

.method public updateTexImageData(Lcom/jme3/texture/Image;Lcom/jme3/texture/Texture$Type;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x8515

    const/4 v7, 0x6

    const/4 v3, 0x0

    .line 1859
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getId()I

    move-result v0

    .line 1860
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1862
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_0

    .line 1863
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glGenTexture(1, buffer)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1866
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 1867
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->intBuf1:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 1868
    invoke-virtual {p1, v0}, Lcom/jme3/texture/Image;->setId(I)V

    .line 1869
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->objManager:Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v1, p1}, Lcom/jme3/util/NativeObjectManager;->registerForCleanup(Lcom/jme3/util/NativeObject;)V

    .line 1871
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v1}, Lcom/jme3/renderer/Statistics;->onNewTexture()V

    .line 1875
    :cond_1
    invoke-direct {p0, p2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->convertTextureType(Lcom/jme3/texture/Texture$Type;)I

    move-result v2

    .line 1876
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v1, v1, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    aget-object v1, v1, v3

    if-eq v1, p1, :cond_5

    .line 1877
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    if-eqz v1, :cond_3

    .line 1878
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_2

    .line 1879
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v4, "GLES20.glActiveTexture(GLES20.GL_TEXTURE0)"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1882
    :cond_2
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1883
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v3, v1, Lcom/jme3/renderer/RenderContext;->boundTextureUnit:I

    .line 1886
    :cond_3
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_4

    .line 1887
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glBindTexture("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1890
    :cond_4
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1891
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget-object v0, v0, Lcom/jme3/renderer/RenderContext;->boundTextures:[Lcom/jme3/texture/Image;

    aput-object p1, v0, v3

    .line 1895
    :cond_5
    const v0, 0x8513

    if-ne v2, v0, :cond_9

    .line 1898
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getEfficentData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1899
    if-eqz v0, :cond_7

    .line 1901
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v7, :cond_6

    .line 1902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cubemap textures must contain 6 data units."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v2, v3

    .line 1905
    :goto_0
    if-ge v2, v7, :cond_c

    .line 1906
    add-int v4, v8, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/AndroidImageInfo;

    invoke-virtual {v1}, Lcom/jme3/asset/AndroidImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v5, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerOf2:Z

    invoke-static {v4, v1, v3, v5}, Lcom/jme3/renderer/android/TextureUtil;->uploadTextureBitmap(ILandroid/graphics/Bitmap;ZZ)V

    .line 1905
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1910
    :cond_7
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    .line 1911
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v7, :cond_8

    .line 1912
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Invalid texture: {0}\nCubemap textures must contain 6 data units."

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1938
    :goto_1
    return-void

    :cond_8
    move v2, v3

    .line 1916
    :goto_2
    if-ge v2, v7, :cond_c

    .line 1917
    add-int v1, v8, v2

    iget-boolean v4, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->tdc:Z

    iget-boolean v6, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerOf2:Z

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/jme3/renderer/android/TextureUtil;->uploadTexture(Lcom/jme3/texture/Image;IIIZZZ)V

    .line 1916
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1921
    :cond_9
    iget-boolean v5, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->tdc:Z

    iget-boolean v7, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->powerOf2:Z

    move-object v1, p1

    move v4, v3

    move v6, v3

    invoke-static/range {v1 .. v7}, Lcom/jme3/renderer/android/TextureUtil;->uploadTexture(Lcom/jme3/texture/Image;IIIZZZ)V

    .line 1923
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_a

    .line 1924
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glTexParameteri("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GLES11.GL_GENERATE_MIMAP, GLES20.GL_TRUE)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1927
    :cond_a
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p3, :cond_c

    .line 1930
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_b

    .line 1931
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLES20.glGenerateMipmap(GLES20.GL_TEXTURE_2D)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1933
    :cond_b
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 1937
    :cond_c
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->clearUpdateNeeded()V

    goto :goto_1
.end method

.method protected updateUniform(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 764
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v0

    .line 766
    sget-boolean v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 767
    :cond_0
    sget-boolean v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v1

    if-gtz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iget v1, v1, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    if-eq v1, v0, :cond_4

    .line 770
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_2

    .line 771
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "GLES20.glUseProgram({0})"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 774
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 775
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v1, p1, v2}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    .line 776
    iput-object p1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->boundShader:Lcom/jme3/shader/Shader;

    .line 777
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->context:Lcom/jme3/renderer/RenderContext;

    iput v0, v1, Lcom/jme3/renderer/RenderContext;->boundShaderProgram:I

    .line 782
    :goto_0
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getLocation()I

    move-result v0

    .line 783
    if-ne v0, v7, :cond_5

    .line 784
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_3

    .line 785
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "no location for uniform [{0}]"

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 919
    :cond_3
    :goto_1
    return-void

    .line 779
    :cond_4
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0, p1, v3}, Lcom/jme3/renderer/Statistics;->onShaderUse(Lcom/jme3/shader/Shader;Z)V

    goto :goto_0

    .line 790
    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1a

    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateUniformLocation(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V

    .line 793
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getLocation()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 796
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_6

    .line 797
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "not declared uniform: [{0}]"

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    :cond_6
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->clearUpdateNeeded()V

    goto :goto_1

    .line 803
    :cond_7
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getLocation()I

    move-result v0

    move v1, v0

    .line 806
    :goto_2
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v0

    if-nez v0, :cond_8

    .line 807
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "value is not set yet."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 811
    :cond_8
    iget-object v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->statistics:Lcom/jme3/renderer/Statistics;

    invoke-virtual {v0}, Lcom/jme3/renderer/Statistics;->onUniformSet()V

    .line 813
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->clearUpdateNeeded()V

    .line 815
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 916
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported uniform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :pswitch_0
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_9

    .line 818
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform1f set Float. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 820
    :cond_9
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 821
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 918
    :goto_3
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    goto/16 :goto_1

    .line 824
    :pswitch_1
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_a

    .line 825
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform2f set Vector2. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 827
    :cond_a
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;

    .line 828
    invoke-virtual {v0}, Lcom/jme3/math/Vector2f;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/math/Vector2f;->getY()F

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_3

    .line 831
    :pswitch_2
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_b

    .line 832
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform3f set Vector3. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 834
    :cond_b
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    .line 835
    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_3

    .line 838
    :pswitch_3
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_c

    .line 839
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform4f set Vector4."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 841
    :cond_c
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 842
    instance-of v2, v0, Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_d

    .line 843
    check-cast v0, Lcom/jme3/math/ColorRGBA;

    .line 844
    iget v2, v0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v3, v0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v4, v0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v0, v0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v1, v2, v3, v4, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_3

    .line 846
    :cond_d
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    .line 847
    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v4

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto/16 :goto_3

    .line 851
    :pswitch_4
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_e

    .line 852
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glUniform1i set Boolean."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 854
    :cond_e
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 855
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_4
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_3

    :cond_f
    move v0, v3

    goto :goto_4

    .line 858
    :pswitch_5
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_10

    .line 859
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glUniformMatrix3fv set Matrix3."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 861
    :cond_10
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 862
    sget-boolean v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v4, :cond_11

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 863
    :cond_11
    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 866
    :pswitch_6
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_12

    .line 867
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLES20.glUniformMatrix4fv set Matrix4."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 869
    :cond_12
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 870
    sget-boolean v4, Lcom/jme3/renderer/android/OGLESShaderRenderer;->$assertionsDisabled:Z

    if-nez v4, :cond_13

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 871
    :cond_13
    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 874
    :pswitch_7
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_14

    .line 875
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform1fv set FloatArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 877
    :cond_14
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 878
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 881
    :pswitch_8
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_15

    .line 882
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform2fv set Vector2Array."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 884
    :cond_15
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 885
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 888
    :pswitch_9
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_16

    .line 889
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform3fv set Vector3Array."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 891
    :cond_16
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 892
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 895
    :pswitch_a
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_17

    .line 896
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform4fv set Vector4Array."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 898
    :cond_17
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 899
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 902
    :pswitch_b
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_18

    .line 903
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLES20.glUniform4fv set Matrix4Array."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 905
    :cond_18
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 906
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 909
    :pswitch_c
    iget-boolean v0, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v0, :cond_19

    .line 910
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20.glUniform1i set Int."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 912
    :cond_19
    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 913
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_3

    :cond_1a
    move v1, v0

    goto/16 :goto_2

    .line 815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected updateUniformLocation(Lcom/jme3/shader/Shader;Lcom/jme3/shader/Uniform;)V
    .locals 7
    .parameter "shader"
    .parameter "uniform"

    .prologue
    const/4 v6, 0x0

    .line 744
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 745
    iget-object v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->stringBuf:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->updateNameBuffer()V

    .line 747
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_0

    .line 748
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "GLES20.glGetUniformLocation({0}, {1})"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 751
    .local v0, loc:I
    invoke-direct {p0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->checkGLError()V

    .line 752
    if-gez v0, :cond_2

    .line 753
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Lcom/jme3/shader/Uniform;->setLocation(I)V

    .line 755
    iget-boolean v1, p0, Lcom/jme3/renderer/android/OGLESShaderRenderer;->verboseLogging:Z

    if-eqz v1, :cond_1

    .line 756
    sget-object v1, Lcom/jme3/renderer/android/OGLESShaderRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Uniform [{0}] is not declared in shader."

    invoke-virtual {p2}, Lcom/jme3/shader/Uniform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    :cond_1
    :goto_0
    return-void

    .line 759
    :cond_2
    invoke-virtual {p2, v0}, Lcom/jme3/shader/Uniform;->setLocation(I)V

    goto :goto_0
.end method

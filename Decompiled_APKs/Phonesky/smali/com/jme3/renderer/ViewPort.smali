.class public Lcom/jme3/renderer/ViewPort;
.super Ljava/lang/Object;
.source "ViewPort.java"


# instance fields
.field protected final backColor:Lcom/jme3/math/ColorRGBA;

.field protected final cam:Lcom/jme3/renderer/Camera;

.field protected clearColor:Z

.field protected clearDepth:Z

.field protected clearStencil:Z

.field private enabled:Z

.field protected final name:Ljava/lang/String;

.field protected out:Lcom/jme3/texture/FrameBuffer;

.field protected final processors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/post/SceneProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected final queue:Lcom/jme3/renderer/queue/RenderQueue;

.field protected final sceneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V
    .locals 3
    .parameter "name"
    .parameter "cam"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue;

    invoke-direct {v0}, Lcom/jme3/renderer/queue/RenderQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->queue:Lcom/jme3/renderer/queue/RenderQueue;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->out:Lcom/jme3/texture/FrameBuffer;

    .line 75
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/renderer/ViewPort;->backColor:Lcom/jme3/math/ColorRGBA;

    .line 76
    iput-boolean v2, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    iput-boolean v2, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    iput-boolean v2, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->enabled:Z

    .line 92
    iput-object p1, p0, Lcom/jme3/renderer/ViewPort;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/jme3/renderer/ViewPort;->cam:Lcom/jme3/renderer/Camera;

    .line 94
    return-void
.end method


# virtual methods
.method public attachScene(Lcom/jme3/scene/Spatial;)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public getBackgroundColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->backColor:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->cam:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->out:Lcom/jme3/texture/FrameBuffer;

    return-object v0
.end method

.method public getProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/post/SceneProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->processors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQueue()Lcom/jme3/renderer/queue/RenderQueue;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->queue:Lcom/jme3/renderer/queue/RenderQueue;

    return-object v0
.end method

.method public getScenes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/jme3/renderer/ViewPort;->sceneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isClearColor()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    return v0
.end method

.method public isClearDepth()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    return v0
.end method

.method public isClearStencil()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/jme3/renderer/ViewPort;->enabled:Z

    return v0
.end method

.method public setClearFlags(ZZZ)V
    .locals 0
    .parameter "color"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/jme3/renderer/ViewPort;->clearColor:Z

    .line 226
    iput-boolean p2, p0, Lcom/jme3/renderer/ViewPort;->clearDepth:Z

    .line 227
    iput-boolean p3, p0, Lcom/jme3/renderer/ViewPort;->clearStencil:Z

    .line 228
    return-void
.end method

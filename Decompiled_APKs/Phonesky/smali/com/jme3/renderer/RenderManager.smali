.class public Lcom/jme3/renderer/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/RenderManager$1;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private camDir:Lcom/jme3/math/Vector3f;

.field private camLeft:Lcom/jme3/math/Vector3f;

.field private camLoc:Lcom/jme3/math/Vector3f;

.field private camUp:Lcom/jme3/math/Vector3f;

.field private far:F

.field private forcedMaterial:Lcom/jme3/material/Material;

.field private forcedRenderState:Lcom/jme3/material/RenderState;

.field private forcedTechnique:Ljava/lang/String;

.field private handleTranlucentBucket:Z

.field private near:F

.field private orthoMatrix:Lcom/jme3/math/Matrix4f;

.field private postViewPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation
.end field

.field private preViewPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation
.end field

.field private prevCam:Lcom/jme3/renderer/Camera;

.field private projMatrix:Lcom/jme3/math/Matrix4f;

.field private renderer:Lcom/jme3/renderer/Renderer;

.field private shader:Z

.field private timer:Lcom/jme3/system/Timer;

.field private tmpTech:Ljava/lang/String;

.field private viewHeight:I

.field private viewMatrix:Lcom/jme3/math/Matrix4f;

.field private viewPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/renderer/ViewPort;",
            ">;"
        }
    .end annotation
.end field

.field private viewProjMatrix:Lcom/jme3/math/Matrix4f;

.field private viewWidth:I

.field private viewX:I

.field private viewY:I

.field private worldMatrix:Lcom/jme3/math/Matrix4f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/RenderManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Renderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    .line 76
    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    .line 77
    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    .line 78
    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    .line 83
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    .line 84
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    .line 85
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    .line 86
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    .line 87
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    .line 88
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->camUp:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->camLeft:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->camDir:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->camLoc:Lcom/jme3/math/Vector3f;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/renderer/RenderManager;->handleTranlucentBucket:Z

    .line 102
    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    .line 104
    return-void
.end method

.method private notifyReshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 4
    .parameter "vp"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getProcessors()Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, processors:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/post/SceneProcessor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/post/SceneProcessor;

    .line 294
    .local v1, proc:Lcom/jme3/post/SceneProcessor;
    invoke-interface {v1}, Lcom/jme3/post/SceneProcessor;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    invoke-interface {v1, p0, p1}, Lcom/jme3/post/SceneProcessor;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/jme3/post/SceneProcessor;->reshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_0

    .line 300
    .end local v1           #proc:Lcom/jme3/post/SceneProcessor;
    :cond_1
    return-void
.end method

.method private renderShadow(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 6
    .parameter "s"
    .parameter "rq"

    .prologue
    .line 685
    instance-of v5, p1, Lcom/jme3/scene/Node;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 686
    check-cast v3, Lcom/jme3/scene/Node;

    .line 687
    .local v3, n:Lcom/jme3/scene/Node;
    invoke-virtual {v3}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 688
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/Spatial;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 689
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v5, p2}, Lcom/jme3/renderer/RenderManager;->renderShadow(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/queue/RenderQueue;)V

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    .end local v0           #children:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/Spatial;>;"
    .end local v2           #i:I
    .end local v3           #n:Lcom/jme3/scene/Node;
    :cond_0
    instance-of v5, p1, Lcom/jme3/scene/Geometry;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 692
    check-cast v1, Lcom/jme3/scene/Geometry;

    .line 694
    .local v1, gm:Lcom/jme3/scene/Geometry;
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v4

    .line 695
    .local v4, shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    sget-object v5, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v4, v5, :cond_1

    .line 697
    sget-object v5, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p2, v1, v5}, Lcom/jme3/renderer/queue/RenderQueue;->addToShadowQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    .line 700
    .end local v1           #gm:Lcom/jme3/scene/Geometry;
    .end local v4           #shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    :cond_1
    return-void
.end method

.method private setViewPort(Lcom/jme3/renderer/Camera;)V
    .locals 8
    .parameter "cam"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    .line 951
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->isViewportChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->viewX:I

    .line 953
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->viewY:I

    .line 954
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    .line 955
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    .line 956
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    iget v1, p0, Lcom/jme3/renderer/RenderManager;->viewX:I

    iget v2, p0, Lcom/jme3/renderer/RenderManager;->viewY:I

    iget v3, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    iget v4, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jme3/renderer/Renderer;->setViewPort(IIII)V

    .line 957
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    iget v1, p0, Lcom/jme3/renderer/RenderManager;->viewX:I

    iget v2, p0, Lcom/jme3/renderer/RenderManager;->viewY:I

    iget v3, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    iget v4, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jme3/renderer/Renderer;->setClipRect(IIII)V

    .line 958
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->clearViewportChanged()V

    .line 959
    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    .line 970
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 971
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v5, v5, v6}, Lcom/jme3/math/Matrix4f;->setTranslation(FFF)V

    .line 972
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v7, v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v7, v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/jme3/math/Matrix4f;->setScale(FFF)V

    .line 974
    :cond_1
    return-void
.end method

.method private setViewProjection(Lcom/jme3/renderer/Camera;Z)V
    .locals 3
    .parameter "cam"
    .parameter "ortho"

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/jme3/renderer/RenderManager;->shader:Z

    if-eqz v0, :cond_1

    .line 978
    if-eqz p2, :cond_0

    .line 979
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    sget-object v1, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 980
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 981
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 988
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->camLoc:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 989
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->camLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 990
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->camUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 991
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->camDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 993
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->near:F

    .line 994
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/RenderManager;->far:F

    .line 1004
    :goto_1
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 984
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 985
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    goto :goto_0

    .line 996
    :cond_1
    if-eqz p2, :cond_2

    .line 997
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    sget-object v1, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->orthoMatrix:Lcom/jme3/math/Matrix4f;

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/Renderer;->setViewProjectionMatrices(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V

    goto :goto_1

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/renderer/Renderer;->setViewProjectionMatrices(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V

    goto :goto_1
.end method


# virtual methods
.method public clearQueue(Lcom/jme3/renderer/ViewPort;)V
    .locals 1
    .parameter "vp"

    .prologue
    .line 864
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/queue/RenderQueue;->clear()V

    .line 865
    return-void
.end method

.method public createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;
    .locals 2
    .parameter "viewName"
    .parameter "cam"

    .prologue
    .line 275
    new-instance v0, Lcom/jme3/renderer/ViewPort;

    invoke-direct {v0, p1, p2}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    .line 276
    .local v0, vp:Lcom/jme3/renderer/ViewPort;
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    return-object v0
.end method

.method public createPostView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;
    .locals 2
    .parameter "viewName"
    .parameter "cam"

    .prologue
    .line 286
    new-instance v0, Lcom/jme3/renderer/ViewPort;

    invoke-direct {v0, p1, p2}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    .line 287
    .local v0, vp:Lcom/jme3/renderer/ViewPort;
    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-object v0
.end method

.method public flushQueue(Lcom/jme3/renderer/ViewPort;)V
    .locals 1
    .parameter "vp"

    .prologue
    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/RenderManager;->renderViewPortQueues(Lcom/jme3/renderer/ViewPort;Z)V

    .line 851
    return-void
.end method

.method public getCurrentCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->prevCam:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getForcedRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedRenderState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getRenderer()Lcom/jme3/renderer/Renderer;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    return-object v0
.end method

.method public notifyReshape(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x1

    .line 308
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    .line 309
    .local v2, vp:Lcom/jme3/renderer/ViewPort;
    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 310
    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    .line 311
    .local v0, cam:Lcom/jme3/renderer/Camera;
    invoke-virtual {v0, p1, p2, v4}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    .line 313
    .end local v0           #cam:Lcom/jme3/renderer/Camera;
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_0

    .line 315
    .end local v2           #vp:Lcom/jme3/renderer/ViewPort;
    :cond_1
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    .line 316
    .restart local v2       #vp:Lcom/jme3/renderer/ViewPort;
    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 317
    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    .line 318
    .restart local v0       #cam:Lcom/jme3/renderer/Camera;
    invoke-virtual {v0, p1, p2, v4}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    .line 320
    .end local v0           #cam:Lcom/jme3/renderer/Camera;
    :cond_2
    invoke-direct {p0, v2, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_1

    .line 322
    .end local v2           #vp:Lcom/jme3/renderer/ViewPort;
    :cond_3
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/renderer/ViewPort;

    .line 323
    .restart local v2       #vp:Lcom/jme3/renderer/ViewPort;
    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v3

    if-nez v3, :cond_4

    .line 324
    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    .line 325
    .restart local v0       #cam:Lcom/jme3/renderer/Camera;
    invoke-virtual {v0, p1, p2, v4}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    .line 327
    .end local v0           #cam:Lcom/jme3/renderer/Camera;
    :cond_4
    invoke-direct {p0, v2, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(Lcom/jme3/renderer/ViewPort;II)V

    goto :goto_2

    .line 329
    .end local v2           #vp:Lcom/jme3/renderer/ViewPort;
    :cond_5
    return-void
.end method

.method public render(FZ)V
    .locals 4
    .parameter "tpf"
    .parameter "mainFrameBufferActive"

    .prologue
    .line 1153
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    instance-of v2, v2, Lcom/jme3/system/NullRenderer;

    if-eqz v2, :cond_1

    .line 1177
    :cond_0
    return-void

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v2}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jme3/renderer/RenderManager;->shader:Z

    .line 1159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1160
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->preViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 1161
    .local v1, vp:Lcom/jme3/renderer/ViewPort;
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    .line 1162
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    .line 1159
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    .end local v1           #vp:Lcom/jme3/renderer/ViewPort;
    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1166
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->viewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 1167
    .restart local v1       #vp:Lcom/jme3/renderer/ViewPort;
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_6

    .line 1168
    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    .line 1165
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1171
    .end local v1           #vp:Lcom/jme3/renderer/ViewPort;
    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/jme3/renderer/RenderManager;->postViewPorts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/renderer/ViewPort;

    .line 1173
    .restart local v1       #vp:Lcom/jme3/renderer/ViewPort;
    invoke-virtual {v1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_9

    .line 1174
    :cond_8
    invoke-virtual {p0, v1, p1}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    .line 1171
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public renderGeometry(Lcom/jme3/scene/Geometry;)V
    .locals 2
    .parameter "g"

    .prologue
    .line 632
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    sget-object v0, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/RenderManager;->setWorldMatrix(Lcom/jme3/math/Matrix4f;)V

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 642
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jme3/material/MaterialDef;->getTechniqueDef(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 643
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jme3/renderer/RenderManager;->tmpTech:Ljava/lang/String;

    .line 644
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->forcedTechnique:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    .line 646
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V

    .line 647
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/RenderManager;->tmpTech:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    .line 660
    :cond_0
    :goto_2
    return-void

    .line 635
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/RenderManager;->setWorldMatrix(Lcom/jme3/math/Matrix4f;)V

    goto :goto_0

    .line 643
    :cond_2
    const-string v0, "Default"

    goto :goto_1

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0, p1, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V

    goto :goto_2

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    if-eqz v0, :cond_5

    .line 656
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->forcedMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0, p1, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V

    goto :goto_2

    .line 658
    :cond_5
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/jme3/material/Material;->render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V

    goto :goto_2
.end method

.method public renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V
    .locals 9
    .parameter "scene"
    .parameter "vp"

    .prologue
    .line 772
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v6

    if-nez v6, :cond_0

    .line 773
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    .line 776
    :cond_0
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/jme3/scene/Spatial;->checkCulling(Lcom/jme3/renderer/Camera;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 778
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v6

    sget-object v7, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-ne v6, v7, :cond_1

    instance-of v6, p1, Lcom/jme3/scene/Node;

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v6

    sget-object v7, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    if-eq v6, v7, :cond_2

    .line 779
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/jme3/renderer/RenderManager;->renderShadow(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/queue/RenderQueue;)V

    .line 813
    :cond_2
    :goto_0
    return-void

    .line 784
    :cond_3
    invoke-virtual {p1, p0, p2}, Lcom/jme3/scene/Spatial;->runControlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    .line 785
    instance-of v6, p1, Lcom/jme3/scene/Node;

    if-eqz v6, :cond_4

    move-object v4, p1

    .line 787
    check-cast v4, Lcom/jme3/scene/Node;

    .line 788
    .local v4, n:Lcom/jme3/scene/Node;
    invoke-virtual {v4}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 790
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/Spatial;>;"
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v0

    .line 791
    .local v0, camState:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 793
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    .line 794
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v6, p2}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 797
    .end local v0           #camState:I
    .end local v1           #children:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/Spatial;>;"
    .end local v3           #i:I
    .end local v4           #n:Lcom/jme3/scene/Node;
    :cond_4
    instance-of v6, p1, Lcom/jme3/scene/Geometry;

    if-eqz v6, :cond_2

    move-object v2, p1

    .line 800
    check-cast v2, Lcom/jme3/scene/Geometry;

    .line 801
    .local v2, gm:Lcom/jme3/scene/Geometry;
    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v6

    if-nez v6, :cond_5

    .line 802
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No material is set for Geometry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 805
    :cond_5
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v6

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/jme3/renderer/queue/RenderQueue;->addToQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 808
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v5

    .line 809
    .local v5, shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    sget-object v6, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v5, v6, :cond_2

    .line 810
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/jme3/renderer/queue/RenderQueue;->addToShadowQueue(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    goto :goto_0
.end method

.method public renderTranslucentQueue(Lcom/jme3/renderer/ViewPort;)V
    .locals 4
    .parameter "vp"

    .prologue
    .line 943
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v0

    .line 944
    .local v0, rq:Lcom/jme3/renderer/queue/RenderQueue;
    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jme3/renderer/RenderManager;->handleTranlucentBucket:Z

    if-eqz v1, :cond_0

    .line 945
    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 947
    :cond_0
    return-void
.end method

.method public renderViewPort(Lcom/jme3/renderer/ViewPort;F)V
    .locals 9
    .parameter "vp"
    .parameter "tpf"

    .prologue
    .line 1087
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1090
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getProcessors()Ljava/util/List;

    move-result-object v3

    .line 1091
    .local v3, processors:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/post/SceneProcessor;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1092
    const/4 v3, 0x0

    .line 1095
    :cond_1
    if-eqz v3, :cond_3

    .line 1096
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/post/SceneProcessor;

    .line 1097
    .local v2, proc:Lcom/jme3/post/SceneProcessor;
    invoke-interface {v2}, Lcom/jme3/post/SceneProcessor;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1098
    invoke-interface {v2, p0, p1}, Lcom/jme3/post/SceneProcessor;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    .line 1100
    :cond_2
    invoke-interface {v2, p2}, Lcom/jme3/post/SceneProcessor;->preFrame(F)V

    goto :goto_1

    .line 1104
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #proc:Lcom/jme3/post/SceneProcessor;
    :cond_3
    iget-object v5, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    .line 1105
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    .line 1106
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearDepth()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearStencil()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1107
    :cond_4
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1108
    iget-object v5, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getBackgroundColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/jme3/renderer/Renderer;->setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V

    .line 1110
    :cond_5
    iget-object v5, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearColor()Z

    move-result v6

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearDepth()Z

    move-result v7

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->isClearStencil()Z

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    .line 1115
    :cond_6
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getScenes()Ljava/util/List;

    move-result-object v4

    .line 1116
    .local v4, scenes:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/Spatial;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_7

    .line 1117
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v5, p1}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    .line 1116
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1120
    :cond_7
    if-eqz v3, :cond_8

    .line 1121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/post/SceneProcessor;

    .line 1122
    .restart local v2       #proc:Lcom/jme3/post/SceneProcessor;
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/jme3/post/SceneProcessor;->postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V

    goto :goto_3

    .line 1126
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #proc:Lcom/jme3/post/SceneProcessor;
    :cond_8
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->flushQueue(Lcom/jme3/renderer/ViewPort;)V

    .line 1128
    if-eqz v3, :cond_9

    .line 1129
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/post/SceneProcessor;

    .line 1130
    .restart local v2       #proc:Lcom/jme3/post/SceneProcessor;
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getOutputFrameBuffer()Lcom/jme3/texture/FrameBuffer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/jme3/post/SceneProcessor;->postFrame(Lcom/jme3/texture/FrameBuffer;)V

    goto :goto_4

    .line 1134
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #proc:Lcom/jme3/post/SceneProcessor;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->renderTranslucentQueue(Lcom/jme3/renderer/ViewPort;)V

    .line 1136
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/RenderManager;->clearQueue(Lcom/jme3/renderer/ViewPort;)V

    goto/16 :goto_0
.end method

.method public renderViewPortQueues(Lcom/jme3/renderer/ViewPort;Z)V
    .locals 6
    .parameter "vp"
    .parameter "flush"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 888
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getQueue()Lcom/jme3/renderer/queue/RenderQueue;

    move-result-object v2

    .line 889
    .local v2, rq:Lcom/jme3/renderer/queue/RenderQueue;
    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    .line 890
    .local v0, cam:Lcom/jme3/renderer/Camera;
    const/4 v1, 0x0

    .line 894
    .local v1, depthRangeChanged:Z
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3, p0, v0, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 897
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 898
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v5, v5}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    .line 899
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3, p0, v0, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 900
    const/4 v1, 0x1

    .line 907
    :cond_0
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 908
    if-eqz v1, :cond_1

    .line 909
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v4, v5}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    .line 910
    const/4 v1, 0x0

    .line 913
    :cond_1
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3, p0, v0, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 916
    :cond_2
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/queue/RenderQueue;->isQueueEmpty(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 917
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v4, v4}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    .line 918
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    .line 919
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3, p0, v0, p2}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    .line 920
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    .line 921
    const/4 v1, 0x1

    .line 925
    :cond_3
    if-eqz v1, :cond_4

    .line 926
    iget-object v3, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v4, v5}, Lcom/jme3/renderer/Renderer;->setDepthRange(FF)V

    .line 928
    :cond_4
    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;Z)V
    .locals 0
    .parameter "cam"
    .parameter "ortho"

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/jme3/renderer/RenderManager;->setViewPort(Lcom/jme3/renderer/Camera;)V

    .line 1025
    invoke-direct {p0, p1, p2}, Lcom/jme3/renderer/RenderManager;->setViewProjection(Lcom/jme3/renderer/Camera;Z)V

    .line 1026
    return-void
.end method

.method public setTimer(Lcom/jme3/system/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/jme3/renderer/RenderManager;->timer:Lcom/jme3/system/Timer;

    .line 513
    return-void
.end method

.method public setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 1
    .parameter "mat"

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/jme3/renderer/RenderManager;->shader:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/RenderManager;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/Renderer;->setWorldMatrix(Lcom/jme3/math/Matrix4f;)V

    goto :goto_0
.end method

.method public updateUniformBindings(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/shader/Uniform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/shader/Uniform;>;"
    const/high16 v12, 0x3f80

    .line 338
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v7

    .line 340
    .local v7, vars:Lcom/jme3/util/TempVars;
    iget-object v3, v7, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 341
    .local v3, tempMat4:Lcom/jme3/math/Matrix4f;
    iget-object v2, v7, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    .line 342
    .local v2, tempMat3:Lcom/jme3/math/Matrix3f;
    iget-object v4, v7, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    .line 343
    .local v4, tempVec2:Lcom/jme3/math/Vector2f;
    iget-object v5, v7, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    .line 345
    .local v5, tempVec4:Lcom/jme3/math/Quaternion;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 346
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/shader/Uniform;

    .line 347
    .local v6, u:Lcom/jme3/shader/Uniform;
    sget-object v8, Lcom/jme3/renderer/RenderManager$1;->$SwitchMap$com$jme3$shader$UniformBinding:[I

    invoke-virtual {v6}, Lcom/jme3/shader/Uniform;->getBinding()Lcom/jme3/shader/UniformBinding;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/shader/UniformBinding;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 345
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :pswitch_0
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 352
    :pswitch_1
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 355
    :pswitch_2
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 358
    :pswitch_3
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 361
    :pswitch_4
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 362
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 363
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 366
    :pswitch_5
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 367
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 368
    invoke-virtual {v3, v2}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    .line 369
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    .line 370
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    .line 371
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 374
    :pswitch_6
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 375
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 376
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 379
    :pswitch_7
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 380
    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 381
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 384
    :pswitch_8
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v8, v2}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    .line 385
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    .line 386
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    :pswitch_9
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 390
    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 391
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 394
    :pswitch_a
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->projMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 395
    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 396
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 399
    :pswitch_b
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 400
    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 401
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 404
    :pswitch_c
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 405
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 406
    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 407
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 410
    :pswitch_d
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 411
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 412
    invoke-virtual {v3, v2}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    .line 413
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    .line 414
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    .line 415
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    .line 416
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 419
    :pswitch_e
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 420
    iget-object v8, p0, Lcom/jme3/renderer/RenderManager;->worldMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 421
    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 422
    sget-object v8, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v3}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 425
    :pswitch_f
    iget v8, p0, Lcom/jme3/renderer/RenderManager;->viewX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/jme3/renderer/RenderManager;->viewY:I

    int-to-float v9, v9

    iget v10, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 426
    sget-object v8, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v5}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 429
    :pswitch_10
    iget v8, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 430
    sget-object v8, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v4}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 433
    :pswitch_11
    iget v8, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    int-to-float v8, v8

    div-float v8, v12, v8

    iget v9, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    int-to-float v9, v9

    div-float v9, v12, v9

    invoke-virtual {v4, v8, v9}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 434
    sget-object v8, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v4}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 437
    :pswitch_12
    iget v8, p0, Lcom/jme3/renderer/RenderManager;->viewWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/jme3/renderer/RenderManager;->viewHeight:I

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 438
    .local v0, aspect:F
    sget-object v8, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 441
    .end local v0           #aspect:F
    :pswitch_13
    iget v8, p0, Lcom/jme3/renderer/RenderManager;->near:F

    iget v9, p0, Lcom/jme3/renderer/RenderManager;->far:F

    invoke-virtual {v4, v8, v9}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 442
    sget-object v8, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v6, v8, v4}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 445
    :pswitch_14
    sget-object v8, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->camLoc:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 448
    :pswitch_15
    sget-object v8, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->camDir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 451
    :pswitch_16
    sget-object v8, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->camLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 454
    :pswitch_17
    sget-object v8, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->camUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 457
    :pswitch_18
    sget-object v8, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v9}, Lcom/jme3/system/Timer;->getTimeInSeconds()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 460
    :pswitch_19
    sget-object v8, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v9}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 463
    :pswitch_1a
    sget-object v8, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    iget-object v9, p0, Lcom/jme3/renderer/RenderManager;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v9}, Lcom/jme3/system/Timer;->getFrameRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 468
    .end local v6           #u:Lcom/jme3/shader/Uniform;
    :cond_0
    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    .line 469
    return-void

    .line 347
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

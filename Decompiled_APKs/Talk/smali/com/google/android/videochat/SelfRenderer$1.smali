.class Lcom/google/android/videochat/SelfRenderer$1;
.super Ljava/lang/Object;
.source "SelfRenderer.java"

# interfaces
.implements Lcom/google/android/videochat/CameraManager$CameraManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/SelfRenderer;-><init>(Lcom/google/android/videochat/RendererManager;Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;Lcom/google/android/videochat/CameraSpecification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/SelfRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/SelfRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureSizeForCamera(Ljava/util/List;)Lcom/google/android/videochat/Size;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/google/android/videochat/Size;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 115
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "empty previewSizes list"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 119
    :cond_0
    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    invoke-static {v10}, Lcom/google/android/videochat/SelfRenderer;->access$300(Lcom/google/android/videochat/SelfRenderer;)Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->getIdealCaptureSize()Lcom/google/android/videochat/Size;

    move-result-object v0

    .line 120
    .local v0, appIdealSize:Lcom/google/android/videochat/Size;
    if-eqz v0, :cond_4

    .line 121
    iget v8, v0, Lcom/google/android/videochat/Size;->width:I

    .line 122
    .local v8, idealWidth:I
    iget v7, v0, Lcom/google/android/videochat/Size;->height:I

    .line 127
    .local v7, idealHeight:I
    :goto_0
    const v1, 0x7fffffff

    .line 128
    .local v1, bestDistance:I
    const/4 v2, 0x0

    .line 129
    .local v2, bestSize:Landroid/hardware/Camera$Size;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 130
    .local v9, s:Landroid/hardware/Camera$Size;
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    sub-int v4, v10, v8

    .line 131
    .local v4, deltaWidth:I
    iget v10, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int v3, v10, v7

    .line 133
    .local v3, deltaHeight:I
    if-gez v4, :cond_2

    .line 134
    mul-int/lit8 v4, v4, -0x4

    .line 136
    :cond_2
    if-gez v3, :cond_3

    .line 137
    mul-int/lit8 v3, v3, -0x4

    .line 140
    :cond_3
    add-int v5, v4, v3

    .line 141
    .local v5, distance:I
    if-ge v5, v1, :cond_1

    .line 143
    move v1, v5

    .line 144
    move-object v2, v9

    goto :goto_1

    .line 124
    .end local v1           #bestDistance:I
    .end local v2           #bestSize:Landroid/hardware/Camera$Size;
    .end local v3           #deltaHeight:I
    .end local v4           #deltaWidth:I
    .end local v5           #distance:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #idealHeight:I
    .end local v8           #idealWidth:I
    .end local v9           #s:Landroid/hardware/Camera$Size;
    :cond_4
    const/16 v8, 0x280

    .line 125
    .restart local v8       #idealWidth:I
    const/16 v7, 0x190

    .restart local v7       #idealHeight:I
    goto :goto_0

    .line 147
    .restart local v1       #bestDistance:I
    .restart local v2       #bestSize:Landroid/hardware/Camera$Size;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    new-instance v10, Lcom/google/android/videochat/Size;

    iget v11, v2, Landroid/hardware/Camera$Size;->width:I

    iget v12, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v10, v11, v12}, Lcom/google/android/videochat/Size;-><init>(II)V

    return-object v10
.end method

.method public onCameraOpen(Lcom/google/android/videochat/Size;IZ)V
    .locals 3
    .parameter "size"
    .parameter "cameraOrientation"
    .parameter "shouldFlip"

    .prologue
    .line 153
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deviceOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/google/android/videochat/SelfRenderer;->access$400(Lcom/google/android/videochat/SelfRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I
    invoke-static {v2}, Lcom/google/android/videochat/SelfRenderer;->access$500(Lcom/google/android/videochat/SelfRenderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$300(Lcom/google/android/videochat/SelfRenderer;)Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    move-result-object v0

    new-instance v1, Lcom/google/android/videochat/SelfRenderer$1$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/videochat/SelfRenderer$1$2;-><init>(Lcom/google/android/videochat/SelfRenderer$1;Lcom/google/android/videochat/Size;ZI)V

    invoke-interface {v0, v1}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->queueEvent(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z
    invoke-static {v0, v1}, Lcom/google/android/videochat/SelfRenderer;->access$1002(Lcom/google/android/videochat/SelfRenderer;Z)Z

    .line 171
    return-void
.end method

.method public onFrameOutputSet(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 93
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameOutputSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    iget v2, v2, Lcom/google/android/videochat/Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    iget v2, v2, Lcom/google/android/videochat/Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer$1;->this$0:Lcom/google/android/videochat/SelfRenderer;

    #getter for: Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    invoke-static {v0}, Lcom/google/android/videochat/SelfRenderer;->access$300(Lcom/google/android/videochat/SelfRenderer;)Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    move-result-object v0

    new-instance v1, Lcom/google/android/videochat/SelfRenderer$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/videochat/SelfRenderer$1$1;-><init>(Lcom/google/android/videochat/SelfRenderer$1;Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V

    invoke-interface {v0, v1}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->queueEvent(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

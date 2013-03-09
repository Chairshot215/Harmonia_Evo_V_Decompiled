.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;
.super Landroid/os/FileObserver;
.source "PhotoFrameWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->observeImageFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "filename"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileObserver onEvent, Widget is destroy"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const v0, 0x8000

    if-eq p1, v0, :cond_0

    .line 149
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEvent] event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$400(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    new-instance v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1$1;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;)V

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

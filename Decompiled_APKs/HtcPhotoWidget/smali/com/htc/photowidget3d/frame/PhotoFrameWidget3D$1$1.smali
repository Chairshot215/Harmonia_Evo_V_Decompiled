.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1$1;
.super Ljava/lang/Object;
.source "PhotoFrameWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->checkImageExist()V
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    .line 158
    return-void
.end method

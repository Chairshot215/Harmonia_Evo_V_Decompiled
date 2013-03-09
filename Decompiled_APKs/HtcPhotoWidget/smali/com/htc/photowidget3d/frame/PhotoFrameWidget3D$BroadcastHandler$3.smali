.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$3;
.super Ljava/lang/Object;
.source "PhotoFrameWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$3;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler$3;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$BroadcastHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->checkImageExist()V
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    .line 794
    return-void
.end method

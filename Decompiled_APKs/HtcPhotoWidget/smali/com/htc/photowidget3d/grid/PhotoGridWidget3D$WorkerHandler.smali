.class Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;
.super Ljava/lang/Object;
.source "PhotoGridWidget3D.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;-><init>(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D$WorkerHandler;->this$0:Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    #calls: Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->handleWorkerMessage(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;->access$800(Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

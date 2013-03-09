.class Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;
.super Ljava/lang/Object;
.source "PhotoWidgetBase.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/base/PhotoWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/base/PhotoWidgetBase;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;->this$0:Lcom/htc/photowidget3d/base/PhotoWidgetBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;Lcom/htc/photowidget3d/base/PhotoWidgetBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;-><init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase$WorkerHandler;->this$0:Lcom/htc/photowidget3d/base/PhotoWidgetBase;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->handleWorkerMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

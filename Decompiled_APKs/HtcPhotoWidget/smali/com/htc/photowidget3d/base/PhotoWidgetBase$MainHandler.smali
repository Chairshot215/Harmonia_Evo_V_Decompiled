.class Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;
.super Landroid/os/Handler;
.source "PhotoWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/base/PhotoWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/base/PhotoWidgetBase;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;->this$0:Lcom/htc/photowidget3d/base/PhotoWidgetBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;Lcom/htc/photowidget3d/base/PhotoWidgetBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;-><init>(Lcom/htc/photowidget3d/base/PhotoWidgetBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/photowidget3d/base/PhotoWidgetBase$MainHandler;->this$0:Lcom/htc/photowidget3d/base/PhotoWidgetBase;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/base/PhotoWidgetBase;->handleUIMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 351
    :cond_0
    return-void
.end method

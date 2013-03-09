.class Lcom/htc/photowidget3d/grid/ImgOperator$1;
.super Landroid/os/Handler;
.source "ImgOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/ImgOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/grid/ImgOperator;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/grid/ImgOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/ImgOperator$1;->this$0:Lcom/htc/photowidget3d/grid/ImgOperator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method

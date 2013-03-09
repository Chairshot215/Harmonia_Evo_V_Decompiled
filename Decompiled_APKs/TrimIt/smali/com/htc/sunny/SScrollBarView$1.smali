.class Lcom/htc/sunny/SScrollBarView$1;
.super Landroid/os/Handler;
.source "SScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SScrollBarView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SScrollBarView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SScrollBarView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/sunny/SScrollBarView$1;->this$0:Lcom/htc/sunny/SScrollBarView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView$1;->this$0:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Lcom/htc/sunny/SScrollBarView$1$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SScrollBarView$1$1;-><init>(Lcom/htc/sunny/SScrollBarView$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field final synthetic this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->this$1:Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;

    invoke-virtual {v3, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;->onMessageReceived(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;

    invoke-direct {v0, p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener$OuterCaller;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener$InnerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

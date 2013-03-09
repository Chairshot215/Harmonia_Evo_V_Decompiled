.class public Lcom/htc/home/AbstractWidgetView$WidgetHandler;
.super Landroid/os/Handler;
.source "AbstractWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/AbstractWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/AbstractWidgetView;


# direct methods
.method public constructor <init>(Lcom/htc/home/AbstractWidgetView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    iget-boolean v1, v1, Lcom/htc/home/AbstractWidgetView;->mLayoutRemoved:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Widget"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    invoke-virtual {v0, p1}, Lcom/htc/home/AbstractWidgetView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView$WidgetHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

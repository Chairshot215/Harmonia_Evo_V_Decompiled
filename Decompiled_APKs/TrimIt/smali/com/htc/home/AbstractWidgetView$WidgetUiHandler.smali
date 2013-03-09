.class public Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;
.super Landroid/os/Handler;
.source "AbstractWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/AbstractWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/AbstractWidgetView;


# direct methods
.method public constructor <init>(Lcom/htc/home/AbstractWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    iget-boolean v1, v1, Lcom/htc/home/AbstractWidgetView;->mLayoutRemoved:Z

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, th:Ljava/lang/Throwable;
    const-string v1, "Widget"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    iget-object v0, p0, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    invoke-virtual {v0, p1}, Lcom/htc/home/AbstractWidgetView;->handleUiMessage(Landroid/os/Message;)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/AbstractWidgetView$WidgetUiHandler;->this$0:Lcom/htc/home/AbstractWidgetView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

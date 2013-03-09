.class Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;
.super Landroid/os/Handler;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/Service$Adapter;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/util/Service$Adapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 464
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 465
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 470
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage of cmdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    #getter for: Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdId:I
    invoke-static {v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->access$700(Lcom/htc/laputa/engine/util/Service$Adapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cmdType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    #getter for: Lcom/htc/laputa/engine/util/Service$Adapter;->mCmdType:I
    invoke-static {v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->access$800(Lcom/htc/laputa/engine/util/Service$Adapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$Adapter$RetHandler;->this$0:Lcom/htc/laputa/engine/util/Service$Adapter;

    #getter for: Lcom/htc/laputa/engine/util/Service$Adapter;->mRetListener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;
    invoke-static {v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->access$900(Lcom/htc/laputa/engine/util/Service$Adapter;)Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;

    move-result-object v0

    .line 474
    .local v0, listener:Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;
    if-nez v0, :cond_0

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRetListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 482
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg.obj is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v2, v3, v1}, Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;->onRetReceive(IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.class final Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/messaging/service/SmsSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/messaging/service/SmsSenderService;


# direct methods
.method public constructor <init>(Lcom/htc/messaging/service/SmsSenderService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;->this$0:Lcom/htc/messaging/service/SmsSenderService;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 121
    const-string v2, "SmsSenderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling incoming message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 124
    .local v1, serviceId:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;->this$0:Lcom/htc/messaging/service/SmsSenderService;

    invoke-virtual {v2, v0}, Lcom/htc/messaging/service/SmsSenderService;->sendSms(Landroid/content/Intent;)V

    .line 131
    iget-object v2, p0, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;->this$0:Lcom/htc/messaging/service/SmsSenderService;

    invoke-virtual {v2, v1}, Lcom/htc/messaging/service/SmsSenderService;->stopSelf(I)V

    .line 132
    return-void
.end method

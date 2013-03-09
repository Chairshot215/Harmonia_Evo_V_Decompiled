.class Lcom/sprint/internal/Platform$1;
.super Landroid/os/Handler;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/internal/Platform;


# direct methods
.method constructor <init>(Lcom/sprint/internal/Platform;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprint/internal/Platform$1;->this$0:Lcom/sprint/internal/Platform;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 49
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mRebootRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/Platform$1;->this$0:Lcom/sprint/internal/Platform;

    #getter for: Lcom/sprint/internal/Platform;->mRebootRequest:Z
    invoke-static {v3}, Lcom/sprint/internal/Platform;->access$000(Lcom/sprint/internal/Platform;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/sprint/internal/Platform$1;->this$0:Lcom/sprint/internal/Platform;

    #getter for: Lcom/sprint/internal/Platform;->mRebootRequest:Z
    invoke-static {v1}, Lcom/sprint/internal/Platform;->access$000(Lcom/sprint/internal/Platform;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "reboot"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/sprint/internal/Platform$1;->this$0:Lcom/sprint/internal/Platform;

    #getter for: Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    invoke-static {v1}, Lcom/sprint/internal/Platform;->access$100(Lcom/sprint/internal/Platform;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sprint/internal/Platform$1;->this$0:Lcom/sprint/internal/Platform;

    #getter for: Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    invoke-static {v1}, Lcom/sprint/internal/Platform;->access$100(Lcom/sprint/internal/Platform;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sprint/internal/htcsprintservice/IHtcSprintService;->reboot()V

    .line 58
    iget-object v1, p0, Lcom/sprint/internal/Platform$1;->this$0:Lcom/sprint/internal/Platform;

    const/4 v2, 0x0

    #setter for: Lcom/sprint/internal/Platform;->mRebootRequest:Z
    invoke-static {v1, v2}, Lcom/sprint/internal/Platform;->access$002(Lcom/sprint/internal/Platform;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

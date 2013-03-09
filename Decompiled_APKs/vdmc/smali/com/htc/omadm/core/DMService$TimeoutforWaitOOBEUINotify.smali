.class public Lcom/htc/omadm/core/DMService$TimeoutforWaitOOBEUINotify;
.super Landroid/os/CountDownTimer;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/core/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeoutforWaitOOBEUINotify"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/core/DMService;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/core/DMService;)V
    .locals 2
    .parameter

    .prologue
    const-wide/32 v0, 0x1d4c0

    .line 342
    iput-object p1, p0, Lcom/htc/omadm/core/DMService$TimeoutforWaitOOBEUINotify;->this$0:Lcom/htc/omadm/core/DMService;

    .line 343
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 344
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "DMService"

    const-string v1, "Time out!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/htc/omadm/core/DMService$TimeoutforWaitOOBEUINotify;->this$0:Lcom/htc/omadm/core/DMService;

    #calls: Lcom/htc/omadm/core/DMService;->SetOOBEUIReady()V
    invoke-static {v0}, Lcom/htc/omadm/core/DMService;->access$200(Lcom/htc/omadm/core/DMService;)V

    .line 350
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "ChecktimeoutForPDNReset"

    .prologue
    .line 353
    return-void
.end method

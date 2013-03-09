.class public Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;
.super Landroid/os/CountDownTimer;
.source "ConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/connection/ConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UninterruptConnectionTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/connection/ConnManager;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V
    .locals 2
    .parameter

    .prologue
    const-wide/32 v0, 0x493e0

    .line 320
    iput-object p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 321
    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 323
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 327
    const-string v0, "ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UninterruptConnectionTimer:mDMChannelConnState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    #getter for: Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I
    invoke-static {v2}, Lcom/htc/omadm/libdo/connection/ConnManager;->access$000(Lcom/htc/omadm/libdo/connection/ConnManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GetSessionState():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_MAPPING_STRING:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSingleton()Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    #getter for: Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->access$000(Lcom/htc/omadm/libdo/connection/ConnManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSingleton()Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v0

    sget v1, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INSTALLING:I

    if-gt v0, v1, :cond_0

    .line 335
    const-string v0, "ConnManager"

    const-string v1, "UninterruptConnection..."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->OpenConnection()Z

    .line 337
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager$UninterruptConnectionTimer;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->EnableToUninterruptConnection()V

    .line 339
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 342
    return-void
.end method

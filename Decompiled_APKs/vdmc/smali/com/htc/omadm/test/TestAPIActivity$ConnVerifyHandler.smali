.class Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;
.super Landroid/os/Handler;
.source "TestAPIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/test/TestAPIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnVerifyHandler"
.end annotation


# instance fields
.field protected conn:Lcom/htc/omadm/rule/ConnMo;

.field final synthetic this$0:Lcom/htc/omadm/test/TestAPIActivity;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/test/TestAPIActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    .line 631
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 632
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    .line 635
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnVerifyHandler:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->conn:Lcom/htc/omadm/rule/ConnMo;

    .line 637
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 640
    :pswitch_0
    const/4 v0, -0x1

    .line 641
    .local v0, connResult:I
    const/4 v1, 0x1

    .line 643
    .local v1, count:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->conn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v3}, Lcom/htc/omadm/rule/ConnMo;->OpenDataConnection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 645
    :goto_1
    if-eq v0, v6, :cond_1

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_1

    .line 646
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->conn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v3}, Lcom/htc/omadm/rule/ConnMo;->CheckDataConnection()I

    move-result v0

    .line 647
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckDataConnection():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    add-int/lit8 v1, v1, 0x1

    .line 650
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 661
    :catch_0
    move-exception v2

    .line 662
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 653
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    if-ne v0, v6, :cond_0

    .line 654
    :try_start_1
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloseDataConnection():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->conn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_2
    iget-object v3, p0, Lcom/htc/omadm/test/TestAPIActivity$ConnVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpenDataConnection():false"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

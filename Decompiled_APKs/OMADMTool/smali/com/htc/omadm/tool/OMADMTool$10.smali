.class Lcom/htc/omadm/tool/OMADMTool$10;
.super Ljava/lang/Object;
.source "OMADMTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/OMADMTool;->authenticateResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/OMADMTool;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 437
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 438
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->getActionType()I
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$300(Lcom/htc/omadm/tool/OMADMTool;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 440
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->DBG:Z
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$700(Lcom/htc/omadm/tool/OMADMTool;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMADMTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-02:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 444
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->blockAllKeyboardKeyEvent()V
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$900(Lcom/htc/omadm/tool/OMADMTool;)V

    .line 452
    :goto_0
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v0

    if-lez v0, :cond_1

    .line 453
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$810()I

    .line 475
    :cond_1
    :goto_1
    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->DBG:Z
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$700(Lcom/htc/omadm/tool/OMADMTool;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OMADMTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-03:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v0, v3}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    goto :goto_0

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->DBG:Z
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$700(Lcom/htc/omadm/tool/OMADMTool;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "OMADMTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-04:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_5
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 462
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->blockAllKeyboardKeyEvent()V
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$900(Lcom/htc/omadm/tool/OMADMTool;)V

    .line 470
    :goto_2
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v0

    if-lez v0, :cond_1

    .line 471
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$810()I

    goto :goto_1

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #getter for: Lcom/htc/omadm/tool/OMADMTool;->DBG:Z
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$700(Lcom/htc/omadm/tool/OMADMTool;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "OMADMTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-05:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_7
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$10;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    goto :goto_2
.end method

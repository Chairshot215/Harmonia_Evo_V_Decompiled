.class Lcom/htc/android/epst/EPST$12;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST;->authenticateResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 651
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/EPST;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 653
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->getActionType()I
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$300(Lcom/htc/android/epst/EPST;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 655
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$900(Lcom/htc/android/epst/EPST;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-02:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 658
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->blockAllKeyboardKeyEvent()V
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$1100(Lcom/htc/android/epst/EPST;)V

    .line 659
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    iget-object v1, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->mSPCFailuresRebootSec:I
    invoke-static {v1}, Lcom/htc/android/epst/EPST;->access$1200(Lcom/htc/android/epst/EPST;)I

    move-result v1

    #calls: Lcom/htc/android/epst/EPST;->showShutDownDialog(I)V
    invoke-static {v0, v1}, Lcom/htc/android/epst/EPST;->access$1300(Lcom/htc/android/epst/EPST;I)V

    .line 666
    :goto_1
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1010()I

    goto :goto_0

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$900(Lcom/htc/android/epst/EPST;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "EPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-03:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_4
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0, v3}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    goto :goto_1

    .line 672
    :cond_5
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$900(Lcom/htc/android/epst/EPST;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "EPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-04:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_6
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 676
    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    if-ne v0, v3, :cond_8

    .line 677
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$900(Lcom/htc/android/epst/EPST;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "EPST"

    const-string v1, "start reboot device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_7
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->PortRebootDevice()V

    .line 680
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/EPST;->finish()V

    .line 683
    :cond_8
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 685
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$900(Lcom/htc/android/epst/EPST;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "EPST"

    const-string v1, "start shutdownR device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_9
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->blockAllKeyboardKeyEvent()V
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$1100(Lcom/htc/android/epst/EPST;)V

    .line 687
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    iget-object v1, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->mSPCFailuresRebootSec:I
    invoke-static {v1}, Lcom/htc/android/epst/EPST;->access$1200(Lcom/htc/android/epst/EPST;)I

    move-result v1

    #calls: Lcom/htc/android/epst/EPST;->showShutDownDialog(I)V
    invoke-static {v0, v1}, Lcom/htc/android/epst/EPST;->access$1300(Lcom/htc/android/epst/EPST;I)V

    .line 705
    :cond_a
    :goto_2
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v0

    if-lez v0, :cond_0

    .line 706
    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1010()I

    goto/16 :goto_0

    .line 692
    :cond_b
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    #getter for: Lcom/htc/android/epst/EPST;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$900(Lcom/htc/android/epst/EPST;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "EPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockRetry-05:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/EPST;->access$1000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_c
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST;->removeDialog(I)V

    .line 699
    iget-object v0, p0, Lcom/htc/android/epst/EPST$12;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    goto :goto_2
.end method

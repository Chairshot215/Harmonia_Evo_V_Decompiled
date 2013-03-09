.class Lcom/android/smith/CollectLogs$2;
.super Ljava/lang/Object;
.source "CollectLogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/CollectLogs;


# direct methods
.method constructor <init>(Lcom/android/smith/CollectLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f04006a

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 507
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    const-string v0, "SM:CollectLogs"

    const-string v1, "button was clicked while thread is running!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f040058

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {v1, v2, v4, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 520
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 522
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 531
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006b

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1200(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v4, v7, v3}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 541
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 546
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 548
    const-string v0, "SM:CollectLogs"

    const-string v1, "button was clicked while thread is running!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 552
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f040059

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 557
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 559
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 568
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 573
    :cond_7
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006b

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v7, v7, v3}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 578
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 581
    :cond_8
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 583
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_9

    .line 585
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006d

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005a

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->tryStop()V

    goto/16 :goto_0

    .line 591
    :cond_9
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 593
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005a

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {v1, v2, v4, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 598
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 605
    :cond_a
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1800(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1900(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2000(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2100(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2200(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 611
    :cond_b
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->requestToSetupFtp()V
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2300(Lcom/android/smith/CollectLogs;)V

    goto/16 :goto_0

    .line 615
    :cond_c
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 616
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1200(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->ListLogDialog()I
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2400(Lcom/android/smith/CollectLogs;)I

    goto/16 :goto_0

    .line 624
    :cond_d
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 626
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_e

    .line 628
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006d

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005b

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->tryStop()V

    goto/16 :goto_0

    .line 634
    :cond_e
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 636
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005b

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 641
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 648
    :cond_f
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1800(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1900(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2000(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2100(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2200(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 654
    :cond_10
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->requestToSetupFtp()V
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2300(Lcom/android/smith/CollectLogs;)V

    goto/16 :goto_0

    .line 658
    :cond_11
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->ListLogDialog()I
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2400(Lcom/android/smith/CollectLogs;)I

    goto/16 :goto_0

    .line 667
    :cond_12
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 669
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_13

    .line 671
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006d

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->tryStop()V

    goto/16 :goto_0

    .line 677
    :cond_13
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04002e

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 679
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04005c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    invoke-virtual {v1, v6}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v1, Lcom/android/smith/CollectLogs$LogsThread;

    iget-object v2, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0, v1}, Lcom/android/smith/CollectLogs;->access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 684
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto/16 :goto_0

    .line 691
    :cond_14
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1800(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1900(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2000(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2100(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2200(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 697
    :cond_15
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->requestToSetupFtp()V
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2300(Lcom/android/smith/CollectLogs;)V

    goto/16 :goto_0

    .line 701
    :cond_16
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    const v2, 0x7f04006c

    invoke-virtual {v1, v2}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->ListLogDialog()I
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2400(Lcom/android/smith/CollectLogs;)I

    goto/16 :goto_0

    .line 707
    :cond_17
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonFtpSaveInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/smith/CollectLogs$2;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->saveSettings()Z
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$2600(Lcom/android/smith/CollectLogs;)Z

    goto/16 :goto_0
.end method
